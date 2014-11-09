class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def time_string
		@timer_sec = @seconds % 60
		@timer_min = ((@seconds - @timer_sec) % 3600) / 60
		@timer_hour = (@seconds - (@timer_min * 60) - @timer_sec) / 3600
		return "#{'%02d' % @timer_hour}:#{'%02d' % @timer_min}:#{'%02d' % @timer_sec}"
	end

end