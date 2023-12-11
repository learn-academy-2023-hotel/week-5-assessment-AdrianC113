# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:
# Create a method that takes in a hash called flatten_states
def flatten_states(states)
    # The new variable created uses the input parameter, moves the values in the nested arrays in to one flat array, and sorts the values in alphabetical order.
    values_array = states.values.flatten.sort
end

# this prints out the results of the method using the given input states
p flatten_states(us_states)

# Process:
# Used the hint to google 'ruby get rid of nested arrays' and was looking through stack overflow that showed ".flatten" and what it does
# Proceeded to look into the ".flatten" method and found a website to learn how to use it
# Source found online: https://apidock.com/ruby/Array/flatten


# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.


# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
class Bike
    # set initial attribute values for any new instance of Bike class
    def initialize(model)
        @model = model.capitalize
        @wheels = 2
        @current_speed = 0
    end
    # a method that returns a string that contains the Bike attributes
    def bike_info
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end
    # a method that increases the current speed by the input number
    def pedal_faster (acceleration)
        @current_speed += acceleration
    end
    # a method that decreases the current speed by the input number and sets the current speed to 0 if the value is a negative number
    def brake(deceleration)
        @current_speed -= deceleration
        if @current_speed < 0
            @current_speed = 0
        end
    end

end
# creates a new instance of Bike class with the input model and stores it in a variable
my_bike = Bike.new('trek')

#for question 2A
p my_bike.bike_info 

#for question 2B
my_bike.pedal_faster(10)
p my_bike.bike_info
my_bike.pedal_faster(18)
p my_bike.bike_info
my_bike.brake(5)
p my_bike.bike_info
my_bike.brake(25)
p my_bike.bike_info 









