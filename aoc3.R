aoc3


library(reshape2)

colsplit(aoc3, "(?<=\\p{L})(?=[\\d+$])", c("char", "digit"))
aoc3

as.string(aoc3)
as.character(aoc3)

for (i in aoc3){
  print(i)
}

#...