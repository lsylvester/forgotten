Given /^the following (.+):$/ do |class_name, attributes|
  klass = class_name.singularize.gsub(/\s/, '_').classify.constantize
  klass.create!(attributes.hashes)
end

Given /^a (.+)$/ do |class_name|
  klass = class_name.singularize.gsub(/\s/, '_').classify.constantize
  klass.create!
end