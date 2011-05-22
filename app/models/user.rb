class User < ActiveRecord::Base

  def after_create
    $email_jobs.enqueue("UsersHelper.send_email",  self.id)
    $image_jobs.enqueue("UsersHelper.make_avatar", self.id)
  end

end
