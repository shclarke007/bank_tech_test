require 'transactionhistory'
require 'transaction'

describe TransactionHistory do
  let(:list) { described_class.new } 
  let(:transaction) { Transaction.new }

  describe "#no transaction" do
    it 'has initial empty transaction history' do
      expect(list).to be_an_instance_of(TransactionHistory)  
      expect(list.history).to eq([])
    end
  end
 
describe "#after transaction" do
  it 'can record history of transactions' do
    transaction.debit(200, 100)
    list.add_transaction(transaction)
    expect(list.history.length).to eq(1)
    expect(list.history).to eq([transaction])
  end
end

end
