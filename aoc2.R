# before running the program, replace position 1 with the value 12 and replace position 2 with the value 2.
# What value is left at position 0 after the program halts?


aoc2 <- read.csv("~/Downloads/aoc2.txt", header=FALSE)
aoc2

# wenn 1: add 2 and 3, store in 4.


for (i in 1:length(aoc2)){
  print(aoc2[i])
  if (aoc2[i]==1){
    aoc2[i+3] = aoc2[i+1]+aoc2[i+2]
    
  }
}
