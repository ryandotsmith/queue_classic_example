web: rails s
imageworker: bundle exec rake qc:work QUEUE="image_jobs"
emailworker: bundle exec rake qc:work QUEUE="email_jobs"
clock: bundle exec clockwork app/clock.rb