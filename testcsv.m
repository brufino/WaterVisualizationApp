function testcsv()
m=['date1,' '1'; ...
    'date2,' '2'; ...
    'date3,' '3'];
fid = fopen('test.csv','w');
 if fid>0
     for k=1:size(m,1)
         fprintf(fid,'%s\n',m(k,:));
     end
     fclose(fid);
 end
end


function graph = graphprogress('filename')
%graphing array when user selects submit
Array=csvread('filename.csv');
col1 = Array(:, 1);
col2 = Array(:, 2);
plot(col1, col2)
end
