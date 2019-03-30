x=read.csv("student.csv")

print(paste("\nquestion 1\n"))
y<-max(x$Percent)
print(subset(x,(Percent==y)))

print(paste("\nquestion 2\n")) 
z<-subset(x,(Branch=="cse"))
print(subset(z,(Percent>=80)))

print(paste("\nquestion 3\n"))
print(subset(x,as.Date(DOA)>(as.Date("2016/07/01"))))

print(paste("Question 4"))
write.csv(x,"student1.csv")
cat(11,160,"Sohail Alam","CSE",82,"2017/05/23",file = "student1.csv",sep = ",",append = TRUE)
cat(file="student1.csv",sep = "\n",append = TRUE)
cat(12,327,"Md. Hamid Reza","CSE",96,"2018/05/12",file = "student1.csv",sep = ",",append = TRUE)

y=read.csv("student1.csv")
print(y)