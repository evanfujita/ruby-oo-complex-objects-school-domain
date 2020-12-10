require 'pry'
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def name
        @name
    end

    attr_accessor :roster

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade
        if !@roster[grade]
            roster[grade] = []
        end
        @roster[@grade] << (student_name)
        
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_students = {}
        roster.each do |grade, student|
        sorted_students[grade] = student.sort 
        end
        sorted_students
    end
end


school = School.new("Bayside High School")

#binding.pry