require './lib/transaction'
require './lib/transactionhistory'
require './lib/bankstatement'
class BankAccount
  attr_accessor :balance

  def initialize(balance = 0.00)
    @balance = balance
    @transactions = TransactionHistory.new
    @statement = BankStatement
  end

  def deposit(amount)
    @balance += amount
    record_deposit_transaction(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    record_withdrawal_transaction(amount, @balance)
  end

  def view_statement
    @statement.new(@transactions).print_statement
  end

  private
  def record_deposit_transaction(deposit, balance)
    @balance = balance
    transaction = Transaction.new
    transaction.credit(deposit.to_f, balance)
    @transactions.add_transaction(transaction)
  end

  def record_withdrawal_transaction(withdraw, balance)
    @balance = balance
    transaction = Transaction.new
    transaction.debit(withdraw.to_f, balance)
    @transactions.add_transaction(transaction)
  end
  
end
