class RemindersController < ApplicationController
  def create
    @person = Person.find_by_slug!(params[:person_id])
    @reminder = @person.reminders.build(params[:reminder])
    if @reminder.save
      flash[:success] = "Reminder was successfully created."
      redirect_to @person
    else
      render 'people/show'
    end
  end
end
