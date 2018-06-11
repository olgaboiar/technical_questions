# Basic solution

def sortByStrings(s,t)
    sorted_s = []
    for i in 0..t.length
        for j in 0..s.length
            if s[j] == t[i]
                sorted_s.push(s[j])
            end
        end
    end
    return sorted_s.join("")
end

# Optimized solution (less itirations)

def sortByStrings(s,t)
    s = s.split("")
    sorted_s = []
    for i in 0..t.length
        j = 0
        while j <  s.length
            if s[j] == t[i]
                sorted_s.push(s[j])
                s.delete_at(j)
            else 
                j += 1
            end
        end
    end
    
    return sorted_s.join("")
end

# Accaunting for the possibility of s string having a character which is not present in t string

def sortByStrings(s,t)
    s = s.split("")
    sorted_s = []
    for i in 0..t.length
        j = 0
        while j <  s.length
            if s[j] == t[i]
                sorted_s.push(s[j])
                s.delete_at(j)
            else 
                j += 1
            end
        end
    end
    
    if s.any?
        sorted_s << s
    end

    return sorted_s.join("")
end
