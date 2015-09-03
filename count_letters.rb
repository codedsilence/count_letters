def count_letters(letters)
  Hash[
    letters
     .delete(' ')
     .chars
     .group_by { |letter| letter } #
     .map { |letter, count| [letter, count.size] } #runs on each array object
     .sort_by{ |letter, count| [-count, letter] } #sort by descending count
  ]
end

def letter_positions(letters)
	letters
		.chars #breaks into indavidual characters 
		.each.with_index 
		.reduce({}) do |acc, (letter, position)| 
			acc[letter] = [] unless acc.has_key?(letter)
			acc[letter] << position
			acc
		end
end

p count_letters("lighthouse in the house...")

p letter_positions("lighthouse in the house...")