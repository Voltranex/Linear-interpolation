# Linear-interpolation
For a bunch of data, computing these values for every column is time-consuming.In order to avoid that this program allows us to compute all values at the same time.
This Matlab program reads the excel table and for a given value of A column, it performs a linear interpolation for other columns(B-C-D) and takes the strings at the line(1) and shows the result.
There are two options. One of them is Water and Air properties for the given value. Other one is for a value of A column it performs linear interpolation for any column for a custom excel file.
Readtable function is independent from the file address. For a custom compute, excel file have to be in the same folder with Matlab file.
.mat files storages data of latest calculation time, values and excel file name.
Lul.xlsx file contains physical properties of water and air for specific temperatures (A Column).
Other excel files for just testing.

#-V
