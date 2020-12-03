def prepend_handler(signal, &handler)
	previous = Signal.trap(signal) do
		previous = -> { raise SignalException, signal} unless previous.respond_to?(:call)
		handler.call(previous)
	end
end

prepend_handler("INT") do |old|
	puts "Captured INT signal"
end

prepend_handler("TERM") do |old|
	puts "Captured TERM signal"
	old.call
end
