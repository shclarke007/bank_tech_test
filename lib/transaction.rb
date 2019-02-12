class Transaction
  attr_accessor :deposit, :withdrawal, :balance, :time

  def initialize
    @deposit = deposit
    @withdrawal = withdrawal
    @balance = balance
    @time = Time.now
  end

  def credit(deposit, balance)
    @deposit = deposit
    @balance = balance
    @time = Time.now
  end

  def debit(withdraw, balance)
    @withdrawal = withdraw
    @balance = balance
    @time = Time.now
  end

end
