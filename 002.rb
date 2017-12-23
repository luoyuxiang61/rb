# .to_s方法可以把数字对象转为string对象,float的运算是不精确的
num_one = 1.000
num99 = 0.999
puts num_one.to_s + " - " + num99.to_s + " = "  + (num_one - num99).to_s


# .class 方法可以得到对象的类型
puts 1.class

puts 1.234.class

puts "A String".class


# 猜测：大写的变量名是常量，常量可以被重新赋值，但是会产生警告
 A_CONSTANT = 31.4

 A_CONSTANT = 1.6

 puts A_CONSTANT


# 猜测：File.new方法因为有2个参数所以要加括号，第一个参数是文件名，第二个参数可选
# 表示返回一个可以向文件写入数据的handler
write_handler = File.new("yourSum.out","w")

# 这一行看不懂为什么最后要加.to_s
write_handler.puts("Random Text").to_s

# 测试了一下，不加.to_s也能向文件写入字符串
write_handler.puts("Hello Luoyuxiang I am ruby")

write_handler.close

# 从下面两行可以看出，File.read()是同步的。。
data_from_file = File.read("yourSum.out")

puts "Data From File : " + data_from_file

# load可以从其他rb文件加载代码，只有一个参数所以不加括号？
# load "001.rb"


# 控制语句
age = 12

if (age >= 5) && (age <= 6)
  puts "You're in kindergarten"
elsif (age >= 7) && (age <= 13)
  puts "You're in Middle School"
  puts "Yeah"
else
  puts "Stay Home"
end

# 判断两个数的大小关系的运算符 <=> 左大返回1,左小返回-1
puts "5 <=> 10 = " + (5 <=> 10).to_s
puts "10 <=> 5 = " + (10 <=> 5).to_s

# unless ：如果unless后面的条件表达式是false才会运行紧跟unless的代码，否则就运行else后面的代码
# 不加else直接结束
age2 = 10
unless age2 < 5
  puts "Dont Study!"
else
  puts "Please Study to death!"
end

# 根据条件puts
age3 = 15
puts "You should go to school" if (age3 >= 10)
# 这里再次测试unless，因为是true，所以不输出
puts "You should go to school" unless (age3 >= 10)

# 用case-when进行选择(最后一个when可以写成else)
# 目前来看 print不会自动换行,puts会自动换行
print "Enter Greeting : "
greeting = "English"

case greeting
when "French","french"
  puts "Bojour"
  exit
when "Spanish","spanish"
  puts "Hola"
  exit
when "English","english"
  puts "Hello"
  # exit #exit是直接退出程序，而不是退出循环
else "天朝"
  puts "你好"
  # 最后一个不需要加exit也会自动退出
end



#三元运算符的表达式作为puts函数的参数
age = 12
puts (age > 20) ? "Old" : "Young"


# 循环，继续循环，跳出循环

#do循环
x = 1

loop do
  x += 1
  next unless (x % 2) == 0 #next类似continue 如果是单数，条件表达式为false，执行next，则不打印单数
  puts x.to_s

  break if x >= 10
end


# while循环
y = 1

while y <= 10
  y += 1
  next unless (y % 2) == 0
  puts y
end


# until循环
a = 1

until  a >= 10
  a += 1
  next unless (a % 2) == 0 #a是偶数不执行next，a不是偶数才执行next
  puts a
  break if (a == 9) #！划重点：为什么我这里写a == 9 的时候break却没有break？答案是：a为9的时候，上面执行了next,所以根本没机会执行这个break,
  #之后a等于10了，所以这个breaka相当于没有写。解决办法：把break写到next前面
end

# 对上面的解决办法的尝试
b = 1

until  b >= 10
  b += 1
  break if(b == 9) #这样就不会输出 9 和 10
  next unless (b % 2) == 0 #a是偶数不执行next，a不是偶数才执行next
  puts b
end

# 去洗澡了 视频看到15：57 收获还可以
