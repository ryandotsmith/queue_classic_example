module UsersHelper

  def self.send_email(user_id)
    user = User.find(user_id)
    puts "sending email to #{user.id}"
  end

  def self.make_avatar(user_id)
    user = User.find(user_id)
    puts "making avatar for #{user.id}"
  end

end
