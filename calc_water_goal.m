function daily_target = calc_water_goal(age, gender, exercise, weight)

total1 = 0;
total2 = 0;
totalE = 0;

if age >= 19
    if strcmp(gender,'M')
        total1 = 3700;
    else
        total2 = 2700; 
    end
    
elseif (14 <= age) && (age < 19)
    if strcmp(gender,'M')
        total1 = 88*29.5735;
    else
        total2 = 64*29.5735;
    end
    
elseif (9<=age) && (age<14)
    if strcmp(gender,'M')
        total1 = 64 * 29.5735;
    else
        total2 = 56 * 29.5735;
    end
    
else
    total1 = 40 * 29.5735;
    total2 = 40 * 29.5735;
    
end
total_weight = weight*(2.0/3.0)*29.5735;

if strcmp(exercise,'Y')
    totalE = 500;
end

daily_target = round((((total1+total2+totalE)+total_weight)/2),1); 
end
