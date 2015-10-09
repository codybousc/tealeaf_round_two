#Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
abrev_flint = []

flintstones.map do |name|
  abrev_flint.push(name.slice(0,2))
end

p abrev_flint
