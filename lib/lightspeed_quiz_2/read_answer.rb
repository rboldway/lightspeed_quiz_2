module LightspeedQuiz2
  def self.read_answer(unit)
    retries ||= 3
    begin
      selected = Integer(gets).to_s
    rescue ArgumentError
      print "Answer must be a number, you have #{retries -= 1} remaining\n\n"
      retry if retries > 0
      puts "Answer is considered incorrect since exceeded permitted retries"
    end
    {correct: unit[:answer], selected: selected}
  end
end