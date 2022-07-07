# create a greeting method (first last)
# stylize the name -> full_name
# greet that person

def greeting(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  yield(full_name)
end

#
greeting('kyle', 'jeffrey') do |full_name|
  puts "👋 Hello #{full_name} 🇺🇸"
end

greeting('leo', 'last_name') do |full_name|
  puts"👋 Privit #{full_name} 🇺🇦"
end

# musicians.map...
def map(array)
  new_array = []
  array.each do |element|
    new_array << yield(element)
  end
  new_array
end
