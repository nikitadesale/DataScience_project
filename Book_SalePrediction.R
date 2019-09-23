print("Welcome to Book Sale Prediction System")
set=read.csv('book.csv')
Book_average_rating=set$Book_average_rating
units.sold=set$units.sold
demo=lm(units.sold~Book_average_rating)
nameofbook=readline(prompt = "Enter name of the book ::-")
publisher=c("1.Amazon Digital Services Inc","2.HarperCollins Publishers","3.Macmillan","4. Hachette Book Group","5. HarperCollins Publishing","6.Penguin Group (USA) LLC","7. Random House LLC","8.Simon and Schuster Digital Sales Inc")
publisher
nameofpublisher=readline(prompt = "enter name of publisher from above list ::-")
c=as.numeric(readline(prompt = "enter book rating ::-"))
a=(data.frame(Book_average_rating=c))
demo1=predict(demo,a)
demo1
vallue=as.integer(demo1)
print(paste0("The ",nameofbook," published by ",nameofpublisher," with rating::- ",c))
print(paste0("There ",vallue," will be sold"))
summary(set)