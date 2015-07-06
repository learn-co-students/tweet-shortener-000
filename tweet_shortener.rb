require "pry"

def word_substituter(tweet)
  tweet.gsub!(/hello/,"hi")
  tweet.gsub!(/to\s|two\s|too\s/, "2\s")
  tweet.gsub!(/[fF]or|four/, "4")
  tweet.gsub!(/be\s/, "b\s")
  tweet.gsub!(/you\s/, "u\s")
  tweet.gsub!(/\sat\s/, "\s@\s")
  tweet.gsub!(/and\s/, "&\s")
  tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
  	puts "#{word_substituter(tweet)}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
  	word_substituter(tweet)
  else
  	tweet
  end
end

def shortened_tweet_truncator(tweet)
	if tweet.length>140
		tweet[0..136]<<"..."
	else
		tweet
	end
end


