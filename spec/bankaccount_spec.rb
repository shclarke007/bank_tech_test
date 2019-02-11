require 'bankaccount'

describe BankAccount do
  subject(:account) { described_class.new() }
  let(:balance) { double :balance } 
  
  it 'knows its intial balance' do
    expect(account.balance).to eq(0)  
  end

  it 'can deposit money' do
    expect { account.deposit(100) }.to change { account.balance }.by(100)
  end

  it 'can withdraw money' do
    expect { account.withdraw(50) }.to change { account.balance }.by(-50)
  end

end
