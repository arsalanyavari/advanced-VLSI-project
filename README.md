### This repository contains the answers for all phases of the advanced VLSI course project. You can view the files for both phases below.

## Phases:
### Phase1:
Instruction:
[Phase1 instructions PDF](phase1/Adv_VLSI_Project_Phase_1_1402_2.pdf)

Our Report:
[Phase1 report PDF](phase1/Phase1_Advanced_VLSI_project_report.pdf)

### Phase2:
Instruction:
[Phase2 instructions PDF](phase2/Adv_VLSI_Project_Phase_2_1402_2.pdf)

Our Report:
[Phase2 report PDF](phase2/Phase2_Advanced_VLSI_project_report.pdf)


## Requirement Tools:
- modelsim
- design compiler
- soc encounter
- hspice

## Directory Structure in Detail

Phase1:
- The `src` directory contains verilog code for Booth Multiplier.
- The `assets` directory contains sample script for design-compiler (each script for different scenarios  is located in the respective result directory within the `outputs` directory).
- The `outputs` directory contains our results for different scenarios.

Phase2:
- The `src` directory contains verilog code of this phase and spice code for Ripple Carry Adder.
- The `assets` directory contains spice codes for gates needed for Ripple Carry Adder and modified library of 45nm with our power leakage measures.
- The `outputs` directory contains our results.

```
.
├── phase1
│   ├── Adv_VLSI_Project_Phase_1_1402_2.pdf
│   ├── assets
│   │   └── script.scr
│   ├── outputs
│   │   ├── clock_gating
│   │   ├── compile_ultra
│   │   ├── soc_outputs
│   │   ├── typical_area_opt
│   │   ├── typical_no_opt
│   │   ├── typical_power_opt
│   │   ├── typical_speed_opt
│   │   ├── ungroup
│   │   └── ungroup_flatten
│   ├── Phase1_Advanced_VLSI_project_report.pdf
│   └── src
│       ├── booth_multiplier.v
│       └── tb_booth_multiplier.v
├── phase2
│   ├── Adv_VLSI_Project_Phase_2_1402_2.pdf
│   ├── assets
│   │   ├── Modified_Library
│   │   └── spice_code
│   ├── outputs
│   │   ├── typical_no_opt
│   │   └── typical_no_opt_tiny
│   ├── Phase2_Advanced_VLSI_project_report.pdf
│   └── src
│       ├── spice
│       └── verilog
└── README.md
```

## Contributers:
[AmirArsalanYavari](https://github.com/arsalanyavari) - [SaharJafari](https://github.com/Sahar-Jafari2001)
