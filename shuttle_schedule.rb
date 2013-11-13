require 'sinatra'

get '/' do
  erb :index
end

__END__

@@ layout
<!DOCTYPE html>
<html>
  <head>
    <title>Shuttle Schedule</title>
    <link href='/bootstrap.min.css' rel='stylesheet' />
    <link href='/bootstrap-responsive.min.css' rel='stylesheet' />
    <link href='/shuttle_schedule.css' rel='stylesheet' />
  </head>
  <body>
    <div id='container'>
      <%= yield %>
    </div>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js'></script>
    <script src='/bootstrap.min.js'></script>
    <script src='/jquery.geolocation.js'></script>
    <script src='/shuttle_schedule.js'></script>
  </body>
</html>

@@ index
<!-- DELETE BELOW THIS LINE TO REGENERATE HTML --> 
<div class="container-fluid">
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Time</th>
        <th>Departing</th>
        <th>Arriving</th>
      </tr>
    </thead>
    <tbody>
      <tr data-hour="9" data-lat="38.899508" data-lon="-77.033064">
        <td>09:00AM</td>
        <td>1445</td>
        <td>Chinatown (same spot at 702)</td>
      </tr>
      <tr data-hour="9" data-lat="38.902673" data-lon="-77.021778">
        <td>09:15AM</td>
        <td>Chinatown</td>
        <td>1445</td>
      </tr>
      <tr data-hour="9" data-lat="38.899508" data-lon="-77.033064">
        <td>09:30AM</td>
        <td>1445</td>
        <td>918</td>
      </tr>
      <tr data-hour="9" data-lat="38.897298" data-lon="-77.024340">
        <td>09:45AM</td>
        <td>918</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="10" data-lat="38.902673" data-lon="-77.021778">
        <td>10:00AM</td>
        <td>Chinatown</td>
        <td>1445</td>
      </tr>
      <tr data-hour="10" data-lat="38.899508" data-lon="-77.033064">
        <td>10:15AM</td>
        <td>1445</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="10" data-lat="38.902673" data-lon="-77.021778">
        <td>10:30AM</td>
        <td>Chinatown</td>
        <td>918</td>
      </tr>
      <tr data-hour="10" data-lat="38.897298" data-lon="-77.024340">
        <td>10:45AM</td>
        <td>918</td>
        <td>1445</td>
      </tr>
      <tr data-hour="11" data-lat="38.899508" data-lon="-77.033064">
        <td>11:00AM</td>
        <td>1445</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="11" data-lat="38.902673" data-lon="-77.021778">
        <td>11:15AM</td>
        <td>Chinatown</td>
        <td>1445</td>
      </tr>
      <tr data-hour="11" data-lat="38.899508" data-lon="-77.033064">
        <td>11:30AM</td>
        <td>1445</td>
        <td>918</td>
      </tr>
      <tr data-hour="11" data-lat="38.897298" data-lon="-77.024340">
        <td>11:45AM</td>
        <td>918</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="12" data-lat="" data-lon="">
        <td>12:00PM</td>
        <td></td>
        <td></td>
      </tr>
      <tr data-hour="12" data-lat="" data-lon="">
        <td>12:15PM</td>
        <td></td>
        <td></td>
      </tr>
      <tr data-hour="12" data-lat="38.902673" data-lon="-77.021778">
        <td>12:30PM</td>
        <td>Chinatown</td>
        <td>1445</td>
      </tr>
      <tr data-hour="12" data-lat="38.899508" data-lon="-77.033064">
        <td>12:45PM</td>
        <td>1445</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="13" data-lat="38.902673" data-lon="-77.021778">
        <td>01:00PM</td>
        <td>Chinatown</td>
        <td>918</td>
      </tr>
      <tr data-hour="13" data-lat="38.897298" data-lon="-77.024340">
        <td>01:15PM</td>
        <td>918</td>
        <td>1445</td>
      </tr>
      <tr data-hour="13" data-lat="38.899508" data-lon="-77.033064">
        <td>01:30PM</td>
        <td>1445</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="13" data-lat="38.902673" data-lon="-77.021778">
        <td>01:45PM</td>
        <td>Chinatown</td>
        <td>1445</td>
      </tr>
      <tr data-hour="14" data-lat="38.899508" data-lon="-77.033064">
        <td>02:00PM</td>
        <td>1445</td>
        <td>918</td>
      </tr>
      <tr data-hour="14" data-lat="38.897298" data-lon="-77.024340">
        <td>02:15PM</td>
        <td>918</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="14" data-lat="38.902673" data-lon="-77.021778">
        <td>02:30PM</td>
        <td>Chinatown</td>
        <td>1445</td>
      </tr>
      <tr data-hour="14" data-lat="38.899508" data-lon="-77.033064">
        <td>02:45PM</td>
        <td>1445</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="15" data-lat="" data-lon="">
        <td>03:00PM</td>
        <td></td>
        <td></td>
      </tr>
      <tr data-hour="15" data-lat="" data-lon="">
        <td>03:15PM</td>
        <td></td>
        <td></td>
      </tr>
      <tr data-hour="15" data-lat="38.902673" data-lon="-77.021778">
        <td>03:30PM</td>
        <td>Chinatown</td>
        <td>918</td>
      </tr>
      <tr data-hour="15" data-lat="38.897298" data-lon="-77.024340">
        <td>03:45PM</td>
        <td>918</td>
        <td>1445</td>
      </tr>
      <tr data-hour="16" data-lat="38.899508" data-lon="-77.033064">
        <td>04:00PM</td>
        <td>1445</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="16" data-lat="38.902673" data-lon="-77.021778">
        <td>04:15PM</td>
        <td>Chinatown</td>
        <td>1445</td>
      </tr>
      <tr data-hour="16" data-lat="38.899508" data-lon="-77.033064">
        <td>04:30PM</td>
        <td>1445</td>
        <td>918</td>
      </tr>
      <tr data-hour="16" data-lat="38.897298" data-lon="-77.024340">
        <td>04:45PM</td>
        <td>918</td>
        <td>Chinatown</td>
      </tr>
      <tr data-hour="17" data-lat="38.902673" data-lon="-77.021778">
        <td>05:00PM</td>
        <td>Chinatown</td>
        <td>1445</td>
      </tr>
    </tbody>
  </table>
</div>