
function [value,anomaly]=getdata()
  persistent t
  if isempty(t)
      t=0;
  end
  t=t+1;
  if t>5 && t<10
     value = (50+2*sin(0.01*t)+randn())+25;
  else
    value=(50+2*sin(0.01*t)+randn());
  end
  threshold=65;
  if value >threshold
      anomaly=value;
  else 
      anomaly=NaN;
  end
end