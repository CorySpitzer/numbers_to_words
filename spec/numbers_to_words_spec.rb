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

  it("translates a number not in the hash.") do
    expect(23.to_word()).to(eq('twenty-three'))
  end

  it("translates a three digit number that is not in the hash.") do
    expect(101.to_word()).to(eq('one-hundred-and-one'))
  end

  it("translates another three digit number that is not in the hash.") do
    expect(231.to_word()).to(eq('two-hundred-and-thirty-one'))
  end

end
