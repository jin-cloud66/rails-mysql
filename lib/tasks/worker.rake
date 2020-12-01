namespace :test do
	task :work => :environment do
		loop do
			puts "I'm working (currently running as \"`whoami`\")"
			sleep(5)
		end
	end

	task :job => :environment do
		loop do
			puts "I'm doing this job (currently running as \"`whoami`\")"
			sleep(5)
		end
	end
end
