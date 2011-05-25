class AddQueueClassicTables < ActiveRecord::Migration

  def self.up
    # Create the default queue.
    # This will allow us to enqueue using QC.enqueue
    create_table :queue_classic_jobs do |t|
      t.text :details
      t.timestamp :locked_at
    end
    add_index :queue_classic_jobs, :id

    # We need this queue to process the sending of emails.
    # Perhaps emails must be sent ASAP. We don't want an email
    # wiating for an image resize to finish...
    create_table :email_jobs do |t|
      t.text :details
      t.timestamp :locked_at
    end
    add_index :email_jobs, :id

    # Working with images is slow. Let's not slow down our system
    # wiating on these things to finish.
    create_table :image_jobs do |t|
      t.text :details
      t.timestamp :locked_at
    end
    add_index :image_jobs, :id
  end

  def self.down
    drop_table :queue_classic_jobs
    drop_table :email_jobs
    drop_table :image_jobs
  end

end
