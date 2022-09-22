var x {i in 1..9, j in 1..9, k in 1..9} binary;

minimize zero: 0;

subject to CELL_CONSTRAINT {i in 1..9, j in 1..9}: sum {k in 1..9} x[i,j,k] = 1;
subject to ROW_CONSTRAINT {i in 1..9, k in 1..9}: sum {j in 1..9} x[i,j,k] = 1;
subject to COL_CONSTRAINT {j in 1..9, k in 1..9}: sum {i in 1..9} x[i,j,k] = 1;
subject to SUBMATRIX_CONSTRAINT {i0 in 1..3, j0 in 1..3, k in 1..9}: sum {i in 3*i0-2..3*i0, j in 3*j0-2..3*j0} x[i,j,k] = 1;
