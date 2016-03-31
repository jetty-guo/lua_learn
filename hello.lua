print "asdas"


a = "hello" .. "world"   .."郭帅永远是冠军"

print (a)

site = {}
site["key"] = "www.baidu.com"
-- lua 赋值的基本方式
print (site["key"])
--lua 变量
print (site.key)




a,b,c = 0,1
print(a,b,c)
x, y = 1,2
print (x,y)

x, y = y, x



print (x,y)
a, b, c = 0

print(a,b,c)

-- 循环
--[[  多行注释
while( true )
do
   print("循环将永远执行下去")
end
]]

if(0)   --0为true  因为true英文就是确定的意思，通常1表示肯定，而0表示否定即false，false的错误否定的意思，所以就将1定义为true，0定义为flase，这个是bool变量的约定，布尔是这样设定的

then
	print ("0为true")
end

a = 10
if (a < 20)
then
	print ("a小于20")

end


--[定义变量]
a = 100
if(a<20)
then
	print ("a小于20")

else
	print("a > 20")
end


--[ 定义变量 --]
a = 100

--[ 检查布尔条件 --]
if( a == 10 )
then
   --[ 如果条件为 true 打印以下信息 --]
   print("a 的值为 10" )
elseif( a == 20 )
then
   --[ if else if 条件为 true 时打印以下信息 --]
   print("a 的值为 20" )
elseif( a == 30 )
then
   --[ if else if condition 条件为 true 时打印以下信息 --]
   print("a 的值为 30" )
else
   --[ 以上条件语句没有一个为 true 时打印以下信息 --]
   print("没有匹配 a 的值" )
end
print("a 的真实值为: ", a )



--[ 定义变量 --]
a = 100;
b = 200;

if(a == 100)
then
	if( b == 200)
	then
	      print("a 的值为 100 b 的值为 200" );
		end
end


--[[ 函数返回两个值的最大值 --]]
function max(num1, num2)

   if (num1 > num2) then
      result = num1;
   else
      result = num2;
   end

   return result;
end



print("两值比较最大值为 ",max(10,4))
print("两值比较最大值为 ",max(5,6))



--Lua 中我们可以将函数作为参数传递给函数，如下实例：

myprint = function(param)
	print ("这是打印函数- ##"..param.."##")

end

function add(num1,num2,functionPrint)
result = num1 + num2
functionPrint(result)
end


myprint(10)

add(2,4,myprint)

-- Lua函数可以返回多个结果值，比如string.find，其返回匹配串"开始和结束的下标"（如果不存在匹配串返回nil）。
s,e =  string.find("w3cschool菜鸟教程：www.w3cschool.cc", "菜鸟教程")

print (s,e)


a = true
b = true

if ( a and b )
then
   print("a and b - 条件为 true" )
end

if ( a or b )
then
   print("a or b - 条件为 true" )
end

print("---------分割线---------" )

-- 修改 a 和 b 的值
a = false
b = true

if ( a and b )
then
   print("a and b - 条件为 true" )
else
   print("a and b - 条件为 false" )
end

if ( not( a and b) )
then
   print("not( a and b) - 条件为 true" )
else
   print("not( a and b) - 条件为 false" )
end

a = "Hello "
b = "World"


print("连接字符串 a 和 b ", a..b )

print("b 字符串长度 ",#b )
print("字符串 Test 长度 ",#"Test" )
print("w3cschool菜鸟教程网址长度 ",#"www.w3cschool.cc" )

a = 20
b = 10
c = 15
d = 5

e = (a + b) * c / d; -- ( 30 * 15 ) / 5
print (e)

string1 = "Lua"
print("\"字符串 1 是\"",string1)
string2 = 'w3cschool.cc'
print("字符串 2 是",string2)
string3 = [["Lua 教程"]]
print("字符串 3 是",string3)

string = "Lua Tutorial"

print(string.find(string,"T"))
reversedString = string.reverse(string)
print("新字符串为",reversedString)

string1 = "Lua"
string2 = "Tutorial"
number1 = 10
number2 = 20
-- 基本字符串格式化
print(string.format("基本格式化 %s %s",string1,string2))
-- 日期格式化
date = 2; month = 1; year = 2014
print(string.format("日期格式化 %02d/%02d/%03d", date, month, year))
-- 十进制格式化
print(string.format("%.4f",1/3))



-- 字符转换
-- 转换第一个字符
print(string.byte("Lua"))
-- 转换第三个字符
print(string.byte("Lua",3))
-- 转换末尾第一个字符
print(string.byte("Lua",-1))
-- 第二个字符
print(string.byte("Lua",2))
-- 转换末尾第二个字符
print(string.byte("Lua",-2))

-- 整数 ASCII 码转换为字符
print(string.char(97))



string1 = "www."
string2 = "w3cschool"
string3 = ".cc"
-- 使用 .. 进行字符串连接
print("连接字符串",string1..string2..string3)

-- 字符串长度
print("字符串长度 ",string.len(string2))

-- 字符串复制 2 次
repeatedString = string.rep(string2,2)
print(repeatedString)



--[[for k, v in pairs(t) do
    print(k, v)
end
泛型 for 在自己内部保存迭代函数，实际上它保存三个值：迭代函数、状态常量、控制变量。
泛型 for 迭代器提供了集合的 key/value 对，语法格式如下：

]]

array = {"Lua", "Tutorial"}

for key,value in ipairs(array)
do
   print (key,value)

end


--[[ 无状态的迭代器是指不保留任何状态的迭代器，因此在循环中我们可以利用无状态迭代器避免创建闭包花费额外的代价。

   每一次迭代，迭代函数都是用两个变量（状态常量和控制变量）的值作为参数被调用，一个无状态的迭代器只利用这两个值可以获取下一个元素


   这种无状态迭代器的典型的简单的例子是ipairs，他遍历数组的每一个元素。



]]



function square(iteratorMaxCount,currentNumber)
   if currentNumber < iteratorMaxCount
   then
      currentNumber = currentNumber + 1
   return currentNumber , currentNumber*currentNumber
   end
end


for i,n in square, 3, 0
do
   print(i,n)
end


function iter(a,i)
i = i + 1
local v = a[i]
if v then
   return i,v

   end
end

function ipairs(a)
   return iter,a,0
endx















