# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive
# were written out in words, how many letters would be used?


class Euler17
  NUM_STR = {
    1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six',
    7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
    12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
    16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
    20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty',
    70 => 'seventy', 80 => 'eighty', 90 => 'ninety', 100 => 'hundred', 1000 => 'onethousand'
  }

  def self.two_num_str(n)
    NUM_STR[n] ? NUM_STR[n] : (NUM_STR[n/10 * 10] + NUM_STR[n % 10])
  end

  def self.calculate
    (21..99).to_a.each { |n| NUM_STR[n] = two_num_str(n) }

    (101..999).to_a.each do |n|
      n_hundred = NUM_STR[n/100] + NUM_STR[100]

      NUM_STR[n] = if n % 100 == 0
        n_hundred
      else
        n_hundred + 'and' + self.two_num_str(n.to_s[1..-1].to_i)
      end
    end

    NUM_STR[100] = 'onehundred'
    NUM_STR.map{ |i, s| s.size }.reduce(:+)
  end
end

print Euler17.calculate
