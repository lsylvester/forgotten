require 'spec_helper'

describe PeopleController do
  describe "showing a person" do
    before(:each) do
      @person = Person.create(:slug => 'bar')
      get :show, :id => @person.to_param
      end
    
    it "should respond with success" do
      response.should be_success
    end
    
    it "should assign to person" do
      assigns(:person).should == @person
    end
  end
end
