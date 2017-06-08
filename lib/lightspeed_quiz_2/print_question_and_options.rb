module LightspeedQuiz2
  def self.print_question_and_options(unit)
    puts unit[:question]
    unit[:options].each_with_index  do |option, index|
      puts "#{index+1}) #{option}"
    end
    puts
  end
end