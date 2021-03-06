# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, "/home/deploy/pdxcrime/shared/log/cron.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

every 1.day, :at => '2:00 am' do
   rake "crime:import"
end

every :sunday, :at => '3:00 am' do
   rake "crime:reports:weekly_crime_totals"
end

every :sunday, :at => '3:30 am' do
   rake "crime:reports:ytd_offense_summaries"
end

# Learn more: http://github.com/javan/whenever
