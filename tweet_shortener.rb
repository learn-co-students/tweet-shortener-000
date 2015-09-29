def dictionary
# "hello" becomes 'hi'
#"to, two, too" become '2' 
#"for, four" become '4'
#'be' becomes 'b'
#'you' becomes 'u'
#"at" becomes "@" 
#"and" becomes "&"
dictionary = {
					"hello" => "hi",
					"to" => "2",
					"two" => "2",
					"too" => "2",
					"for" => "4",
					"For" => "4",
					"four" => "4",
					"be" => "b",
					"you" => "u",
					"at" => "@",
					"and" => "&"
				}
end

def word_substituter(tweets)
	box_em_in = []
	tweets.split.each do |word|
		if dictionary.has_key?(word)
			box_em_in << dictionary[word]
		elsif dictionary.has_key?(word.downcase)
			box_em_in << dictionary[word]
		else
			box_em_in << word
		end
	end

 box_em_in.join(" ")

end 

def bulk_tweet_shortener(tweeeets)
	tweeeets.each do |tweet|
		puts "#{word_substituter(tweet)}"
	end
end

def selective_tweet_shortener(twwets)
	fix_tweet = twwets
		if twwets.length > 139
			fix_tweet = word_substituter(twwets)
		end
		fix_tweet

end

def shortened_tweet_truncator(tweeter)
	fix_tweet = tweeter
		if tweeter.length > 139
			fix_tweet = word_substituter(tweeter)
			if fix_tweet.length > 139
				fix_tweet = fix_tweet[0..136] + "~<3"
			end
		end
		fix_tweet

end