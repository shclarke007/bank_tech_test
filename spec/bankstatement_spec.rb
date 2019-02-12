require 'bankstatement'

describe BankStatement do
  let(:statement) { described_class.new }
  it 'initialises' do
    expect(statement).to be_an_instance_of(BankStatement)  
  end
  it 'knows its list' do
    expect(statement.list).to eq([])  
  end
end
