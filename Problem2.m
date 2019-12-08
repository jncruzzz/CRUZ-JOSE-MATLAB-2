function Problem2()
format short
x1 = input('Input first X value '); y1 = input('Input first Y value ');
x2 = input('Input second X value '); y2 = input('Input second Y value ');
x3 = input('Input third X value '); y3 = input('Input third Y value ');
X = ((x1)^2+(y1)^2);
C = ((x2)^2+(y2)^2);
V = ((x3)^2+(y3)^2);
dA = [x1, y1, 1; x2, y2, 1; x3, y3, 1];
dB = [X, y1, 1; C, y2, 1; V, y3, 1];
dC = [X, x1, 1; C, x2, 1; V, x3, 1];
dD = [X, x1, y1; C, x2, y2; V, x3, y3];
A = det(dA);
B = -1*det(dB);
C = det(dC);
D = -1*det(dD);
cx = (B/(2*A))*(-1);
cy = C/(2*A)*(-1);
r = sqrt((cx-x1)^2+(cy-y1)^2);
co = [B, C, D];
L = co./A;
disp('Radius of the Circle is '); 
disp(r)
disp('The Center of the Circle is ');
disp([cx, cy]);
disp('The Coefficients are ');
disp(L);



