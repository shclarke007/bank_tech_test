class Transaction
  attr_accessor :deposit, :withdrawal, :balance, :time

  def initialize(deposit, withdrawal, balance)
    @deposit = deposit
    @withdrawal = withdrawal
    @balance = balance
    @time = Time.now
  end

end
