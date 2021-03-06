// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/mult/Mult.tst

load Mult.hack,
output-file Mult.out,
compare-to Mult.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set RAM[0] 1,   // Set test arguments
set RAM[1] 1,
set RAM[2] -1;  // Test that program initialized product to 0
repeat 200 {
  ticktock;
}
set RAM[0] 1,   // Restore arguments in case program used them as loop counter
set RAM[1] 1,
output;

set PC 0,
set RAM[0] 2,   // Set test arguments
set RAM[1] 2,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 250 {
  ticktock;
}
set RAM[0] 2,   // Restore arguments in case program used them as loop counter
set RAM[1] 2,
output;

set PC 0,
set RAM[0] 0,   // Set test arguments
set RAM[1] 2,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 280 {
  ticktock;
}
set RAM[0] 0,   // Restore arguments in case program used them as loop counter
set RAM[1] 2,
output;

set PC 0,
set RAM[0] 3,   // Set test arguments
set RAM[1] 1,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 220 {
  ticktock;
}
set RAM[0] 3,   // Restore arguments in case program used them as loop counter
set RAM[1] 1,
output;

set PC 0,
set RAM[0] 4,   // Set test arguments
set RAM[1] 2,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 250 {
  ticktock;
}
set RAM[0] 4,   // Restore arguments in case program used them as loop counter
set RAM[1] 2,
output;

set PC 0,
set RAM[0] 3,   // Set test arguments
set RAM[1] 3,
set RAM[2] -1;  // Ensure that program initialized product to 0
repeat 210 {
  ticktock;
}
set RAM[0] 3,   // Restore arguments in case program used them as loop counter
set RAM[1] 3,
output;
