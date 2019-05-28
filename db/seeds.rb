# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
CATEGORY =["Food", "Environment", "Social", "Tech", "Lifestyle", "Education"]

puts 'Creating 5 Users...'
5.times do |i|
  user = User.create!(name: Faker::Science.scientist,
    email: Faker::Internet.email,
    password: Faker::GreekPhilosophers.quote)

  puts 'Creating 2 Problems...'
  2.times do |j|
    problem = Problem.new(title: Faker::Book.title,
      description: Faker::Quote.famous_last_words,
      category: CATEGORY.sample)
    problem.save

    puts 'Creating 2 Solutions...'
    2.times do |k|
    solution = Solution.new(title: Faker::Movies::HarryPotter.book,
      description: Faker::Movies::HarryPotter.quote)
    solution.save
  end
  end
end
puts "Done!"
