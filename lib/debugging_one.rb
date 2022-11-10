def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    next unless is_letter?(char)
    counter[char] += 1
  end
  puts counter.to_a.sort_by { |k, v| v }
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

def is_letter?(letter)
  return letter =~ /[a-z]/i
end
