% https://www.instructables.com/Encrypt-a-message-using-matrixes/
%________________________________________________________________

function getKey() 
  key = input("Enter short message: ", 's'); % Get key from user input as string
  return key;
endfunction

function encrptMessage() % Function for encrypting message
  message = input("Enter short message: ", 's'); % Get user input as string
  if isempty(message) % Check if user input is valid
    disp('Empty variable'); % Error message for invalid input
  else
    asciiVal = double(message); % Convert string to double (default MATLAB type)
    c1 = asciiVal([1:2:length(asciiVal)]); % Create a vector of all odd position values
    c2 = asciiVal([2:2:length(asciiVal)]); % Create a vector of all even position values
    
    if (rem(length(asciiVal), 2) == 1) % Check if vector length is even
      c2(length(c1)) = 32; % Make vector length even by adding blank space
    end
    
    asciiVal = [c1; c2]' % Create groups of two by combining column 1 and 2 and transpose final matrix
    encyptKey = getKey();
  end
  
  return newMessage % Return matrix with encrypted message
 endfunction
 
 function decryptMessage() % Function for decrypting message
   
 endfunction

