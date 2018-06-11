def decodeString(s)
    s = s.split("")
    j = 0
    t = ""
    stack = []
    result = ""
    while j < s.length
       character = s[j]
       if character != "]"
        stack.push(character)
       else
         # read the string from the stack
        group = ""
        k = stack.pop
        while k != "["
            group = k + group
            k = stack.pop
        end
        group = group + result
        puts group
        # read the number from the stack
        num = ""
        
        begin
            k = stack.pop
            num = k + num
            last_element = stack.last
        end until last_element.to_i.to_s != last_element
        
        string = ""
        num = num.to_i
        1.upto(num) {string = group + string}
        result = string
    
       end
       j += 1
    end
    puts "result is " + result
end
decodeString(s)