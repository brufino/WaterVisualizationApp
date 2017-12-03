function testcsv()
m=['dates,' 'total_consumption'];
fid = fopen('test.csv','w');
fprintf(fid, '%s\n', m(1,:));
 c=[1 2; 
    2 3; 
    3 4];
  if fid>0
      for k=1:size(c,1)
          fprintf(fid,'%f, %f \n',round(c(k,:)));
      end
      fclose(fid);
  end
end
