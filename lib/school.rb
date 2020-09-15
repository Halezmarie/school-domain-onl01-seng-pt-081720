# school = School.new("Bayside High School")

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