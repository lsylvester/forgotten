class RemindersController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @reminder = @person.reminders.build(params[:reminder])
    if @reminder.save
      flash[:notice] = "Reminder was successfully created."
      redirect_to @person
    else
      render 'people/show'
    end
  end
end
