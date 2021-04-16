class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |h, k| h[k] = []}
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

  def hire(teacher)
    @teachers.push(teacher)
  end

  def enroll(student)
    if students.length < @student_capacity
        students.push(student)
        true
    else
        false
    end
  end

  def enrolled?(student)
    students.map(&:downcase).include?(student.downcase)
  end

  def student_to_teacher_ratio
    students.length / teachers.length
  end

  def add_grade(student, grade)
    if self.enrolled?(student)
        @grades[student].push(grade)
        true
    else
        false
    end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    return nil if !self.enrolled?(student) || num_grades(student).zero?
    @grades[student].sum / self.num_grades(student)
  end

end
