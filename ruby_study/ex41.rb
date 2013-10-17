module Fish 
	def can_swimming?
		true 
	end 
end 

module PuruAnimal
	def blood
		'warm'
	end 
	
	def eat_milk?
		true
	end 
end 

class Jingyu 
	include PuruAnimal
	include Fish
end 

jy = Jingyu.new()
puts jy.can_swimming?
puts jy.blood
puts jy.eat_milk?