dictionary = ["below","down","go","going","horn",
"how","howdy","it","i","low","own","part","partner","sit"]

def subs(phrase,dictionary) 
  result = Hash.new("Not Found")
  words = phrase.downcase
  dictionary.each do |word|
    match = words.scan(word).length
    result[word] = match unless match<1
  end
puts result
end
subs("below", dictionary)
puts
puts "======================"
puts
subs("Howdy partner, sit down! How's it going?", dictionary)
