Given /^the following (.+):$/ do |class_name, attributes|
  klass = class_name.singularize.gsub(/\s/, '_').classify.constantize
  klass.create!(attributes.hashes)
end

Given /^a (.+)$/ do |class_name|
  klass = class_name.singularize.gsub(/\s/, '_').classify.constantize
  instance_variable_set("@#{class_name}", klass.create!(:slug => "some_slug"))
end

Given /^that the time is "([^\"]*)"$/ do |time|
  require 'time'
  Time.stub!(:now).and_return(Time.parse(time))
end

Given /^the person has reminders$/ do |table|
  @person.reminders.build(table.hashes)
  @person.reminders.each{|r| r.save(false)}
end
