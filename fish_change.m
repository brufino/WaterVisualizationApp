function fishIndex= fish_change(total, daily_target)

ratio = daily_target/total;

if ratio <= 0.33
    fishIndex = 0; % insert pic 1
elseif ratio >= 0.66
    fishIndex = 2; % insert pic 3
else 
    fishIndex = 1; % insert pic 2
end

end
