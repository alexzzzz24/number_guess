#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guessing_game --no-align --tuples-only -c"

echo -e "\nEnter your username:"
read USERNAME

AVA_USERNAME=$($PSQL "SELECT username FROM usernames where username='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM usernames INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(tries) FROM usernames INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
if [[ -z $AVA_USERNAME ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_USERNAME=$($PSQL "INSERT INTO usernames(username) VALUES('$USERNAME')")
else
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

BINGO=$(( $RANDOM % 1000 + 1 ))

GUESS=1
echo -e "\nGuess the secret number between 1 and 1000:"

while read NUM
do
 if [[ ! $NUM =~ ^[0-9]+$ ]]
 then
    echo -e "\nThat is not an integer, guess again:"

 else
    if [[ $NUM -eq $BINGO ]]
    then
      break;
      else 
        if [[ $NUM -gt $BINGO ]]
        then
          echo -e "\nIt's lower than that, guess again:"
        elif [[ $NUM -lt $BINGO ]]
        then
          echo -e "\nIt's higher than that, guess again:"
        fi
                


    fi

 fi
  GUESS=$(( $GUESS +1 ))
done

if [[ $GUESS = 1 ]]
then
echo -e "\nYou guessed it in $GUESS tries. The secret number was $BINGO. Nice job!"
else 
echo -e "\nYou guessed it in $GUESS tries. The secret number was $BINGO. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM usernames WHERE username='$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(tries, user_id) VALUES($GUESS, $USER_ID)")
