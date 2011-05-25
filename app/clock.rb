require File.expand_path('../../config/boot', __FILE__)
require File.expand_path('../../config/environment', __FILE__)

every(1.day,"user.followup") { $email_jobs.enqueue("UsersHelper.send_signup_followup") }
