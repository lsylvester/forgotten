require 'spec_helper'

describe Reminder do
  before(:each) do
    @valid_attributes = {
      :person_id => 1,
      :message => "value for message",
      :send_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Reminder.create!(@valid_attributes)
  end
end