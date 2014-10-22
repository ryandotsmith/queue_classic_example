require 'clockwork'
require './config/boot'
require './config/environment'


module Clockwork
  handler do |job|
    puts "Running #{job}"
  end
	every(10.seconds,"user.followup") { $email_jobs.enqueue("UsersHelper.send_signup_followup") }
end