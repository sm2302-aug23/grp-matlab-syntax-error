function plotWord(word)
    % Create a map to hold basic shapes representing letters
    letterShapes = containers.Map;
    
    % Define basic shapes for each letter
    letterShapes('a')
    letterShapes('b')
    letterShapes('c') = [3, 0.5; 0.7,1; 0.7,1.5; 1,2;3,2.5]
    letterShapes('d') = [3.4,2.5;3,3;3,1.5;3,0.3;3.5,0.3;2.8,0.4;2,0.7;3.2,1.4]
    letterShapes('e') = [1,3;3,2.7;3,3.5;2,3.5;1.8,2;3,2]
    letterShapes('f') = [3,3.2;2,3.2;2.8,0.5;2.5,0.5;3,2;3,1.8;1.8,2]
    letterShapes('g') = []
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

    % Create a figure
    figure;
    
    % Set initial position for drawing letters
    posX = 0;
    posY = 0;
    
    % Loop through the characters in the input word
    for i = 1:length(word)
        letter = lower(word(i)); % Convert to lowercase
        
        if letterShapes.isKey(letter)
            shape = letterShapes(letter);
            
            % Plot the shape for the letter
            plot(posX + shape(:,1), posY + shape(:,2), 'LineWidth', 2);
            hold on;
            
            % Update the position for the next letter
            posX = posX + max(shape(:,1)) + 0.5; % Spacing between letters
        else
            disp(['Shape for the letter ' letter ' is not defined.']);
        end
    end
    
    % Set title and axis
    title(['Cursive-Written Word: ' upper(word)]);
    axis off;
end
