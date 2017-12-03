function [col1, col2] = graphprogress()
%graphing array when user selects submit

filename = 'graphData.csv';

array = readtable(filename);
array2 = table2cell(array);
array3 = cell2mat(array2);
col1 = array3(:, 1);
col2 = array3(:,2);

end
