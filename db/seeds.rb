Problem.destroy_all
puts "Creating a user"
User.create!(name:"Coco", email:"coco@mail.fr", password:'azerty')
puts "Creating 2 problems"
problems = [
{
  title: "Hello",
  description: "World"
},
{
  title: "Coucou",
  description: ""
}
]



puts "Seeding done!"
