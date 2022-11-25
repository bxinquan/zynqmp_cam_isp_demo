// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R_H__
#define __design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 3;
  static const unsigned AddressRange = 44;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R_ram) {
        for (unsigned i = 0; i < 10 ; i = i + 1) {
            ram[i] = "0b000";
        }
        ram[10] = "0b100";
        ram[11] = "0b100";
        ram[12] = "0b010";
        ram[13] = "0b100";
        ram[14] = "0b100";
        ram[15] = "0b100";
        ram[16] = "0b100";
        ram[17] = "0b010";
        ram[18] = "0b001";
        ram[19] = "0b001";
        ram[20] = "0b011";
        ram[21] = "0b011";
        ram[22] = "0b100";
        ram[23] = "0b100";
        ram[24] = "0b001";
        ram[25] = "0b100";
        ram[26] = "0b100";
        ram[27] = "0b100";
        ram[28] = "0b010";
        ram[29] = "0b011";
        ram[30] = "0b101";
        ram[31] = "0b101";
        ram[32] = "0b011";
        ram[33] = "0b011";
        ram[34] = "0b011";
        ram[35] = "0b110";
        ram[36] = "0b110";
        ram[37] = "0b010";
        ram[38] = "0b010";
        ram[39] = "0b010";
        ram[40] = "0b000";
        ram[41] = "0b000";
        ram[42] = "0b001";
        ram[43] = "0b100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R) {


static const unsigned DataWidth = 3;
static const unsigned AddressRange = 44;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R_ram* meminst;


SC_CTOR(design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R) {
meminst = new design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R_ram("design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~design_1_v_frm_wr_0_0_BYTES_PER_PIXEL_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
