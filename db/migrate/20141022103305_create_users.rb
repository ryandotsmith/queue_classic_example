class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :welcome_sent_at
      t.timestamps
    end
  end
end