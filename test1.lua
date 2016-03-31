
print ("Lua的版本是",_VERSION)
mytable = {}
mytable[1] = "lua"
--mytable = nil



print("mytable 的类型是",type(mytable))

mytable[1] = "123"

print (mytable[1])

altertable = mytable
print (altertable[1])
altertable[1] = "567"

print (altertable[1])

altertable = nil
print (mytable[1])


fruits = {"banana","orange","apple"}
print("连接后的字符串 ",table.concat(fruits))

print("连接后的字符串 ",table.concat(fruits,", "))

print("连接后的字符串 ",table.concat(fruits,", ", 2,3))

table.insert(fruits,"mango")
print("索引为 4 的元素为 ",fruits[4])


table.insert(fruits,2,"grapes")
print("索引为 2 的元素为 ",fruits[2])
print("连接后的字符串 ",table.concat(fruits,", "))
print("最后一个元素为 ",fruits[5])
table.remove(fruits)
print("移除后最后一个元素为 ",fruits[5])


print("排序前:")

for k,v in  ipairs(fruits) do
	print (k,v)

end


table.sort(fruits)  --按照ascii的字节顺序进行排序

print("排序后:")
for k,v in ipairs (fruits)  do
 print (k,v)
 end































