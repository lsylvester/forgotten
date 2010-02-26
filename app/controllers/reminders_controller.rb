class RemindersController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @reminder = @person.reminders.create(params[:reminder])
    redirect_to @person
  end
end
