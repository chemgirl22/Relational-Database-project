#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess -t --no-align -c"
MAIN () {
echo "Enter your username:"
read USERNAME

SEARCH_NAME=$($PSQL "SELECT username FROM number_guess WHERE username='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT games_played FROM number_guess WHERE username='$USERNAME'")
SUM_GAMES_PLAYED=$($PSQL "SELECT count(games_played) FROM number_guess WHERE username='$USERNAME'")
BEST_GAMES=$($PSQL "SELECT MIN(games_won) FROM number_guess WHERE username='$USERNAME'") 
if [[ -z $SEARCH_NAME ]]
  then 
  INSERT_USERNAME=$($PSQL "INSERT INTO number_guess(username, games_played) VALUES('$USERNAME', 1)")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  INSERT_GAMES_PLAYED=$($PSQL "INSERT INTO number_guess(username, games_played) VALUES('$USERNAME', 1)")
  echo "Welcome back, $USERNAME! You have played $SUM_GAMES_PLAYED games, and your best game took $BEST_GAMES guesses."
fi

echo "Guess the secret number between 1 and 1000:"
SECRET_NUMBER=$((1 + RANDOM % 1000))
GUESS=1

while read -e NUMBER; do
if [[ $NUMBER == $SECRET_NUMBER ]]
  then
break;
else 
if [[ ! $NUMBER =~ ^[0-9]+$ ]]
then
  echo "That is not an integer, guess again:"
elif [[ $NUMBER -gt $SECRET_NUMBER ]] 
  then echo "It's lower than that, guess again:"
elif [[ $NUMBER -lt $SECRET_NUMBER ]]
  then echo "It's higher than that, guess again:" 
  fi
fi
GUESS=$((GUESS+1))
done
INSERT_GUESS=$($PSQL "UPDATE number_guess SET games_won=$GUESS WHERE username='$USERNAME'")
echo "You guessed it in $GUESS tries. The secret number was $SECRET_NUMBER. Nice job!"
}
MAIN
