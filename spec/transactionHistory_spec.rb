require 'transactionhistory'
require 'transaction'

describe TransactionHistory do
  let(:list) { described_class.new } 
  let(:transaction) { double :transaction, withdraw: 200, balance:100, time: '14/01/2012' }

  describe "#no transaction" do
    it 'has initial empty transaction history' do
      expect(list).to be_an_instance_of(TransactionHistory)  
      expect(list.history).to eq([])
    end
  end
 
describe "#after transaction" do
  it 'can record history of transactions' do
    list.add_transaction(:transaction)
    expect(list.history.length).to eq(1)
    expect(list.history).to eq([:transaction])
  end
end

end
