#require_relative "answers"
class ResultPrinter

	def result(yes_answers)

		puts "We received yes_answers: " + yes_answers.to_s

		current_path = File.dirname(__FILE__)

		if File.exist?(current_path + "/test/answers.txt")
		      file = File.new(current_path + "/test/answers.txt")
		      lines = file.readlines
		      file.close
		 else
		  	puts "Ответы не найдены!"
		 end

		 if yes_answers >= 10
		  	puts lines[0]
		 elsif yes_answers >= 5
		  	puts lines[1]
		 else
		  	puts lines[2]
		 end
	end

end


