puts "1. Viết lệnh hiển thị Xin chào + tên SV + MSV"
puts "2. Nhập 1 số từ bàn phím, in ra số đó"
puts "3. So sánh 2 giá trị nhập vào từ bàn phím, in ra giá trị lớn hơn"
puts "----------------------------------------------------------------"
print "Hãy chọn một số: "
numbers =  gets.to_i
case numbers
    when 1
        fullName = "Trần Y Tiến"
        studentCode = "1911505310252"
        puts "Xin chào #{fullName} #{studentCode}"
    when 2
        print "Nhập một số: "
        a = gets.to_i
        puts "Số vừa nhập là: #{a}"
    when 3
        print "Nhập vào số thứ nhất: "
        a = gets.to_i
        print "Nhập vào số thứ hai: "
        b = gets.to_i
        print "Số lớn nhất trong 2 số là: #{a > b ? a : b}"
    else
        puts "Hãy chọn số theo yêu cầu"
end