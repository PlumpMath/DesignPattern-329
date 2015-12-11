# iterator is built in by Ruby
@songs = ['Far far away', 'Letting go', 'Love story']
@songs.each do |song|
    puts song
end

@songs.each {|song| puts song}

@songs.each_with_index {|value, index| puts "#{index} => #{value}"}

for index in 0 ... @songs.size
    puts "array[#{index}] = #{@songs[index].inspect}"
end

# Source URL: http://stackoverflow.com/questions/310634/what-is-the-right-way-to-iterate-through-an-array-in-ruby