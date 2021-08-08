abcs = "abcdefghijklmnopqrstuvwxyz"

nums = []

abnums = Hash.new

for i in 1..26
  nums << i
end

nums.each do |num|
  letter = abcs[num - 1]
  abnums[letter] = num
end

def encode(str, abchash)
  str = str.split("")
  str.each do |letter|
    print "#{"~" * abchash[letter]}||" unless letter == " "
    print " () " if letter == " "
  end
end

p encode("hi hello", abnums)