class BankStatement
  attr_accessor :history
  def initialize(history = TransactionHistory.new)
    @history = history
  end
  
end