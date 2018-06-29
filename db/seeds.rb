# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##seed_file = Rails.root.join('db', 'seed.yml')
##config = HashWithIndifferentAccess.new(YAML::load_file(seed_file))
#Project.create!(config)

#seed_file = File.join(Rails.root, 'db', 'seed.yml')
#config = YAML::load_file(seed_file)
#Project.create!(config["projects"])
#config = HashWithIndifferentAccess.new(YAML::load_file(seed_file))



##config["projects"].each do |p|
##Project.create!(p)
##end


family = Project.create! title: "Family"
todo = Todo.create! text: "Buy a milk", is_completed: false, project: family
todo = Todo.create! text: "Car repair", is_completed: false, project: family
todo = Todo.create! text: "Send mail to drandma", is_completed: true, project: family
todo = Todo.create! text: "Pay the rent", is_completed: false, project: family
todo = Todo.create! text: "Pick up shoes", is_completed: false, project: family

job = Project.create! title: "Job"
todo = Todo.create! text: "Call customer", is_completed: true, project: job
todo = Todo.create! text: "Send documents", is_completed: false, project: job
todo = Todo.create! text: "ill in the report", is_completed: true, project: job

other = Project.create! title: "Other"
todo = Todo.create! text: "Call a friend", is_completed: false, project: other
todo = Todo.create! text: "Prepare for trip", is_completed: false, project: other





