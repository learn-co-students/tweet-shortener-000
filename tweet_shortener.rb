# Write your code here.

def word_substituter(tweet)
hash = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
return_string = ""
tweet.split(" ").each {|word| 

  if hash.has_key?(word.downcase) then return_string << hash[word].to_s+" " else return_string << word+" " end}
  return_string[0,return_string.length-1]
end


def bulk_tweet_shortener(tweets)
  tweets.each{|tweet| puts word_substituter(tweet)}
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140 then
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140 then
    tweet
  else tweet[0...140]
  end
end


