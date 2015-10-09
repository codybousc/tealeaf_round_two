#not sure why the age variable needs to be a global var. is that the same as var = 3 in javascript?
# i thought i remembered reading that global vars should be avoided

#2
def agePlus()
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "In 10 years you will be " + (age + 10).to_s
  puts "In 20 years you will be " + (age + 20).to_s
  puts "etc"
end


agePlus()

#3
def name()
  puts "What's your name?"
  name = gets.chomp
  10.times do
    puts name
  end
end

name()

#4
def name()
  puts "What's your first name?"
  first_name = gets.chomp
  puts "What's your last name?"
  last_name = gets.chomp
  puts first_name + " " + last_name
end

name()

#Conditionals ===========================

#2

def changeCase(string)
  string.upcase!
end

p changeCase("tbone")

#3
def tellMe(number)
  if number < 50
    puts "Your number is less than 50"
  elsif number < 100
    puts "Your number is between 50 and 100"
  else
    puts "You're fucking with me bro"
  end
end

tellMe(135)

# Hashes ===================================

#1

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediateFam = []

immediateFam.push(family.select {|k,v| k == :sisters || k == :brothers})

p "Immediate family: " + immediateFam.to_s

# Final Exercises

#3

arr = [1, 2, 3, 4, 5, 6, 7]

newArr = []

arr.select do |num|
  if num % 2 != 0
    newArr.push(num)
  end
end
p newArr

#5

h = {a:1, b:2, c:3, d:4}

h[:e] = 5


h.each do |k, v|
  if v < 5
    h.delete(k)
  end
end

p h

#9

h = {a:1, b:2, c:3, d:4}
h[:e] = 5

h.each do |k, v|
  if v < 3.5
    h.delete(k)
  end
end

p h

#14

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

fields = %i(email address phone)


contacts.each do |key, value|
  fields.each do |n|
    contacts[key][n] = contact_data.shift
  end
end

p contacts


#15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

newArrSansSs = arr.delete_if {|word| word.start_with?("s")}
newArrSansWs = newArrSansSs.delete_if {|word| word.start_with?("w")}
p newArrSansWs

#16

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map {|pairs| pairs.split}
a = a.flatten
p a

#Companion Book

#Easy Quiz One

#3
#replace important with urgent
advice = "Few things in life are as important as house training your pet dinosaur."

a = advice.split(" ")
a[6] = "urgent"
a = a.join(" ")
p a

#5
p (1..100).include?(42)

#6
famous_words = "seven years ago..."
famous_words.prepend("four score and ")
p famous_words

#9
# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones = flintstones.to_a
flintstones = flintstones[2]
p flintstones

#10
# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

stoneAge = Hash.new
flintstones.each_with_index{|name, index|
  stoneAge[name] = index
}

p stoneAge

#Easy Quiz 2

#1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.include?("Spot")

#2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_age = 0

ages.each do |key, value|
  total_age += value
end

p total_age

#3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.each do |k, v|
  if v > 100
    ages.delete(k)
  end
end

p ages

#5
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages = ages.merge(additional_ages)
p ages

#6
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

minimum_age = ages.values.sort[0]

p minimum_age

#7
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?("Dino")

#8
flintstones.index { |name| name[0, 2] == "Be" }

#9
#Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
abrev_flint = []

flintstones.map do |name|
  abrev_flint.push(name.slice(0,2))
end

p abrev_flint

#10
# Again, shorten each of these names to just 3 characters -- but this time do it all on one line:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map {|name| p name.slice(0,2)}

#Easy Quiz 3

#1
# Show an easier way to write this array:
#
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

#2
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"

p flintstones

#3
flintstones.push("Dino").push("Hoppy")

#4
# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# ...remove everything starting from "house".

advice = advice.split(" ")
advice.slice!(8, 5)
advice = advice.join(" ")
p advice

#5
# Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
statement = statement.split("")
tCount = 0

statement.each do |letter|
  if letter == "t"
    tCount += 1
  end
end

p tCount

#6
title.center(40)

#Intermediate Questions ===============================================

#1
# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).
#
# For this exercise, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:
#
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

string = "The flintstones Rock!"
space = " "

10.times do |sentence|
  p space + string
  space += " "
end

#2
