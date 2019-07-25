# Define a variable , and it is intiger
x=1
y = 2

## Access Variables 
puts x
puts y

## Access Variables along with string , #{variable-name} is syntax of variable accessing

puts "X = #{x}\nY = #{y}" 

# Define a variable and it is string., Expecting input in quotes
name='Hello'

puts "Name = #{name}"

## Variable Type :: Array (Also called as List in YAML) 
x=['a','b','c', 4]
puts "First Value = #{x[0]}, Last Value = #{x[3]}"

## Variable Type :: Hash (Also called as Dictionary in YAML)
course = {
  'name' => 'DevOps',
  'timings'  => '6AM'
}

puts "Course Name = #{course['name']} , Course Timing = #{course['timings']}" 

## White Space arrays 
x=%w(a b c 4)
puts "#{x[0]}"
