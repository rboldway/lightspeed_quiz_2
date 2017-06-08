module LightspeedQuiz2

  def self.print_results(quiz,answers)
    puts "----T E S T  R E S U L T S-----"
    previous = eval( File.open("quiz.txt", "r"){ |file| file.read } )

    correct = 0
    answers.each do |k,v|

      question = quiz[k][:question]
      answer = quiz[k][:answer].to_i
      selected = v[:selected].to_i
      options = quiz[k][:options]
      previously_selected = previous[k][:selected].to_i
      correct += 1 if selected == answer

      puts "#{question}"
      puts "correct answer:".ljust(25) + options[answer-1]
      puts "you selected:".ljust(25) + options[selected-1]
      puts "you previously selected:".ljust(25) + options[previously_selected-1] if previous

    end
    puts "Your Score is %.1f%" % (100*correct/answers.size)

    File.open("quiz.txt", "w"){ |quizfile| quizfile.write answers}
  end

end