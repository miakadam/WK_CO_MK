v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 115 -210 115 -160 {lab=GND}
N 115 -320 115 -270 {lab=VDD}
N 205 -210 205 -160 {lab=GND}
N 485 -180 485 -160 {lab=GND}
N 485 -410 485 -380 {lab=VDD}
N 205 -290 205 -270 {lab=in}
N 205 -290 385 -290 {lab=in}
N 605 -290 635 -290 {lab=out}
N 635 -290 685 -290 {lab=out}
C {devices/code_shown.sym} -545 -475 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

** Define input signal
let fsig = 1k
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

** Define transient params
let tstop = 2*tper
let tstep = 0.001*tper

** Set Sources
alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 0 ]

** Simulations
op
dc vin 0 3.3 0.01
tran $&tstep $&tstop

** Plots
setplot dc1
let vout = v(out)
plot vout

setplot tran1
let vout = v(out)
let vin = v(in)
let ivdd = -v1#branch*1e4
plot vout vin ivdd

setplot op1
write tb_inv2.raw
.endc
"}
C {libs/wk_kadam/inv_test.sym} 685 -170 0 0 {name=x1}
C {vsource.sym} 115 -240 0 1 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 205 -240 0 1 {name=VIN value=3.3 savecurrent=false}
C {vdd.sym} 485 -410 0 0 {name=l1 lab=VDD}
C {vdd.sym} 115 -320 0 0 {name=l2 lab=VDD}
C {gnd.sym} 115 -160 0 0 {name=l3 lab=GND}
C {gnd.sym} 205 -160 0 0 {name=l4 lab=GND}
C {gnd.sym} 485 -160 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 295 -290 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_wire.sym} 645 -290 0 0 {name=p2 sig_type=std_logic lab=out}
C {noconn.sym} 685 -290 2 0 {name=l6}
C {devices/code_shown.sym} -540 320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
