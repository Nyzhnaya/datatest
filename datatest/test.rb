#require_relative "questions"



class Test

	def initialize
		@yes_answers = 0
    @current_path = File.dirname(__FILE__)
  end

  def ask_questions

    if File.exist?(@current_path + "/test/questions.txt")
      file = File.new(@current_path + "/test/questions.txt")
      lines = file.readlines
      file.close
    else
  	 puts "Вопросы не найдены"
    end

    for line in lines
  	 puts line
  	 user_input = ""
      while 
        user_input = STDIN.gets.chomp.downcase
        if user_input == "да" || user_input == "нет"
          break
        else
          puts "Введите да или нет и нажмите Ввод"
        end
      end

    	if (user_input == "да")
    		@yes_answers += 1 
    	end
      puts
    end
    puts @yes_answers
  end

  def yes_answers
    @yes_answers
  end
end



