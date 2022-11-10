def snippet(string)
  arr = string.split(" ")
  new_string = arr[0..4].join(" ")
  arr.length > 5 ? new_string + "..." : new_string
end
