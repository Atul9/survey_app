# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: "admin")
Role.create(name: "user")
User.create(name: 'David',email: 'david@gmail.com', age: 25, gender: 'M', password: 'hello',role_id: 2)

User.create(name: 'Atul',email: 'atul@gmail.com', age: 24, gender: 'M', password: 'amazon',role_id: 1)
User.create(name: 'Sujay',email: 'sujay@gmail.com', age: 24, gender: 'M', password: '123',role_id: 2)
Option.create(description: 'too short', question_id: 1)
Option.create(description: 'Lengthy', question_id: 1)

User.create(name: 'Radha Rani',email: 'radha@gmail.com', age: 32, gender: 'F', password: '5443',role_id: 2)
User.create(name: 'Vidisha Patil',email: 'vidisha@gmail.com', age: 35, gender: 'F', password: '7443',role_id: 2)
User.create(name: 'Vandana Vallam',email: 'vandana@zensar.com', age: 35, gender: 'F', password: 'queen',role_id: 2)
User.create(name: 'Sanjay Mathur',email: 'sanjay@yahoo.com',age: 32,gender: 'M',password: 'vina123',role_id: 2)
User.create(name: 'Vickrant Naik',email: 'vicky@gmail.com.com',age: 22,gender: 'M',password: 'via123',role_id: 2)
User.create(name: 'Vinayak Mathur',email: 'sanjay@yahoo.com',age: 32,gender: 'M',password: 'vina123',role_id: 2)
User.create(name: 'Renitta Raphael',email: 'renitta@zensar.com',age: 22,gender: 'F',password: 'ren123',role_id: 2)
User.create(name: 'Vaishali Patwardhan',email: 'v123@yahoo.com',age: 26,gender: 'F',password: 'vid',role_id: 2)







Survey.create(name: 'Code Retreat', survey_type: 'ruby', conducted_on: 2014-10-12, count_people: 20)
Survey.create(name: 'Rubyconf',survey_type: 'regional',conducted_on: 2015-1-15,count_people: 10)
Survey.create(name: 'Functional Javascript', survey_type: 'Javascript', conducted_on: 2014-12-10, count_people: 5)
Question.create(description: 'How was the code retreat?', survey_id: 1)
Question.create(description: 'Was the content informative?', survey_id: 1)
Question.create(description: 'What was the duration of the session?', survey_id: 1)
Option.create(description: 'Good', question_id: 1)
Option.create(description: 'Bad', question_id: 1)
Response.create(user_id: 1, option_id: 1)
Response.create(user_id: 1, option_id: 2)
Response.create(user_id: 2, option_id: 1)
