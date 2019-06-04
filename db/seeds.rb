
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Category.destroy_all
# CATEGORY =["Food", "Environment", "Social", "Tech", "Lifestyle", "Education"]

puts 'Creating one category'
url1 = "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559569755/windmill_rg8qan.png"
category_environment = Category.new(name: 'Environment', img_url: url1)
category_environment.save!

puts 'Creating one category'
url2 = "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559571100/mojito_ktfaeh.png"
category_lifestyle = Category.new(name: 'Lifestyle', img_url: url2)
category_lifestyle.save!

puts 'Creating one category'
url3 = "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559569969/dish_yhw1it.png"
category_food = Category.new(name: 'Food', img_url: url3)
category_food.save!

puts 'Creating one category'
url4 = "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559573756/digital-campaign_rdy6uq.png"
category_social = Category.new(name: 'Social', img_url: url4)
category_social.save!

puts 'Creating one category'
url5 = "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559573748/smarthome_lrm2bv.png"
category_tech = Category.new(name: 'Tech', img_url: url5)
category_tech.save!

puts 'Creating one category'
url6 = "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559569760/apple_kdcbws.png"
category_education = Category.new(name: 'Education', img_url: url6)
category_education.save!




puts 'Creating 1 Users...'
1.times do |i|
  user = User.create!(name: Faker::Science.scientist,
    email: Faker::Internet.email,
    password: "azerty")

  puts 'Creating 1 Problems...'
    problem = Problem.new(title: Faker::Book.title,
      description: Faker::Quote.famous_last_words,
      category: category_education)
    problem.user = user
    problem.save!

       puts 'Creating 2 Solutions...'
    2.times do |k|
    solution = Solution.new(title: Faker::Movies::HarryPotter.book,
      description: Faker::Movies::HarryPotter.quote)
    solution.user = user
    solution.problem = problem
    solution.save!
    end
  end

1.times do |i|
  user = User.create!(name: Faker::Science.scientist,
    email: Faker::Internet.email,
    password: "azerty")

    puts 'Creating 1 Problems...'
      problem = Problem.new(title: Faker::Book.title,
      description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde dolore, in saepe necessitatibus nihil sed eveniet aliquid! Cupiditate ex dolor, iure aliquid accusantium modi, consectetur, veritatis mollitia, adipisci architecto ut. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde dolore, in saepe necessitatibus nihil sed eveniet aliquid! Cupiditate ex dolor, iure aliquid accusantium modi, consectetur, veritatis mollitia, adipisci architecto ut.",
      category: category_environment)
    problem.user = user
    problem.save!

    puts 'Creating 2 Solutions...'
    2.times do |k|
    solution = Solution.new(title: Faker::Movies::HarryPotter.book,
      description: Faker::Movies::HarryPotter.quote)
    solution.user = user
    solution.problem = problem
    solution.save!
    end
  end

1.times do |i|
  user = User.create!(name: Faker::Science.scientist,
    email: Faker::Internet.email,
    password: "azerty")

    puts 'Creating 1 Problems...'
      3.times do |i|
      problem = Problem.new(title: Faker::Book.title,
      description: Faker::Quote.famous_last_words,
      category: category_food)
    problem.user = user
    problem.save!
  end

    puts 'Creating 2 Solutions...'
    2.times do |k|
    solution = Solution.new(title: Faker::Movies::HarryPotter.book,
      description: Faker::Movies::HarryPotter.quote)
    solution.user = user
    solution.problem = problem
    solution.save!
    end
  end

1.times do |i|
  user = User.create!(name: Faker::Science.scientist,
    email: Faker::Internet.email,
    password: "azerty")

    puts 'Creating 1 Problems...'
      problem = Problem.new(title: Faker::Book.title,
      description: Faker::Quote.famous_last_words,
      category: category_tech)
    problem.user = user
    problem.save!

    puts 'Creating 2 Solutions...'
    2.times do |k|
    solution = Solution.new(title: Faker::Movies::HarryPotter.book,
      description: Faker::Movies::HarryPotter.quote)
    solution.user = user
    solution.problem = problem
    solution.save!
    end
  end

1.times do |i|
  user = User.create!(name: Faker::Science.scientist,
    email: Faker::Internet.email,
    password: "azerty")

    puts 'Creating 1 Problems...'
      problem = Problem.new(title: Faker::Book.title,
      description: Faker::Quote.famous_last_words,
      category: category_lifestyle)
    problem.user = user
    problem.save!

    puts 'Creating 2 Solutions...'
    2.times do |k|
    solution = Solution.new(title: Faker::Movies::HarryPotter.book,
      description: Faker::Movies::HarryPotter.quote)
    solution.user = user
    solution.problem = problem
    solution.save!
    end
  end

1.times do |i|
  user = User.create!(name: Faker::Science.scientist,
    email: Faker::Internet.email,
    password: "azerty")

    puts 'Creating 1 Problems...'
      problem = Problem.new(title: Faker::Book.title,
      description: Faker::Quote.famous_last_words,
      category: category_social)
    problem.user = user
    problem.save!

    puts 'Creating 2 Solutions...'
    2.times do |k|
    solution = Solution.new(title: Faker::Movies::HarryPotter.book,
      description: Faker::Movies::HarryPotter.quote)
    solution.user = user
    solution.problem = problem
    solution.save!
    end
  end


