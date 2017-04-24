# p "this is a string"
# # p "100"+10
# p 10+10
# p "100"+"200"
# p "ian" + "jay"

# color1 = "black"
# color2 = "white"
# color3 = "black"

# result = (color1==color2)

# result2 = 100

# p result
# p result2


ian = "cool`"
jay= "tall"
daisy = "small"

myArrayx = [ian,jay,daisy]


# Simple way

# $a1=" "
# $b1=" "
# $c1=" "
# $a2=" "
# $b2=" "
# $c2=" "
# $a3=" "
# $b3=" "
# $c3=" "

board = [" "," "," "," "," "," "," "," "," "]

# def doSomeStuff()
#   puts "
# i am doing some stuff

# done
#   "
# end

def printBoard(board)
  puts "-------------"
  puts "| " + board[0]  + " | " +  board[1]  + " | " +  board[2]  + " | "
  puts "-------------"
  puts "| " + board[3]  + " | " +  board[4]  + " | " +  board[5]  + " | "
  puts "-------------"
  puts "| " + board[6]  + " | " +  board[7]  + " | " +  board[8]  + " | "
  puts "-------------"

end

# def printBoard()

#   puts "-------------"
#   puts "| " + $a1  + " | " +  $b1  + " | " +  $c1  + " | "
#   puts "-------------"
#   puts "| " + $a2  + " | " +  $b2  + " | " +  $c2  + " | "
#   puts "-------------"
#   puts "| " + $a3  + " | " +  $b3  + " | " +  $c3  + " | "
#   puts "-------------"

# end

printBoard(board)

puts "your turn:    "
go1=gets.chomp()

# if (go1=="a1") then
#   p "here"
#   $a1="X"
# end

puts "you went in position " + go1

printBoard()


