(function($) {
    $.fn.goTo = function() {
        $('html, body').animate({
            scrollTop: $(this).offset().top + 'px'
        }, 'fast');
        return this; // for chaining...
    }
})(jQuery);

function insertGuide() {
  var guide = '<div class="guide">' +
  'Current hour: <span style="background:#77E0E8;width:10px;height:10px;display:inline-block;margin:0 5px;" />' + 
  ' Closest office (requires geolocation): <span style="background:#FFFF00;width:10px;height:10px;display:inline-block;margin:0 5px;" />' +
  '</div>';
  $('#container').append(guide);
}

function insertRow(item, html) {
  $(html).insertBefore($(item));
}

$(function() {
  
  insertGuide();
  
  var HEADER_HTML = $('table thead').html();
  
  var CURRENT_HOUR = null;
  
  function scrollToHour(currentHour) {
      var d = new Date(),
      c_hour = d.getHours(),
      c_min = d.getMinutes(),
      c_sec = d.getSeconds(),
      t = c_hour + ":" + c_min + ":" + c_sec;
  
      $.each($('table tr'), function(index, item) {
        if (index > 0) {
          var rowHour = parseInt($(item).attr('data-hour'), 0);
          if (c_hour === rowHour) {
            CURRENT_HOUR = c_hour;
            $(item).find('td').css('background', '#77E0E8');
            insertRow(item, HEADER_HTML);
            $(item).goTo();
            return false;
          }
        }
      });
  }
  
  scrollToHour();
      
  if ($.geolocation.support()) {
    $.geolocation.find(function(location) {
      var my_lat = location.latitude,
          my_lon = location.longitude;
      
      var R = 6371; // km
      
      
      var closestDistance = null, 
      closestElement = null;
          
      $.each($('table tr'), function(index, item) {
        if (index > 0) {
          
          var itemLat = parseFloat($(item).attr('data-lat')),
              itemLon = parseFloat($(item).attr('data-lon'));
          
          if (itemLat && itemLon) {
           var x = (my_lon-itemLon) * Math.cos((my_lat+itemLat)/2);
           var y = (itemLat-my_lat);
           var d = Math.sqrt(x*x + y*y) * R;
          
           if (closestDistance == null || d < closestDistance) {
             closestDistance = d;
             closestElement = item;
           } else {
             return null;
           }
         }
       }
      });

      var closestElementName = $(closestElement).find('td:nth-child(2)').text();
      
      $.each($('tr[data-hour=' + CURRENT_HOUR + ']'), function(index, item) {
        var departingStop = $(item).find('td:nth-child(2)'),
        departingStopName = departingStop.text();
        if (closestElementName === departingStopName) {
          departingStop.css('background', '#FFFF00');
        }
      });

    });
    
  }
});