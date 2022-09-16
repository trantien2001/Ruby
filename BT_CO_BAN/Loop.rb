sum1 = 0;
for i in (0..100) do
  puts "#{i}"  
  sum1 += i;
end
puts "Tổng các số từ 1 -> 100 là: #{sum1}"

sum2 = 0;
for i in (0..100) do 
  if i%5 == 0
  	sum2 += i;
    puts "#{i}"
  end
end
puts "Tổng các số chia hết cho 5 từ 1 -> 100 là: #{sum2}"