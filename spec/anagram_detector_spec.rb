require 'rspec'
require 'anagram_detector'

describe 'AnagramDetector' do
  let(:script) { AnagramDetector.new }

  it "returns true when input1 and input2 canonicals are equal" do
    expect(script.detect_anagram('angel', 'glean')).to eq true
    expect(script.detect_anagram('glean', 'angel')).to eq true
    expect(script.detect_anagram('pants', 'pants')).to eq true
    expect(script.detect_anagram('CinEmA', 'iceman')).to eq true
    expect(script.detect_anagram('defgh8', 'g8hefd')).to eq true
  end


end
