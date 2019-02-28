require 'bankstatement'

describe BankStatement do
  let(:statement) { described_class.new(:transactions) }
  let(:headers) { 'date || credit || debit || balance' }
 
  it 'initialises' do
    expect(statement).to be_an_instance_of(BankStatement)  
  end

  describe "#renders" do
    it "" do
    end
  end
  

end
