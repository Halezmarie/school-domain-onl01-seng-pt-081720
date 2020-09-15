# school = School.new("Bayside High School")

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
 
 school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 9)
school.add_student("Moshe Zeus", 9)
school.add_student("Onkelos Octavius", 9)
school.roster
school.add_student("Sugar Zaza", 5)
school.roster
school.add_student("Theo Madus", 5)
school.add_student("Abbah Zabbah", 2)
school.roster
school.grade(9)