# school = School.new("Bayside High School")
#Create a class, School, in the `lib` directory that can be initialized with a name. The School class would be referred to as a "model" in the domain model context. 

# A school should have a roster. The roster should be an empty hash upon initialization but will be built out to contain keys of grade levels. The value of each key will be an array of student names. 

# ```ruby
# school.roster
# # => {}
# ```


class School
  def initialize(name)
    @name = name
    @roster = {} #needs empty roster
  end

  def roster
    @roster
  end

  def add_student(name, grade) #able to add student 
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade] #send and retrieve 
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end