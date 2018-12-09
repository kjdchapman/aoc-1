require './lib/frequency_calculator'

describe FrequencyCalculator do
  subject { described_class.new.execute(input) }

  context 'with empty input' do
    let(:input) { "" }
    it { is_expected.to eq(0) }
  end

  context 'with an input of +1' do
    let(:input) { "+1" }
    it { is_expected.to eq(1) }
  end

  context 'with an input of +1, +1' do
    let(:input) { "+1\n+1" }
    it { is_expected.to eq(2) }
  end

  context 'with an input of +2' do
    let(:input) { "+2" }
    it { is_expected.to eq(2) }
  end

  context 'with an input of -1' do
    let(:input) { "-1" }
    it { is_expected.to eq(-1) }
  end

  context 'with an input of +1, +1, -2' do
    let(:input) { "+1\n+1\n-2" }
    it { is_expected.to eq(0) }
  end

  context 'with an input of -1, -2, -3' do
    let(:input) { "-1\n-2\n-3" }
    it { is_expected.to eq(-6) }
  end
end
