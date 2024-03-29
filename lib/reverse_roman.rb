def reverse_roman(numeral)
  converter = {"CM" => "900+",
              "M" => "1000+",
              "CD" => "400+",
              "D" => "500+",
              "XC" => "90+",
              "C" => "100+",
              "XL" => "40+",
              "L" => "50+",
              "IX" => "9+",
              "X" => "10+",
              "IV" => "4+",
              "V" => "5+",
              "I" => "1+"
              }

  converter.each do |letter,value|
    numeral.gsub!(letter, value)
  end
  eval(numeral.chop)
end
