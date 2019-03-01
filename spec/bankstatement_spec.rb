require 'bankstatement'

describe BankStatement do
  let(:statement) { described_class.new(transactions) }
  let(:transactions) { double :transactions, history: [] } 
  let(:headers) { 'date || credit || debit || balance' }
 
  it 'initialises' do
    expect(statement).to be_an_instance_of(BankStatement) 
  end

  it "displays header" do
    expect(statement).to respond_to(:print_statement).with(0).argument   
    expect(statement.print_statement).to eq([])
  end
  
end
