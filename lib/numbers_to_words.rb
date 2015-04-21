class Fixnum
  define_method(:to_word) do
    # copied and pasted from
    # stackoverflow.com/questions/19445003/using-ruby-convert-numbers-to-words
    number_words = {  1000000 => "million",
                      1000 => "thousand",
                      100 => "hundred",
                      90 => "ninety",
                      80 => "eighty",
                      70 => "seventy",
                      60 => "sixty",
                      50 => "fifty",
                      40 => "forty",
                      30 => "thirty",
                      20 => "twenty",
                      19=>"nineteen",
                      18=>"eighteen",
                      17=>"seventeen",
                      16=>"sixteen",
                      15=>"fifteen",
                      14=>"fourteen",
                      13=>"thirteen",
                      12=>"twelve",
                      11 => "eleven",
                      10 => "ten",
                      9 => "nine",
                      8 => "eight",
                      7 => "seven",
                      6 => "six",
                      5 => "five",
                      4 => "four",
                      3 => "three",
                      2 => "two",
                      1 => "one",
                      0 => "zero" }

    if number_words.include?(self)
      number_words.fetch(self)
    elsif self.<(100)
      last_digit = self.%(10)
      mult_10 = self.-(last_digit)
      mult_10.to_word() + '-' + last_digit.to_word()
    elsif self.<(1000)
      last_2_digits = self.%(100)
      first_digit = self.to_s()[0].to_i()
      first_word = first_digit.to_word()
      if last_2_digits == 0
        first_word + '-hundred'
      else
        first_word + '-hundred-and-' + last_2_digits.to_word()
      end
    end

  end
end
