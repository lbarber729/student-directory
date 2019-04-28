def input_students
  puts "Please enter the names of the students"
  puts "to finish, just hit return twice"
#create an empty array
  students = []
  #get the first name
  name = gets.strip
  #while the name is not empty, repeat this code
  until name.empty? do
  while true do
    puts "What is your cohort?"
    cohort = gets.strip
    cohort = "november" if cohort.empty?
    months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "december"]
    break if months.include?(cohort)
    puts "That is not a correct cohort."
  end
    #add the student hash to the array
    students << {name: name, cohort: cohort.to_sym}
    if students.count == 1
      puts "Now we have 1 student"
    else
    puts "Now we have #{students.count} students"
  end
    #get another name from the user
    puts "What is your name?"
    name = gets.strip
    if name == ""
      break
    end
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center (60)
  puts "-------------".center(56)
end

def print(students)
  students.sort_by! { |student| student[:cohort] }
  students.each do |student, cohort|
    puts "#{student[:name]}, (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
