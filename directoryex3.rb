#let's put all students into an array
class String
  def initial
    self[0,1]
  end
end

students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print_letter(students)
  length = 12
  students.each_with_index do |student, index|
    if length > (student[:name].length + 1)
      puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students with names less than 12 characters long"
end
#nothing happens until we call the methods
students = input_students
print_header
print_letter(students)
print_footer(students)
