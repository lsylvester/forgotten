class AddIndexesOnPersonIdAndSendAtForReminder < ActiveRecord::Migration
  def self.up
    add_index :reminders, :person_id
    add_index :reminders, :send_at
  end

  def self.down
    remove_index :reminders, :person_id
    remove_index :reminders, :send_at
  end
end
