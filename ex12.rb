month=12
print "how much is you salary?"
salary = gets.chomp()
tax = salary.to_f * 0.1 
tax_year = salary.to_f * 0.1 * month
year_inint =3000
your_new_inint = (salary.to_f - year_inint) * 0.1 
print "A month you tax is #{tax}"
print "A year you should pay tax #{tax_year}"
print "you new tax #{your_new_inint} ,please check it!"