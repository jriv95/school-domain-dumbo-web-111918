require "pry"
class School

  attr_reader :roster, :add_student, :grade, :sort

  def initialize(roster)
    @roster = Hash.new
  end

  def roster=(roster)
    @roster = roster
  end

  def add_student=(add_student)
    @add_student = add_student
  end

  def add_student (student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
   @roster.values.map {|student_name| student_name.sort!}
   @roster
  end

end
