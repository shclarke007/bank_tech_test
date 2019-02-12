class BankStatement
  attr_accessor :transactions

  HEADERS = %w[date credit debit balance].freeze
  DIVIDER = ' || '.freeze

  def initialize(transactions)
    @transactions = transactions
  end
  
  def print_statement
    print_headers
    print_transactions
  end
  
  private
  def print_headers
    puts HEADERS.join(DIVIDER)
  end

  def print_transactions
    @transactions.history.map do |transaction|
      puts "#{transaction.time.strftime('%d/%m/%Y')} || #{transaction.deposit} || #{transaction.withdrawal} || #{transaction.balance}"
    end
  end
  
end
