namespace :dev do
  task fake_description: :environment do
    Tweet.destroy_all

    80.times do |i|
      Tweet.create!(description: FFaker::Tweet.body,user: User.all.sample)
    end
    puts "have created fake tweets"
    puts "now you have #{Tweet.count} restaurant data"
  end

  task fake_user: :environment do
    User.destroy_all

    20.times do |i|
      user_name = FFaker::Name.first_name
      User.create!(
        email: "#{user_name}@example.com",
        password: "123456",
        name: "#{user_name}",
        introduction: FFaker::Job.title,
        avatar: File.open(File.join(Rails.root, "seed_img/#{rand(0...9)}.jpg"))
      )
    end
    puts "have created fake users"
    puts "now you have #{User.count} users data"
  end

  task fake_reply: :environment do
    Tweet.all.each do |tweet|
      3.times do |i|
        tweet.replies.create!(
          comment: FFaker::Lorem.sentence,
          user: User.all.sample
        )
      end
    end
    puts "have created fake replies"
    puts "now you have #{Reply.count} users data"
  end

end