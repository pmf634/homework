filename = ARGV.first
puts "your filename is :#{filename}"

puts "I will erase you file : if ok ,please enter ENTER"
puts "if not please ctrl +c"
target = File.open(filename, 'w' )
print "?"
STDIN.gets 

puts "we will truncate you file"

target.truncate(target.size)

puts "please enter you lines:"

print "enter you line1:" ; line1 =STDIN.gets.chomp()
print "enter you line2:" ; line2 =STDIN.gets.chomp()
print "enter you line3:" ; line3 =STDIN.gets.chomp()

puts "we will write these lines:"

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

target.close()