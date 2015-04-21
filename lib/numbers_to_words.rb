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
    else

    end



  end
end
