def caesar_cipher(string, number_shift)
  new_str = ""
  string.chars.map! do |ch|
    if ch.upcase != ch.downcase
      if is_upper?(ch)
        ch = (ch.ord + number_shift) - 'A'.ord > 26 ? ((ch.ord + number_shift) - 26).chr : (ch.ord + number_shift).chr
      else
        ch = (ch.ord + number_shift) - 'a'.ord > 26 ? ((ch.ord + number_shift) - 26).chr : (ch.ord + number_shift).chr
      end
    end
    new_str += ch
  end
  puts new_str
end

def is_lower?(c)
  c >= 'a' && c <= 'z'
end

def is_upper?(c)
  !is_lower?(c)
end

caesar_cipher("What a string!", 5)
