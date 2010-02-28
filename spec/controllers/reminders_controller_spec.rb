require 'spec_helper'

describe RemindersController do
  describe "creating a reminder" do
    before(:each) do
      @person = Person.create(:slug => 'bar')
      post :create, :reminder => {:send_at => 1.day.from_now, :message => "Bar"}, :person_id => @person.to_param
    end
    
    it "should respond with redirect" do
      response.should be_redirect
    end
    
    it "should have created a reminder for the person" do
      @person.reminders.count == 1
    end
  end
  
  
  describe "failing to create a reminder" do
    before(:each) do
      @person = Person.create(:slug => 'bar')
      post :create, :reminder => {:send_at => 1.day.ago, :message => "Bar"}, :person_id => @person.to_param
    end
    
    it "should respond with render" do
      response.should be_success
    end
    
    it "should not have created a reminder for the person" do
      @person.reminders.count == 0
    end
  end
end
