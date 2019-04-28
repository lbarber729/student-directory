def input_students
  puts "Please enter the names of the students"
  puts "to finish, just hit return twice"
#create an empty array
  students = []
  #get the first name
  name = gets.chomp
  puts "What is your country of birth"
  country = gets.chomp
  puts "What is your main hobby"
  hobby = gets.chomp
  #while the name is not empty, repeat this code
  until name.empty? do
    #add the student hash to the array
    students << {name: name,country: country, hobby: hobby, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    puts "What is your name"
    name = gets.chomp
    if name == ""
      break
    end
    puts "What is your country of birth"
    country = gets.chomp
    puts "What is your main hobby"
    hobby = gets.chomp

end
  # return the array of students
  students
  end

def print_header
puts "The students of Villains Academy".center (60)
puts "-------------".center(56)
end

def print(students)
students.each do |student, country, hobby|
  puts "#{student[:name]}, is from #{student[:country]}, and their main hobby is #{student[:hobby]},(#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
