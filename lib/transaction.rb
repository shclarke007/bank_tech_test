class Transaction
  attr_accessor :deposit, :withdrawal, :balance, :time

  def initialize(deposit = nil, withdrawal = nil, balance)
    @deposit = deposit
    @withdrawal = withdrawal
    @balance = balance
    @time = Time.now
  end

end
