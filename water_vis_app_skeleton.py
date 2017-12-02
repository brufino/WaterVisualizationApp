import time 

def calc_water_goal(): 
	# Calculate the water goal
	# return water_goal

# If a water value is entered into the GUI, store value
def water_input(ml):
    current_intake += ml 
    return current_intake 

# Changes the puffer fish image depending on water intake
def fish_change(water_goal, current_intake): 
	if(0.33*water_goal >= current_intake >= 0): 
		#use fish image 1
	elif(0.33*water_goal < current_intake <= 0.66*water_goal):
		#use fish image 2 
	else(): 
		#use fish image 3

# resets counters and pushes final value on day change
def daily_reset(): 
	#push water counter to array 
	current_intake = 0

# Line below means "ONLY run this code below when I call the current file"
# If you include this file in another script the code below will not run
if __name__ == "__main__":

    calc_water_goal()
    current_day=strftime("%d")
    current_intake = 0
    while True: 
    	# activates if a value is passed in from the GUI
        if ( //a GUI value is entered// ): 
        	water_input(val_from_GUI)
        	fish_change(water_goal, current_intake)

        # activates if the date does not match the one 
        # initialized in the beginning of the script
        if(current_day != strftime("%d"))
            daily_reset():
            current_day = strftime("%d")
        else(): 
        	continue

