def is_number?(s)
  if Float(s)
    return true
  end
rescue
  return false
end

def printBoard()

  puts "-------------"

  puts "| " + $rowA[0]  + " | " +  $rowA[1]  + " | " +  $rowA[2]  + " | "
  puts "-------------"
  puts "| " + $rowB[0]  + " | " +  $rowB[1]  + " | " +  $rowB[2]  + " | "
  puts "-------------"
  puts "| " + $rowC[0]  + " | " +  $rowC[1]  + " | " +  $rowC[2]  + " | "
  puts "-------------"

end

def placePosition(go)

  go = go.upcase

  if (go.length!=2)
    throw ("your go must be two characters in the form letter number i.e A1")
  end

  letter = go[0]

  if !is_number?(go[1]) then
    throw ("Second character must be numeric")
  end

  number = go[1].to_i

  if (letter!="A" && letter!="B" && letter!="C") then
    throw ("First character must be A, B or C!")
  end

  if (number>3) || (number==0) then
    throw ("numbers must be 1, 2 or 3!")
  end

  row=nil

  # Work out which row to use
  if letter=="A" then
    row=$rowA
  elsif letter=="B" then
    row=$rowB
  elsif letter=="C" then
    row=$rowC
  end

  # Remember the array is zero-indexed!
  index = number-1

  row[index]="X"
  puts "you went in position " + go


end


# =======================program ends here the program border no mexicans====================


p "WELCOME TO JAY TIC-TAC-TOE!"

$rowA = [" "," "," "]
$rowB = [" "," "," "]
$rowC = [" "," "," "]

#Print empty board
printBoard()

# Take turns until whatever

loop do
  # some code here
  puts "your turn:    "
  go = gets.chomp()
  begin
    placePosition(go)
    printBoard()
  # rescue
    # p "you screwed up, go again"
  end
end
