class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
    @upcoming_reminders = @person.reminders.upcoming
    @past_reminders = @person.reminders.past
    @reminder = @person.reminders.build
  end
end
