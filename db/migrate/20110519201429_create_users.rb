class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.datetime :welcome_sent_at
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
