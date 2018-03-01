namespace :dev do
<<<<<<< HEAD
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
=======
  # 請先執行 rails dev:fake_user，可以產生 20 個資料完整的 User 紀錄
  # 其他測試用的假資料請依需要自行撰寫
  task fake_user: :environment do
    User.destroy_all
    20.times do |i|
      name = FFaker::Name::first_name
      file = File.open("#{Rails.root}/public/avatar/user#{i+1}.jpg")

      user = User.new(
        name: name,
        email: "#{name}@example.co",
        password: "12345678",
        introduction: FFaker::Lorem::sentence(30),
        avatar: file
      )

      user.save!
      puts user.name
    end
  end

end
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
