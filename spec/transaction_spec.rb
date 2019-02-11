require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(deposit, withdrawal, balance) } 
  let(:deposit) { double :deposit }
  let(:withdrawal) { double :withdrawal } 
  let(:balance) { double :balance }

  it 'knows its date/time' do
    allow(Time).to receive(:now).and_return(:time)
    expect(transaction).to be_an_instance_of(Transaction)
    expect(transaction.time).to eq(Time.now)  
  end
end
