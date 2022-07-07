musicians = ['nikki carlos', 'tony leng', 'adam henning', 'kyle jeffrey', 'alison jeffrey']
# index           0             1             2                 3             4

# CRUD

# Create
# array << value
# musicians.push('alex')
musicians << 'alex'

# Read
# array[index]
musicians[0]
musicians[-1]
musicians[0..2]
musicians.index('kyle jeffrey')

# Update
# array[index] = new_value
musicians[-1] = 'alex last_name'

# Delete
# array.delete
# array.delete_at(-1)
musicians.delete('alex last_name')
musicians.delete_at(-1)

# Methods
musicians.size
musicians.length
musicians.count
musicians.uniq
musicians.shuffle
musicians.sample

# p musicians

for index in (0...musicians.length)
  puts "#{index + 1}.) #{musicians[index]}"
end

for musician in musicians
  puts "#{musicians.index(musician) + 1}.) #{musician}"
end
