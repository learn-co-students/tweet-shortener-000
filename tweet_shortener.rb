# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2", 
    "two" => "2", 
    "too" => "2", 
    "for" => "4", 
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet)
  tweet.split.collect do | word |
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |item|
    puts word_substituter(item)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
    else
      tweets
  end
end

def shortened_tweet_truncator(tweets)
  if word_substituter(tweets).length > 140
    word_substituter(tweets)[0..136] << ('...')
  else
    word_substituter(tweets)
  end
end
