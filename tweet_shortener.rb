# Write your code here.
def dictionary(string)
  array = string.split(" ")
  dictionary_hash = { 
    "hello":'hi', 
    "to":'2', 
    "two":'2', 
    "too":'2', 
    "for":'4', 
    "four":'4', 
    "be":'b', 
    "you":'u', 
    "at":"@", 
    "and":'&' 
  }

  swapped = []
  array.each do |word|
    word = dictionary_hash[word.downcase.to_sym] if dictionary_hash.keys.include? word.downcase.to_sym
    swapped << word
  end
  swapped.join(" ")
end

def word_substituter(tweet)
  dictionary(tweet)
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts  word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.size > 140 
      word_substituter(tweet) 
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  short = selective_tweet_shortener(tweet)
  short = short[0..136] + "..." if short.size > 140
  short
end