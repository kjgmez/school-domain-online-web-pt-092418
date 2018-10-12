class School
  def initialize(school_name)
    @school_name= school_name
    @roster={}
  end
  def roster
    @roster
  end
  def add_student(name, grade)
    @name=name
    @grade=grade
    @roster.include?(@grade) ? @roster[@grade] << @name : @roster[@grade]=[@name] #ternary == conditional ? if true : if fasle (else)
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each{|grade, names| names.sort!} #sort! will change the value we are sorting. sort wont return sorted
  end
end
