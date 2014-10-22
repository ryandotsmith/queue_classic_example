ENV["DATABASE_URL"] = "postgres://user_name:password@localhost/QueueClassicExample"

$email_jobs = QC::Queue.new("email_jobs")
$image_jobs = QC::Queue.new("image_jobs")