require 'transactionhistory'

describe TransactionHistory do
  let(:list) { described_class.new } 
  it 'has initial empty transaction history' do
    expect(list).to be_an_instance_of(TransactionHistory)  
  end

end
