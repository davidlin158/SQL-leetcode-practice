# Write your MySQL query statement below
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15


#LENGTH() returns the length of the string measured in bytes.
#CHAR_LENGTH() returns the length of the string measured in characters.
#This is especially relevant for Unicode, in which most characters are encoded in two bytes, or UTF-8, 
#where the number of bytes varies.