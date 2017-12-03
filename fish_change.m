function fishIndex= fish_change(total, daily_target)

ratio = daily_target/total;

if ratio <= 0.25
    fishIndex = 0; % insert pic 1
elseif ratio >= 0.25 && ratio <= 0.5
    fishIndex = 1; % insert pic 2
elseif ratio >= 0.5 && ratio <= 0.75
    fishIndex = 2; % insert pic 3
else 
    fishIndex = 3; % insert pic 4
end

end
