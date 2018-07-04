# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#proj_file = Rails.root.join('db', 'seeds', 'projects.yml')
#proj_config = HashWithIndifferentAccess.new(YAML::load_file(proj_file))
#proj_config["project"].each do |p|
#  Project.create!(proj_config)
#end

#todo_file = Rails.root.join('db', 'seeds', 'todos.yml')
#todo_config = HashWithIndifferentAccess.new(YAML::load_file(todo_file))
#todo_config["todo"].each {|key, params| puts "#{key} =!> #{params}"}
#  Todo.create!(todo_config)
#end

#puts todo_config

seed_file = Rails.root.join('db', 'seed.yml')
config = HashWithIndifferentAccess.new(YAML::load_file(seed_file))

config["projects"].each do |p|
  project = Project.create!(title: p["title"])
  #puts p["title"]
  p["todos"].each do |t|
  	kekus = t.merge(project: project)
  	Todo.create!(kekus)
  	#puts t
  end
end