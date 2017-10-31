# Codebar

## Part I: Members, Students and Instructors

You're starting your own web development school called Codebar! Everybody at Codebar -- whether they are attending workshops or teaching them -- is a `Member`.
* Each member has a `full_name`.
* Each member should be able to `introduce` themselves (e.g., "Hi, my name is Kevin!").

Each `Member` is also either a `Student` or an `Instructor`.
* Each student has a `reason` for attending Codebar (e.g., "I've always wanted to make websites!").
* Each instructor a `bio` (e.g., "I've been coding in Ruby for 5 years and want to share the love!").
* Each instructor also has a set of `skills` (e.g., `["Ruby", "Javascript", "C++"]`).
* An instructor can gain a new skill using `add_skill`.

## Part II: Workshops

Codebar also has Workshops. Each workshop has...
* A `date`.
* A `classroom`.
* A group of instructors.
* A roster of students.

An `add_participant` method that accepts a member as an argument. If the Member is an Instructor, add them to the instructors list. If a Member is a Student, add them to the students list.

> Hint: look into Ruby's `.class` method.

Create another method `print_details` that outputs the details of the workshop.

> Hint: look into `.each_with_index`.

## Test Your Code

Make your code work for the following calls and print out the response you can see in the comments below...

```rb
workshop = Workshop.new("12/03/2014", "Shutl")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Instructor.new("Vicky Ruby", "I want to help people learn coding.")
vicky.add_skill("HTML")
vicky.add_skill("JavaScript")
nicole = Instructor.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
nicole.add_skill("Ruby")

workshop.add_participant(jane)
workshop.add_participant(lena)
workshop.add_participant(vicky)
workshop.add_participant(nicole)
workshop.print_details
# =>
# Workshop - 12/03/2014 - Classroom: CR6
#
# Students
# 1. Jane Doe - I am trying to learn programming and need some help
# 2. Lena Smith - I am really excited about learning to program!
#
# Instructors
# 1. Vicky Ruby - HTML, JavaScript
#    I want to help people learn coding.
# 2. Nicole McMillan - Ruby
#    I have been programming for 5 years in Ruby and want to spread the love
#
```

## Bonus I

The `print_details` method currently does a number of different things, like printing out workshop details, the list of Students and the list of Coaches.

Create separate methods to print the workshop details (date and classroom), a method to print out the students and one to print out the coaches. Call these from `print_details` instead of having all the code there.

Also, make sure that these methods cannot be invoked from outside the class.

> Hint: look into defining private class methods.
