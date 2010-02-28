class PeopleController < ApplicationController
  def show
    @person = Person.find_by_slug!(params[:id])
    @reminder = @person.reminders.build
  end
  
  def index
    @people = Person.all
  end
end
