a = "[ [ [ ]] ]"

stored = Stack.new

a.each do |bracket|
 if bracket == "["
   stored.push(bracket)
 elsif bracket == "]" # if the bracket is closed
   if stored.top == "[" # then look on the stack to see if the top bracket is open
     stored.pop # if open, then remove
   else
    puts "not balanced"
   end 
 end

 #remove the brackets.delete
 #count the length left.length
 end
end


# use a stack and look at each character
