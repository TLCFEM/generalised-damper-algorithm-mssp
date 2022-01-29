function eta = get_eta(t)

global number;
number=number+numel(t);
% CA=10;
% CB=100;
% CC=10;
% CD=100;
%
% gap_a=1;
% gap_b=1;
%
% damping_a=.25*(abs(CA)+abs(CB)+abs(CC)+abs(CD));
% damping_b=.5/pi*(abs(CA)-abs(CB)-abs(CC)+abs(CD));
% damping_c=.5/pi*(abs(CA)+abs(CB)-abs(CC)-abs(CD));
% damping_d=(abs(CA)-abs(CB)+abs(CC)-abs(CD))/pi/pi;
%
% u=t*sin(t);
stiffness=100;
h=.05;
v=get_v(t);

vr=5;
%
% factor_a=atan(gap_a*u);
% factor_b=atan(gap_b*v);
% eta=damping_a+damping_b*factor_a+damping_c*factor_b+damping_d*factor_a*factor_b;

if abs(v)>vr
    eta=sign(v)*stiffness*(vr+h*(abs(v)-vr));
    
    eta=eta/v;
else
    eta=stiffness;
end

end