input = c(264360:746325)

# It is a six-digit number.
# The value is within the range given in your puzzle input.
# Two adjacent digits are the same (like 22 in 122345).
# Going from left to right, the digits never decrease; 
# they only ever increase or stay the same (like 111123 or 135679).


#convert numbers to strings
inputchar = as.character(input)
finalcount = 0
for (k in 1:length(input)){
  #check adjacent digits for the first number, format:
  stringnumber = substring(inputchar[k], first = c(1,2,3,4,5,6), last = c(1,2,3,4,5,6))
  #check with for loop:
  checksame = vector()
  checkrise = vector()
  for (i in 1:(length(stringnumber)-1)){
    checksame = append(checksame, stringnumber[i]==stringnumber[i+1])
  }
  #if any is TRUE, we should remain this number and check if the digits increase:
  if (any(checksame)){
    for (j in 1:length(stringnumber)-1){
      checkrise = append(checkrise, as.numeric(stringnumber[j])<=as.numeric(stringnumber[j+1]))
    }
    if (all(checkrise)){
      finalcount = finalcount + 1
    }
  }    else{ 
    next
  }
}

finalcount # this is the final count of possible passwords

