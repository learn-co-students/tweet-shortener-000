require 'Pry'

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
    "and" => "&"
  }
end

def word_substituter(tweet)
  new_tweet = []
  tweet.split.each{|word|
    if dictionary.keys.include?(word)
      new_tweet << dictionary[word]
    elsif dictionary.keys.include?(word.downcase)
      new_tweet << dictionary[word.downcase]
    else 
      new_tweet << word
    end 
  }
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.each{|tweet|
    puts "#{word_substituter(tweet)}"
  }
end

def selective_tweet_shortener(tweet)
  return_tweet = tweet
  if tweet.length > 139
    return_tweet = word_substituter(tweet)
  end
  return_tweet
end

def shortened_tweet_truncator(tweet)
  return_tweet = tweet
  if tweet.length > 139
    return_tweet = word_substituter(tweet)
    if return_tweet.length > 139
      return_tweet = return_tweet[0..136] + "..."
    end
  end
  return_tweet
end

