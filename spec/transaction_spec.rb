require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new } 

  before { allow(Time).to receive(:now).and_return(:time) }

  describe "#date" do
    it 'knows date/time of a transaction' do
      expect(transaction).to be_an_instance_of(Transaction)
      expect(transaction.time).to eq(Time.now)  
    end
  end

  describe "#deposit" do
    it 'can record deposit transaction' do
      transaction.credit(10, 100)
      expect(transaction.deposit).to eq(10)
      expect(transaction.withdrawal).to eq nil
      expect(transaction.balance).to eq 100
      expect(transaction.time).to eq Time.now 
    end
  end
  
  describe "#withdrawal" do
    it 'can record withdrawal transaction' do
      transaction.debit(50, 100)
      expect(transaction.deposit).to eq nil
      expect(transaction.withdrawal).to eq 50
      expect(transaction.balance).to eq 100
      expect(transaction.time).to eq Time.now 
    end
  end

end
