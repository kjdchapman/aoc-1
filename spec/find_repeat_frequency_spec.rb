require './lib/find_repeat_frequency'

describe FindRepeatFrequency do
  subject { described_class.new.execute(input) }

  context 'with +1, -1' do
    let(:input) { "+1\n-1" }

    it { is_expected.to eq 0 }
  end

  context 'with +1, +1, -1' do
    let(:input) { "+1\n+1\n-1" }

    it { is_expected.to eq 1 }
  end

  context 'with +3, +3, +4, -2, -4' do
    let(:input) { "+3\n+3\n+4\n-2\n-4" }

    it { is_expected.to eq 10 }
  end

  context 'with -6, +3, +8, +5, -6' do
    let(:input) { "-6\n+3\n+8\n+5\n-6" }

    it { is_expected.to eq 5 }
  end

  context 'with +7, +7, -2, -7, -4' do
    let(:input) { "+7\n+7\n-2\n-7\n-4" }

    it { is_expected.to eq 14 }
  end
end
