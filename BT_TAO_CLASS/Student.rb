class Student
    @name
    @age
    @grade1
    @grade2
    @grade3
    
    def initialize(name,age,grade1,grade2,grade3)
        @name = name
        @age = age
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
    end

    def get_name
        @name
    end
    
    def set_name new_name
        @name = new_name
    end

    def get_age
        @age
    end

    def set_age new_age
        @age = new_age
    end

    def get_grade1
        @grade1
    end

    def set_grade1 new_grade1
        @grade1 = new_grade1
    end

    def get_grade2
        @grade2
    end

    def set_grade2 new_grade2
        @grade2 = new_grade2
    end

    def get_grade3
        @grade3
    end

    def set_grade3 new_grade3
        @grade3 = new_grade3
    end

    def average
        (@grade1 + @grade2 + @grade3) / 3.0
    end

    def toString 
        puts "Name: #{get_name} Age: #{get_age} Average: #{average}"
    end

    print "Nhập tên: "
    name = gets

    print "Nhập tuổi: "
    age = gets

    print "Nhập điểm 1: "
    grade1 = gets.to_f
    
    print "Nhập điểm 2: "
    grade2 = gets.to_f
    
    print "Nhập điểm 3: "
    grade3 = gets.to_f

    student = Student.new(name, age, grade1, grade2, grade3)
    student.toString
end