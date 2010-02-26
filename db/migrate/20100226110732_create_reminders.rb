class CreateReminders < ActiveRecord::Migration
  def self.up
    create_table :reminders do |t|
      t.integer :person_id
      t.text :message
      t.datetime :send_at

      t.timestamps
    end
  end

  def self.down
    drop_table :reminders
  end
end
