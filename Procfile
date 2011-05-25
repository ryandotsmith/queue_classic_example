web: rails s
image_worker: QUEUE="image_jobs" rake jobs:work
email_worker: QUEUE="email_jobs" rake jobs:work
clock: bundle exec clockwork app/clock.rb
