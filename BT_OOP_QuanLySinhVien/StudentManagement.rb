class Human 
    @name
    @hair
    @weight
    @height
    @age
    @phone
    @email
    @nation
  
    def initialize(name,hair,weight,height,age,phone,email,nation)
        @name = name
        @hair = hair
        @weight = weight 
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end
  
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation
  
    def showInformation
        puts "Fullname: #{name} \nHair: #{hair} \nWeight: #{weight} \nHeight: #{height} \nAge: #{age} \nPhone: #{phone} \nEmail: #{email} \nNation: #{nation}"
    end
end
  
class Student < Human 
    @grade_1
    @grade_2
    @grade_3
  
    def initialize(name,hair,weight,height,age,phone,email,nation, grade_1, grade_2, grade_3)
        super(name,hair,weight,height,age,phone,email,nation)
        @grade_1 = grade_1
        @grade_2 = grade_2
        @grade_3 = grade_3
    end
  
    attr_accessor :grade_1, :grade_2, :grade_3
  
    def average
        (@grade_1 + @grade_2 + @grade_3 ) / 3.0
    end
  
    def showInformation 
        super
        puts "Grade 1: #{grade_1} \nGrade 2: #{grade_2} \nGrade 3: #{grade_3} \nAverage: #{average}"
    end
end

arrayStudent = Array.new
student_1 = Student.new("Wiro", "Red", "58kg", "162cm", 21, "0987654321", "wirotino@gmail.com", "Việt Nam", 9, 9, 8)
student_2 = Student.new("Enzo", "Green", "70kg", "168cm", 18, "0123456789", "enzotino@gmail.com", "Việt Nam", 9, 8, 7)
student_3 = Student.new("Toro", "Blue", "60kg", "188cm", 25, "0968686868", "torotino@gmail.com", "Việt Nam", 8, 9, 10)
arrayStudent.push(student_1, student_2, student_3)

puts "Danh sách sinh viên chưa sắp xếp: "
arrayStudent.each do |student|
    puts "#{student.showInformation}"
end 

puts "Danh sách sinh viên đã sắp xếp theo thứ tự điểm trung bình giảm dần: "
arrayStudent.sort_by { |student | [student.average] }.reverse.each do |student|
    puts "#{student.showInformation}"
end 
