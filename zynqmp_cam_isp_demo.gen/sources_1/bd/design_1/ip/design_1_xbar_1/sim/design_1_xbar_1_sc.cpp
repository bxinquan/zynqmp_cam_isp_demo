// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "design_1_xbar_1_sc.h"

#include "axi_crossbar.h"

#include <map>
#include <string>

design_1_xbar_1_sc::design_1_xbar_1_sc(const sc_core::sc_module_name& nm) : sc_core::sc_module(nm), mp_impl(NULL)
{
  // configure connectivity manager
  xsc::utils::xsc_sim_manager::addInstance("design_1_xbar_1", this);

  // initialize module
    xsc::common_cpp::properties model_param_props;
    model_param_props.addLong("C_NUM_SLAVE_SLOTS", "1");
    model_param_props.addLong("C_NUM_MASTER_SLOTS", "9");
    model_param_props.addLong("C_AXI_ID_WIDTH", "1");
    model_param_props.addLong("C_AXI_ADDR_WIDTH", "40");
    model_param_props.addLong("C_AXI_DATA_WIDTH", "32");
    model_param_props.addLong("C_AXI_PROTOCOL", "2");
    model_param_props.addLong("C_NUM_ADDR_RANGES", "1");
    model_param_props.addLong("C_AXI_SUPPORTS_USER_SIGNALS", "0");
    model_param_props.addLong("C_AXI_AWUSER_WIDTH", "1");
    model_param_props.addLong("C_AXI_ARUSER_WIDTH", "1");
    model_param_props.addLong("C_AXI_WUSER_WIDTH", "1");
    model_param_props.addLong("C_AXI_RUSER_WIDTH", "1");
    model_param_props.addLong("C_AXI_BUSER_WIDTH", "1");
    model_param_props.addLong("C_R_REGISTER", "1");
    model_param_props.addLong("C_CONNECTIVITY_MODE", "0");
    model_param_props.addString("C_FAMILY", "zynquplus");
    model_param_props.addBitString("C_M_AXI_BASE_ADDR", "000000000000000000000000000000001010000000000011000000000000000000000000000000000000000000000000101000000000001000000000000000000000000000000000000000000000000010100000000001110000000000000000000000000000000000000000000000001010000000000110000000000000000000000000000000000000000000000000101000000000010100000000000000000000000000000000000000000000000010100000000100000000000000000000000000000000000000000000000000001010000000000100000000000000000000000000000000000000000000000000101000000000000000000000000000000000000000000000000000000000000010100000000000010000000000000000", 576);
    model_param_props.addBitString("C_M_AXI_ADDR_WIDTH", "000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010100000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000", 288);
    model_param_props.addBitString("C_S_AXI_BASE_ID", "00000000000000000000000000000000", 32);
    model_param_props.addBitString("C_S_AXI_THREAD_ID_WIDTH", "00000000000000000000000000000000", 32);
    model_param_props.addBitString("C_M_AXI_WRITE_CONNECTIVITY", "000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001", 288);
    model_param_props.addBitString("C_M_AXI_READ_CONNECTIVITY", "000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001", 288);
    model_param_props.addBitString("C_S_AXI_SINGLE_THREAD", "00000000000000000000000000000001", 32);
    model_param_props.addBitString("C_S_AXI_WRITE_ACCEPTANCE", "00000000000000000000000000000001", 32);
    model_param_props.addBitString("C_S_AXI_READ_ACCEPTANCE", "00000000000000000000000000000001", 32);
    model_param_props.addBitString("C_M_AXI_WRITE_ISSUING", "000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001", 288);
    model_param_props.addBitString("C_M_AXI_READ_ISSUING", "000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001", 288);
    model_param_props.addBitString("C_S_AXI_ARB_PRIORITY", "00000000000000000000000000000000", 32);
    model_param_props.addBitString("C_M_AXI_SECURE", "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", 288);
    model_param_props.addString("COMPONENT_NAME", "design_1_xbar_1");

  mp_impl = new axi_crossbar("inst", model_param_props);

  // initialize AXI sockets
  target_0_rd_socket = mp_impl->target_0_rd_socket;
  target_0_wr_socket = mp_impl->target_0_wr_socket;
  initiator_0_rd_socket = mp_impl->initiator_0_rd_socket;
  initiator_0_wr_socket = mp_impl->initiator_0_wr_socket;
  initiator_1_rd_socket = mp_impl->initiator_1_rd_socket;
  initiator_1_wr_socket = mp_impl->initiator_1_wr_socket;
  initiator_2_rd_socket = mp_impl->initiator_2_rd_socket;
  initiator_2_wr_socket = mp_impl->initiator_2_wr_socket;
  initiator_3_rd_socket = mp_impl->initiator_3_rd_socket;
  initiator_3_wr_socket = mp_impl->initiator_3_wr_socket;
  initiator_4_rd_socket = mp_impl->initiator_4_rd_socket;
  initiator_4_wr_socket = mp_impl->initiator_4_wr_socket;
  initiator_5_rd_socket = mp_impl->initiator_5_rd_socket;
  initiator_5_wr_socket = mp_impl->initiator_5_wr_socket;
  initiator_6_rd_socket = mp_impl->initiator_6_rd_socket;
  initiator_6_wr_socket = mp_impl->initiator_6_wr_socket;
  initiator_7_rd_socket = mp_impl->initiator_7_rd_socket;
  initiator_7_wr_socket = mp_impl->initiator_7_wr_socket;
  initiator_8_rd_socket = mp_impl->initiator_8_rd_socket;
  initiator_8_wr_socket = mp_impl->initiator_8_wr_socket;
}

design_1_xbar_1_sc::~design_1_xbar_1_sc()
{
  xsc::utils::xsc_sim_manager::clean();

  delete mp_impl;
}

