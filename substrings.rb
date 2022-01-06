def substrings(phrase, dictionary)
  phrase.downcase!
  dictionary.reduce(Hash.new(0)) do |result, word|
    if phrase.scan(word).length > 0
      result[word] += phrase.scan(word).length
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
