def control(word="a",num=0)
  if word == word.to_s && num == num.to_i
    return true
  else
    return false
  end
end

def caesar_cipher(word,num)
  if control(word,num)
    code = word.downcase.split(//).collect {|x| if ("a".."z").cover?(x)  then x.ord + num else x.to_s  end }.collect{|y| if y == y.to_s then y.to_s elsif y > 122 then y-26 else y.to_i  end}.collect{|z| if z == z.to_s then z.to_s else z.chr end }.join
    return code
  else
    put false
  end
end
  

  
=begin 

num = 5
  word = "What a string!"
 
  word.downcase.split(//).collect {|x| if ("a".."z").cover?(x)  then x.ord + num else x.to_s  end }.collect{|y| if y == y.to_s then y.to_s elsif y > 122 then y-26 else y.to_i  end}.collect{|z| if z == z.to_s then z.to_s else z.chr end }.join.capitalize

.collect {|x| if ("a".."z").cover?(x)  then x.ord + num else x.to_s  end }.collect{|y| if y == y.to_s then y.to_s elsif y > 122 then y-26 else y.to_i  end}.collect{|z| if z == z.to_s then z.to_s else z.chr end }.join

.collect {|y| y.chr }.join

.collect{|y| if y > 122 then y-26 else y + 0 end}.collect{|z| z.chr }.join

collect {|x| if x.include?("a".."z") then x.ord + num else x.to_s end }

("a".."z") /["a".."z"]/ "a".."z" a .. z

=end

