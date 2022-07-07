musicians = ['nikki carlos', 'tony leng', 'adam henning', 'kyle jeffrey', 'alison jeffrey']

# array.each do |parameter|

.split(' ')
# .each will always return the ORIGINAL array
hello = musicians.each do |musician|
  "Hello #{musician.capitalize}"
end

musicians.each_with_index do |musician, index|
  "#{index + 1} #{musician}"
end

# map -> build a NEW array with the last line inside of hte block
# (don't put return inside of the block)
upcased = musicians.map do |musician|
  # you can do some code above..
  musician.upcase
end

first = musicians.map do |musician|
  # you can do some code above..
  musician.split.last
end

a_names = musicians.count do |musician|
  # condition
  # musician[0] == 'a'
  musician.start_with?('a')
end

j_last_names = musicians.reject do |musician|
  last_name = musician.split.last
  last_name.start_with?('j')
end

j_last_name = musicians.find do |musician|
  last_name = musician.split.last
  last_name.start_with?('z')
end

j_last_name = musicians.all? do |musician|
  last_name = musician.split.last
  last_name.start_with?('j')
end

p musicians
p j_last_name

# Return?
# .each => the original array (what it was called on)
# .map => builds a new array
# .count => Integer
# .select => new (filtered) array
# .reject => new (filtered) array
# .find => return the first result it finds or nil
