v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 400 140 400 202.5 {lab=avss}
N 210 -40 260 -40 {lab=in}
N 260 -90 360 -90 {lab=in}
N 260 -90 260 -40 {lab=in}
N 260 -40 260 70 {lab=in}
N 260 70 370 70 {lab=in}
N 400 -60 400 40 {lab=out}
N 400 -20 580 -20 {lab=out}
N 400 100 400 140 {lab=avss}
N 400 -227.5 400 -120 {lab=avdd}
N 400 -90 520 -90 {lab=avdd}
N 520 -160 520 -90 {lab=avdd}
N 400 70 510 70 {lab=avss}
N 510 70 510 160 {lab=avss}
N 400 160 510 160 {lab=avss}
N 400 -160 520 -160 {lab=avdd}
C {title.sym} -182.5 370 0 0 {name=l1 author="Mia"}
C {iopin.sym} 400 -227.5 3 0 {name=p1 lab=avdd}
C {iopin.sym} 400 202.5 1 0 {name=p2 lab=avss}
C {iopin.sym} 210 -40 2 0 {name=p4 lab=in}
C {iopin.sym} 580 -20 0 0 {name=p5 lab=out}
C {symbols/nfet_03v3.sym} 380 70 0 0 {name=M3
L=0.28u
W=1.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 380 -90 0 0 {name=M4
L=0.28u
W=2.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
