class Human   
attr_accessor :name , :age 
attr_reader :sex 
attr_writer :income
  def initialize (name ,age ,sex,)
  
     @name=name
     @age=age
     @sex=sex
	 
  end
def introduce()
  print "i'm #{@name},I am #{@age} years old ,i am a #{@sex}, \n"
  end
end 
class Man < Human
 def initialize (name,age)
    super(name,age,'man')
 end
end
tom = Man.new('tom',30)
tom.introduce()
class Woman < Human
  def initialize(name,age)
  super (name ,age,'woman')
  end
end
 mary = Woman.new('mary',45)
 mary.introduce()