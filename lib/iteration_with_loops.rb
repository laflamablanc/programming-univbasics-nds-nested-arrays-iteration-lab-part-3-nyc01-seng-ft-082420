def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  count = 0 
  string = ""
  while count < src.length 
    ic = 0 
    while ic < src[count].length
      if alphabet.include?(src[count][ic][0].to_s)
        string += src[count][ic]
        string += " "
      end
      ic += 1 
    end
    count += 1 
  end
  return string
end