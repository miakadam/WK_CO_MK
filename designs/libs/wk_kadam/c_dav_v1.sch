v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 320 110 {}
N 280 -130 280 -60 {lab=Vdac}
N 280 -130 410 -130 {lab=Vdac}
N -420 -130 280 -130 {lab=Vdac}
N -280 -130 -280 -60 {lab=Vdac}
N -130 -130 -130 -60 {lab=Vdac}
N 0 -130 0 -60 {lab=Vdac}
N 130 -130 130 -60 {lab=Vdac}
N -420 -130 280 -130 {lab=Vdac}
N 410 0 410 70 {lab=Vref}
N 280 0 280 70 {lab=VC1}
N 130 0 130 70 {lab=VC2}
N 0 0 0 70 {lab=VC4}
N -130 0 -130 70 {lab=VC8}
N -280 0 -280 70 {lab=VC16}
N -420 -130 -420 -60 {lab=Vdac}
N 410 -130 410 -60 {lab=Vdac}
N -420 0 -420 70 {lab=VC32}
N 410 -130 540 -130 {lab=Vdac}
N 410 70 410 220 {lab=Vref}
C {symbols/cap_mim_1f0fF.sym} 410 -30 0 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 280 -30 0 0 {name=C2
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 130 -30 0 0 {name=C3
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=2}
C {symbols/cap_mim_1f0fF.sym} 0 -30 0 0 {name=C4
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=4}
C {symbols/cap_mim_1f0fF.sym} -130 -30 0 0 {name=C5
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=8}
C {symbols/cap_mim_1f0fF.sym} -280 -30 0 0 {name=C6
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=16}
C {symbols/cap_mim_1f0fF.sym} -420 -30 0 0 {name=C7
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=32}
C {iopin.sym} 410 220 1 0 {name=p1 lab=Vref}
C {iopin.sym} 280 70 1 0 {name=p2 lab=VC1}
C {iopin.sym} 130 70 1 0 {name=p3 lab=VC2}
C {iopin.sym} 0 70 1 0 {name=p4 lab=VC4}
C {iopin.sym} -130 70 1 0 {name=p5 lab=VC8}
C {iopin.sym} -280 70 1 0 {name=p6 lab=VC16}
C {iopin.sym} -420 70 1 0 {name=p7 lab=VC32}
C {iopin.sym} 540 -130 0 0 {name=p8 lab=Vdac}
