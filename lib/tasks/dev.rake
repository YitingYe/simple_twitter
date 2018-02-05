namespace :dev do
  task fake_description: :environment do
    Tweet.destroy_all

    50.times do |i|
      Tweet.create!(description: FFaker::Tweet.tweet,user: User.all.sample)
    end
    puts "have created fake tweets"
    puts "now you have #{Tweet.count} restaurant data"
  end

  task fake_user: :environment do
    20.times do |i|
      user_name = FFaker::Name.first_name
      User.create!(
        email: "#{user_name}@example.com",
        password: "123456",
        name: "#{user_name}"
      )
    end
    puts "have created fake users"
    puts "now you have #{User.count} users data"
  end
end