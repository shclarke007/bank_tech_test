require 'transactionhistory'
require 'transaction'

describe TransactionHistory do
  let(:list) { described_class.new } 
  let(:transaction) { Transaction.new }

  it 'has initial empty transaction history' do
    expect(list).to be_an_instance_of(TransactionHistory)  
    expect(list.history).to eq([])
  end

  it 'record history of transactions' do
    transaction.debit(200, 100)
    list.add_transaction(transaction)
    expect(list.history.length).to eq(1)
    expect(list.history).to eq([transaction])
  end
end
