def dictionary
  {
  "hello" => "hi", "to" => '2', "two" => '2', "too" => '2',
  "for" => '4', "four" => '4', "be" => "b", "For" => '4',
  "you" => "u", "at" => "@", "and" => "&"
}
end
def word_substituter(a_string)
string_array = a_string.split(" ")
new_array = []
string_array.each do |str|
  if dictionary.include?(str)
    str = dictionary[str]
  end
  new_array << str
end
new_string = new_array.join(" ")
end# Write your code here.

def bulk_tweet_shortener(a_string_array)
  a_string_array.each do |x|
    new_array = []
      new_x = x.split(" ")
      new_x.each do |each_word|
        if dictionary.include?(each_word)
          each_word = dictionary[each_word]
        end
      new_array << each_word
      end
      back_to_str = new_array.join(" ")
      puts back_to_str
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    return short_tweet[0..139]
  else
    return tweet
  end
end
