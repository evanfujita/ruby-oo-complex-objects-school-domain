require 'pry'

class School

    
    attr_accessor :name, :roster
    

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
           if !@roster[grade]
            @roster[grade] = []
           end
           @roster[grade] << name
    end

    def roster
        @roster
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        hash = {}
        roster.each do |grade, student|
            hash[grade] = student.sort
        end            
        hash
    end

end

shs = School.new("SHS")
shs.add_student("X", 10)
shs.add_student("Y", 10)
shs.add_student("Z", 11)
shs.add_student("B", 7)
shs.add_student("A", 9)

