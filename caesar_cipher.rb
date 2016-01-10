def caesar_cipher(string,number)
	string.downcase!
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	pre=string.split('')
	pre.map! do |letter|
		if /\w/ === letter 
			ind = alphabet.index(letter)+number
			if ind > alphabet.size
				ind -= alphabet.size
			else
				ind
			end
			letter = alphabet[ind]
		else 
			letter
		end
	end
	string = pre.join("")
	string.capitalize
end

