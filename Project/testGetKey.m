function key = testGetKey()
  pos = ["first"; "second"; "third"; "fourth"];
  i = 1;
  
  disp("Enter the four digit passcode to encrpt/decrypt your message: ");
  
  function num = testNonZero(instruct)
    while 1
      num = input(instruct);
      if(num != 0) 
        break;
      end
      disp("You can't use zero")
    end
  end
  
  for j = 1:2
    for k = 1:2
      instruct = ["Enter ", pos(i, :), " digit for key: "];
      key(j, k) = testNonZero(instruct);
      i++;
    end
  end  
end