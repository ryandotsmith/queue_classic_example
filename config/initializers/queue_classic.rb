ENV["DATABASE_URL"] = "postgres://ryandotsmith:@localhost/queue_classic_example"

$email_jobs = QC::Queue.new("email_jobs")
$image_jobs = QC::Queue.new("image_jobs")
