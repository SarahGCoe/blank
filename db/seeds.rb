ProblemVote.destroy_all
SolutionVote.destroy_all
Problem.destroy_all
Solution.destroy_all
Category.destroy_all
User.destroy_all

# Categories
puts 'Creating Environment category'
category_environment = Category.create!(name: 'Environment', img_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559569755/windmill_rg8qan.png")

puts 'Creating Lifestyle category'
category_lifestyle = Category.create!(name: 'Lifestyle', img_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559571100/mojito_ktfaeh.png")

puts 'Creating Food category'
category_food = Category.create!(name: 'Food', img_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559569969/dish_yhw1it.png")

puts 'Creating Social category'
category_social = Category.create!(name: 'Social', img_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559573756/digital-campaign_rdy6uq.png")

puts 'Creating Tech category'
category_tech = Category.create!(name: 'Tech', img_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559573748/smarthome_lrm2bv.png")

puts 'Creating Education category'
category_education = Category.create!(name: 'Education', img_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559569760/apple_kdcbws.png")

# Users
puts 'Creating 5 Users...'
users = [{
          name: 'Alexandra',
          email:Faker::Internet.email,
          password:'azerty',
          remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559741125/alexandra.jpg"
        },
        {
          name: 'Emile',
          email:Faker::Internet.email,
          password:'azerty',
          remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559741125/emile.jpg"
        },
        {
          name: 'Manon',
          email:Faker::Internet.email,
          password:'azerty',
          remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559741125/Manon.jpg"
        },
        {
          name: 'Mathilde',
          email:Faker::Internet.email,
          password:'azerty',
          remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559741346/mathilda.jpg"
        },
        {
          name: 'Joseph',
          email:Faker::Internet.email,
          password:'azerty',
          remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559741125/joseph.jpg"
        }
]
User.create!(users)
puts "Users created!"

# Environment problems & solutions
puts 'Creating 2 Environment Problems...'
env_problems = [{
              title: 'My dirty beach',
              description: "I live close to the beach and go for a run every morning.
                            I've noticed that the beach has been getting dirtier and dirtier
                            over the last few years. We've tried to implement several solutions
                            such as bins, portable ashtray... nothing works and it's getting worse
                            and worse.",
              category: category_environment,
              user: User.all.sample,
              problem_votes_count: 100
            },
            {
              title: "Can't take plastic no more",
              description: "I’m tired of using plastic bags at the supermarket and over-packaged things
                            (yogurts, bottles, trays). I have the feeling that even if
                            I'm eco-friendly, the system forces us to use and discard plastic every
                            day. Bulk is good, but all products are not available in bulk and in all
                            supermarkets.",
              category: category_environment,
              user: User.all.sample,
              problem_votes_count:25
            }]

Problem.create!(env_problems)
puts '2 Environment Problems created!'

puts 'Creating 2 Environment Solutions...'
env_solutions = [{
                  title: 'Trashtag',
                  description: "It would be great to create a mobile app that allows
                                people to organize events aimed at cleaning the beaches.
                                The user can invite his friends, family and other users
                                living close by. People can share before / after picture
                                and are rewarded depending on how much cleaning they've done.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'My dirty beach'),
                  solution_votes_count: 110,
                  status: 'selected',
                  target: 'People who want to make the right impact on the world'
                },
                {
                  title: 'My clean-up beach kit',
                  description: "When you go to the beach, you always bring a towel, a book,
                                sunscreen, sunglasses, in a bag with you. This kit is the
                                perfect tool to start cleaning the planet! Put it in your
                                backpack before your trip, and you will have everything
                                with you to clean whenever you see litter on the ground.
                                It can be made from recycled materials and it will be
                                packed in a Foundation providing work to disabled people
                                in Lausanne, Switzerland.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'My dirty beach'),
                  solution_votes_count: 86,
                  status: 'pending',
                  target: 'People who want to make the right impact on the world'
                },
                {
                  title: 'RecyclePoint',
                  description: "Create an application that puts producers in touch with consumers
                                directly. Raw / bulk products would be made available at refrigerated
                                relay points located in several areas of the city. For products such as
                                yoghurt, users must provide their own jars for the producer to fill them
                                in and then make them available as a relay point for the user.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: "Can't take plastic no more"),
                  solution_votes_count: 12,
                  status: 'pending',
                  target:'People who want to make the right impact on the world'
                }]
Solution.create!(env_solutions)
puts '2 Environment Solutions created!'

# Lifestyle problems & solutions
puts 'Creating 2 Lifestyle Problems...'
life_problems = [{
              title: 'Relax at work',
              description: "I'm a really hardworking person and I tend to forget
                            to take a break during the day, to have a breather and
                            take care of myself. I tried to clear some time on my
                            schedule but I always find more work to do. You can
                            imagine how anxious and stressed I am at the end of the day.",
              category: category_lifestyle,
              user: User.all.sample,
              problem_votes_count: 46
            },
            {
              title: 'I make all my plants die',
              description: "I love plants but I continuously have to buy new ones
                            because I can't keep them alive more than a month.
                            I never know when to water them or when to let them
                            stay inside or out or even if they need new breeding ground.
                            It makes me very sad and I can't think of a solution... Please help me !!",
              category: category_lifestyle,
              user: User.all.sample,
              problem_votes_count: 87
            },
            {
              title: 'Broke by betting a lot on sports',
              description: "I'm a big fan of betting on sports but as I'm very bad
                            at math and I often have no knowledge of the rules.
                            I've already lost a considerable amount of money. My
                            wife is starting to go crazy because I also lost my car
                            and nearly had to put a mortgage on my house. Please help
                            me save my marriage!",
              category: category_lifestyle,
              user: User.all.sample,
              problem_votes_count: 54
            }]

Problem.create!(life_problems)
puts '2 Lifestyle Problems created!'

puts 'Creating 2 Lifestyle Solutions...'
life_solutions = [{
                  title: 'Take Your Time',
                  description: "This is exactly what I would love to work on and I've
                                been thinking about this ever since I've started working in
                                an multinational company in Paris. I would like to create an
                                app  that will allow you to choose an activity to take some time
                                to breathe and take care about yourself. The exercices can be
                                10 minutes of meditation, writing, yoga, etc. depending on your
                                mood. It would also list all the yoga classes around you and
                                you could make you can go to have a lesson after work.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Relax at work'),
                  solution_votes_count: 64,
                  status: 'pending',
                  target:'Hard working and stressed people'
                },
                {
                  title: 'Sleepy',
                  description: "Lack of sleep & sleep deprivation have serious health
                                effects. It's really important to sleep 8 hours per night.
                                That is why I would love to create an app where you can set
                                a custom 30-minute period in the morning that ends at a set
                                alarm time before going to bed. The app will then wake you
                                up in a light sleep phase during that time period.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Relax at work'),
                  solution_votes_count: 544,
                  status: 'selected',
                  target:'Hard working and stressed people'
                },
                {
                  title: 'My Green Garden',
                  description: "App guiding the user through a virtual garden where he can
                                choose and take care of its plant throughout its entire life circle.
                                Other available features: library with description and guiding tips
                                for lots of dif-ferent plants; map with boutiques to buy flowers and
                                plants nearby you; push notification to alert you when it's time to water
                                your plant",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'I make all my plants die'),
                  solution_votes_count: 146,
                  status: 'selected',
                  target: 'Rookie gardeners',
                  remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559835051/Capture_d_%C3%A9cran_2019-06-05_%C3%A0_16.52.23_vh1cwy.png"
                },
                {
                  title: 'Jumbo',
                  description: "An app that scrapes datas on specialized sites,
                                calculate the best prognoses with the most advanced stats
                                and displays it in a funny way.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Broke by betting a lot on sports'),
                  solution_votes_count: 92,
                  status: 'pending',
                  target:'Neophytes who would like to have fun betting on other
                          things than sports while still having a chance to win',
                  remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559836634/Capture_d_%C3%A9cran_2019-06-06_%C3%A0_17.39.20_y0hyeo.png"
                },]
Solution.create!(life_solutions)
puts '2 Lifestyle Solutions created!'

#Food
puts 'Creating 2 Food Problems...'
food_problems = [{
              title: 'Throwing food every day',
              description: "Hey everyone, I'm the owner of a bakery in the center of
                            Bordeaux and I am very saddened by all the food I have to
                            throw to the garbage every day. The thing is, I would love to
                            give it away for free but it's a big loss of money and the
                            quantity is so important that even all the homeless people of
                            my neighbourhood are not enough. I'm sure someone can think of
                            a great idea to avoid this to keep going on. Thanks for the help!",
              category: category_food,
              user: User.all.sample,
              problem_votes_count: rand(100)
            },
            {
              title: 'Bad cook',
              description: "Hi there, I am a french student recently moved in the big city.
                            I don't have much time or envy for cooking but eating at the
                            restaurant everyday is not a possibility. Maybe you can think
                            of something useful for me and all the poor people with the same
                            trouble?",
              category: category_food,
              user: User.all.sample,
              problem_votes_count: rand(100)
            }]

Problem.create!(food_problems)
puts '2 Food Problems created!'

puts 'Creating 2 Food Solutions...'
food_solutions = [{
                  title: 'Too good to go',
                  description: "An application that allows everyone to commit
                                themselves against food waste on their own scale,
                                by enjoying themselves and build-ing a close relationship.
                                Restaurants no longer throw away, you eat by reducing
                                their waste, the environment is better off.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Throwing food every day'),
                  solution_votes_count: 32,
                  status: 'pending',
                  target: 'restorers and citizen of the planet',
                  remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559835614/000199194_5_wvcusm.jpg"
                },
                {
                  title: 'Frichti',
                  description: "We all deserve to eat well, without having to choose
                                between spending hours or leaving our wallets there.
                                What if today it were possibleto put an end to compromises?
                                Delivering a fresh, lovingly homemade kitchen to your door
                                every day, lunch and dinner; this is the mission we have set
                                ourselves to revolutionize your dishes.Better than a local
                                canteen, more contemporary than a caterer, more daily than
                                a restaurant: Frichti is what we would like to cook... if we
                                had the time and ingredients.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Bad cook'),
                  solution_votes_count: 365,
                  status: 'selected',
                  target: 'lazy/broke people and/or bad cookers (i.e parisiens)',
                  remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559836224/share-frichti_nqkbox.jpg"
                }]
Solution.create!(food_solutions)
puts '2 Food Solutions created!'

# Social
puts 'Creating 2 Social Problems...'
social_problems = [{
              title: 'Catching-up with my friends',
              description: "I am a busy business woman, travelling a lot and living
                            in different countries. It has gotten more and more difficult
                            to catch up with my friends because we have different schedules
                            and we don't always know when we are in the same place at the same
                            time. Sure, social media help a lot, but sometimes you just need a
                            real interaction.",
              category: category_social,
              user: User.all.sample,
              problem_votes_count: rand(100)
            },
            {
              title: 'Rescue my isolated grand-parents',
              description: "My grandparents have trouble keeping in touch with the outside
                            world. I feel that the older they become, the more they isolate
                            themselves. I wish I could make them enjoy family time but they
                            do not use a smartphone or computer. They are not anti-technologies,
                            but very few applications are adapted to them.",
              category: category_social,
              user: User.all.sample,
              problem_votes_count: rand(200)
            }]

Problem.create!(social_problems)
puts '2 Social Problems created!'

puts 'Creating 2 Social Solutions...'
social_solutions = [{
                  title: 'Gloo',
                  description:"My idea is to create an app that alerts the user
                               whenever a friend is near them. Once the person has
                               selected the friends they want to meet, the app offers
                               several places (restaurants and bars) where they can all meet.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Catching-up with my friends'),
                  solution_votes_count: 72,
                  status: 'pending',
                  target: 'busy workers'
                },
                {
                  title: 'Family Gazette',
                  description: 'The whole family publishes its messages: Anecdotes,
                                family photos, beautiful memories ... Each family member
                                shares the messages and photos of his daily life in a few
                                clicks on the FamilyGazette website. Your grandparents receive
                                a paper gazette. All messages are automatically formatted and
                                printed as a custom paper journal. The Gazette is sent by the
                                Post Office at the frequency you have chosen.',
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Rescue my isolated grand-parents'),
                  solution_votes_count: 53,
                  status: 'pending',
                  target: 'family worried about the grandparents',
                },
                {
                  title: 'Sunday',
                  description: "Once upon a time there was Sunday, a family story under the sun
                                on a spring Sunday, a day filled with love, good times, simple
                                moments shared. Nelly lived in New York, her brother in London
                                and her sister in China. They wanted at all costs to feel close
                                to their grand-parents. So, we decided to tinker with a small
                                TV-connected box that broadcasted all the shared photos from
                                anywhere in the world. Their grandparents were so happy to enjoy
                                their news on a daily basis directly on their TV.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Rescue my isolated grand-parents'),
                  solution_votes_count: 64,
                  status: 'pending',
                  target: 'family worried about the grandparents',
                },
                {
                  title: 'SilverSocial',
                  description: "Create a Social Network for grand-parents directly conected
                                on the TV. Everything would be based on the UX. The challenge
                                is to think the UX for non-tech persons like our grand-parents.
                                They could send photos of them directly via a webcam installed
                                on the TV and see photos of their children published on Facebook
                                or other social network without actually having to go on that
                                'complicated' social networks.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Rescue my isolated grand-parents'),
                  solution_votes_count: rand(100),
                  status: 'pending',
                  target: 'family worried about the grandparents'
                }]
Solution.create!(social_solutions)
puts '2 Social Solutions created!'

# Tech
puts 'Creating 2 Tech Problems...'
tech_problems = [{
              title: 'Pay my bills on time',
              description: "I'm a person who tends to forget when to pay my bills
                            because I'm very busy (with 3 children and I have a very
                            stressful job). I'm fed up with all the administrative papers
                            and I do NOT have time to take care of that.",
              category: category_tech,
              user: User.all.sample,
              problem_votes_count: rand(300)
            },
            {
              title: 'Learn to code',
              description:"I've been working in the luxury industry for a few years
                           now and I'm very curious about the tech industry. I would like to learn
                           to code and I've already started thinking about doing it online but I'm
                           scared I won't be able to keep it up as I'm very bad at working alone
                           from home. Also I can't afford not being paid for a year or more so I
                           would need something that won't take long. Can you think of something
                           with my criteria'Pay my bills on time'?",
              category: category_tech,
              user: User.all.sample,
              problem_votes_count: rand(100)
            }]

Problem.create!(tech_problems)
puts '2 Tech Problems created!'

puts 'Creating 2 Tech Solutions...'
tech_solutions = [{
                  title:' ManageMyBills',
                  description: "I would love to create an app to help people manage
                                and schedule their bills. Users can add all the different
                                bills they have to pay and the app will send an alert to
                                remind them of the bills due dates.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Pay my bills on time'),
                  solution_votes_count: 534,
                  status: 'selected',
                  target: 'Young workers',
                },
                {
                  title: "Le Wagon - Change your life: learn to code",
                  description: "Le Wagon is a 9-week full-stack coding bootcamp.
                                It will bringcoding skills to creative people who aim to
                                create their own startup, or add a technical know-how to
                                their skillset.You will learn the core concepts of
                                object-oriented programming, and structure your software
                                following de-sign patterns like MVC. In addition to mastering
                                back-end programming languages (Ruby, SQL), you will develop
                                your front-end skills using recent techniques like flexbox,
                                CSS grid and learn ES6, the latest version of JavaScript.",
                  user: User.all.sample,
                  problem: Problem.find_by(title: 'Learn to code'),
                  solution_votes_count: rand(100),
                  status: 'pending',
                  target: 'Coding rookies',
                  remote_photo_url: "https://res.cloudinary.com/dx3ojip2r/image/upload/v1559835017/home-bg-6cf169a0c16b22e40d41358cd3e09aac5d87ccbc8290ea4ad517261188d34dc9_tsnqmg.jpg"
                }]
Solution.create!(tech_solutions)
puts '2 Tech Solutions created!'

# Education
puts 'Creating 1 Education Problem...'
education_problems = [{
              title: "Helping with homework when you're a busy mom",
              description: "I don't have time to help my children do their homework because
                            I come back late at night and I have to make dinner. I blame
                            myself for letting them fend for themselves but I can't find the
                            patience or energy. In addition, I don't have the means to afford
                            private teachers.",
              category: category_education,
              user: User.all.sample,
              problem_votes_count: rand(100)
            }]

Problem.create!(education_problems)
puts '1 Education Problem created!'

