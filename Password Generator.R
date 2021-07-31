# Password generator using digest

# The objective is to hack a password that contains the following characteristics:
# - Must contain 6 characters, which can be a combination of strings and integers
# - strings: consider only the following: a, b, c, d
# - integers - consider only the follwing: 0, 1, 2, 3
# - Hash (SHA256) which validates the password is e71b6877bf309bef61df33bedb21bb0e2687510c00adb9ea6e06105b0b9089ce

#libraries
library(digest)

# create function for generating password
password <- function(pw_length){
  # contents in password
  pw_letters <- c('a', 'b', 'c', 'd')
  pw_numbers <- c(0:3)
  pw_characters <- c(pw_letters, pw_numbers)
  # create probabilities for pw_characters
  probability <- c(rep(0.50, 4), rep(0.50, 4))
  pw <- paste0(sample(pw_characters, size = pw_length, replace = TRUE, prob = probability), collapse = "")
  pw <- noquote(pw)
  return(pw)
}

# password length
pw_length <- 6

pow <- 0
while(digest(pow,"sha256")!= "e71b6877bf309bef61df33bedb21bb0e2687510c00adb9ea6e06105b0b9089ce")
{
pow <- password(pw_length)
print(pow)
}
print(digest(pow,"sha256"))
pow

# password: 02bd10

