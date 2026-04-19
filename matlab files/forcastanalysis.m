function [forecast, time]=forcastanalysis(model, input, window, batch)
  % window=100;
  % batch=50;
   %num_forecast=50;
   forecast=[];
    time=length(input);
    temp_forecast=zeros(1, batch);
    % sliding=input(end-window+1:end);
     buffer = zeros(window + batch, 1);
    buffer(1:window) = input(end-window+1:end);
  for i=1:batch
       sensor = buffer(i : i+window-1)'; 
      %sensor = {reshape(sliding, 1, [])}; 
      nextvalue=predict(model,sensor);
     if iscell(nextvalue)
         nextvalue=nextvalue{1};
     end
       nextvalue=double(nextvalue);
       nextvalue = nextvalue(:);
         
       nextvalue = nextvalue(end);
       temp_forecast(i)=nextvalue(end);
        buffer(window + i) = nextvalue;
       %disp(size(sliding(2:end)))
        %disp(size(nextvalue))
         % sliding = sliding(:);
       %sliding=[sliding(2:end) nextvalue];
       
       
   end
      forecast=[forecast temp_forecast];
      time=time+(1:batch);
end  