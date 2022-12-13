require_relative "test"
require_relative "result_printer"

current_path = File.dirname(__FILE__)

puts "Доброго времени суток! Ответьте на следующие вопросы, вводя да или нет и Ввод"
puts

test = Test.new

test.ask_questions

result_printer = ResultPrinter.new

result_printer.result(test.yes_answers)

#puts result_printer