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
      if transaction.is_a? Float
        format('%.2f', transaction)
      end
      puts "#{transaction.time.strftime('%d/%m/%Y')} || #{transaction.deposit} || #{transaction.withdrawal} || #{transaction.balance.to_f}"
    end
  end
  
end
