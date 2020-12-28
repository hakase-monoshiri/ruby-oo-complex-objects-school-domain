class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}

    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade_number)
        @roster[grade_number]
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade, students|
            students.sort!
        end

    end

end