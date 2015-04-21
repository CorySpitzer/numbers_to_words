require('rspec')
require('numbers_to_words')

describe('Fixnum#to_word') do

  # Translates a single digit number into it's word form.
  it("translates 1 to 'one'") do
    expect(1.to_word()).to(eq('one'))
  end

  it("translates 4 to 'four'") do
    expect(4.to_word()).to(eq('four'))
  end

  # Traslates a double digit number into words.
  it("translates 17 to 'seventeen'") do
    expect(17.to_word()).to(eq('seventeen'))
  end

end
