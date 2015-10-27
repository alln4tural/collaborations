(
x.free;
x = {
	t=Impulse.ar(7)*SinOsc.ar(331);
	f=Demand.ar(t, 0, Dxrand((222, 277..7777),inf));
	Limiter.ar(GVerb.ar(t,1)*Splay.arFill(11, {RLPF.ar(LFSaw.ar(f + (f/7).rand2),LFNoise1.kr(2,4,100).midicps)}))
}.play;
)
