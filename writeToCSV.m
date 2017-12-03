function storedDataArray = writeToCSV(counter, storedDataArray, dailyIntakeNum)

m = ['dates,' 'total_consumption'];
fid = fopen('graphData.csv','w');
fprintf(fid, '%s\n', m(1,:));

storedDataArray(counter,2) = dailyIntakeNum; % Replaces 0 value from before 
 
  if fid>0
      for k=1:size(storedDataArray,1)
          fprintf(fid,'%f, %f \n',round(storedDataArray(k,:)));
      end
      fclose(fid);
  end
  
end
