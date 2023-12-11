# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

# PROMPT: Create a code that categorizes taco votes and returns the amounth of each category in the array.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# the first line creates a new empty Hash to house the results and votes of the array.
# the .reduce then takes in the array and runs it through using the parameters "result" and "vote"
# the first parameter "result" is the total that will be returned
# the second parameter "vote" will hold the current number as the code reads each element through the array and counts the repeats of each element
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # this line iterates through the array, applies a lowercase to ensure value consistency, and adds + 1 to each corresponding item once it is counted in the array.
  result[vote.downcase] += 1
  # the result hash is the placeholder for the value returned by the method occuring above it. 
  result
end

# p totals then returns the amount of votes that each type of taco has that was in the taco_votes array.
p totals


