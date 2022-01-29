function ds = get_ds(t,s)

E=1E2;
alpha=1.;

ds=E*(get_v(t)-sign(s).*(abs(s)./get_eta(t)).^(1/alpha));

end