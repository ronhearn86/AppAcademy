class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |h, k| h[k] = [] }
  end

  def name
    @name
  end

  def slogan
    @slogan
  end
  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(str)
    @teachers << str
  end
  def enroll(str)
    if @students.count < @student_capacity
        @students << str
        return true
    else
        return false
    end
  end

  def enrolled?(str)
    if @students.include?(str)
        return true

    else
        return false
    end
  end
  def student_to_teacher_ratio
    return (@students.count / @teachers.count)
  end

  def add_grade(str, grd)
    if @students.include?(str)
        @grades[str] << grd
        return true
    else
        return false
    end
  end

  def num_grades(str)
    return @grades[str].count
  end

  def average_grade(str)
    if @grades[str].count < 1
        return nil
    else
        return (@grades[str].sum / @grades[str].count)
    end
  end
end

