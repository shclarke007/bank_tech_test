require 'bankstatement'

describe BankStatement do
  let(:statement) { described_class.new(TransactionHistory.new) }
 
  it 'initialises' do
    expect(statement).to be_an_instance_of(BankStatement)  
  end
  it 'knows its list' do
    expect(statement.history).to be_an_instance_of(TransactionHistory)
  end
end
