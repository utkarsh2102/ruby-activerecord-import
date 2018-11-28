require 'rspec/core/rake_task'

task :default do
	sh 'cp test/database.yml.sample test/database.yml'
	sh 'AR_VERSION=5.2 rake test:sqlite3'
end

task :default => :test
