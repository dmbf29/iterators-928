# build a timer to see how long a block of code takes to execute
# yield if block_given?
def timer
  start_time = Time.now
  # we will do some stuff to time
  yield
  puts "Elapsed time: #{Time.now - start_time}"
end

timer do
  puts "Doing something quick..."
  sleep(1)
  puts "...done"
end

# timer

# timer do
#   puts "Doing something slow..."
#   sleep(3)
#   puts "...done"
# end
