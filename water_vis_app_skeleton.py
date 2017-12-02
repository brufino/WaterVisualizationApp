import datetime 
from threading import Thread

def calc_water_goal(): 
	# Calculate the water goal
	# return water_goal

# If a water value is imported into the GUI
def water_input(ml):
    water += ml 
    return water 

# Changes the puffer fish image depending on water intake
# final_val = water goal, water = current daily water intake
def fish_change(water_goal, current_intake): 
	if(0.33*water_goal >= current_intake >= 0): 
		#use fish image 1
	elif(0.33*water_goal < current_intake <= 0.66*water_goal):
		#use fish image 2 
	else(): 
		#use fish image 3

# Checks if it is a new day 
def daily_reset(): 
current_time = strftime("%H:%M:%S")
if (current_time == "00:00:00"): 
	#push water counter to array 
	#reset water counter

if __name__ == "__main__":

    do calc_water_goal() while True: 
    
        if( //a GUI value is entered// ): 
        	water_input(val_from_GUI)
        	fish_change(water_goal, val_from_GUI)

        if(time.now == "00:00:00")
            daily_reset():
        else(): 
        	continue

