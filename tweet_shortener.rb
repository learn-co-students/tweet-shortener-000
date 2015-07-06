# Write your code here.

def word_substituter(tweet)
tweet.gsub!(/\bto \b/, "2 ")
tweet.gsub!(/\btwo \b/, "2 ")
tweet.gsub!(/\btoo \b/, "2 ")
tweet.gsub!(/\bfor \b/, "4 ")
tweet.gsub!(/\bfour \b/, "4 ")
tweet.gsub!(/\bbe \b/, "b ")
tweet.gsub!(/\byou \b/, "u ")
tweet.gsub!(/\bat \b/, "@ ")
tweet.gsub!(/\band \b/, "& ")
  return tweet
end

def bulk_tweet_shortener(tweetArray)
  tweetArray.each do |tweet|
    tweet.gsub!(/\bto \b/, "2 ")
    tweet.gsub!(/\btwo \b/, "2 ")
    tweet.gsub!(/\btoo \b/, "2 ")
    tweet.gsub!(/\bfor \b/, "4 ")
    tweet.gsub!(/\bFor \b/, "4 ")
    tweet.gsub!(/\bfour \b/, "4 ")
    tweet.gsub!(/\bbe \b/, "b ")
    tweet.gsub!(/\byou \b/, "u ")
    tweet.gsub!(/\bat \b/, "@ ")
    tweet.gsub!(/\band \b/, "& ")
  end
  tweetArray.each {|tweet| puts tweet}
end

def selective_tweet_shortener(tweet)
    array = tweet.scan(/[a-zA-z\s\w\W]/)
    if array.length > 140
      tweet.gsub!(/\bto \b/, "2 ")
      tweet.gsub!(/\btwo \b/, "2 ")
      tweet.gsub!(/\btoo \b/, "2 ")
      tweet.gsub!(/\bfor \b/, "4 ")
      tweet.gsub!(/\bFor \b/, "4 ")
      tweet.gsub!(/\bfour \b/, "4 ")
      tweet.gsub!(/\bbe \b/, "b ")
      tweet.gsub!(/\byou \b/, "u ")
      tweet.gsub!(/\bat \b/, "@ ")
      tweet.gsub!(/\band \b/, "& ")
    end
  return tweet
end

def shortened_tweet_truncator(tweet)
array = tweet.scan(/[a-zA-z\s\w\W]/)
  if array.length > 140
    tweet.gsub!(/\bto \b/, "2 ")
    tweet.gsub!(/\btwo \b/, "2 ")
    tweet.gsub!(/\btoo \b/, "2 ")
    tweet.gsub!(/\bfor \b/, "4 ")
    tweet.gsub!(/\bFor \b/, "4 ")
    tweet.gsub!(/\bfour \b/, "4 ")
    tweet.gsub!(/\bbe \b/, "b ")
    tweet.gsub!(/\byou \b/, "u ")
    tweet.gsub!(/\bat \b/, "@ ")
    tweet.gsub!(/\band \b/, "& ")
  end
  newerArray = tweet.scan(/[a-zA-z\s\w\W]/)
  if newerArray.length > 140
    newestArray = tweet.scan(/[a-zA-z\s\w\W]{137}/)
    newestArray.each {|tweet| tweet << "..."}
    return newestArray[0]
  end
  return tweet
end