User.create!(name:  "Example User",
             email: "exampleuser@railstutorial.org",
             username: "exampleuser",
             password:              "foobar123",
             password_confirmation: "foobar123",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  username = "example-#{n+1}"
  password = "password"
  User.create!(name:  name,
               email: email,
               username: username,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end