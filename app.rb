# Your code goes here
require "pry"


class Member 
    attr_accessor :introduce

    def initialize(name)
        @name = name
    end

    def introduce
        puts "Hello, my name is #{@name}."
    end

end

###

class Student < Member
    def initialize(reason, name)
        super(name)
        @reason = reason
    end
end

###

class Instructor < Member
    def initialize(bio, name)
        super(name)        
        @bio = bio
        @skills = []
    end

    def add_skill(skill)
        @skills.push(skill)
    end

end

###

class Workshop
    def initialize(date, subject)
        @date = date
        @subject = subject
        @instructors = []
        @students = []
    end

    def add_participant(person)
        if person.class == Instructor
            @instructors.push(person)
        elsif person.class == Student
            @students.push(person)
        else
            puts "not a member"
        end
    end

end


workshop = Workshop.new("12/03/2014", "Shutl")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Instructor.new("Vicky Ruby", "I want to help people learn coding.")
vicky.add_skill("HTML")
vicky.add_skill("JavaScript")
nicole = Instructor.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
nicole.add_skill("Ruby")




binding.pry
