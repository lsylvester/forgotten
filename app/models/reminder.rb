class Reminder < ActiveRecord::Base
  belongs_to :person
  
  named_scope :upcoming, lambda {
    {:conditions => ["send_at > ?", Time.zone.now], :order => "send_at asc"}
  }
  
  named_scope :past, lambda {
    {:conditions => ["send_at <= ?", Time.zone.now], :order => "send_at desc"}
  }
end
