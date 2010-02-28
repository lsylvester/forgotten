namespace :demo do
  desc "Load demo data"
  task :load => :environment do
    15.times do 
      Person.create do |p|
        p.name = Faker::Name.name
        p.slug = p.name.parameterize
        p.phone_number = Faker::PhoneNumber.phone_number
        p.payroll_number = rand(1000000)
        p.email = Faker::Internet.email
      end
    end
  end
end