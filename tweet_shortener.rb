require 'pry'

# Write your code here.
def dictionary
dictionary = {
    

"hello" => 'hi',
"to" => '2' ,
"two" => '2',
"too" => '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@" ,
"and" => "&"
}
end


def word_substituter(tweet)
  dictionary_hash = dictionary()
  tweet_array = tweet.split(" ")
  new_tweet_array = []
  tweet_array.each do |word|
    if dictionary_hash.has_key?(word.downcase)

      word = dictionary_hash[word.downcase]
    end
    new_tweet_array << word
  end
  new_tweet_array.join(" ")
end


def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  
  if tweet.length < 130
  elsif  tweet.length > 140
    word_substituter(tweet)
  end
end
