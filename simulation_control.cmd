File {
* The File section defines the input and output files of the simulation
* Input Files
Grid = "bitchin_transistor_2_msh.tdr" 
Current = "bitchin_transistor_2_def.plt" 
Plot = "bitchin_transistor_2_def.tdr" 
Output = "bitchin_transistor_2_def.log" 
}
Electrode {
{ Name="Drain_contact" Voltage=1.8 } * CHANGE THIS TO SET VDD
{ Name="Source_contact" Voltage=0.0 } 
{ Name="Gate_contact" Voltage=0.0 }
{ Name="Body_contact" Voltage=0.0 }
}
Physics { 
Mobility( DopingDep HighFieldSat Enormal )
EffectiveIntrinsicDensity ( OldSlotBoom )
}
Plot {
eDensity hDensity eCurrent hCurrent
Potential SpaceCharge ElectricField
eMobility hMobility eVelocity hVelocity
Doping DonorConcentration AcceptorConcentration
}
Math {
Extrapolate 
RelErrControl *on by default
Iterations=50 
Notdamped=100 
}
Solve {
Coupled(Iterations=100){ Poisson }
Coupled{ Poisson Electron Hole }
*-Bias Cathode to target bias
Quasistationary(
InitialStep=0.001 Increment=1.1
MinStep=1e-5 MaxStep=0.05
Goal{ Name="Gate_contact" Voltage=1.8 } *CHANGE THIS TO SET VDD
){ Coupled{ Poisson Electron Hole }}
}
