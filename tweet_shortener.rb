# Write your code here.
def word_substituter2(word)
  new_word = ""
  
  if /^[hH]ello+/.match(word)
    new_word = word.gsub(/^(hello)+/,"hi")
  end
  
  if (word == "to" || word == "two" || word == "too")
    new_word = "2"
  end
  
  if (/(^[Ff]or+)/.match(word) || word == "four")
    new_word = "4"
  end
  
  if word == "be"
    new_word = "b"
  end

  if word == "you"
    new_word = "u"
  end

  if word == "at"
    new_word = "@"
  end

  if word == "and"
    new_word = "&"
  end
  return new_word
end

def word_substituter(tweet)
  arr = []
  arr = tweet.split(" ")
  new_tweet = ""

  arr.each_with_index do |x,y|
    #not the best solution
    if (/(^[hH]ello+)/.match(x) || x == "to" ||x == "two" ||x == "too" ||/(^[Ff]or+)/.match(x) ||x == "four" ||x == "be" ||x == "you" ||x == "at" || x == "and") 
      new_tweet << word_substituter2(x) + " "
    else
      new_tweet << x + " "
    end
  end
  new_tweet.strip
end

def bulk_tweet_shortener(tweets)
  tweets.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  new_tweet = ""
  if tweet.length > 140
    new_tweet = word_substituter(tweet)
  else
    new_tweet = tweet
  end
  return new_tweet
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  new_tweet = ""
  if tweet.length > 140
    new_tweet = tweet.gsub(/(^.{137}).+$/,'\1...')
  else
    new_tweet = tweet
  end
  new_tweet
end

