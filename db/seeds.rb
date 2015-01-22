# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: "admin")
Role.create(name: "user")
User.create(name: 'David',email: 'david@gmail.com',age: 25, gender: 'M', password: 'hello')
Survey.create(name: 'Code Retreat',survey_type: 'ruby', conducted_on: 2014-10-12, count_people: 20)
Question.create(description: 'How was the code retreat?', survey_id: 1)
Option.create(description: 'Good',question_id: 1)
Option.create(description: 'Bad',question_id: 1)
Response.create(user_id: 1,option_id: 1)
