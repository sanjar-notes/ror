# file read and write

# open and close
# fileObj = open('file_path', [mode='r'])
# fileObj.close - close the file

# # Read
# .read - whole file
# .readline - kind of an iterator that goes line by line

# # Move - like a video_disc/record_player
# .seek(location_in_bytes)
# seek(0) - moves to beginning of file

# # Write
# .write('stuff to write') - as it is, no automatic newline (as usual).
# .truncate([from=0])  - empties the file from position

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C(^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp

print "line 2: "
line2 = $stdin.gets.chomp

print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write('\n')
target.write(line2)
target.write('\n')
target.write(line3)
target.write('\n')

puts "And finally, we close it."
target.close
