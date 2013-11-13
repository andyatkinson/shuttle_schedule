To generate new schedule data, remove any generated HTML rows from the `shuttle_schedule.rb`, after the HTML comment. Make sure the gems are available:

  bundle

From the project directory:

  chmod +x generate.rb
  bundle exec ruby generate.rb

Verify that new HTML data rows have been appended to `shuttle_schedule.rb`, based on the data file, `shuttle_schedule_data.csv`.

  rackup

Navigate to http://localhost:9292 and verify the output rows.
