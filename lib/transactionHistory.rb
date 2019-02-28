class TransactionHistory
  attr_reader :history

  def initialize
    @history = []
  end

  def add_transaction(transaction)
    @history << transaction
  end

end
