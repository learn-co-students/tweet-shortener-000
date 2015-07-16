def word_substituter(phrase)
  subs = { " 2 " => /\st[wo]?o\s/, " 2. " => /\st[wo]?o\.\s/, " 2, " => /\st[wo]?o\,\s/, " 2? " => /\st[wo]?o\?\s/, " 2! " => /\st[wo]?o\!\s/, 
    " u " => /\syou\s/, " u. " => /\syou\.\s/, " u, " => /\syou\,\s/, " u? " => /\syou\?\s/, " u! " => /\syou\!\s/, 
    " hi " => /\s[hH]ello\s/, " hi. " => /\s[hH]ello\.\s/, " hi, " => /\s[hH]ello\,\s/, " hi? " => /\s[hH]ello\?\s/, " hi! " => /\s[hH]ello\!\s/, 
	" 4 " => /\s[fF]ou?r\s/, 
	" b " => /\sbe\s/, 
	" @ " => /\sat\s/, 
	" & " => /\sand\s/ }
  
  phrase_copy = "" << phrase
  subs.each { |k,v| phrase.gsub!(v,k) if phrase[v] != nil }
  phrase
end

def bulk_tweet_shortener(array)
  array.map do |phrase| 
    word_substituter(phrase)
    puts phrase
  end	
end

def selective_tweet_shortener(phrase)
  phrase.length > 140 ? word_substituter(phrase) : phrase
end

def shortened_tweet_truncator(word)
  word.length > 140 ? "#{word[0..135]} ..." : word
end

#puts word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
