%% Demo Script for Sebastian
% 3 February 2019
% M. Lamsey

%% 01. General Stuff
% --- NOTES --- %
% The workspace is super helpful for previewing the contents of variables
% Use functions for modularity, scripts for prototyping (w/ workspace)
% External text editors are a e s t h e t i c

% --- CLEAR DAT WORKSPACE --- %
clc, clear all, close all
% clc clears the command line
% clear all clears the workspace variables
% close all closes all open windows and erases their references

% --- EXAMPLE TYPES --- %
numerical_value = 80;
character_array = 'word';
string = "boi";
boolean_1 = true;
boolean_2 = false;

% --- PRINTING THINGS TO THE COMMAND LINE --- %
% Simple: disp(variable_name);
disp('Numerical Value:');
disp(numerical_value);

% Complex: fprintf('string, format characters',argin);
fprintf('The content of your character array is: %s\n\n',character_array);

%% 02. Matrices in MATLAB
clear all;
% MATLAB = 'MATrix LABoratory -> matrices are a good way to represent data
matrix_1D = randi(10,1,10);
matrix_2D = randi(10,10,10);
matrix_5D = randi(10,10,10,10,10,10);

% --- Indexing Operations --- %
% Index a single value: val = variable_name(index_i,index_j,...);
value_2_3 = matrix_2D(2,3);

% Index multiple values (subset): use ranges!
values_row_2 = matrix_2D(2,:);
first_values_row_2 = matrix_2D(2,1:5);
last_values_row_2 = matrix_2D(2,6:end);

disp('Contents of matrix subsets:')
disp(values_row_2);
disp(first_values_row_2);
disp(last_values_row_2);

% --- Matrix Math --- %
% You can perform math on matrices element-wise or matrix-wise
matrix_1 = randi(10,3,1)
matrix_2 = randi(10,1,3)

matrix_product_1 = matrix_2 * matrix_1
matrix_product_2 = matrix_1 * matrix_2

vector_1 = randi(10,1,10)
vector_2 = randi(10,1,10)

element_wise_product = vector_1 .* vector_2
%mistake = vector_1 * vector_2

%% 03. Data Visualization
clc, close all, clear all;

% Super easy
x = linspace(0,10,1000); % domain
z = 2; % constant
y1 = exp(1).^(-z.*sin(x)); % range [in this case, defined by eqn]
y2 = exp(1).^((1/(2*z)).*x) .* cos(x);

% CALL DAT PLOTTER
f = figure; % stores reference to your new window in f
plot(x,y1,'k-.'); % plot data -> x,y,formatspec

% Format:
hold on; % keeps current axes as target
plot(x,y2,'r-');
grid on;
xlabel('Run Time (seconds)');
ylabel('System Displacement Response (meters)');
legend('Trial 1','Trial 2');
hold off; % release axes

% also works in 3D - yEEt
clear all;
f = figure;
x = linspace(0,10,100);
y1 = x;
y2 = cos(x);
z1 = randi(2,100,100);
z2 = sin(x);

subplot(1,2,1)
surf(x,y1,z1)
zlim([0,3])

subplot(1,2,2)
plot3(x,y2,z2);
grid on;

%% 04. Logical Indexing
clc, close all, clear all
max_val = 10;
dim_1 = 8;
dim_2 = 6;
example_domain = randi(max_val,dim_1,dim_2)

logical_index = example_domain > floor(max_val / 2)

subset = example_domain(logical_index);
n_match = length(subset);
n_total = dim_1 * dim_2;

fprintf('The number of terms that meet the criteria is %i / %i\n',n_match,n_total);
fprintf('This is %1.2f%% of the original set.\n\n',100*n_match/n_total);