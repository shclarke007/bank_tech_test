require './lib/transaction'
require './lib/transactionhistory'
require './lib/bankstatement'
class BankAccount
  attr_accessor :balance

  def initialize(balance = 0)
    @balance = balance
    @transactions = TransactionHistory.new
    @statement = BankStatement.new
  end

  def deposit(amount)
    @balance += amount
    record_deposit_transaction(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    record_withdrawal_transaction(amount, @balance)
  end

  private
  def record_deposit_transaction(deposit, balance)
    @balance = balance
    transaction = Transaction.new
    transaction.credit(deposit, balance)
    @transactions.add_transaction(transaction)
  end

  def record_withdrawal_transaction(withdraw, balance)
    @balance = balance
    transaction = Transaction.new
    transaction.debit(withdraw, balance)
    @transactions.add_transaction(transaction)
  end
end
