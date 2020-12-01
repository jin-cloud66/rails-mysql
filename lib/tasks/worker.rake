namespace :test do
	task :work => :environment do
		loop do
			puts "I'm working (running as \"#{`whoami`.strip}\")"
			sleep(5)
		end
	end

	task :job => :environment do
		puts "I'm doing this job (running as \"#{`whoami`.strip}\")"
		sleep(5)
	end
end
