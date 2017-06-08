require "lightspeed_quiz_2/version"
require "lightspeed_quiz_2/questions"
require "lightspeed_quiz_2/print_question_and_options"
require "lightspeed_quiz_2/print_results"
require "lightspeed_quiz_2/read_answer"

require "byebug"

module LightspeedQuiz2

  def self.perform
    print "Please respond with the option number for your correct answer (ctl-D for abort)\n\n"
    answers = {}
    quiz = QUESTIONS[:quiz]

    Hash[quiz.to_a.shuffle].each do |id,unit|
      print_question_and_options(unit)
      answers[id] = read_answer(unit)
    end
    print_results(quiz,answers)
  end
end
