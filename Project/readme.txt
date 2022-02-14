             MATRIX ENCRYPTER


1.	How to start the program

Once the program is loaded onto your calculator,
simply find prgmENCRYPT and execute it.  As it 
is a basic program, no shells or Asm( tags are
required.


2.	Lists

This program uses two lists, MXKEY and MXMSG.  
MXMSG is the actual encrypted message.  Editing
it will only corrupt it.  MXKEY contains the key
to the message.  The length of a key list must
be a square number.  (3, 4, 9, 16, etc.)  You
can create your own key by creating or editing
MXKEY.  Just make sure the length is a square
number, and avoid using 1s , -1s, and 0s, as
those can mess up the encryption and decryption
process.  And yes, negative numbers are fine.


3.	Encrypting

When you choose the encrypt optioin from the main
menu, you will be asked whether or not you want to
use list MXKEY as the key.  [N] will generate a new
square matrix key with the input dimension.  [Y]
will attempt to load the existing list MXKEY.  If
MXKEY does not exist or is not a square number in
length, the program will error out and exit.  Next
you will be prompted to input something.  This is
where you type your message.  No quotes are required,
and the program should be able to handle almost any
symbol you throw at it with its default character
set.  More information on character sets will follow.
If all goes well, the message will be encrypted and
stored to MXMSG.


4.	Decrypting

Decrypting is much simpler and requires no input.  If
MXKEY or MXMSG is missing, the program will error out
and exit.  If you try decrypting a message that is the
wrong length for a certain key, the program will
compensate by chopping off the last characters of the
message until it is the correct size.  If all goes
well, the decrypted message will be stored to Str0,
which can be quickly displayed by pressing:

[VARS] [7] [0] [ENTER]


5.	Character Sets

When the program starts, the character set is stored to
Str0.  I also included beneath it the character set used
in many math textbooks in the matrix chapter.  Here is 
how the math textbook characrer set works:

_  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z
0  1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26

The string that is input is converted into numbers, which
are then encrypted in groups depending upon key size.
You can easily edit the default character set to include
any characters you may want to use that I did not include.


6.	Developers Have Feelings Too

Hey, if you modify my program or use my source, at least
give me credit.  Thats all I ask.