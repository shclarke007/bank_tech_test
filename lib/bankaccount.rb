require './lib/transaction'

class BankAccount
  attr_accessor :balance

  def initialize(balance = 0)
    @balance = balance
    @transactions = TransactionHistory.new
  end

  def deposit(amount)
    @balance += amount
    record_deposit_transaction(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
  end

  def record_deposit_transaction(deposit, balance)
    @balance = balance
    transaction = Transaction.new(deposit, @balance)
    @transactions.history << transaction
  end
end
