require_relative "../lib/person"

describe Person do
  subject(:person) { described_class.new(first_name: first_name, last_name: last_name) }

  describe "#full_name" do
    subject(:full_name) { person.full_name }

    let(:first_name) { 'Alicia' }
    let(:last_name) { 'Bulhoes' }

    it "returns the first and last names concatenated" do
      expect(full_name).to eq("#{first_name} #{last_name}")
    end
  end
end
