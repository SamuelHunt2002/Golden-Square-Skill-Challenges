require 'count_words'
RSpec.describe 'Count Words' do
    it 'Correctly counts 5 words' do
        expect(count_words("I hate sand it's coarse")).to eq 5 
    end
    it 'Correctly counts 1 word' do
        expect(count_words("Test")).to eq 1
    end
end