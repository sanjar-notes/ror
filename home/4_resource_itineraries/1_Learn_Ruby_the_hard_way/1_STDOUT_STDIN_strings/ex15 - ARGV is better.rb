filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}: "
print txt.read

print "Type the fileanme again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
# using ARGV is better, all in one.
