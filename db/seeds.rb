# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seed_file = Rails.root.join('db', 'seeds', 'seeds.yml') 
# config = YAML::load_file(seed_file)

 config = HashWithIndifferentAccess.new(YAML::load_file(seed_file))
# YAML.load_file(seed_file).each { |building| self.class.create!(building) }
hash = config["projects"]

hash.each{|t|
	arr = Todo.create(t[:todos])
	Project.create(title: t[:title], todos: arr)
	
}
#prr.todos = arr

#Project.create(config["projects"])

# self.class.bulk_insert(YAML.load_file(seed_file))