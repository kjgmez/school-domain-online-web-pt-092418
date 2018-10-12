require 'pry'
class School
  attr_reader :roster
  def initialize(school_name)
    @school_name= school_name
    @roster={}
  end
  # def add_student(student_name, grade)
  #   roster[grade] ||= []
  #   roster[grade] << student_name
  # end
  def add_student(name, grade)
    binding.pry
    @roster.include?(grade) ? @roster[grade] << name : @roster[grade]=[name] #ternary == conditional ? if true : if fasle (else)
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each_value{|names| names.sort!} #sort! will change the value we are sorting. sort wont return sorted
  end
end
