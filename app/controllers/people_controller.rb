class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
    @reminder = @person.reminders.build
  end
end
