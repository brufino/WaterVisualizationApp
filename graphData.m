function graphprogress(filename)
%graphing array when user selects submit
Array=readtable(filename)
array2=table2cell(Array)
array3=cell2mat(array2)
col1 = array3(:, 1)
col2 = array3(:,2)
%Col2= cell2mat(col2)

plot(col1, col2)
end
