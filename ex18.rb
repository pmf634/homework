filename = ARGV.first
prompt = ">"
txt = File.open(filename)
puts "your filename is #{filename}"


puts txt.read()