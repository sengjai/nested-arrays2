# Place your solutions here
def tictactoe()
	letters = ["X","O"]
	temp_board = []
	for i in (0..9)
		temp_board << letters.sample
	end
	board = Array.new(3) {
		temp_board.shift(3)
	}

	return board
end

def generate_boards(number)
	x = 0

	while x < number
		p tictactoe()
		x += 1
	end
end


def convert_roster_format(array)

	board = []
	for row in 0..4
		hash = Hash.new() #every loop create a new hash
		for col in 0..3
			hash[array[0][col]] = array[row+1][col]	
		end
		board << hash
	end
	return board
end

# Objective 3: Data table
roster = [ 	["Number", "Name", "Position", "Points per game"],
			[ 12, "Joe Schmo", "Center", [14, 32 ,7, 0, 23]],
			[ 9, "Ms. Buckets", "Point Guard", [19, 0, 11, 22, 0]],
			[ 31, "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25]],
			[ 18, "Sally Talls", "Power Forward", [18, 29, 26, 31, 19]],
			[ 22, "MK DiBoux", "Small Forward", [11, 0, 23, 17, 0]] ]


p convert_roster_format(roster)



#generate_boards(10) #genarating tic toe board





