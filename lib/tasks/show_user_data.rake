namespace :tasks do
  desc "show user data"
  task :task1, [:args1] => :environment do |task, args|
    args.with_defaults(args1: 'default value')
    puts args[:args1]

    p args.extras
  end
end
#rake tasks:task1
