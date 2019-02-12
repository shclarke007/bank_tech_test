require 'bankaccount'

describe BankAccount do
  subject(:account) { described_class.new() }
  let(:balance) { double :balance } 
  let(:header) { 'date || credit || debit || balance' + "\n" }
  
  it 'knows its intial balance' do
    expect(account.balance).to eq(0)  
  end

  it 'can deposit money' do
    expect(account).to respond_to(:deposit).with(1).argument  
    expect { account.deposit(100) }.to change { account.balance }.by(100)
  end

  it 'can withdraw money' do
    expect(account).to respond_to(:withdraw).with(1).argument  
    expect { account.withdraw(50) }.to change { account.balance }.by(-50)
  end
  
  describe "outputs header and transactions" do
    specify { expect { account.view_statement }.to output(header).to_stdout }
  end
    
end
