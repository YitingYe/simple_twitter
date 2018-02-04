namespace :dev do
  task fake: :environment do
    Tweet.destroy_all

    100.times do |i|
      Tweet.create!(description: FFaker::Tweet.tweet)
    end
    puts "have created fake tweets"
    puts "now you have #{Tweet.count} restaurant data"
  end
end