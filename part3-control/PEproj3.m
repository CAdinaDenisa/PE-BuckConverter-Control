clc
clear


L = 5.51e-3;     
C = 500e-6;   
R = 14/8;       
uin = 48;     


A = [ 0,       -1/L; 1/C,  -1/(R*C) ];
B = [ uin/L; 0];
C_mat = [0, 1];
D = 0;


sys_ss = ss(A, B, C_mat, D);


sys_ss
Hp = tf(sys_ss)

%T_pwm = 1500;  
t_s = 12*8.8e-3;   %desired settling time
sigma = 0;       %desired overshoot


%% Desired closed-loop second-order target (Ho)

%zeta=xi = 1 for zero overshoot (critically damped)
xi = 1;
omega_n = 4 / (xi * t_s);     

Ho = tf(omega_n^2, [1, 2*xi*omega_n, omega_n^2]);

%% Guillemin-Truxal 

% Hc = (1/Hp) * (Ho / (1 - Ho))

% Note: ensure Ho has magnitude < 1 at relevant freq (practical check).
Hc = minreal( (1/Hp) * (Ho / (1 - Ho)) )


Hc_ss = ss(Hc);
[Ac,Bc,Cc,Dc] = ssdata(Hc_ss)

%% for part 4

Ts = 1/1500;

Hd = c2d(Hc, Ts)

%exttract coefficients
[num_d, den_d] = tfdata(Hd, 'v');

% y[k]= 1.9507*y[n-1] -  0.9507*y[n-2] + (8.235e-05)*u[n] - (9.699e-05)*u[n-1] +  (2.759e-05)*u[n-2];



