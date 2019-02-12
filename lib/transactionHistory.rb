class TransactionHistory
  attr_accessor :history

  def initialize
    @history = []
  end

  def add_transaction(transaction)
    @history << transaction
  end

end
