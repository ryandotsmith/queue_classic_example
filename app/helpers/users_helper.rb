module UsersHelper

  def self.send_signup_followup
    cond = "welcome_sent_at IS NULL"
    User.where(cond).find_in_batches do |users|
      users.each {|u| QC.enqueue("UsersHelper.send_welcome_email", u.id) }
    end
  end

  def self.send_welcome_email(user_id)
    user = User.find(user_id)
    puts "sending welcome email to #{user.id}"
    user.update_attribute :welcome_sent_at, Time.now
  end

  def self.send_email(user_id)
    user = User.find(user_id)
    puts "sending email to #{user.id}"
  end

  def self.make_avatar(user_id)
    user = User.find(user_id)
    puts "making avatar for #{user.id}"
  end
end
