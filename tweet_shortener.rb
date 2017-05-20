# Write your code here.

def dictionary(string)

	hash = {
	    "hello" => 'hi',
	    "to" => '2',
	    "two" => '2',
	    "too" => '2',
		 "for" => '4',
		 "For" => '4',
		 "four" => '4',
		 "be" => 'b',
		 "you" => 'u',
		 "at" => '@',
		 "and" => '&'
	}
	arr = string.split()
	out = []
	arr.each do |word|
		if hash.key?(word)
			out << hash[word]
			#print hash(word)
		else
			out << word
		end
	end

	return out.join(' ')
end


def word_substituter(tweet)
	
	return dictionary(tweet)
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		return word_substituter(tweet)
	else
		return tweet
	end
end

def bulk_tweet_shortener(tweets)
	tweets.each do |i|
		puts word_substituter(i)
		
	end
end

def shortened_tweet_truncator(tweet)
	if tweet.length > 140
		tweet = tweet[0..139]
	end
		return tweet
end


word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
