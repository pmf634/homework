the_count =[1,2,3,4,5]
fruits = ['apples','oranges','pears','apricots']
change =[1,'pennies',2,'dimes',3,'quarters']


the_count.each do |number|
  puts "this is count #{number}"

 end
 
 fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

change.each {|i| puts " i got #{i}" } 

#puts " i got #{i}"
#end


Elements =[]
(0..5).each do |i|
puts "Adding #{i} to the list ."

Elements.push(i)
end

Elements.each do |i|
 puts "Elements was: #{i}"
 end