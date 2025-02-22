# code here!
class School
    attr_accessor :name, :roster 

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        # if !roster[grade]
        #     roster[grade] = []
        # end
        roster[grade] << student_name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        hash = {}
        roster.each do |grade, students|
            hash[grade]  = students.sort
        end
        hash
    end
end
