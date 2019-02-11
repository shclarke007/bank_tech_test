require 'transaction'

class BankAccount
  attr_accessor :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    # deposit_transaction(amount)
  end

  def withdraw(amount)
    @balance -= amount
  end
end
