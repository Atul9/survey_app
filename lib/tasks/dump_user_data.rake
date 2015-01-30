desc "dumps the user data"
task :dump_user_data,[:id1, :id2] => :environment do|task, args|
  puts 'hi, I am inside rake task'
  puts "First name : "+args[:id1].split(' ')[0]
  puts "Last name : " + args[:id1].split(' ')[1]
  #puts args{:id2}
  puts args[:id2]
  user2 = User.find_by(id: args[:id2])
  puts "From database"

  puts "First name : " + user2.name.split(' ')[0]
  puts "Last name : "+ user2.name.split(' ')[1]
=begin
  puts  "Using default arguments"
  puts user3 = User.find_by(id: args[:id3])
  puts "from database"
  puts "First name: " + user3.name.split(' ')[0]
  puts 'last name : ' + user3.name.split(' ')[1]
  user1 = User.first
  puts user1.name
  puts user1.email
  user2 = User.find_by(name: 'Atul Bhosale')
  puts 'First name : ' + user2.name.split(' ')[0]
  puts 'Last name : ' + user2.name.split(' ')[1]
  puts ARGV[0] + ARGV[1]
=end
end
