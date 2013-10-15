class Human   
attr_accessor :name , :age 
attr_reader :sex 
attr_writer :income
  def initialize (name ,age ,sex,income=nil)
  
     @name=name
     @age=age
     @sex=sex
	 
  end
def introduce()
  print "i'm #{@name},I am #{@age} years old ,i am a #{@sex}, i own #{@income} per month \n"
  end
end 
tom = Human.new('tom',30,'male')
tom.introduce()

tom.name='tomy'
tom.age=35
#tom.sex='man'
tom.introduce()
tom.income =5000
tom.introduce()