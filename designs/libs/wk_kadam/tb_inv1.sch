v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -365 -220 -365 -170 {lab=GND}
N -365 -330 -365 -280 {lab=VDD}
N -275 -220 -275 -170 {lab=GND}
N 5 -190 5 -170 {lab=GND}
N 5 -420 5 -390 {lab=VDD}
N -275 -300 -275 -280 {lab=in}
N -275 -300 -95 -300 {lab=in}
N 125 -300 155 -300 {lab=out}
N 155 -300 205 -300 {lab=out}
C {libs/wk_kadam/inv_test.sym} 205 -180 0 0 {name=x1}
C {vsource.sym} -365 -250 0 1 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -275 -250 0 1 {name=VIN value=3.3 savecurrent=false}
C {vdd.sym} 5 -420 0 0 {name=l1 lab=VDD}
C {vdd.sym} -365 -330 0 0 {name=l2 lab=VDD}
C {gnd.sym} -365 -170 0 0 {name=l3 lab=GND}
C {gnd.sym} -275 -170 0 0 {name=l4 lab=GND}
C {gnd.sym} 5 -170 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -185 -300 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_wire.sym} 165 -300 0 0 {name=p2 sig_type=std_logic lab=out}
C {noconn.sym} 205 -300 2 0 {name=l6}
C {devices/code_shown.sym} -970 -70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -985 -765 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

**Define input signal
let freqin = 1k
let tper = 1/freqin
let trf = 0.01*tper
let ton = 0.5*tper-2*trf

** Define Transient sim params
let tstop = 2*tper
let tstep = 0.001*tper

**set sources
alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 3.3 0 $&trf $&trf $&ton $&tper 0 ]

**Simulation
op
dc vin 0 3.3 0.01
tran $&tstep $&tstop

write tb_inv1.raw
.endc
"}
