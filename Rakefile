require_relative 'config/application'


# Define default task
task :default => [:test]

# Define test task
task :test do
  sh "rspec"
end

# Define lint task
task :lint do
  sh "rubocop"
end

# Define build task
task :build do
  sh "bundle install"
  sh "rake lint"
  sh "rake test"
end
