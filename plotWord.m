function plotWord(word)
    % Creating a map to show the letters
    letterShapes = containers.Map;
    
    % Coordinates for each cursive letters
    letterShapes('a') = [2.8, 4.0; 1.0, 3.0; 0.6, 2.2; 2.0, 2.6;... 
    3.0, 3.8; 2.9, 3.4; 3.0, 2.2; 4.0, 2.0];
    letterShapes('b') = [1.2, 3.8; 2.4, 4.0; 0.8, 1.2; 1.4, 2.2;...
    2.4, 3.2; 3.3, 3.5; 3.2, 2.0; 2.2, 1.0; 1.4, 0.5;...
    1.0, 0.8; 1.4, 1.2; 2.2, 1.0; 3.6, 1.0];
    letterShapes('c') = [3, 0.5; 0.7,1; 0.7,1.5; 1,2;3,2.5];
    letterShapes('d') = [3.4,2.5;3,3;3,1.5;3,0.3;3.5,0.3;2.8,0.4;2,0.7;...
    3.2,1.4];
    letterShapes('e') = [1,3;3,2.7;3,3.5;2,3.5;1.8,2;3,2];
    letterShapes('f') = [3,3.2;2,3.2;2.8,0.5;2.5,0.5;3,2;3,1.8;1.8,2];
    letterShapes('g') = [3,3;1.7,3;2.5,3.5;2.6,2;1.7,2];
    letterShapes('h') = [1,3;0.8,2.8;1,3.5;1,0.5;0.9,1;1.7,2;2.5,0.5];
    letterShapes('i') = [2.50, 4.50; 2.00, 4.00; 2.00, 3.50; 2.50, 4.00;...
        2.50, 2.50; 2.00, 1.00; 2.50, 0.50; 3.00, 1.00];
    letterShapes('j') = [2.50, 4.50; 2.00, 3.50; 2.50, 4.00; 3.00, 1.50;...
        2.00, 0.50; 2.50, 1.50; 3.50, 2.00];
    letterShapes('k') = [2.50, 5.00; 2.00, 2.50; 1.50, 0.00; 1.50, 1.00;...
        2.50, 2.50; 3.50, 4.00; 2.50, 2.50; 3.00, 1.00; 4.50, 0.00];
    letterShapes('l') = [2.00, 0.00; 2.70, 2.50; 2.50, 5.00; 2.20, 2.50;...
        3.00, 0.00];
    letterShapes('m') = [0.50, 0.00; 1.00, 2.50; 0.70, 5.00; 0.70, 4.00;...
        2.00, 5.00; 2.50, 2.50; 3.50, 5.00; 4.00, 0.00];
    letterShapes('n') = [1.00, 0.00; 1.50, 2.50; 1.00, 5.00; 1.00, 4.50;...
        1.50, 5.00; 2.50, 5.00; 3.00, 2.50; 3.50, 0.00];
    letterShapes('o') = [0.2, 1.0; 2.2, 1.9; 3.8, 4.0; 3.2, 4.5; 2.2, ...
        4.0; 1.8, 3.0; 2.2, 1.9; 4.0, 1.0];
    letterShapes('p') = [1.0, 2.6; 2.6, 3.0; 3.8, 4.0; 3.6, 4.6;...
    2.6, 4.2; 2.0, 3.2; 1.8, 2.2; 2.0, 0.6];
    letterShapes('q') = [0.6, 2.6; 3.0, 4.0; 3.6, 4.2; 1.4, 2.8; 1.2, ...
        2.0; 2.8, 3.0; 3.6, 4.2; 3.4, 3.6; 2.5, 1.0; 3.8, 2.2];
    letterShapes('r') = [1.0, 2.0; 2.2, 4.2; 1.4, 3.3; 3.0, ...
    3.8; 2.2, 2.0; 2.5, 1.1; 3.2, 2.2; 4.6, 3.0];
    letterShapes('s') = [0.8, 2.6; 2.0, 2.8; 3.4, 3.8; 3.5, 4.5; 2.8,...
    4.0; 2.7, 3.0; 3.0, 2.2; 2.6, 1.0; 1.2, 0.8;...
    2.0, 1.7; 3.0, 2.2; 3.8, 2.5];
    letterShapes('t') = [0.4, 2.8; 2.0, 3.0; 3.4, 3.1; 1.0, 3.2; ...
    2.2, 4.2; 2.3, 4.0; 1.6, 1.8; 1.8, 1.0; 3.0, 1.4; 4.2, 1.7];
    letterShapes('u') = [1.2 , 2.1; 2.7, 3.5; 1.7 , 2.7; 2.7 , 0.6;...
    4.4 , 3.4; 4.1 , 1.9; 5 , 1];
    letterShapes('v') = [1 , 2.1; 2.3 , 4; 2 , 3.6; 1.6 , 0.4;... 
    3.6 , 3.6; 3.2 , 3; 4 , 2.4];
    letterShapes('w') = [0.4 , 2.1; 1.7 , 4.5; 1 , 4; 1.7 , 1.1;...
    2.6 , 3.2; 3 , 1.1; 4, 4; 3.5 , 4.5; 5, 2.3 ];
    letterShapes('x') = [1.5 , 3.6; 4.2 , 0.8; 3.7 , 1.6; 1.5 , 0.8;... 
    4.2 , 3.6];
    letterShapes('y') = [2 , 5; 1.6 , 3.9; 1 , 3.4; 1.4 ,4.1;... 
    2.3 , 4.3; 1.6 , 2.4; 3 , 3;3.3 , 4.1; 3.2 , 3.2; 1.3 , 0.8; 4 ,1];
    letterShapes('z') = [2 , 5; 1.3 , 4; 1 , 4; 1.2 , 4.2; 4 , 4.3;... 
    4.5 , 5; 3.7, 4.6; 1.2 ,1.3; 0.6 , 1; 1 , 1.7; 4.5 , 1.6];

    % Create the figure
    figure;
    
    % Initial position for the letters
    posX = 0;
    posY = 0;
    
    % Loop through the characters
    for i = 1:length(word)
        letter = lower(word(i)); % to lowercase any capital letters 
        
        if letterShapes.isKey(letter)
            shape = letterShapes(letter);

            % Spline interpolation 
            x = posX + shape(:,1);
            y = posY + shape(:,2);
            t = 1:length(x);
            ts = 1:0.1:length(x); 
            xs = spline(t, x, ts);
            ys = spline(t, y, ts);

             % To Plot the interpolated shape of the letter
            plot(xs, ys, 'LineWidth', 2);
            hold on
            
            % The position for the next letter
            posX = posX + max(shape(:,1)) + 0.5; 
        else
            disp(['Shape for the letter ' letter ' is not defined.']);
        end
    end
    
    % For the title and the axis
    title(['Cursive-Written Word: ' upper(word)]);
    axis off;
end
