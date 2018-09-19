require 'pry'
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    #if the key[grade] include grade, don't replace but push new student's name into name array
    if !@roster.keys.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name

  end
#retreive students from a grade
  def grade(grade)
    #student's name is value of key: grade
      @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort #! replace existing value
    end
  end



end
