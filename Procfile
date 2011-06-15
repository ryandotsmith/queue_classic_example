web: rails s
imageworker: QUEUE="image_jobs" rake jobs:work
emailworker: QUEUE="email_jobs" rake jobs:work
clock: bundle exec clockwork app/clock.rb
