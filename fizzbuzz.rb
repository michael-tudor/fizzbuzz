(1..100).each do |value|
  text = ''
  text += 'Fizz' if value % 3 == 0
  text += 'Buzz' if value % 5 == 0
  text = value if text.empty?

  puts text
end
