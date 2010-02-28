class Reminder < ActiveRecord::Base
  belongs_to :person
  validates_presence_of :message
  validate :ensure_it_is_to_be_sent_in_the_future
  
  attr_accessible :message, :send_at
  
  named_scope :upcoming, lambda {
    {:conditions => ["send_at > ?", Time.zone.now], :order => "send_at asc"}
  }
  
  named_scope :past, lambda {
    {:conditions => ["send_at <= ?", Time.zone.now], :order => "send_at desc"}
  }
  
  def ensure_it_is_to_be_sent_in_the_future
    errors.add_to_base(errors.generate_message(:send_at, :not_future)) unless send_at.future?
  end
end
