function Predval1 = predmodel(model, input)
   

    % Predict
    Pred = predict(model, input);

    if iscell(Pred)
        Pred = Pred{1};
    end

    Predval1 = double(Pred);
    %Predval=(50+(Predval*std(Predval)+mean(Predval)));
    %Predval1=Predval';
     % Ensure lengths match
    %if length(Predval1) ~= length(input)
     %   Predval1 = interp1(1:length(Predval1), Predval1, linspace(1, length(Predval1), length(input)));
    %end
    % Simple anomaly check
    %deviation = input - Predval1;

    %threshold =2 * std(deviation);
    %anomalies=find(abs(deviation)>threshold);
  %anomalies = anomalies(anomalies <= length(Predval1));
end