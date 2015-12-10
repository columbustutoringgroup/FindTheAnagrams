require 'rspec'
require_relative '../anagram_detector'


RSpec.describe 'canonical' do
  it 'takes a string and returns an alphanumerically sorted version of it' do
    expected = 'allsy'
    actual = canonical 'sally'
    expect(actual).to eq(expected)
  end
end

RSpec.describe 'detect_anagram' do
  it 'outputs true if two words are anagrams (case-insensitive)' do
    expect(detect_anagram('BeeWizard', 'WideZebra')).to be true
  end
  
  it 'outputs false if two words are not anagrams' do
    expect(detect_anagram('CoverMyMeds', 'CoverMyLEDs')).to be false
  end
end