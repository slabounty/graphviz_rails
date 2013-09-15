namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    users = User.all(limit: 6)
    50.times do
      w1, w2 = Faker::Lorem.words(2)
      graph_code = <<-EOG
        digraph G {
          #{w1.capitalize}->#{w2.capitalize} [ label = "#{w1} #{w2}" ]; 
        }
      EOG
      users.each { |user| user.graphs.create!(graph_code: graph_code) }
    end
  end
end

