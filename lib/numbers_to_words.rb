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

    def trans3(num_str, number_hash)
      first_digit = number_hash.fetch(num_str[0].to_i())
      if num_str[1,2].to_i.>(20)
        mult_10 = number_hash.fetch((num_str[1].concat('0')).to_i)
        last_digit = number_hash.fetch(num_str[2].to_i())
        last_2_digits =  mult_10 + '-' + last_digit
      elsif num_str[1,2].to_i.>(10)
        last_2_digits = number_hash.fetch(num_str[1,2].to_i)
      else
        last_2_digits = number_hash.fetch(num_str[2].to_i)
      end
      (first_digit + '-hundred-and-' + last_2_digits)
    end

    if number_words.include?(self)
      number_words.fetch(self)
    else
      int_str = self.to_s()
      length = int_str.length()
      if length == (2)
        ones_digit = int_str[1].to_i()
        mult_10 = self.-(ones_digit)
        number_words.fetch(mult_10).concat('-' + number_words.fetch(ones_digit))
      elsif length == (3)
        trans3(int_str, number_words)
      end
    end



    # if self.>(100)
    #   # ones_digit = self.%(10)
    #   # mult_10 = self.-(ones_digit)
    #   # mult_100 = self.-(ones_digit + mult_10)
    #   # hundreds_digit = self/100
    # elsif self.>(20)
    #   # ones_digit = self.%(10)
    #   # mult_10 = self.-(ones_digit)
    #   # ones_word = number_words.fetch(ones_digit)
    #   # mult_10_word = number_words.fetch(mult_10)
    #   # mult_10_word.concat('-' + ones_word)
    # else
    #   number_words.fetch(self)
    # end
  end
end
