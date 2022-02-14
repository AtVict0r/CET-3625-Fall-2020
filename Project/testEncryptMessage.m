function message = testEncryptMessage() % Function for encrypting message
  while 1
    message = cell2mat(inputdlg('Enter short message:', 'Encrypt Message')); % Get user input as char array
    
    if isempty(message) % Check if user input is valid
      uiwait(msgbox('Empty variable','Warning','modal')); % Error message for invalid input
      continue; % Continue while loop
    else
      asciiVal = double(message); % Convert string to double (default MATLAB type)
      c1 = asciiVal([1:2:length(asciiVal)]); % Create a vector of all odd position values
      c2 = asciiVal([2:2:length(asciiVal)]); % Create a vector of all even position values
    
      if (rem(length(asciiVal), 2) == 1) % Check if vector length is even
        c2(length(c1)) = 32; % Make vector length even by adding blank space
      end % End if (even or odd vector check)
    
      asciiVal = [c1; c2]'; % Create groups of two by combining column 1 and 2 and transpose final matrix
      encyptKey = [4, 3; 5, -3]; % Create encryption key
    end % End if else (vector length check)
        
    encryptMessage = (asciiVal * encyptKey)'; % Return transposed matrix with encrypted message
    
    message = (encryptMessage(:))'; % Convert matrix to column vector and transpose to row vector
    newMessage = cellstr(strjoin(string(message))); % Convert row vector to string cell array
    
    inputdlg('Encrypted Message:','Message Box',[1, length(message)*3], newMessage); % Show result to user
  
    break; % Exit while loop
  end % End while loop 
 end % End function