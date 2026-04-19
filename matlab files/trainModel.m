function model = trainModel()

    time = 1:1000; 
    sensor = 50 + 2*sin(0.01*time) + randn(1,1000);
   % sensor(500:600) = sensor(500:600) + 25;

    sensor_norm = (sensor - mean(sensor)) / std(sensor);

    X = {sensor_norm(1:end-1)};
    Y = {sensor_norm(2:end)};

    layers = [
        sequenceInputLayer(1)
        lstmLayer(200,'OutputMode','sequence')
        fullyConnectedLayer(1)
        regressionLayer
    ];

    options = trainingOptions('adam', ...
        'MaxEpochs',500, ...   % reduce for speed
        'MiniBatchSize',20, ...
        'Plots','training-progress');

    model = trainNetwork(X, Y, layers, options);

    % Save model
    save('lstmmodel.mat', 'model')

end