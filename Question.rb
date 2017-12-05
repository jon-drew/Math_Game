class Question

  attr_reader :question_string
  attr_reader :answer

  def initialize
    @left = rand(20)
    @right = rand(20)
    @answer = (@left + @right).to_i
    @question_string = "What does #{@left} plus #{@right} equal?"
  end

end