def decodeString(s)
    j = 0
    stack = []
    result = ""
    # Looping through every character of the string
    while j < s.length
        character = s[j]
        # Pushing every character to the stack until encountering a closing bracket
        if character != "]"
            stack.push(character)
        else
            # When a closing bracker encountered, get characters from the stack to form a group to be decoded
            group = ""
            k = stack.pop
            # Characters are added to the group till opening bracket
            while k != "["
                group = k + group
                k = stack.pop
            end
            group = group + result
            # Finding the numbers in stack
            num = ""
            begin
                k = stack.pop
                num = k + num
                last_element = stack.last
            end until last_element.to_i.to_s != last_element
            # Decoding the group by adding it num times
            string = ""
            num = num.to_i
            1.upto(num) {string = group + string}
            stack.push(string)

        end
        j += 1
    end
    return stack.join("")
end
decodeString(s)