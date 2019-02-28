require './lib/transaction'
require './lib/transactionhistory'
require './lib/bankstatement'

class BankAccount
  attr_reader :balance

  def initialize(balance = 0.00, transactions = TransactionHistory.new, statement = BankStatement)
    @balance = balance
    @transactions = transactions
    @statement = statement
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
  def record_deposit_transaction(deposit, balance, transaction = Transaction.new)
    @balance = balance
    @transaction = transaction
    @transaction.credit(deposit.to_f, balance)
    @transactions.add_transaction(transaction)
  end

  def record_withdrawal_transaction(withdraw, balance, transaction = Transaction.new)
    @balance = balance
    @transaction = transaction
    transaction.debit(withdraw.to_f, balance)
    @transactions.add_transaction(transaction)
  end
  
end
