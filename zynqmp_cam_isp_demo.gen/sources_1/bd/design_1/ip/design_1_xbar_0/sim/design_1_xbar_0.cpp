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


#include "design_1_xbar_0_sc.h"

#include "design_1_xbar_0.h"

#include "axi_crossbar.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
design_1_xbar_0::design_1_xbar_0(const sc_core::sc_module_name& nm) : design_1_xbar_0_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awaddr("m_axi_awaddr"), m_axi_awprot("m_axi_awprot"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_araddr("m_axi_araddr"), m_axi_arprot("m_axi_arprot"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awvalid_converter = NULL;
  mp_s_axi_awready_converter = NULL;
  mp_s_axi_wvalid_converter = NULL;
  mp_s_axi_wready_converter = NULL;
  mp_s_axi_bvalid_converter = NULL;
  mp_s_axi_bready_converter = NULL;
  mp_s_axi_arvalid_converter = NULL;
  mp_s_axi_arready_converter = NULL;
  mp_s_axi_rvalid_converter = NULL;
  mp_s_axi_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_0 = NULL;
  mp_m_axi_awprot_converter_0 = NULL;
  mp_m_axi_awvalid_converter_0 = NULL;
  mp_m_axi_awready_converter_0 = NULL;
  mp_m_axi_wdata_converter_0 = NULL;
  mp_m_axi_wstrb_converter_0 = NULL;
  mp_m_axi_wvalid_converter_0 = NULL;
  mp_m_axi_wready_converter_0 = NULL;
  mp_m_axi_bresp_converter_0 = NULL;
  mp_m_axi_bvalid_converter_0 = NULL;
  mp_m_axi_bready_converter_0 = NULL;
  mp_m_axi_araddr_converter_0 = NULL;
  mp_m_axi_arprot_converter_0 = NULL;
  mp_m_axi_arvalid_converter_0 = NULL;
  mp_m_axi_arready_converter_0 = NULL;
  mp_m_axi_rdata_converter_0 = NULL;
  mp_m_axi_rresp_converter_0 = NULL;
  mp_m_axi_rvalid_converter_0 = NULL;
  mp_m_axi_rready_converter_0 = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_1 = NULL;
  mp_m_axi_awprot_converter_1 = NULL;
  mp_m_axi_awvalid_converter_1 = NULL;
  mp_m_axi_awready_converter_1 = NULL;
  mp_m_axi_wdata_converter_1 = NULL;
  mp_m_axi_wstrb_converter_1 = NULL;
  mp_m_axi_wvalid_converter_1 = NULL;
  mp_m_axi_wready_converter_1 = NULL;
  mp_m_axi_bresp_converter_1 = NULL;
  mp_m_axi_bvalid_converter_1 = NULL;
  mp_m_axi_bready_converter_1 = NULL;
  mp_m_axi_araddr_converter_1 = NULL;
  mp_m_axi_arprot_converter_1 = NULL;
  mp_m_axi_arvalid_converter_1 = NULL;
  mp_m_axi_arready_converter_1 = NULL;
  mp_m_axi_rdata_converter_1 = NULL;
  mp_m_axi_rresp_converter_1 = NULL;
  mp_m_axi_rvalid_converter_1 = NULL;
  mp_m_axi_rready_converter_1 = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_2 = NULL;
  mp_m_axi_awprot_converter_2 = NULL;
  mp_m_axi_awvalid_converter_2 = NULL;
  mp_m_axi_awready_converter_2 = NULL;
  mp_m_axi_wdata_converter_2 = NULL;
  mp_m_axi_wstrb_converter_2 = NULL;
  mp_m_axi_wvalid_converter_2 = NULL;
  mp_m_axi_wready_converter_2 = NULL;
  mp_m_axi_bresp_converter_2 = NULL;
  mp_m_axi_bvalid_converter_2 = NULL;
  mp_m_axi_bready_converter_2 = NULL;
  mp_m_axi_araddr_converter_2 = NULL;
  mp_m_axi_arprot_converter_2 = NULL;
  mp_m_axi_arvalid_converter_2 = NULL;
  mp_m_axi_arready_converter_2 = NULL;
  mp_m_axi_rdata_converter_2 = NULL;
  mp_m_axi_rresp_converter_2 = NULL;
  mp_m_axi_rvalid_converter_2 = NULL;
  mp_m_axi_rready_converter_2 = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_3 = NULL;
  mp_m_axi_awprot_converter_3 = NULL;
  mp_m_axi_awvalid_converter_3 = NULL;
  mp_m_axi_awready_converter_3 = NULL;
  mp_m_axi_wdata_converter_3 = NULL;
  mp_m_axi_wstrb_converter_3 = NULL;
  mp_m_axi_wvalid_converter_3 = NULL;
  mp_m_axi_wready_converter_3 = NULL;
  mp_m_axi_bresp_converter_3 = NULL;
  mp_m_axi_bvalid_converter_3 = NULL;
  mp_m_axi_bready_converter_3 = NULL;
  mp_m_axi_araddr_converter_3 = NULL;
  mp_m_axi_arprot_converter_3 = NULL;
  mp_m_axi_arvalid_converter_3 = NULL;
  mp_m_axi_arready_converter_3 = NULL;
  mp_m_axi_rdata_converter_3 = NULL;
  mp_m_axi_rresp_converter_3 = NULL;
  mp_m_axi_rvalid_converter_3 = NULL;
  mp_m_axi_rready_converter_3 = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_4 = NULL;
  mp_m_axi_awprot_converter_4 = NULL;
  mp_m_axi_awvalid_converter_4 = NULL;
  mp_m_axi_awready_converter_4 = NULL;
  mp_m_axi_wdata_converter_4 = NULL;
  mp_m_axi_wstrb_converter_4 = NULL;
  mp_m_axi_wvalid_converter_4 = NULL;
  mp_m_axi_wready_converter_4 = NULL;
  mp_m_axi_bresp_converter_4 = NULL;
  mp_m_axi_bvalid_converter_4 = NULL;
  mp_m_axi_bready_converter_4 = NULL;
  mp_m_axi_araddr_converter_4 = NULL;
  mp_m_axi_arprot_converter_4 = NULL;
  mp_m_axi_arvalid_converter_4 = NULL;
  mp_m_axi_arready_converter_4 = NULL;
  mp_m_axi_rdata_converter_4 = NULL;
  mp_m_axi_rresp_converter_4 = NULL;
  mp_m_axi_rvalid_converter_4 = NULL;
  mp_m_axi_rready_converter_4 = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_5 = NULL;
  mp_m_axi_awprot_converter_5 = NULL;
  mp_m_axi_awvalid_converter_5 = NULL;
  mp_m_axi_awready_converter_5 = NULL;
  mp_m_axi_wdata_converter_5 = NULL;
  mp_m_axi_wstrb_converter_5 = NULL;
  mp_m_axi_wvalid_converter_5 = NULL;
  mp_m_axi_wready_converter_5 = NULL;
  mp_m_axi_bresp_converter_5 = NULL;
  mp_m_axi_bvalid_converter_5 = NULL;
  mp_m_axi_bready_converter_5 = NULL;
  mp_m_axi_araddr_converter_5 = NULL;
  mp_m_axi_arprot_converter_5 = NULL;
  mp_m_axi_arvalid_converter_5 = NULL;
  mp_m_axi_arready_converter_5 = NULL;
  mp_m_axi_rdata_converter_5 = NULL;
  mp_m_axi_rresp_converter_5 = NULL;
  mp_m_axi_rvalid_converter_5 = NULL;
  mp_m_axi_rready_converter_5 = NULL;
  mp_M06_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_6 = NULL;
  mp_m_axi_awprot_converter_6 = NULL;
  mp_m_axi_awvalid_converter_6 = NULL;
  mp_m_axi_awready_converter_6 = NULL;
  mp_m_axi_wdata_converter_6 = NULL;
  mp_m_axi_wstrb_converter_6 = NULL;
  mp_m_axi_wvalid_converter_6 = NULL;
  mp_m_axi_wready_converter_6 = NULL;
  mp_m_axi_bresp_converter_6 = NULL;
  mp_m_axi_bvalid_converter_6 = NULL;
  mp_m_axi_bready_converter_6 = NULL;
  mp_m_axi_araddr_converter_6 = NULL;
  mp_m_axi_arprot_converter_6 = NULL;
  mp_m_axi_arvalid_converter_6 = NULL;
  mp_m_axi_arready_converter_6 = NULL;
  mp_m_axi_rdata_converter_6 = NULL;
  mp_m_axi_rresp_converter_6 = NULL;
  mp_m_axi_rvalid_converter_6 = NULL;
  mp_m_axi_rready_converter_6 = NULL;
  mp_M07_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_7 = NULL;
  mp_m_axi_awprot_converter_7 = NULL;
  mp_m_axi_awvalid_converter_7 = NULL;
  mp_m_axi_awready_converter_7 = NULL;
  mp_m_axi_wdata_converter_7 = NULL;
  mp_m_axi_wstrb_converter_7 = NULL;
  mp_m_axi_wvalid_converter_7 = NULL;
  mp_m_axi_wready_converter_7 = NULL;
  mp_m_axi_bresp_converter_7 = NULL;
  mp_m_axi_bvalid_converter_7 = NULL;
  mp_m_axi_bready_converter_7 = NULL;
  mp_m_axi_araddr_converter_7 = NULL;
  mp_m_axi_arprot_converter_7 = NULL;
  mp_m_axi_arvalid_converter_7 = NULL;
  mp_m_axi_arready_converter_7 = NULL;
  mp_m_axi_rdata_converter_7 = NULL;
  mp_m_axi_rresp_converter_7 = NULL;
  mp_m_axi_rvalid_converter_7 = NULL;
  mp_m_axi_rready_converter_7 = NULL;
  mp_M08_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_8 = NULL;
  mp_m_axi_awprot_converter_8 = NULL;
  mp_m_axi_awvalid_converter_8 = NULL;
  mp_m_axi_awready_converter_8 = NULL;
  mp_m_axi_wdata_converter_8 = NULL;
  mp_m_axi_wstrb_converter_8 = NULL;
  mp_m_axi_wvalid_converter_8 = NULL;
  mp_m_axi_wready_converter_8 = NULL;
  mp_m_axi_bresp_converter_8 = NULL;
  mp_m_axi_bvalid_converter_8 = NULL;
  mp_m_axi_bready_converter_8 = NULL;
  mp_m_axi_araddr_converter_8 = NULL;
  mp_m_axi_arprot_converter_8 = NULL;
  mp_m_axi_arvalid_converter_8 = NULL;
  mp_m_axi_arready_converter_8 = NULL;
  mp_m_axi_rdata_converter_8 = NULL;
  mp_m_axi_rresp_converter_8 = NULL;
  mp_m_axi_rvalid_converter_8 = NULL;
  mp_m_axi_rready_converter_8 = NULL;
  mp_M09_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_9 = NULL;
  mp_m_axi_awprot_converter_9 = NULL;
  mp_m_axi_awvalid_converter_9 = NULL;
  mp_m_axi_awready_converter_9 = NULL;
  mp_m_axi_wdata_converter_9 = NULL;
  mp_m_axi_wstrb_converter_9 = NULL;
  mp_m_axi_wvalid_converter_9 = NULL;
  mp_m_axi_wready_converter_9 = NULL;
  mp_m_axi_bresp_converter_9 = NULL;
  mp_m_axi_bvalid_converter_9 = NULL;
  mp_m_axi_bready_converter_9 = NULL;
  mp_m_axi_araddr_converter_9 = NULL;
  mp_m_axi_arprot_converter_9 = NULL;
  mp_m_axi_arvalid_converter_9 = NULL;
  mp_m_axi_arready_converter_9 = NULL;
  mp_m_axi_rdata_converter_9 = NULL;
  mp_m_axi_rresp_converter_9 = NULL;
  mp_m_axi_rvalid_converter_9 = NULL;
  mp_m_axi_rready_converter_9 = NULL;
  mp_M10_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_10 = NULL;
  mp_m_axi_awprot_converter_10 = NULL;
  mp_m_axi_awvalid_converter_10 = NULL;
  mp_m_axi_awready_converter_10 = NULL;
  mp_m_axi_wdata_converter_10 = NULL;
  mp_m_axi_wstrb_converter_10 = NULL;
  mp_m_axi_wvalid_converter_10 = NULL;
  mp_m_axi_wready_converter_10 = NULL;
  mp_m_axi_bresp_converter_10 = NULL;
  mp_m_axi_bvalid_converter_10 = NULL;
  mp_m_axi_bready_converter_10 = NULL;
  mp_m_axi_araddr_converter_10 = NULL;
  mp_m_axi_arprot_converter_10 = NULL;
  mp_m_axi_arvalid_converter_10 = NULL;
  mp_m_axi_arready_converter_10 = NULL;
  mp_m_axi_rdata_converter_10 = NULL;
  mp_m_axi_rresp_converter_10 = NULL;
  mp_m_axi_rvalid_converter_10 = NULL;
  mp_m_axi_rready_converter_10 = NULL;

  // initialize junctures
  mp_m_axi_concat_araddr = NULL;
  mp_m_axi_concat_arprot = NULL;
  mp_m_axi_concat_arvalid = NULL;
  mp_m_axi_concat_awaddr = NULL;
  mp_m_axi_concat_awprot = NULL;
  mp_m_axi_concat_awvalid = NULL;
  mp_m_axi_concat_bready = NULL;
  mp_m_axi_concat_rready = NULL;
  mp_m_axi_concat_wdata = NULL;
  mp_m_axi_concat_wstrb = NULL;
  mp_m_axi_concat_wvalid = NULL;
  mp_m_axi_split_arready = NULL;
  mp_m_axi_split_awready = NULL;
  mp_m_axi_split_bresp = NULL;
  mp_m_axi_split_bvalid = NULL;
  mp_m_axi_split_rdata = NULL;
  mp_m_axi_split_rresp = NULL;
  mp_m_axi_split_rvalid = NULL;
  mp_m_axi_split_wready = NULL;
  mp_m_axi_concat_awaddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_awaddr");
  mp_m_axi_concat_awaddr->in_port[0](m_axi_concat_awaddr_out_0);
  mp_m_axi_concat_awaddr->out_port(m_axi_awaddr);
    mp_m_axi_concat_awaddr->offset_port(0, 0);
  mp_m_axi_concat_awprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_awprot");
  mp_m_axi_concat_awprot->in_port[0](m_axi_concat_awprot_out_0);
  mp_m_axi_concat_awprot->out_port(m_axi_awprot);
    mp_m_axi_concat_awprot->offset_port(0, 0);
  mp_m_axi_concat_awvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_awvalid");
  mp_m_axi_concat_awvalid->in_port[0](m_axi_concat_awvalid_out_0);
  mp_m_axi_concat_awvalid->out_port(m_axi_awvalid);
    mp_m_axi_concat_awvalid->offset_port(0, 0);
  mp_m_axi_split_awready = new xsc::xsc_split<11, 11>("m_axi_split_awready");
  mp_m_axi_split_awready->in_port(m_axi_awready);
  mp_m_axi_split_awready->out_port[0](m_axi_split_awready_out_0);
    mp_m_axi_split_awready->add_mask(0,1,0);
  mp_m_axi_concat_wdata = new xsc::xsc_concatenator<352, 11>("m_axi_concat_wdata");
  mp_m_axi_concat_wdata->in_port[0](m_axi_concat_wdata_out_0);
  mp_m_axi_concat_wdata->out_port(m_axi_wdata);
    mp_m_axi_concat_wdata->offset_port(0, 0);
  mp_m_axi_concat_wstrb = new xsc::xsc_concatenator<44, 11>("m_axi_concat_wstrb");
  mp_m_axi_concat_wstrb->in_port[0](m_axi_concat_wstrb_out_0);
  mp_m_axi_concat_wstrb->out_port(m_axi_wstrb);
    mp_m_axi_concat_wstrb->offset_port(0, 0);
  mp_m_axi_concat_wvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_wvalid");
  mp_m_axi_concat_wvalid->in_port[0](m_axi_concat_wvalid_out_0);
  mp_m_axi_concat_wvalid->out_port(m_axi_wvalid);
    mp_m_axi_concat_wvalid->offset_port(0, 0);
  mp_m_axi_split_wready = new xsc::xsc_split<11, 11>("m_axi_split_wready");
  mp_m_axi_split_wready->in_port(m_axi_wready);
  mp_m_axi_split_wready->out_port[0](m_axi_split_wready_out_0);
    mp_m_axi_split_wready->add_mask(0,1,0);
  mp_m_axi_split_bresp = new xsc::xsc_split<22, 11>("m_axi_split_bresp");
  mp_m_axi_split_bresp->in_port(m_axi_bresp);
  mp_m_axi_split_bresp->out_port[0](m_axi_split_bresp_out_0);
    mp_m_axi_split_bresp->add_mask(0,2,0);
  mp_m_axi_split_bvalid = new xsc::xsc_split<11, 11>("m_axi_split_bvalid");
  mp_m_axi_split_bvalid->in_port(m_axi_bvalid);
  mp_m_axi_split_bvalid->out_port[0](m_axi_split_bvalid_out_0);
    mp_m_axi_split_bvalid->add_mask(0,1,0);
  mp_m_axi_concat_bready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_bready");
  mp_m_axi_concat_bready->in_port[0](m_axi_concat_bready_out_0);
  mp_m_axi_concat_bready->out_port(m_axi_bready);
    mp_m_axi_concat_bready->offset_port(0, 0);
  mp_m_axi_concat_araddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_araddr");
  mp_m_axi_concat_araddr->in_port[0](m_axi_concat_araddr_out_0);
  mp_m_axi_concat_araddr->out_port(m_axi_araddr);
    mp_m_axi_concat_araddr->offset_port(0, 0);
  mp_m_axi_concat_arprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_arprot");
  mp_m_axi_concat_arprot->in_port[0](m_axi_concat_arprot_out_0);
  mp_m_axi_concat_arprot->out_port(m_axi_arprot);
    mp_m_axi_concat_arprot->offset_port(0, 0);
  mp_m_axi_concat_arvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_arvalid");
  mp_m_axi_concat_arvalid->in_port[0](m_axi_concat_arvalid_out_0);
  mp_m_axi_concat_arvalid->out_port(m_axi_arvalid);
    mp_m_axi_concat_arvalid->offset_port(0, 0);
  mp_m_axi_split_arready = new xsc::xsc_split<11, 11>("m_axi_split_arready");
  mp_m_axi_split_arready->in_port(m_axi_arready);
  mp_m_axi_split_arready->out_port[0](m_axi_split_arready_out_0);
    mp_m_axi_split_arready->add_mask(0,1,0);
  mp_m_axi_split_rdata = new xsc::xsc_split<352, 11>("m_axi_split_rdata");
  mp_m_axi_split_rdata->in_port(m_axi_rdata);
  mp_m_axi_split_rdata->out_port[0](m_axi_split_rdata_out_0);
    mp_m_axi_split_rdata->add_mask(0,32,0);
  mp_m_axi_split_rresp = new xsc::xsc_split<22, 11>("m_axi_split_rresp");
  mp_m_axi_split_rresp->in_port(m_axi_rresp);
  mp_m_axi_split_rresp->out_port[0](m_axi_split_rresp_out_0);
    mp_m_axi_split_rresp->add_mask(0,2,0);
  mp_m_axi_split_rvalid = new xsc::xsc_split<11, 11>("m_axi_split_rvalid");
  mp_m_axi_split_rvalid->in_port(m_axi_rvalid);
  mp_m_axi_split_rvalid->out_port[0](m_axi_split_rvalid_out_0);
    mp_m_axi_split_rvalid->add_mask(0,1,0);
  mp_m_axi_concat_rready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_rready");
  mp_m_axi_concat_rready->in_port[0](m_axi_concat_rready_out_0);
  mp_m_axi_concat_rready->out_port(m_axi_rready);
    mp_m_axi_concat_rready->offset_port(0, 0);
  mp_m_axi_concat_awaddr->in_port[1](m_axi_concat_awaddr_out_1);
  mp_m_axi_concat_awaddr->offset_port(1, 40);
  mp_m_axi_concat_awprot->in_port[1](m_axi_concat_awprot_out_1);
  mp_m_axi_concat_awprot->offset_port(1, 3);
  mp_m_axi_concat_awvalid->in_port[1](m_axi_concat_awvalid_out_1);
  mp_m_axi_concat_awvalid->offset_port(1, 1);
  
  mp_m_axi_split_awready->out_port[1](m_axi_split_awready_out_1);
    mp_m_axi_split_awready->add_mask(1,2,1);
  mp_m_axi_concat_wdata->in_port[1](m_axi_concat_wdata_out_1);
  mp_m_axi_concat_wdata->offset_port(1, 32);
  mp_m_axi_concat_wstrb->in_port[1](m_axi_concat_wstrb_out_1);
  mp_m_axi_concat_wstrb->offset_port(1, 4);
  mp_m_axi_concat_wvalid->in_port[1](m_axi_concat_wvalid_out_1);
  mp_m_axi_concat_wvalid->offset_port(1, 1);
  
  mp_m_axi_split_wready->out_port[1](m_axi_split_wready_out_1);
    mp_m_axi_split_wready->add_mask(1,2,1);
  
  mp_m_axi_split_bresp->out_port[1](m_axi_split_bresp_out_1);
    mp_m_axi_split_bresp->add_mask(1,4,2);
  
  mp_m_axi_split_bvalid->out_port[1](m_axi_split_bvalid_out_1);
    mp_m_axi_split_bvalid->add_mask(1,2,1);
  mp_m_axi_concat_bready->in_port[1](m_axi_concat_bready_out_1);
  mp_m_axi_concat_bready->offset_port(1, 1);
  mp_m_axi_concat_araddr->in_port[1](m_axi_concat_araddr_out_1);
  mp_m_axi_concat_araddr->offset_port(1, 40);
  mp_m_axi_concat_arprot->in_port[1](m_axi_concat_arprot_out_1);
  mp_m_axi_concat_arprot->offset_port(1, 3);
  mp_m_axi_concat_arvalid->in_port[1](m_axi_concat_arvalid_out_1);
  mp_m_axi_concat_arvalid->offset_port(1, 1);
  
  mp_m_axi_split_arready->out_port[1](m_axi_split_arready_out_1);
    mp_m_axi_split_arready->add_mask(1,2,1);
  
  mp_m_axi_split_rdata->out_port[1](m_axi_split_rdata_out_1);
    mp_m_axi_split_rdata->add_mask(1,64,32);
  
  mp_m_axi_split_rresp->out_port[1](m_axi_split_rresp_out_1);
    mp_m_axi_split_rresp->add_mask(1,4,2);
  
  mp_m_axi_split_rvalid->out_port[1](m_axi_split_rvalid_out_1);
    mp_m_axi_split_rvalid->add_mask(1,2,1);
  mp_m_axi_concat_rready->in_port[1](m_axi_concat_rready_out_1);
  mp_m_axi_concat_rready->offset_port(1, 1);
  mp_m_axi_concat_awaddr->in_port[2](m_axi_concat_awaddr_out_2);
  mp_m_axi_concat_awaddr->offset_port(2, 80);
  mp_m_axi_concat_awprot->in_port[2](m_axi_concat_awprot_out_2);
  mp_m_axi_concat_awprot->offset_port(2, 6);
  mp_m_axi_concat_awvalid->in_port[2](m_axi_concat_awvalid_out_2);
  mp_m_axi_concat_awvalid->offset_port(2, 2);
  
  mp_m_axi_split_awready->out_port[2](m_axi_split_awready_out_2);
    mp_m_axi_split_awready->add_mask(2,3,2);
  mp_m_axi_concat_wdata->in_port[2](m_axi_concat_wdata_out_2);
  mp_m_axi_concat_wdata->offset_port(2, 64);
  mp_m_axi_concat_wstrb->in_port[2](m_axi_concat_wstrb_out_2);
  mp_m_axi_concat_wstrb->offset_port(2, 8);
  mp_m_axi_concat_wvalid->in_port[2](m_axi_concat_wvalid_out_2);
  mp_m_axi_concat_wvalid->offset_port(2, 2);
  
  mp_m_axi_split_wready->out_port[2](m_axi_split_wready_out_2);
    mp_m_axi_split_wready->add_mask(2,3,2);
  
  mp_m_axi_split_bresp->out_port[2](m_axi_split_bresp_out_2);
    mp_m_axi_split_bresp->add_mask(2,6,4);
  
  mp_m_axi_split_bvalid->out_port[2](m_axi_split_bvalid_out_2);
    mp_m_axi_split_bvalid->add_mask(2,3,2);
  mp_m_axi_concat_bready->in_port[2](m_axi_concat_bready_out_2);
  mp_m_axi_concat_bready->offset_port(2, 2);
  mp_m_axi_concat_araddr->in_port[2](m_axi_concat_araddr_out_2);
  mp_m_axi_concat_araddr->offset_port(2, 80);
  mp_m_axi_concat_arprot->in_port[2](m_axi_concat_arprot_out_2);
  mp_m_axi_concat_arprot->offset_port(2, 6);
  mp_m_axi_concat_arvalid->in_port[2](m_axi_concat_arvalid_out_2);
  mp_m_axi_concat_arvalid->offset_port(2, 2);
  
  mp_m_axi_split_arready->out_port[2](m_axi_split_arready_out_2);
    mp_m_axi_split_arready->add_mask(2,3,2);
  
  mp_m_axi_split_rdata->out_port[2](m_axi_split_rdata_out_2);
    mp_m_axi_split_rdata->add_mask(2,96,64);
  
  mp_m_axi_split_rresp->out_port[2](m_axi_split_rresp_out_2);
    mp_m_axi_split_rresp->add_mask(2,6,4);
  
  mp_m_axi_split_rvalid->out_port[2](m_axi_split_rvalid_out_2);
    mp_m_axi_split_rvalid->add_mask(2,3,2);
  mp_m_axi_concat_rready->in_port[2](m_axi_concat_rready_out_2);
  mp_m_axi_concat_rready->offset_port(2, 2);
  mp_m_axi_concat_awaddr->in_port[3](m_axi_concat_awaddr_out_3);
  mp_m_axi_concat_awaddr->offset_port(3, 120);
  mp_m_axi_concat_awprot->in_port[3](m_axi_concat_awprot_out_3);
  mp_m_axi_concat_awprot->offset_port(3, 9);
  mp_m_axi_concat_awvalid->in_port[3](m_axi_concat_awvalid_out_3);
  mp_m_axi_concat_awvalid->offset_port(3, 3);
  
  mp_m_axi_split_awready->out_port[3](m_axi_split_awready_out_3);
    mp_m_axi_split_awready->add_mask(3,4,3);
  mp_m_axi_concat_wdata->in_port[3](m_axi_concat_wdata_out_3);
  mp_m_axi_concat_wdata->offset_port(3, 96);
  mp_m_axi_concat_wstrb->in_port[3](m_axi_concat_wstrb_out_3);
  mp_m_axi_concat_wstrb->offset_port(3, 12);
  mp_m_axi_concat_wvalid->in_port[3](m_axi_concat_wvalid_out_3);
  mp_m_axi_concat_wvalid->offset_port(3, 3);
  
  mp_m_axi_split_wready->out_port[3](m_axi_split_wready_out_3);
    mp_m_axi_split_wready->add_mask(3,4,3);
  
  mp_m_axi_split_bresp->out_port[3](m_axi_split_bresp_out_3);
    mp_m_axi_split_bresp->add_mask(3,8,6);
  
  mp_m_axi_split_bvalid->out_port[3](m_axi_split_bvalid_out_3);
    mp_m_axi_split_bvalid->add_mask(3,4,3);
  mp_m_axi_concat_bready->in_port[3](m_axi_concat_bready_out_3);
  mp_m_axi_concat_bready->offset_port(3, 3);
  mp_m_axi_concat_araddr->in_port[3](m_axi_concat_araddr_out_3);
  mp_m_axi_concat_araddr->offset_port(3, 120);
  mp_m_axi_concat_arprot->in_port[3](m_axi_concat_arprot_out_3);
  mp_m_axi_concat_arprot->offset_port(3, 9);
  mp_m_axi_concat_arvalid->in_port[3](m_axi_concat_arvalid_out_3);
  mp_m_axi_concat_arvalid->offset_port(3, 3);
  
  mp_m_axi_split_arready->out_port[3](m_axi_split_arready_out_3);
    mp_m_axi_split_arready->add_mask(3,4,3);
  
  mp_m_axi_split_rdata->out_port[3](m_axi_split_rdata_out_3);
    mp_m_axi_split_rdata->add_mask(3,128,96);
  
  mp_m_axi_split_rresp->out_port[3](m_axi_split_rresp_out_3);
    mp_m_axi_split_rresp->add_mask(3,8,6);
  
  mp_m_axi_split_rvalid->out_port[3](m_axi_split_rvalid_out_3);
    mp_m_axi_split_rvalid->add_mask(3,4,3);
  mp_m_axi_concat_rready->in_port[3](m_axi_concat_rready_out_3);
  mp_m_axi_concat_rready->offset_port(3, 3);
  mp_m_axi_concat_awaddr->in_port[4](m_axi_concat_awaddr_out_4);
  mp_m_axi_concat_awaddr->offset_port(4, 160);
  mp_m_axi_concat_awprot->in_port[4](m_axi_concat_awprot_out_4);
  mp_m_axi_concat_awprot->offset_port(4, 12);
  mp_m_axi_concat_awvalid->in_port[4](m_axi_concat_awvalid_out_4);
  mp_m_axi_concat_awvalid->offset_port(4, 4);
  
  mp_m_axi_split_awready->out_port[4](m_axi_split_awready_out_4);
    mp_m_axi_split_awready->add_mask(4,5,4);
  mp_m_axi_concat_wdata->in_port[4](m_axi_concat_wdata_out_4);
  mp_m_axi_concat_wdata->offset_port(4, 128);
  mp_m_axi_concat_wstrb->in_port[4](m_axi_concat_wstrb_out_4);
  mp_m_axi_concat_wstrb->offset_port(4, 16);
  mp_m_axi_concat_wvalid->in_port[4](m_axi_concat_wvalid_out_4);
  mp_m_axi_concat_wvalid->offset_port(4, 4);
  
  mp_m_axi_split_wready->out_port[4](m_axi_split_wready_out_4);
    mp_m_axi_split_wready->add_mask(4,5,4);
  
  mp_m_axi_split_bresp->out_port[4](m_axi_split_bresp_out_4);
    mp_m_axi_split_bresp->add_mask(4,10,8);
  
  mp_m_axi_split_bvalid->out_port[4](m_axi_split_bvalid_out_4);
    mp_m_axi_split_bvalid->add_mask(4,5,4);
  mp_m_axi_concat_bready->in_port[4](m_axi_concat_bready_out_4);
  mp_m_axi_concat_bready->offset_port(4, 4);
  mp_m_axi_concat_araddr->in_port[4](m_axi_concat_araddr_out_4);
  mp_m_axi_concat_araddr->offset_port(4, 160);
  mp_m_axi_concat_arprot->in_port[4](m_axi_concat_arprot_out_4);
  mp_m_axi_concat_arprot->offset_port(4, 12);
  mp_m_axi_concat_arvalid->in_port[4](m_axi_concat_arvalid_out_4);
  mp_m_axi_concat_arvalid->offset_port(4, 4);
  
  mp_m_axi_split_arready->out_port[4](m_axi_split_arready_out_4);
    mp_m_axi_split_arready->add_mask(4,5,4);
  
  mp_m_axi_split_rdata->out_port[4](m_axi_split_rdata_out_4);
    mp_m_axi_split_rdata->add_mask(4,160,128);
  
  mp_m_axi_split_rresp->out_port[4](m_axi_split_rresp_out_4);
    mp_m_axi_split_rresp->add_mask(4,10,8);
  
  mp_m_axi_split_rvalid->out_port[4](m_axi_split_rvalid_out_4);
    mp_m_axi_split_rvalid->add_mask(4,5,4);
  mp_m_axi_concat_rready->in_port[4](m_axi_concat_rready_out_4);
  mp_m_axi_concat_rready->offset_port(4, 4);
  mp_m_axi_concat_awaddr->in_port[5](m_axi_concat_awaddr_out_5);
  mp_m_axi_concat_awaddr->offset_port(5, 200);
  mp_m_axi_concat_awprot->in_port[5](m_axi_concat_awprot_out_5);
  mp_m_axi_concat_awprot->offset_port(5, 15);
  mp_m_axi_concat_awvalid->in_port[5](m_axi_concat_awvalid_out_5);
  mp_m_axi_concat_awvalid->offset_port(5, 5);
  
  mp_m_axi_split_awready->out_port[5](m_axi_split_awready_out_5);
    mp_m_axi_split_awready->add_mask(5,6,5);
  mp_m_axi_concat_wdata->in_port[5](m_axi_concat_wdata_out_5);
  mp_m_axi_concat_wdata->offset_port(5, 160);
  mp_m_axi_concat_wstrb->in_port[5](m_axi_concat_wstrb_out_5);
  mp_m_axi_concat_wstrb->offset_port(5, 20);
  mp_m_axi_concat_wvalid->in_port[5](m_axi_concat_wvalid_out_5);
  mp_m_axi_concat_wvalid->offset_port(5, 5);
  
  mp_m_axi_split_wready->out_port[5](m_axi_split_wready_out_5);
    mp_m_axi_split_wready->add_mask(5,6,5);
  
  mp_m_axi_split_bresp->out_port[5](m_axi_split_bresp_out_5);
    mp_m_axi_split_bresp->add_mask(5,12,10);
  
  mp_m_axi_split_bvalid->out_port[5](m_axi_split_bvalid_out_5);
    mp_m_axi_split_bvalid->add_mask(5,6,5);
  mp_m_axi_concat_bready->in_port[5](m_axi_concat_bready_out_5);
  mp_m_axi_concat_bready->offset_port(5, 5);
  mp_m_axi_concat_araddr->in_port[5](m_axi_concat_araddr_out_5);
  mp_m_axi_concat_araddr->offset_port(5, 200);
  mp_m_axi_concat_arprot->in_port[5](m_axi_concat_arprot_out_5);
  mp_m_axi_concat_arprot->offset_port(5, 15);
  mp_m_axi_concat_arvalid->in_port[5](m_axi_concat_arvalid_out_5);
  mp_m_axi_concat_arvalid->offset_port(5, 5);
  
  mp_m_axi_split_arready->out_port[5](m_axi_split_arready_out_5);
    mp_m_axi_split_arready->add_mask(5,6,5);
  
  mp_m_axi_split_rdata->out_port[5](m_axi_split_rdata_out_5);
    mp_m_axi_split_rdata->add_mask(5,192,160);
  
  mp_m_axi_split_rresp->out_port[5](m_axi_split_rresp_out_5);
    mp_m_axi_split_rresp->add_mask(5,12,10);
  
  mp_m_axi_split_rvalid->out_port[5](m_axi_split_rvalid_out_5);
    mp_m_axi_split_rvalid->add_mask(5,6,5);
  mp_m_axi_concat_rready->in_port[5](m_axi_concat_rready_out_5);
  mp_m_axi_concat_rready->offset_port(5, 5);
  mp_m_axi_concat_awaddr->in_port[6](m_axi_concat_awaddr_out_6);
  mp_m_axi_concat_awaddr->offset_port(6, 240);
  mp_m_axi_concat_awprot->in_port[6](m_axi_concat_awprot_out_6);
  mp_m_axi_concat_awprot->offset_port(6, 18);
  mp_m_axi_concat_awvalid->in_port[6](m_axi_concat_awvalid_out_6);
  mp_m_axi_concat_awvalid->offset_port(6, 6);
  
  mp_m_axi_split_awready->out_port[6](m_axi_split_awready_out_6);
    mp_m_axi_split_awready->add_mask(6,7,6);
  mp_m_axi_concat_wdata->in_port[6](m_axi_concat_wdata_out_6);
  mp_m_axi_concat_wdata->offset_port(6, 192);
  mp_m_axi_concat_wstrb->in_port[6](m_axi_concat_wstrb_out_6);
  mp_m_axi_concat_wstrb->offset_port(6, 24);
  mp_m_axi_concat_wvalid->in_port[6](m_axi_concat_wvalid_out_6);
  mp_m_axi_concat_wvalid->offset_port(6, 6);
  
  mp_m_axi_split_wready->out_port[6](m_axi_split_wready_out_6);
    mp_m_axi_split_wready->add_mask(6,7,6);
  
  mp_m_axi_split_bresp->out_port[6](m_axi_split_bresp_out_6);
    mp_m_axi_split_bresp->add_mask(6,14,12);
  
  mp_m_axi_split_bvalid->out_port[6](m_axi_split_bvalid_out_6);
    mp_m_axi_split_bvalid->add_mask(6,7,6);
  mp_m_axi_concat_bready->in_port[6](m_axi_concat_bready_out_6);
  mp_m_axi_concat_bready->offset_port(6, 6);
  mp_m_axi_concat_araddr->in_port[6](m_axi_concat_araddr_out_6);
  mp_m_axi_concat_araddr->offset_port(6, 240);
  mp_m_axi_concat_arprot->in_port[6](m_axi_concat_arprot_out_6);
  mp_m_axi_concat_arprot->offset_port(6, 18);
  mp_m_axi_concat_arvalid->in_port[6](m_axi_concat_arvalid_out_6);
  mp_m_axi_concat_arvalid->offset_port(6, 6);
  
  mp_m_axi_split_arready->out_port[6](m_axi_split_arready_out_6);
    mp_m_axi_split_arready->add_mask(6,7,6);
  
  mp_m_axi_split_rdata->out_port[6](m_axi_split_rdata_out_6);
    mp_m_axi_split_rdata->add_mask(6,224,192);
  
  mp_m_axi_split_rresp->out_port[6](m_axi_split_rresp_out_6);
    mp_m_axi_split_rresp->add_mask(6,14,12);
  
  mp_m_axi_split_rvalid->out_port[6](m_axi_split_rvalid_out_6);
    mp_m_axi_split_rvalid->add_mask(6,7,6);
  mp_m_axi_concat_rready->in_port[6](m_axi_concat_rready_out_6);
  mp_m_axi_concat_rready->offset_port(6, 6);
  mp_m_axi_concat_awaddr->in_port[7](m_axi_concat_awaddr_out_7);
  mp_m_axi_concat_awaddr->offset_port(7, 280);
  mp_m_axi_concat_awprot->in_port[7](m_axi_concat_awprot_out_7);
  mp_m_axi_concat_awprot->offset_port(7, 21);
  mp_m_axi_concat_awvalid->in_port[7](m_axi_concat_awvalid_out_7);
  mp_m_axi_concat_awvalid->offset_port(7, 7);
  
  mp_m_axi_split_awready->out_port[7](m_axi_split_awready_out_7);
    mp_m_axi_split_awready->add_mask(7,8,7);
  mp_m_axi_concat_wdata->in_port[7](m_axi_concat_wdata_out_7);
  mp_m_axi_concat_wdata->offset_port(7, 224);
  mp_m_axi_concat_wstrb->in_port[7](m_axi_concat_wstrb_out_7);
  mp_m_axi_concat_wstrb->offset_port(7, 28);
  mp_m_axi_concat_wvalid->in_port[7](m_axi_concat_wvalid_out_7);
  mp_m_axi_concat_wvalid->offset_port(7, 7);
  
  mp_m_axi_split_wready->out_port[7](m_axi_split_wready_out_7);
    mp_m_axi_split_wready->add_mask(7,8,7);
  
  mp_m_axi_split_bresp->out_port[7](m_axi_split_bresp_out_7);
    mp_m_axi_split_bresp->add_mask(7,16,14);
  
  mp_m_axi_split_bvalid->out_port[7](m_axi_split_bvalid_out_7);
    mp_m_axi_split_bvalid->add_mask(7,8,7);
  mp_m_axi_concat_bready->in_port[7](m_axi_concat_bready_out_7);
  mp_m_axi_concat_bready->offset_port(7, 7);
  mp_m_axi_concat_araddr->in_port[7](m_axi_concat_araddr_out_7);
  mp_m_axi_concat_araddr->offset_port(7, 280);
  mp_m_axi_concat_arprot->in_port[7](m_axi_concat_arprot_out_7);
  mp_m_axi_concat_arprot->offset_port(7, 21);
  mp_m_axi_concat_arvalid->in_port[7](m_axi_concat_arvalid_out_7);
  mp_m_axi_concat_arvalid->offset_port(7, 7);
  
  mp_m_axi_split_arready->out_port[7](m_axi_split_arready_out_7);
    mp_m_axi_split_arready->add_mask(7,8,7);
  
  mp_m_axi_split_rdata->out_port[7](m_axi_split_rdata_out_7);
    mp_m_axi_split_rdata->add_mask(7,256,224);
  
  mp_m_axi_split_rresp->out_port[7](m_axi_split_rresp_out_7);
    mp_m_axi_split_rresp->add_mask(7,16,14);
  
  mp_m_axi_split_rvalid->out_port[7](m_axi_split_rvalid_out_7);
    mp_m_axi_split_rvalid->add_mask(7,8,7);
  mp_m_axi_concat_rready->in_port[7](m_axi_concat_rready_out_7);
  mp_m_axi_concat_rready->offset_port(7, 7);
  mp_m_axi_concat_awaddr->in_port[8](m_axi_concat_awaddr_out_8);
  mp_m_axi_concat_awaddr->offset_port(8, 320);
  mp_m_axi_concat_awprot->in_port[8](m_axi_concat_awprot_out_8);
  mp_m_axi_concat_awprot->offset_port(8, 24);
  mp_m_axi_concat_awvalid->in_port[8](m_axi_concat_awvalid_out_8);
  mp_m_axi_concat_awvalid->offset_port(8, 8);
  
  mp_m_axi_split_awready->out_port[8](m_axi_split_awready_out_8);
    mp_m_axi_split_awready->add_mask(8,9,8);
  mp_m_axi_concat_wdata->in_port[8](m_axi_concat_wdata_out_8);
  mp_m_axi_concat_wdata->offset_port(8, 256);
  mp_m_axi_concat_wstrb->in_port[8](m_axi_concat_wstrb_out_8);
  mp_m_axi_concat_wstrb->offset_port(8, 32);
  mp_m_axi_concat_wvalid->in_port[8](m_axi_concat_wvalid_out_8);
  mp_m_axi_concat_wvalid->offset_port(8, 8);
  
  mp_m_axi_split_wready->out_port[8](m_axi_split_wready_out_8);
    mp_m_axi_split_wready->add_mask(8,9,8);
  
  mp_m_axi_split_bresp->out_port[8](m_axi_split_bresp_out_8);
    mp_m_axi_split_bresp->add_mask(8,18,16);
  
  mp_m_axi_split_bvalid->out_port[8](m_axi_split_bvalid_out_8);
    mp_m_axi_split_bvalid->add_mask(8,9,8);
  mp_m_axi_concat_bready->in_port[8](m_axi_concat_bready_out_8);
  mp_m_axi_concat_bready->offset_port(8, 8);
  mp_m_axi_concat_araddr->in_port[8](m_axi_concat_araddr_out_8);
  mp_m_axi_concat_araddr->offset_port(8, 320);
  mp_m_axi_concat_arprot->in_port[8](m_axi_concat_arprot_out_8);
  mp_m_axi_concat_arprot->offset_port(8, 24);
  mp_m_axi_concat_arvalid->in_port[8](m_axi_concat_arvalid_out_8);
  mp_m_axi_concat_arvalid->offset_port(8, 8);
  
  mp_m_axi_split_arready->out_port[8](m_axi_split_arready_out_8);
    mp_m_axi_split_arready->add_mask(8,9,8);
  
  mp_m_axi_split_rdata->out_port[8](m_axi_split_rdata_out_8);
    mp_m_axi_split_rdata->add_mask(8,288,256);
  
  mp_m_axi_split_rresp->out_port[8](m_axi_split_rresp_out_8);
    mp_m_axi_split_rresp->add_mask(8,18,16);
  
  mp_m_axi_split_rvalid->out_port[8](m_axi_split_rvalid_out_8);
    mp_m_axi_split_rvalid->add_mask(8,9,8);
  mp_m_axi_concat_rready->in_port[8](m_axi_concat_rready_out_8);
  mp_m_axi_concat_rready->offset_port(8, 8);
  mp_m_axi_concat_awaddr->in_port[9](m_axi_concat_awaddr_out_9);
  mp_m_axi_concat_awaddr->offset_port(9, 360);
  mp_m_axi_concat_awprot->in_port[9](m_axi_concat_awprot_out_9);
  mp_m_axi_concat_awprot->offset_port(9, 27);
  mp_m_axi_concat_awvalid->in_port[9](m_axi_concat_awvalid_out_9);
  mp_m_axi_concat_awvalid->offset_port(9, 9);
  
  mp_m_axi_split_awready->out_port[9](m_axi_split_awready_out_9);
    mp_m_axi_split_awready->add_mask(9,10,9);
  mp_m_axi_concat_wdata->in_port[9](m_axi_concat_wdata_out_9);
  mp_m_axi_concat_wdata->offset_port(9, 288);
  mp_m_axi_concat_wstrb->in_port[9](m_axi_concat_wstrb_out_9);
  mp_m_axi_concat_wstrb->offset_port(9, 36);
  mp_m_axi_concat_wvalid->in_port[9](m_axi_concat_wvalid_out_9);
  mp_m_axi_concat_wvalid->offset_port(9, 9);
  
  mp_m_axi_split_wready->out_port[9](m_axi_split_wready_out_9);
    mp_m_axi_split_wready->add_mask(9,10,9);
  
  mp_m_axi_split_bresp->out_port[9](m_axi_split_bresp_out_9);
    mp_m_axi_split_bresp->add_mask(9,20,18);
  
  mp_m_axi_split_bvalid->out_port[9](m_axi_split_bvalid_out_9);
    mp_m_axi_split_bvalid->add_mask(9,10,9);
  mp_m_axi_concat_bready->in_port[9](m_axi_concat_bready_out_9);
  mp_m_axi_concat_bready->offset_port(9, 9);
  mp_m_axi_concat_araddr->in_port[9](m_axi_concat_araddr_out_9);
  mp_m_axi_concat_araddr->offset_port(9, 360);
  mp_m_axi_concat_arprot->in_port[9](m_axi_concat_arprot_out_9);
  mp_m_axi_concat_arprot->offset_port(9, 27);
  mp_m_axi_concat_arvalid->in_port[9](m_axi_concat_arvalid_out_9);
  mp_m_axi_concat_arvalid->offset_port(9, 9);
  
  mp_m_axi_split_arready->out_port[9](m_axi_split_arready_out_9);
    mp_m_axi_split_arready->add_mask(9,10,9);
  
  mp_m_axi_split_rdata->out_port[9](m_axi_split_rdata_out_9);
    mp_m_axi_split_rdata->add_mask(9,320,288);
  
  mp_m_axi_split_rresp->out_port[9](m_axi_split_rresp_out_9);
    mp_m_axi_split_rresp->add_mask(9,20,18);
  
  mp_m_axi_split_rvalid->out_port[9](m_axi_split_rvalid_out_9);
    mp_m_axi_split_rvalid->add_mask(9,10,9);
  mp_m_axi_concat_rready->in_port[9](m_axi_concat_rready_out_9);
  mp_m_axi_concat_rready->offset_port(9, 9);
  mp_m_axi_concat_awaddr->in_port[10](m_axi_concat_awaddr_out_10);
  mp_m_axi_concat_awaddr->offset_port(10, 400);
  mp_m_axi_concat_awprot->in_port[10](m_axi_concat_awprot_out_10);
  mp_m_axi_concat_awprot->offset_port(10, 30);
  mp_m_axi_concat_awvalid->in_port[10](m_axi_concat_awvalid_out_10);
  mp_m_axi_concat_awvalid->offset_port(10, 10);
  
  mp_m_axi_split_awready->out_port[10](m_axi_split_awready_out_10);
    mp_m_axi_split_awready->add_mask(10,11,10);
  mp_m_axi_concat_wdata->in_port[10](m_axi_concat_wdata_out_10);
  mp_m_axi_concat_wdata->offset_port(10, 320);
  mp_m_axi_concat_wstrb->in_port[10](m_axi_concat_wstrb_out_10);
  mp_m_axi_concat_wstrb->offset_port(10, 40);
  mp_m_axi_concat_wvalid->in_port[10](m_axi_concat_wvalid_out_10);
  mp_m_axi_concat_wvalid->offset_port(10, 10);
  
  mp_m_axi_split_wready->out_port[10](m_axi_split_wready_out_10);
    mp_m_axi_split_wready->add_mask(10,11,10);
  
  mp_m_axi_split_bresp->out_port[10](m_axi_split_bresp_out_10);
    mp_m_axi_split_bresp->add_mask(10,22,20);
  
  mp_m_axi_split_bvalid->out_port[10](m_axi_split_bvalid_out_10);
    mp_m_axi_split_bvalid->add_mask(10,11,10);
  mp_m_axi_concat_bready->in_port[10](m_axi_concat_bready_out_10);
  mp_m_axi_concat_bready->offset_port(10, 10);
  mp_m_axi_concat_araddr->in_port[10](m_axi_concat_araddr_out_10);
  mp_m_axi_concat_araddr->offset_port(10, 400);
  mp_m_axi_concat_arprot->in_port[10](m_axi_concat_arprot_out_10);
  mp_m_axi_concat_arprot->offset_port(10, 30);
  mp_m_axi_concat_arvalid->in_port[10](m_axi_concat_arvalid_out_10);
  mp_m_axi_concat_arvalid->offset_port(10, 10);
  
  mp_m_axi_split_arready->out_port[10](m_axi_split_arready_out_10);
    mp_m_axi_split_arready->add_mask(10,11,10);
  
  mp_m_axi_split_rdata->out_port[10](m_axi_split_rdata_out_10);
    mp_m_axi_split_rdata->add_mask(10,352,320);
  
  mp_m_axi_split_rresp->out_port[10](m_axi_split_rresp_out_10);
    mp_m_axi_split_rresp->add_mask(10,22,20);
  
  mp_m_axi_split_rvalid->out_port[10](m_axi_split_rvalid_out_10);
    mp_m_axi_split_rvalid->add_mask(10,11,10);
  mp_m_axi_concat_rready->in_port[10](m_axi_concat_rready_out_10);
  mp_m_axi_concat_rready->offset_port(10, 10);

  // initialize socket stubs

}

void design_1_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,40,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S00_AXI_transactor->AWPROT(s_axi_awprot);
    mp_s_axi_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awvalid_converter");
    mp_s_axi_awvalid_converter->vector_in(s_axi_awvalid);
    mp_s_axi_awvalid_converter->scalar_out(m_s_axi_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_signal);
    mp_s_axi_awready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_awready_converter");
    mp_s_axi_awready_converter->scalar_in(m_s_axi_awready_converter_signal);
    mp_s_axi_awready_converter->vector_out(s_axi_awready);
    mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(s_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_s_axi_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_wvalid_converter");
    mp_s_axi_wvalid_converter->vector_in(s_axi_wvalid);
    mp_s_axi_wvalid_converter->scalar_out(m_s_axi_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_signal);
    mp_s_axi_wready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_wready_converter");
    mp_s_axi_wready_converter->scalar_in(m_s_axi_wready_converter_signal);
    mp_s_axi_wready_converter->vector_out(s_axi_wready);
    mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_signal);
    mp_S00_AXI_transactor->BRESP(s_axi_bresp);
    mp_s_axi_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_bvalid_converter");
    mp_s_axi_bvalid_converter->scalar_in(m_s_axi_bvalid_converter_signal);
    mp_s_axi_bvalid_converter->vector_out(s_axi_bvalid);
    mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_signal);
    mp_s_axi_bready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_bready_converter");
    mp_s_axi_bready_converter->vector_in(s_axi_bready);
    mp_s_axi_bready_converter->scalar_out(m_s_axi_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_signal);
    mp_S00_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S00_AXI_transactor->ARPROT(s_axi_arprot);
    mp_s_axi_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arvalid_converter");
    mp_s_axi_arvalid_converter->vector_in(s_axi_arvalid);
    mp_s_axi_arvalid_converter->scalar_out(m_s_axi_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_signal);
    mp_s_axi_arready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_arready_converter");
    mp_s_axi_arready_converter->scalar_in(m_s_axi_arready_converter_signal);
    mp_s_axi_arready_converter->vector_out(s_axi_arready);
    mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_signal);
    mp_S00_AXI_transactor->RDATA(s_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s_axi_rresp);
    mp_s_axi_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_rvalid_converter");
    mp_s_axi_rvalid_converter->scalar_in(m_s_axi_rvalid_converter_signal);
    mp_s_axi_rvalid_converter->vector_out(s_axi_rvalid);
    mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_signal);
    mp_s_axi_rready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_rready_converter");
    mp_s_axi_rready_converter->vector_in(s_axi_rready);
    mp_s_axi_rready_converter->scalar_out(m_s_axi_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_m_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_0");
    mp_m_axi_awaddr_converter_0->vector_in(m_m_axi_awaddr_converter_0_signal);
    mp_m_axi_awaddr_converter_0->vector_out(m_axi_concat_awaddr_out_0);
    mp_M00_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_0_signal);
    mp_m_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_0");
    mp_m_axi_awprot_converter_0->vector_in(m_m_axi_awprot_converter_0_signal);
    mp_m_axi_awprot_converter_0->vector_out(m_axi_concat_awprot_out_0);
    mp_M00_AXI_transactor->AWPROT(m_m_axi_awprot_converter_0_signal);
    mp_m_axi_awvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_0");
    mp_m_axi_awvalid_converter_0->scalar_in(m_m_axi_awvalid_converter_0_signal);
    mp_m_axi_awvalid_converter_0->vector_out(m_axi_concat_awvalid_out_0);
    mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_0_signal);
    mp_m_axi_awready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_0");
    mp_m_axi_awready_converter_0->vector_in(m_axi_split_awready_out_0);
    mp_m_axi_awready_converter_0->scalar_out(m_m_axi_awready_converter_0_signal);
    mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_0_signal);
    mp_m_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_0");
    mp_m_axi_wdata_converter_0->vector_in(m_m_axi_wdata_converter_0_signal);
    mp_m_axi_wdata_converter_0->vector_out(m_axi_concat_wdata_out_0);
    mp_M00_AXI_transactor->WDATA(m_m_axi_wdata_converter_0_signal);
    mp_m_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_0");
    mp_m_axi_wstrb_converter_0->vector_in(m_m_axi_wstrb_converter_0_signal);
    mp_m_axi_wstrb_converter_0->vector_out(m_axi_concat_wstrb_out_0);
    mp_M00_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_0_signal);
    mp_m_axi_wvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_0");
    mp_m_axi_wvalid_converter_0->scalar_in(m_m_axi_wvalid_converter_0_signal);
    mp_m_axi_wvalid_converter_0->vector_out(m_axi_concat_wvalid_out_0);
    mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_0_signal);
    mp_m_axi_wready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_0");
    mp_m_axi_wready_converter_0->vector_in(m_axi_split_wready_out_0);
    mp_m_axi_wready_converter_0->scalar_out(m_m_axi_wready_converter_0_signal);
    mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_0_signal);
    mp_m_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_0");
    mp_m_axi_bresp_converter_0->vector_in(m_axi_split_bresp_out_0);
    mp_m_axi_bresp_converter_0->vector_out(m_m_axi_bresp_converter_0_signal);
    mp_M00_AXI_transactor->BRESP(m_m_axi_bresp_converter_0_signal);
    mp_m_axi_bvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_0");
    mp_m_axi_bvalid_converter_0->vector_in(m_axi_split_bvalid_out_0);
    mp_m_axi_bvalid_converter_0->scalar_out(m_m_axi_bvalid_converter_0_signal);
    mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_0_signal);
    mp_m_axi_bready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_0");
    mp_m_axi_bready_converter_0->scalar_in(m_m_axi_bready_converter_0_signal);
    mp_m_axi_bready_converter_0->vector_out(m_axi_concat_bready_out_0);
    mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_0_signal);
    mp_m_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_0");
    mp_m_axi_araddr_converter_0->vector_in(m_m_axi_araddr_converter_0_signal);
    mp_m_axi_araddr_converter_0->vector_out(m_axi_concat_araddr_out_0);
    mp_M00_AXI_transactor->ARADDR(m_m_axi_araddr_converter_0_signal);
    mp_m_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_0");
    mp_m_axi_arprot_converter_0->vector_in(m_m_axi_arprot_converter_0_signal);
    mp_m_axi_arprot_converter_0->vector_out(m_axi_concat_arprot_out_0);
    mp_M00_AXI_transactor->ARPROT(m_m_axi_arprot_converter_0_signal);
    mp_m_axi_arvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_0");
    mp_m_axi_arvalid_converter_0->scalar_in(m_m_axi_arvalid_converter_0_signal);
    mp_m_axi_arvalid_converter_0->vector_out(m_axi_concat_arvalid_out_0);
    mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_0_signal);
    mp_m_axi_arready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_0");
    mp_m_axi_arready_converter_0->vector_in(m_axi_split_arready_out_0);
    mp_m_axi_arready_converter_0->scalar_out(m_m_axi_arready_converter_0_signal);
    mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_0_signal);
    mp_m_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_0");
    mp_m_axi_rdata_converter_0->vector_in(m_axi_split_rdata_out_0);
    mp_m_axi_rdata_converter_0->vector_out(m_m_axi_rdata_converter_0_signal);
    mp_M00_AXI_transactor->RDATA(m_m_axi_rdata_converter_0_signal);
    mp_m_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_0");
    mp_m_axi_rresp_converter_0->vector_in(m_axi_split_rresp_out_0);
    mp_m_axi_rresp_converter_0->vector_out(m_m_axi_rresp_converter_0_signal);
    mp_M00_AXI_transactor->RRESP(m_m_axi_rresp_converter_0_signal);
    mp_m_axi_rvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_0");
    mp_m_axi_rvalid_converter_0->vector_in(m_axi_split_rvalid_out_0);
    mp_m_axi_rvalid_converter_0->scalar_out(m_m_axi_rvalid_converter_0_signal);
    mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_0_signal);
    mp_m_axi_rready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_0");
    mp_m_axi_rready_converter_0->scalar_in(m_m_axi_rready_converter_0_signal);
    mp_m_axi_rready_converter_0->vector_out(m_axi_concat_rready_out_0);
    mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_0_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_m_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_1");
    mp_m_axi_awaddr_converter_1->vector_in(m_m_axi_awaddr_converter_1_signal);
    mp_m_axi_awaddr_converter_1->vector_out(m_axi_concat_awaddr_out_1);
    mp_M01_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_1_signal);
    mp_m_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_1");
    mp_m_axi_awprot_converter_1->vector_in(m_m_axi_awprot_converter_1_signal);
    mp_m_axi_awprot_converter_1->vector_out(m_axi_concat_awprot_out_1);
    mp_M01_AXI_transactor->AWPROT(m_m_axi_awprot_converter_1_signal);
    mp_m_axi_awvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_1");
    mp_m_axi_awvalid_converter_1->scalar_in(m_m_axi_awvalid_converter_1_signal);
    mp_m_axi_awvalid_converter_1->vector_out(m_axi_concat_awvalid_out_1);
    mp_M01_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_1_signal);
    mp_m_axi_awready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_1");
    mp_m_axi_awready_converter_1->vector_in(m_axi_split_awready_out_1);
    mp_m_axi_awready_converter_1->scalar_out(m_m_axi_awready_converter_1_signal);
    mp_M01_AXI_transactor->AWREADY(m_m_axi_awready_converter_1_signal);
    mp_m_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_1");
    mp_m_axi_wdata_converter_1->vector_in(m_m_axi_wdata_converter_1_signal);
    mp_m_axi_wdata_converter_1->vector_out(m_axi_concat_wdata_out_1);
    mp_M01_AXI_transactor->WDATA(m_m_axi_wdata_converter_1_signal);
    mp_m_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_1");
    mp_m_axi_wstrb_converter_1->vector_in(m_m_axi_wstrb_converter_1_signal);
    mp_m_axi_wstrb_converter_1->vector_out(m_axi_concat_wstrb_out_1);
    mp_M01_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_1_signal);
    mp_m_axi_wvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_1");
    mp_m_axi_wvalid_converter_1->scalar_in(m_m_axi_wvalid_converter_1_signal);
    mp_m_axi_wvalid_converter_1->vector_out(m_axi_concat_wvalid_out_1);
    mp_M01_AXI_transactor->WVALID(m_m_axi_wvalid_converter_1_signal);
    mp_m_axi_wready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_1");
    mp_m_axi_wready_converter_1->vector_in(m_axi_split_wready_out_1);
    mp_m_axi_wready_converter_1->scalar_out(m_m_axi_wready_converter_1_signal);
    mp_M01_AXI_transactor->WREADY(m_m_axi_wready_converter_1_signal);
    mp_m_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_1");
    mp_m_axi_bresp_converter_1->vector_in(m_axi_split_bresp_out_1);
    mp_m_axi_bresp_converter_1->vector_out(m_m_axi_bresp_converter_1_signal);
    mp_M01_AXI_transactor->BRESP(m_m_axi_bresp_converter_1_signal);
    mp_m_axi_bvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_1");
    mp_m_axi_bvalid_converter_1->vector_in(m_axi_split_bvalid_out_1);
    mp_m_axi_bvalid_converter_1->scalar_out(m_m_axi_bvalid_converter_1_signal);
    mp_M01_AXI_transactor->BVALID(m_m_axi_bvalid_converter_1_signal);
    mp_m_axi_bready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_1");
    mp_m_axi_bready_converter_1->scalar_in(m_m_axi_bready_converter_1_signal);
    mp_m_axi_bready_converter_1->vector_out(m_axi_concat_bready_out_1);
    mp_M01_AXI_transactor->BREADY(m_m_axi_bready_converter_1_signal);
    mp_m_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_1");
    mp_m_axi_araddr_converter_1->vector_in(m_m_axi_araddr_converter_1_signal);
    mp_m_axi_araddr_converter_1->vector_out(m_axi_concat_araddr_out_1);
    mp_M01_AXI_transactor->ARADDR(m_m_axi_araddr_converter_1_signal);
    mp_m_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_1");
    mp_m_axi_arprot_converter_1->vector_in(m_m_axi_arprot_converter_1_signal);
    mp_m_axi_arprot_converter_1->vector_out(m_axi_concat_arprot_out_1);
    mp_M01_AXI_transactor->ARPROT(m_m_axi_arprot_converter_1_signal);
    mp_m_axi_arvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_1");
    mp_m_axi_arvalid_converter_1->scalar_in(m_m_axi_arvalid_converter_1_signal);
    mp_m_axi_arvalid_converter_1->vector_out(m_axi_concat_arvalid_out_1);
    mp_M01_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_1_signal);
    mp_m_axi_arready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_1");
    mp_m_axi_arready_converter_1->vector_in(m_axi_split_arready_out_1);
    mp_m_axi_arready_converter_1->scalar_out(m_m_axi_arready_converter_1_signal);
    mp_M01_AXI_transactor->ARREADY(m_m_axi_arready_converter_1_signal);
    mp_m_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_1");
    mp_m_axi_rdata_converter_1->vector_in(m_axi_split_rdata_out_1);
    mp_m_axi_rdata_converter_1->vector_out(m_m_axi_rdata_converter_1_signal);
    mp_M01_AXI_transactor->RDATA(m_m_axi_rdata_converter_1_signal);
    mp_m_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_1");
    mp_m_axi_rresp_converter_1->vector_in(m_axi_split_rresp_out_1);
    mp_m_axi_rresp_converter_1->vector_out(m_m_axi_rresp_converter_1_signal);
    mp_M01_AXI_transactor->RRESP(m_m_axi_rresp_converter_1_signal);
    mp_m_axi_rvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_1");
    mp_m_axi_rvalid_converter_1->vector_in(m_axi_split_rvalid_out_1);
    mp_m_axi_rvalid_converter_1->scalar_out(m_m_axi_rvalid_converter_1_signal);
    mp_M01_AXI_transactor->RVALID(m_m_axi_rvalid_converter_1_signal);
    mp_m_axi_rready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_1");
    mp_m_axi_rready_converter_1->scalar_in(m_m_axi_rready_converter_1_signal);
    mp_m_axi_rready_converter_1->vector_out(m_axi_concat_rready_out_1);
    mp_M01_AXI_transactor->RREADY(m_m_axi_rready_converter_1_signal);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_m_axi_awaddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_2");
    mp_m_axi_awaddr_converter_2->vector_in(m_m_axi_awaddr_converter_2_signal);
    mp_m_axi_awaddr_converter_2->vector_out(m_axi_concat_awaddr_out_2);
    mp_M02_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_2_signal);
    mp_m_axi_awprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_2");
    mp_m_axi_awprot_converter_2->vector_in(m_m_axi_awprot_converter_2_signal);
    mp_m_axi_awprot_converter_2->vector_out(m_axi_concat_awprot_out_2);
    mp_M02_AXI_transactor->AWPROT(m_m_axi_awprot_converter_2_signal);
    mp_m_axi_awvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_2");
    mp_m_axi_awvalid_converter_2->scalar_in(m_m_axi_awvalid_converter_2_signal);
    mp_m_axi_awvalid_converter_2->vector_out(m_axi_concat_awvalid_out_2);
    mp_M02_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_2_signal);
    mp_m_axi_awready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_2");
    mp_m_axi_awready_converter_2->vector_in(m_axi_split_awready_out_2);
    mp_m_axi_awready_converter_2->scalar_out(m_m_axi_awready_converter_2_signal);
    mp_M02_AXI_transactor->AWREADY(m_m_axi_awready_converter_2_signal);
    mp_m_axi_wdata_converter_2 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_2");
    mp_m_axi_wdata_converter_2->vector_in(m_m_axi_wdata_converter_2_signal);
    mp_m_axi_wdata_converter_2->vector_out(m_axi_concat_wdata_out_2);
    mp_M02_AXI_transactor->WDATA(m_m_axi_wdata_converter_2_signal);
    mp_m_axi_wstrb_converter_2 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_2");
    mp_m_axi_wstrb_converter_2->vector_in(m_m_axi_wstrb_converter_2_signal);
    mp_m_axi_wstrb_converter_2->vector_out(m_axi_concat_wstrb_out_2);
    mp_M02_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_2_signal);
    mp_m_axi_wvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_2");
    mp_m_axi_wvalid_converter_2->scalar_in(m_m_axi_wvalid_converter_2_signal);
    mp_m_axi_wvalid_converter_2->vector_out(m_axi_concat_wvalid_out_2);
    mp_M02_AXI_transactor->WVALID(m_m_axi_wvalid_converter_2_signal);
    mp_m_axi_wready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_2");
    mp_m_axi_wready_converter_2->vector_in(m_axi_split_wready_out_2);
    mp_m_axi_wready_converter_2->scalar_out(m_m_axi_wready_converter_2_signal);
    mp_M02_AXI_transactor->WREADY(m_m_axi_wready_converter_2_signal);
    mp_m_axi_bresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_2");
    mp_m_axi_bresp_converter_2->vector_in(m_axi_split_bresp_out_2);
    mp_m_axi_bresp_converter_2->vector_out(m_m_axi_bresp_converter_2_signal);
    mp_M02_AXI_transactor->BRESP(m_m_axi_bresp_converter_2_signal);
    mp_m_axi_bvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_2");
    mp_m_axi_bvalid_converter_2->vector_in(m_axi_split_bvalid_out_2);
    mp_m_axi_bvalid_converter_2->scalar_out(m_m_axi_bvalid_converter_2_signal);
    mp_M02_AXI_transactor->BVALID(m_m_axi_bvalid_converter_2_signal);
    mp_m_axi_bready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_2");
    mp_m_axi_bready_converter_2->scalar_in(m_m_axi_bready_converter_2_signal);
    mp_m_axi_bready_converter_2->vector_out(m_axi_concat_bready_out_2);
    mp_M02_AXI_transactor->BREADY(m_m_axi_bready_converter_2_signal);
    mp_m_axi_araddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_2");
    mp_m_axi_araddr_converter_2->vector_in(m_m_axi_araddr_converter_2_signal);
    mp_m_axi_araddr_converter_2->vector_out(m_axi_concat_araddr_out_2);
    mp_M02_AXI_transactor->ARADDR(m_m_axi_araddr_converter_2_signal);
    mp_m_axi_arprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_2");
    mp_m_axi_arprot_converter_2->vector_in(m_m_axi_arprot_converter_2_signal);
    mp_m_axi_arprot_converter_2->vector_out(m_axi_concat_arprot_out_2);
    mp_M02_AXI_transactor->ARPROT(m_m_axi_arprot_converter_2_signal);
    mp_m_axi_arvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_2");
    mp_m_axi_arvalid_converter_2->scalar_in(m_m_axi_arvalid_converter_2_signal);
    mp_m_axi_arvalid_converter_2->vector_out(m_axi_concat_arvalid_out_2);
    mp_M02_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_2_signal);
    mp_m_axi_arready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_2");
    mp_m_axi_arready_converter_2->vector_in(m_axi_split_arready_out_2);
    mp_m_axi_arready_converter_2->scalar_out(m_m_axi_arready_converter_2_signal);
    mp_M02_AXI_transactor->ARREADY(m_m_axi_arready_converter_2_signal);
    mp_m_axi_rdata_converter_2 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_2");
    mp_m_axi_rdata_converter_2->vector_in(m_axi_split_rdata_out_2);
    mp_m_axi_rdata_converter_2->vector_out(m_m_axi_rdata_converter_2_signal);
    mp_M02_AXI_transactor->RDATA(m_m_axi_rdata_converter_2_signal);
    mp_m_axi_rresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_2");
    mp_m_axi_rresp_converter_2->vector_in(m_axi_split_rresp_out_2);
    mp_m_axi_rresp_converter_2->vector_out(m_m_axi_rresp_converter_2_signal);
    mp_M02_AXI_transactor->RRESP(m_m_axi_rresp_converter_2_signal);
    mp_m_axi_rvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_2");
    mp_m_axi_rvalid_converter_2->vector_in(m_axi_split_rvalid_out_2);
    mp_m_axi_rvalid_converter_2->scalar_out(m_m_axi_rvalid_converter_2_signal);
    mp_M02_AXI_transactor->RVALID(m_m_axi_rvalid_converter_2_signal);
    mp_m_axi_rready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_2");
    mp_m_axi_rready_converter_2->scalar_in(m_m_axi_rready_converter_2_signal);
    mp_m_axi_rready_converter_2->vector_out(m_axi_concat_rready_out_2);
    mp_M02_AXI_transactor->RREADY(m_m_axi_rready_converter_2_signal);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_m_axi_awaddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_3");
    mp_m_axi_awaddr_converter_3->vector_in(m_m_axi_awaddr_converter_3_signal);
    mp_m_axi_awaddr_converter_3->vector_out(m_axi_concat_awaddr_out_3);
    mp_M03_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_3_signal);
    mp_m_axi_awprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_3");
    mp_m_axi_awprot_converter_3->vector_in(m_m_axi_awprot_converter_3_signal);
    mp_m_axi_awprot_converter_3->vector_out(m_axi_concat_awprot_out_3);
    mp_M03_AXI_transactor->AWPROT(m_m_axi_awprot_converter_3_signal);
    mp_m_axi_awvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_3");
    mp_m_axi_awvalid_converter_3->scalar_in(m_m_axi_awvalid_converter_3_signal);
    mp_m_axi_awvalid_converter_3->vector_out(m_axi_concat_awvalid_out_3);
    mp_M03_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_3_signal);
    mp_m_axi_awready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_3");
    mp_m_axi_awready_converter_3->vector_in(m_axi_split_awready_out_3);
    mp_m_axi_awready_converter_3->scalar_out(m_m_axi_awready_converter_3_signal);
    mp_M03_AXI_transactor->AWREADY(m_m_axi_awready_converter_3_signal);
    mp_m_axi_wdata_converter_3 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_3");
    mp_m_axi_wdata_converter_3->vector_in(m_m_axi_wdata_converter_3_signal);
    mp_m_axi_wdata_converter_3->vector_out(m_axi_concat_wdata_out_3);
    mp_M03_AXI_transactor->WDATA(m_m_axi_wdata_converter_3_signal);
    mp_m_axi_wstrb_converter_3 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_3");
    mp_m_axi_wstrb_converter_3->vector_in(m_m_axi_wstrb_converter_3_signal);
    mp_m_axi_wstrb_converter_3->vector_out(m_axi_concat_wstrb_out_3);
    mp_M03_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_3_signal);
    mp_m_axi_wvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_3");
    mp_m_axi_wvalid_converter_3->scalar_in(m_m_axi_wvalid_converter_3_signal);
    mp_m_axi_wvalid_converter_3->vector_out(m_axi_concat_wvalid_out_3);
    mp_M03_AXI_transactor->WVALID(m_m_axi_wvalid_converter_3_signal);
    mp_m_axi_wready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_3");
    mp_m_axi_wready_converter_3->vector_in(m_axi_split_wready_out_3);
    mp_m_axi_wready_converter_3->scalar_out(m_m_axi_wready_converter_3_signal);
    mp_M03_AXI_transactor->WREADY(m_m_axi_wready_converter_3_signal);
    mp_m_axi_bresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_3");
    mp_m_axi_bresp_converter_3->vector_in(m_axi_split_bresp_out_3);
    mp_m_axi_bresp_converter_3->vector_out(m_m_axi_bresp_converter_3_signal);
    mp_M03_AXI_transactor->BRESP(m_m_axi_bresp_converter_3_signal);
    mp_m_axi_bvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_3");
    mp_m_axi_bvalid_converter_3->vector_in(m_axi_split_bvalid_out_3);
    mp_m_axi_bvalid_converter_3->scalar_out(m_m_axi_bvalid_converter_3_signal);
    mp_M03_AXI_transactor->BVALID(m_m_axi_bvalid_converter_3_signal);
    mp_m_axi_bready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_3");
    mp_m_axi_bready_converter_3->scalar_in(m_m_axi_bready_converter_3_signal);
    mp_m_axi_bready_converter_3->vector_out(m_axi_concat_bready_out_3);
    mp_M03_AXI_transactor->BREADY(m_m_axi_bready_converter_3_signal);
    mp_m_axi_araddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_3");
    mp_m_axi_araddr_converter_3->vector_in(m_m_axi_araddr_converter_3_signal);
    mp_m_axi_araddr_converter_3->vector_out(m_axi_concat_araddr_out_3);
    mp_M03_AXI_transactor->ARADDR(m_m_axi_araddr_converter_3_signal);
    mp_m_axi_arprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_3");
    mp_m_axi_arprot_converter_3->vector_in(m_m_axi_arprot_converter_3_signal);
    mp_m_axi_arprot_converter_3->vector_out(m_axi_concat_arprot_out_3);
    mp_M03_AXI_transactor->ARPROT(m_m_axi_arprot_converter_3_signal);
    mp_m_axi_arvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_3");
    mp_m_axi_arvalid_converter_3->scalar_in(m_m_axi_arvalid_converter_3_signal);
    mp_m_axi_arvalid_converter_3->vector_out(m_axi_concat_arvalid_out_3);
    mp_M03_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_3_signal);
    mp_m_axi_arready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_3");
    mp_m_axi_arready_converter_3->vector_in(m_axi_split_arready_out_3);
    mp_m_axi_arready_converter_3->scalar_out(m_m_axi_arready_converter_3_signal);
    mp_M03_AXI_transactor->ARREADY(m_m_axi_arready_converter_3_signal);
    mp_m_axi_rdata_converter_3 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_3");
    mp_m_axi_rdata_converter_3->vector_in(m_axi_split_rdata_out_3);
    mp_m_axi_rdata_converter_3->vector_out(m_m_axi_rdata_converter_3_signal);
    mp_M03_AXI_transactor->RDATA(m_m_axi_rdata_converter_3_signal);
    mp_m_axi_rresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_3");
    mp_m_axi_rresp_converter_3->vector_in(m_axi_split_rresp_out_3);
    mp_m_axi_rresp_converter_3->vector_out(m_m_axi_rresp_converter_3_signal);
    mp_M03_AXI_transactor->RRESP(m_m_axi_rresp_converter_3_signal);
    mp_m_axi_rvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_3");
    mp_m_axi_rvalid_converter_3->vector_in(m_axi_split_rvalid_out_3);
    mp_m_axi_rvalid_converter_3->scalar_out(m_m_axi_rvalid_converter_3_signal);
    mp_M03_AXI_transactor->RVALID(m_m_axi_rvalid_converter_3_signal);
    mp_m_axi_rready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_3");
    mp_m_axi_rready_converter_3->scalar_in(m_m_axi_rready_converter_3_signal);
    mp_m_axi_rready_converter_3->vector_out(m_axi_concat_rready_out_3);
    mp_M03_AXI_transactor->RREADY(m_m_axi_rready_converter_3_signal);
    mp_M03_AXI_transactor->CLK(aclk);
    mp_M03_AXI_transactor->RST(aresetn);

    // M03_AXI' transactor sockets

    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M04_AXI' transactor parameters
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);

    // M04_AXI' transactor ports

    mp_m_axi_awaddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_4");
    mp_m_axi_awaddr_converter_4->vector_in(m_m_axi_awaddr_converter_4_signal);
    mp_m_axi_awaddr_converter_4->vector_out(m_axi_concat_awaddr_out_4);
    mp_M04_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_4_signal);
    mp_m_axi_awprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_4");
    mp_m_axi_awprot_converter_4->vector_in(m_m_axi_awprot_converter_4_signal);
    mp_m_axi_awprot_converter_4->vector_out(m_axi_concat_awprot_out_4);
    mp_M04_AXI_transactor->AWPROT(m_m_axi_awprot_converter_4_signal);
    mp_m_axi_awvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_4");
    mp_m_axi_awvalid_converter_4->scalar_in(m_m_axi_awvalid_converter_4_signal);
    mp_m_axi_awvalid_converter_4->vector_out(m_axi_concat_awvalid_out_4);
    mp_M04_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_4_signal);
    mp_m_axi_awready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_4");
    mp_m_axi_awready_converter_4->vector_in(m_axi_split_awready_out_4);
    mp_m_axi_awready_converter_4->scalar_out(m_m_axi_awready_converter_4_signal);
    mp_M04_AXI_transactor->AWREADY(m_m_axi_awready_converter_4_signal);
    mp_m_axi_wdata_converter_4 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_4");
    mp_m_axi_wdata_converter_4->vector_in(m_m_axi_wdata_converter_4_signal);
    mp_m_axi_wdata_converter_4->vector_out(m_axi_concat_wdata_out_4);
    mp_M04_AXI_transactor->WDATA(m_m_axi_wdata_converter_4_signal);
    mp_m_axi_wstrb_converter_4 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_4");
    mp_m_axi_wstrb_converter_4->vector_in(m_m_axi_wstrb_converter_4_signal);
    mp_m_axi_wstrb_converter_4->vector_out(m_axi_concat_wstrb_out_4);
    mp_M04_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_4_signal);
    mp_m_axi_wvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_4");
    mp_m_axi_wvalid_converter_4->scalar_in(m_m_axi_wvalid_converter_4_signal);
    mp_m_axi_wvalid_converter_4->vector_out(m_axi_concat_wvalid_out_4);
    mp_M04_AXI_transactor->WVALID(m_m_axi_wvalid_converter_4_signal);
    mp_m_axi_wready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_4");
    mp_m_axi_wready_converter_4->vector_in(m_axi_split_wready_out_4);
    mp_m_axi_wready_converter_4->scalar_out(m_m_axi_wready_converter_4_signal);
    mp_M04_AXI_transactor->WREADY(m_m_axi_wready_converter_4_signal);
    mp_m_axi_bresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_4");
    mp_m_axi_bresp_converter_4->vector_in(m_axi_split_bresp_out_4);
    mp_m_axi_bresp_converter_4->vector_out(m_m_axi_bresp_converter_4_signal);
    mp_M04_AXI_transactor->BRESP(m_m_axi_bresp_converter_4_signal);
    mp_m_axi_bvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_4");
    mp_m_axi_bvalid_converter_4->vector_in(m_axi_split_bvalid_out_4);
    mp_m_axi_bvalid_converter_4->scalar_out(m_m_axi_bvalid_converter_4_signal);
    mp_M04_AXI_transactor->BVALID(m_m_axi_bvalid_converter_4_signal);
    mp_m_axi_bready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_4");
    mp_m_axi_bready_converter_4->scalar_in(m_m_axi_bready_converter_4_signal);
    mp_m_axi_bready_converter_4->vector_out(m_axi_concat_bready_out_4);
    mp_M04_AXI_transactor->BREADY(m_m_axi_bready_converter_4_signal);
    mp_m_axi_araddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_4");
    mp_m_axi_araddr_converter_4->vector_in(m_m_axi_araddr_converter_4_signal);
    mp_m_axi_araddr_converter_4->vector_out(m_axi_concat_araddr_out_4);
    mp_M04_AXI_transactor->ARADDR(m_m_axi_araddr_converter_4_signal);
    mp_m_axi_arprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_4");
    mp_m_axi_arprot_converter_4->vector_in(m_m_axi_arprot_converter_4_signal);
    mp_m_axi_arprot_converter_4->vector_out(m_axi_concat_arprot_out_4);
    mp_M04_AXI_transactor->ARPROT(m_m_axi_arprot_converter_4_signal);
    mp_m_axi_arvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_4");
    mp_m_axi_arvalid_converter_4->scalar_in(m_m_axi_arvalid_converter_4_signal);
    mp_m_axi_arvalid_converter_4->vector_out(m_axi_concat_arvalid_out_4);
    mp_M04_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_4_signal);
    mp_m_axi_arready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_4");
    mp_m_axi_arready_converter_4->vector_in(m_axi_split_arready_out_4);
    mp_m_axi_arready_converter_4->scalar_out(m_m_axi_arready_converter_4_signal);
    mp_M04_AXI_transactor->ARREADY(m_m_axi_arready_converter_4_signal);
    mp_m_axi_rdata_converter_4 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_4");
    mp_m_axi_rdata_converter_4->vector_in(m_axi_split_rdata_out_4);
    mp_m_axi_rdata_converter_4->vector_out(m_m_axi_rdata_converter_4_signal);
    mp_M04_AXI_transactor->RDATA(m_m_axi_rdata_converter_4_signal);
    mp_m_axi_rresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_4");
    mp_m_axi_rresp_converter_4->vector_in(m_axi_split_rresp_out_4);
    mp_m_axi_rresp_converter_4->vector_out(m_m_axi_rresp_converter_4_signal);
    mp_M04_AXI_transactor->RRESP(m_m_axi_rresp_converter_4_signal);
    mp_m_axi_rvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_4");
    mp_m_axi_rvalid_converter_4->vector_in(m_axi_split_rvalid_out_4);
    mp_m_axi_rvalid_converter_4->scalar_out(m_m_axi_rvalid_converter_4_signal);
    mp_M04_AXI_transactor->RVALID(m_m_axi_rvalid_converter_4_signal);
    mp_m_axi_rready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_4");
    mp_m_axi_rready_converter_4->scalar_in(m_m_axi_rready_converter_4_signal);
    mp_m_axi_rready_converter_4->vector_out(m_axi_concat_rready_out_4);
    mp_M04_AXI_transactor->RREADY(m_m_axi_rready_converter_4_signal);
    mp_M04_AXI_transactor->CLK(aclk);
    mp_M04_AXI_transactor->RST(aresetn);

    // M04_AXI' transactor sockets

    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M05_AXI' transactor parameters
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);

    // M05_AXI' transactor ports

    mp_m_axi_awaddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_5");
    mp_m_axi_awaddr_converter_5->vector_in(m_m_axi_awaddr_converter_5_signal);
    mp_m_axi_awaddr_converter_5->vector_out(m_axi_concat_awaddr_out_5);
    mp_M05_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_5_signal);
    mp_m_axi_awprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_5");
    mp_m_axi_awprot_converter_5->vector_in(m_m_axi_awprot_converter_5_signal);
    mp_m_axi_awprot_converter_5->vector_out(m_axi_concat_awprot_out_5);
    mp_M05_AXI_transactor->AWPROT(m_m_axi_awprot_converter_5_signal);
    mp_m_axi_awvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_5");
    mp_m_axi_awvalid_converter_5->scalar_in(m_m_axi_awvalid_converter_5_signal);
    mp_m_axi_awvalid_converter_5->vector_out(m_axi_concat_awvalid_out_5);
    mp_M05_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_5_signal);
    mp_m_axi_awready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_5");
    mp_m_axi_awready_converter_5->vector_in(m_axi_split_awready_out_5);
    mp_m_axi_awready_converter_5->scalar_out(m_m_axi_awready_converter_5_signal);
    mp_M05_AXI_transactor->AWREADY(m_m_axi_awready_converter_5_signal);
    mp_m_axi_wdata_converter_5 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_5");
    mp_m_axi_wdata_converter_5->vector_in(m_m_axi_wdata_converter_5_signal);
    mp_m_axi_wdata_converter_5->vector_out(m_axi_concat_wdata_out_5);
    mp_M05_AXI_transactor->WDATA(m_m_axi_wdata_converter_5_signal);
    mp_m_axi_wstrb_converter_5 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_5");
    mp_m_axi_wstrb_converter_5->vector_in(m_m_axi_wstrb_converter_5_signal);
    mp_m_axi_wstrb_converter_5->vector_out(m_axi_concat_wstrb_out_5);
    mp_M05_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_5_signal);
    mp_m_axi_wvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_5");
    mp_m_axi_wvalid_converter_5->scalar_in(m_m_axi_wvalid_converter_5_signal);
    mp_m_axi_wvalid_converter_5->vector_out(m_axi_concat_wvalid_out_5);
    mp_M05_AXI_transactor->WVALID(m_m_axi_wvalid_converter_5_signal);
    mp_m_axi_wready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_5");
    mp_m_axi_wready_converter_5->vector_in(m_axi_split_wready_out_5);
    mp_m_axi_wready_converter_5->scalar_out(m_m_axi_wready_converter_5_signal);
    mp_M05_AXI_transactor->WREADY(m_m_axi_wready_converter_5_signal);
    mp_m_axi_bresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_5");
    mp_m_axi_bresp_converter_5->vector_in(m_axi_split_bresp_out_5);
    mp_m_axi_bresp_converter_5->vector_out(m_m_axi_bresp_converter_5_signal);
    mp_M05_AXI_transactor->BRESP(m_m_axi_bresp_converter_5_signal);
    mp_m_axi_bvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_5");
    mp_m_axi_bvalid_converter_5->vector_in(m_axi_split_bvalid_out_5);
    mp_m_axi_bvalid_converter_5->scalar_out(m_m_axi_bvalid_converter_5_signal);
    mp_M05_AXI_transactor->BVALID(m_m_axi_bvalid_converter_5_signal);
    mp_m_axi_bready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_5");
    mp_m_axi_bready_converter_5->scalar_in(m_m_axi_bready_converter_5_signal);
    mp_m_axi_bready_converter_5->vector_out(m_axi_concat_bready_out_5);
    mp_M05_AXI_transactor->BREADY(m_m_axi_bready_converter_5_signal);
    mp_m_axi_araddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_5");
    mp_m_axi_araddr_converter_5->vector_in(m_m_axi_araddr_converter_5_signal);
    mp_m_axi_araddr_converter_5->vector_out(m_axi_concat_araddr_out_5);
    mp_M05_AXI_transactor->ARADDR(m_m_axi_araddr_converter_5_signal);
    mp_m_axi_arprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_5");
    mp_m_axi_arprot_converter_5->vector_in(m_m_axi_arprot_converter_5_signal);
    mp_m_axi_arprot_converter_5->vector_out(m_axi_concat_arprot_out_5);
    mp_M05_AXI_transactor->ARPROT(m_m_axi_arprot_converter_5_signal);
    mp_m_axi_arvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_5");
    mp_m_axi_arvalid_converter_5->scalar_in(m_m_axi_arvalid_converter_5_signal);
    mp_m_axi_arvalid_converter_5->vector_out(m_axi_concat_arvalid_out_5);
    mp_M05_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_5_signal);
    mp_m_axi_arready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_5");
    mp_m_axi_arready_converter_5->vector_in(m_axi_split_arready_out_5);
    mp_m_axi_arready_converter_5->scalar_out(m_m_axi_arready_converter_5_signal);
    mp_M05_AXI_transactor->ARREADY(m_m_axi_arready_converter_5_signal);
    mp_m_axi_rdata_converter_5 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_5");
    mp_m_axi_rdata_converter_5->vector_in(m_axi_split_rdata_out_5);
    mp_m_axi_rdata_converter_5->vector_out(m_m_axi_rdata_converter_5_signal);
    mp_M05_AXI_transactor->RDATA(m_m_axi_rdata_converter_5_signal);
    mp_m_axi_rresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_5");
    mp_m_axi_rresp_converter_5->vector_in(m_axi_split_rresp_out_5);
    mp_m_axi_rresp_converter_5->vector_out(m_m_axi_rresp_converter_5_signal);
    mp_M05_AXI_transactor->RRESP(m_m_axi_rresp_converter_5_signal);
    mp_m_axi_rvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_5");
    mp_m_axi_rvalid_converter_5->vector_in(m_axi_split_rvalid_out_5);
    mp_m_axi_rvalid_converter_5->scalar_out(m_m_axi_rvalid_converter_5_signal);
    mp_M05_AXI_transactor->RVALID(m_m_axi_rvalid_converter_5_signal);
    mp_m_axi_rready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_5");
    mp_m_axi_rready_converter_5->scalar_in(m_m_axi_rready_converter_5_signal);
    mp_m_axi_rready_converter_5->vector_out(m_axi_concat_rready_out_5);
    mp_M05_AXI_transactor->RREADY(m_m_axi_rready_converter_5_signal);
    mp_M05_AXI_transactor->CLK(aclk);
    mp_M05_AXI_transactor->RST(aresetn);

    // M05_AXI' transactor sockets

    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M06_AXI' transactor parameters
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);

    // M06_AXI' transactor ports

    mp_m_axi_awaddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_6");
    mp_m_axi_awaddr_converter_6->vector_in(m_m_axi_awaddr_converter_6_signal);
    mp_m_axi_awaddr_converter_6->vector_out(m_axi_concat_awaddr_out_6);
    mp_M06_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_6_signal);
    mp_m_axi_awprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_6");
    mp_m_axi_awprot_converter_6->vector_in(m_m_axi_awprot_converter_6_signal);
    mp_m_axi_awprot_converter_6->vector_out(m_axi_concat_awprot_out_6);
    mp_M06_AXI_transactor->AWPROT(m_m_axi_awprot_converter_6_signal);
    mp_m_axi_awvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_6");
    mp_m_axi_awvalid_converter_6->scalar_in(m_m_axi_awvalid_converter_6_signal);
    mp_m_axi_awvalid_converter_6->vector_out(m_axi_concat_awvalid_out_6);
    mp_M06_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_6_signal);
    mp_m_axi_awready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_6");
    mp_m_axi_awready_converter_6->vector_in(m_axi_split_awready_out_6);
    mp_m_axi_awready_converter_6->scalar_out(m_m_axi_awready_converter_6_signal);
    mp_M06_AXI_transactor->AWREADY(m_m_axi_awready_converter_6_signal);
    mp_m_axi_wdata_converter_6 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_6");
    mp_m_axi_wdata_converter_6->vector_in(m_m_axi_wdata_converter_6_signal);
    mp_m_axi_wdata_converter_6->vector_out(m_axi_concat_wdata_out_6);
    mp_M06_AXI_transactor->WDATA(m_m_axi_wdata_converter_6_signal);
    mp_m_axi_wstrb_converter_6 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_6");
    mp_m_axi_wstrb_converter_6->vector_in(m_m_axi_wstrb_converter_6_signal);
    mp_m_axi_wstrb_converter_6->vector_out(m_axi_concat_wstrb_out_6);
    mp_M06_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_6_signal);
    mp_m_axi_wvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_6");
    mp_m_axi_wvalid_converter_6->scalar_in(m_m_axi_wvalid_converter_6_signal);
    mp_m_axi_wvalid_converter_6->vector_out(m_axi_concat_wvalid_out_6);
    mp_M06_AXI_transactor->WVALID(m_m_axi_wvalid_converter_6_signal);
    mp_m_axi_wready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_6");
    mp_m_axi_wready_converter_6->vector_in(m_axi_split_wready_out_6);
    mp_m_axi_wready_converter_6->scalar_out(m_m_axi_wready_converter_6_signal);
    mp_M06_AXI_transactor->WREADY(m_m_axi_wready_converter_6_signal);
    mp_m_axi_bresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_6");
    mp_m_axi_bresp_converter_6->vector_in(m_axi_split_bresp_out_6);
    mp_m_axi_bresp_converter_6->vector_out(m_m_axi_bresp_converter_6_signal);
    mp_M06_AXI_transactor->BRESP(m_m_axi_bresp_converter_6_signal);
    mp_m_axi_bvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_6");
    mp_m_axi_bvalid_converter_6->vector_in(m_axi_split_bvalid_out_6);
    mp_m_axi_bvalid_converter_6->scalar_out(m_m_axi_bvalid_converter_6_signal);
    mp_M06_AXI_transactor->BVALID(m_m_axi_bvalid_converter_6_signal);
    mp_m_axi_bready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_6");
    mp_m_axi_bready_converter_6->scalar_in(m_m_axi_bready_converter_6_signal);
    mp_m_axi_bready_converter_6->vector_out(m_axi_concat_bready_out_6);
    mp_M06_AXI_transactor->BREADY(m_m_axi_bready_converter_6_signal);
    mp_m_axi_araddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_6");
    mp_m_axi_araddr_converter_6->vector_in(m_m_axi_araddr_converter_6_signal);
    mp_m_axi_araddr_converter_6->vector_out(m_axi_concat_araddr_out_6);
    mp_M06_AXI_transactor->ARADDR(m_m_axi_araddr_converter_6_signal);
    mp_m_axi_arprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_6");
    mp_m_axi_arprot_converter_6->vector_in(m_m_axi_arprot_converter_6_signal);
    mp_m_axi_arprot_converter_6->vector_out(m_axi_concat_arprot_out_6);
    mp_M06_AXI_transactor->ARPROT(m_m_axi_arprot_converter_6_signal);
    mp_m_axi_arvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_6");
    mp_m_axi_arvalid_converter_6->scalar_in(m_m_axi_arvalid_converter_6_signal);
    mp_m_axi_arvalid_converter_6->vector_out(m_axi_concat_arvalid_out_6);
    mp_M06_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_6_signal);
    mp_m_axi_arready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_6");
    mp_m_axi_arready_converter_6->vector_in(m_axi_split_arready_out_6);
    mp_m_axi_arready_converter_6->scalar_out(m_m_axi_arready_converter_6_signal);
    mp_M06_AXI_transactor->ARREADY(m_m_axi_arready_converter_6_signal);
    mp_m_axi_rdata_converter_6 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_6");
    mp_m_axi_rdata_converter_6->vector_in(m_axi_split_rdata_out_6);
    mp_m_axi_rdata_converter_6->vector_out(m_m_axi_rdata_converter_6_signal);
    mp_M06_AXI_transactor->RDATA(m_m_axi_rdata_converter_6_signal);
    mp_m_axi_rresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_6");
    mp_m_axi_rresp_converter_6->vector_in(m_axi_split_rresp_out_6);
    mp_m_axi_rresp_converter_6->vector_out(m_m_axi_rresp_converter_6_signal);
    mp_M06_AXI_transactor->RRESP(m_m_axi_rresp_converter_6_signal);
    mp_m_axi_rvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_6");
    mp_m_axi_rvalid_converter_6->vector_in(m_axi_split_rvalid_out_6);
    mp_m_axi_rvalid_converter_6->scalar_out(m_m_axi_rvalid_converter_6_signal);
    mp_M06_AXI_transactor->RVALID(m_m_axi_rvalid_converter_6_signal);
    mp_m_axi_rready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_6");
    mp_m_axi_rready_converter_6->scalar_in(m_m_axi_rready_converter_6_signal);
    mp_m_axi_rready_converter_6->vector_out(m_axi_concat_rready_out_6);
    mp_M06_AXI_transactor->RREADY(m_m_axi_rready_converter_6_signal);
    mp_M06_AXI_transactor->CLK(aclk);
    mp_M06_AXI_transactor->RST(aresetn);

    // M06_AXI' transactor sockets

    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M07_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M07_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M07_AXI' transactor parameters
    xsc::common_cpp::properties M07_AXI_transactor_param_props;
    M07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M07_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M07_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M07_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M07_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M07_AXI_transactor", M07_AXI_transactor_param_props);

    // M07_AXI' transactor ports

    mp_m_axi_awaddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_7");
    mp_m_axi_awaddr_converter_7->vector_in(m_m_axi_awaddr_converter_7_signal);
    mp_m_axi_awaddr_converter_7->vector_out(m_axi_concat_awaddr_out_7);
    mp_M07_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_7_signal);
    mp_m_axi_awprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_7");
    mp_m_axi_awprot_converter_7->vector_in(m_m_axi_awprot_converter_7_signal);
    mp_m_axi_awprot_converter_7->vector_out(m_axi_concat_awprot_out_7);
    mp_M07_AXI_transactor->AWPROT(m_m_axi_awprot_converter_7_signal);
    mp_m_axi_awvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_7");
    mp_m_axi_awvalid_converter_7->scalar_in(m_m_axi_awvalid_converter_7_signal);
    mp_m_axi_awvalid_converter_7->vector_out(m_axi_concat_awvalid_out_7);
    mp_M07_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_7_signal);
    mp_m_axi_awready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_7");
    mp_m_axi_awready_converter_7->vector_in(m_axi_split_awready_out_7);
    mp_m_axi_awready_converter_7->scalar_out(m_m_axi_awready_converter_7_signal);
    mp_M07_AXI_transactor->AWREADY(m_m_axi_awready_converter_7_signal);
    mp_m_axi_wdata_converter_7 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_7");
    mp_m_axi_wdata_converter_7->vector_in(m_m_axi_wdata_converter_7_signal);
    mp_m_axi_wdata_converter_7->vector_out(m_axi_concat_wdata_out_7);
    mp_M07_AXI_transactor->WDATA(m_m_axi_wdata_converter_7_signal);
    mp_m_axi_wstrb_converter_7 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_7");
    mp_m_axi_wstrb_converter_7->vector_in(m_m_axi_wstrb_converter_7_signal);
    mp_m_axi_wstrb_converter_7->vector_out(m_axi_concat_wstrb_out_7);
    mp_M07_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_7_signal);
    mp_m_axi_wvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_7");
    mp_m_axi_wvalid_converter_7->scalar_in(m_m_axi_wvalid_converter_7_signal);
    mp_m_axi_wvalid_converter_7->vector_out(m_axi_concat_wvalid_out_7);
    mp_M07_AXI_transactor->WVALID(m_m_axi_wvalid_converter_7_signal);
    mp_m_axi_wready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_7");
    mp_m_axi_wready_converter_7->vector_in(m_axi_split_wready_out_7);
    mp_m_axi_wready_converter_7->scalar_out(m_m_axi_wready_converter_7_signal);
    mp_M07_AXI_transactor->WREADY(m_m_axi_wready_converter_7_signal);
    mp_m_axi_bresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_7");
    mp_m_axi_bresp_converter_7->vector_in(m_axi_split_bresp_out_7);
    mp_m_axi_bresp_converter_7->vector_out(m_m_axi_bresp_converter_7_signal);
    mp_M07_AXI_transactor->BRESP(m_m_axi_bresp_converter_7_signal);
    mp_m_axi_bvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_7");
    mp_m_axi_bvalid_converter_7->vector_in(m_axi_split_bvalid_out_7);
    mp_m_axi_bvalid_converter_7->scalar_out(m_m_axi_bvalid_converter_7_signal);
    mp_M07_AXI_transactor->BVALID(m_m_axi_bvalid_converter_7_signal);
    mp_m_axi_bready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_7");
    mp_m_axi_bready_converter_7->scalar_in(m_m_axi_bready_converter_7_signal);
    mp_m_axi_bready_converter_7->vector_out(m_axi_concat_bready_out_7);
    mp_M07_AXI_transactor->BREADY(m_m_axi_bready_converter_7_signal);
    mp_m_axi_araddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_7");
    mp_m_axi_araddr_converter_7->vector_in(m_m_axi_araddr_converter_7_signal);
    mp_m_axi_araddr_converter_7->vector_out(m_axi_concat_araddr_out_7);
    mp_M07_AXI_transactor->ARADDR(m_m_axi_araddr_converter_7_signal);
    mp_m_axi_arprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_7");
    mp_m_axi_arprot_converter_7->vector_in(m_m_axi_arprot_converter_7_signal);
    mp_m_axi_arprot_converter_7->vector_out(m_axi_concat_arprot_out_7);
    mp_M07_AXI_transactor->ARPROT(m_m_axi_arprot_converter_7_signal);
    mp_m_axi_arvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_7");
    mp_m_axi_arvalid_converter_7->scalar_in(m_m_axi_arvalid_converter_7_signal);
    mp_m_axi_arvalid_converter_7->vector_out(m_axi_concat_arvalid_out_7);
    mp_M07_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_7_signal);
    mp_m_axi_arready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_7");
    mp_m_axi_arready_converter_7->vector_in(m_axi_split_arready_out_7);
    mp_m_axi_arready_converter_7->scalar_out(m_m_axi_arready_converter_7_signal);
    mp_M07_AXI_transactor->ARREADY(m_m_axi_arready_converter_7_signal);
    mp_m_axi_rdata_converter_7 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_7");
    mp_m_axi_rdata_converter_7->vector_in(m_axi_split_rdata_out_7);
    mp_m_axi_rdata_converter_7->vector_out(m_m_axi_rdata_converter_7_signal);
    mp_M07_AXI_transactor->RDATA(m_m_axi_rdata_converter_7_signal);
    mp_m_axi_rresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_7");
    mp_m_axi_rresp_converter_7->vector_in(m_axi_split_rresp_out_7);
    mp_m_axi_rresp_converter_7->vector_out(m_m_axi_rresp_converter_7_signal);
    mp_M07_AXI_transactor->RRESP(m_m_axi_rresp_converter_7_signal);
    mp_m_axi_rvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_7");
    mp_m_axi_rvalid_converter_7->vector_in(m_axi_split_rvalid_out_7);
    mp_m_axi_rvalid_converter_7->scalar_out(m_m_axi_rvalid_converter_7_signal);
    mp_M07_AXI_transactor->RVALID(m_m_axi_rvalid_converter_7_signal);
    mp_m_axi_rready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_7");
    mp_m_axi_rready_converter_7->scalar_in(m_m_axi_rready_converter_7_signal);
    mp_m_axi_rready_converter_7->vector_out(m_axi_concat_rready_out_7);
    mp_M07_AXI_transactor->RREADY(m_m_axi_rready_converter_7_signal);
    mp_M07_AXI_transactor->CLK(aclk);
    mp_M07_AXI_transactor->RST(aresetn);

    // M07_AXI' transactor sockets

    mp_impl->initiator_7_rd_socket->bind(*(mp_M07_AXI_transactor->rd_socket));
    mp_impl->initiator_7_wr_socket->bind(*(mp_M07_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M08_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M08_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M08_AXI' transactor parameters
    xsc::common_cpp::properties M08_AXI_transactor_param_props;
    M08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M08_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M08_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M08_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M08_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M08_AXI_transactor", M08_AXI_transactor_param_props);

    // M08_AXI' transactor ports

    mp_m_axi_awaddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_8");
    mp_m_axi_awaddr_converter_8->vector_in(m_m_axi_awaddr_converter_8_signal);
    mp_m_axi_awaddr_converter_8->vector_out(m_axi_concat_awaddr_out_8);
    mp_M08_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_8_signal);
    mp_m_axi_awprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_8");
    mp_m_axi_awprot_converter_8->vector_in(m_m_axi_awprot_converter_8_signal);
    mp_m_axi_awprot_converter_8->vector_out(m_axi_concat_awprot_out_8);
    mp_M08_AXI_transactor->AWPROT(m_m_axi_awprot_converter_8_signal);
    mp_m_axi_awvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_8");
    mp_m_axi_awvalid_converter_8->scalar_in(m_m_axi_awvalid_converter_8_signal);
    mp_m_axi_awvalid_converter_8->vector_out(m_axi_concat_awvalid_out_8);
    mp_M08_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_8_signal);
    mp_m_axi_awready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_8");
    mp_m_axi_awready_converter_8->vector_in(m_axi_split_awready_out_8);
    mp_m_axi_awready_converter_8->scalar_out(m_m_axi_awready_converter_8_signal);
    mp_M08_AXI_transactor->AWREADY(m_m_axi_awready_converter_8_signal);
    mp_m_axi_wdata_converter_8 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_8");
    mp_m_axi_wdata_converter_8->vector_in(m_m_axi_wdata_converter_8_signal);
    mp_m_axi_wdata_converter_8->vector_out(m_axi_concat_wdata_out_8);
    mp_M08_AXI_transactor->WDATA(m_m_axi_wdata_converter_8_signal);
    mp_m_axi_wstrb_converter_8 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_8");
    mp_m_axi_wstrb_converter_8->vector_in(m_m_axi_wstrb_converter_8_signal);
    mp_m_axi_wstrb_converter_8->vector_out(m_axi_concat_wstrb_out_8);
    mp_M08_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_8_signal);
    mp_m_axi_wvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_8");
    mp_m_axi_wvalid_converter_8->scalar_in(m_m_axi_wvalid_converter_8_signal);
    mp_m_axi_wvalid_converter_8->vector_out(m_axi_concat_wvalid_out_8);
    mp_M08_AXI_transactor->WVALID(m_m_axi_wvalid_converter_8_signal);
    mp_m_axi_wready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_8");
    mp_m_axi_wready_converter_8->vector_in(m_axi_split_wready_out_8);
    mp_m_axi_wready_converter_8->scalar_out(m_m_axi_wready_converter_8_signal);
    mp_M08_AXI_transactor->WREADY(m_m_axi_wready_converter_8_signal);
    mp_m_axi_bresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_8");
    mp_m_axi_bresp_converter_8->vector_in(m_axi_split_bresp_out_8);
    mp_m_axi_bresp_converter_8->vector_out(m_m_axi_bresp_converter_8_signal);
    mp_M08_AXI_transactor->BRESP(m_m_axi_bresp_converter_8_signal);
    mp_m_axi_bvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_8");
    mp_m_axi_bvalid_converter_8->vector_in(m_axi_split_bvalid_out_8);
    mp_m_axi_bvalid_converter_8->scalar_out(m_m_axi_bvalid_converter_8_signal);
    mp_M08_AXI_transactor->BVALID(m_m_axi_bvalid_converter_8_signal);
    mp_m_axi_bready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_8");
    mp_m_axi_bready_converter_8->scalar_in(m_m_axi_bready_converter_8_signal);
    mp_m_axi_bready_converter_8->vector_out(m_axi_concat_bready_out_8);
    mp_M08_AXI_transactor->BREADY(m_m_axi_bready_converter_8_signal);
    mp_m_axi_araddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_8");
    mp_m_axi_araddr_converter_8->vector_in(m_m_axi_araddr_converter_8_signal);
    mp_m_axi_araddr_converter_8->vector_out(m_axi_concat_araddr_out_8);
    mp_M08_AXI_transactor->ARADDR(m_m_axi_araddr_converter_8_signal);
    mp_m_axi_arprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_8");
    mp_m_axi_arprot_converter_8->vector_in(m_m_axi_arprot_converter_8_signal);
    mp_m_axi_arprot_converter_8->vector_out(m_axi_concat_arprot_out_8);
    mp_M08_AXI_transactor->ARPROT(m_m_axi_arprot_converter_8_signal);
    mp_m_axi_arvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_8");
    mp_m_axi_arvalid_converter_8->scalar_in(m_m_axi_arvalid_converter_8_signal);
    mp_m_axi_arvalid_converter_8->vector_out(m_axi_concat_arvalid_out_8);
    mp_M08_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_8_signal);
    mp_m_axi_arready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_8");
    mp_m_axi_arready_converter_8->vector_in(m_axi_split_arready_out_8);
    mp_m_axi_arready_converter_8->scalar_out(m_m_axi_arready_converter_8_signal);
    mp_M08_AXI_transactor->ARREADY(m_m_axi_arready_converter_8_signal);
    mp_m_axi_rdata_converter_8 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_8");
    mp_m_axi_rdata_converter_8->vector_in(m_axi_split_rdata_out_8);
    mp_m_axi_rdata_converter_8->vector_out(m_m_axi_rdata_converter_8_signal);
    mp_M08_AXI_transactor->RDATA(m_m_axi_rdata_converter_8_signal);
    mp_m_axi_rresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_8");
    mp_m_axi_rresp_converter_8->vector_in(m_axi_split_rresp_out_8);
    mp_m_axi_rresp_converter_8->vector_out(m_m_axi_rresp_converter_8_signal);
    mp_M08_AXI_transactor->RRESP(m_m_axi_rresp_converter_8_signal);
    mp_m_axi_rvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_8");
    mp_m_axi_rvalid_converter_8->vector_in(m_axi_split_rvalid_out_8);
    mp_m_axi_rvalid_converter_8->scalar_out(m_m_axi_rvalid_converter_8_signal);
    mp_M08_AXI_transactor->RVALID(m_m_axi_rvalid_converter_8_signal);
    mp_m_axi_rready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_8");
    mp_m_axi_rready_converter_8->scalar_in(m_m_axi_rready_converter_8_signal);
    mp_m_axi_rready_converter_8->vector_out(m_axi_concat_rready_out_8);
    mp_M08_AXI_transactor->RREADY(m_m_axi_rready_converter_8_signal);
    mp_M08_AXI_transactor->CLK(aclk);
    mp_M08_AXI_transactor->RST(aresetn);

    // M08_AXI' transactor sockets

    mp_impl->initiator_8_rd_socket->bind(*(mp_M08_AXI_transactor->rd_socket));
    mp_impl->initiator_8_wr_socket->bind(*(mp_M08_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M09_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M09_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M09_AXI' transactor parameters
    xsc::common_cpp::properties M09_AXI_transactor_param_props;
    M09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M09_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M09_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M09_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M09_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M09_AXI_transactor", M09_AXI_transactor_param_props);

    // M09_AXI' transactor ports

    mp_m_axi_awaddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_9");
    mp_m_axi_awaddr_converter_9->vector_in(m_m_axi_awaddr_converter_9_signal);
    mp_m_axi_awaddr_converter_9->vector_out(m_axi_concat_awaddr_out_9);
    mp_M09_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_9_signal);
    mp_m_axi_awprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_9");
    mp_m_axi_awprot_converter_9->vector_in(m_m_axi_awprot_converter_9_signal);
    mp_m_axi_awprot_converter_9->vector_out(m_axi_concat_awprot_out_9);
    mp_M09_AXI_transactor->AWPROT(m_m_axi_awprot_converter_9_signal);
    mp_m_axi_awvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_9");
    mp_m_axi_awvalid_converter_9->scalar_in(m_m_axi_awvalid_converter_9_signal);
    mp_m_axi_awvalid_converter_9->vector_out(m_axi_concat_awvalid_out_9);
    mp_M09_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_9_signal);
    mp_m_axi_awready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_9");
    mp_m_axi_awready_converter_9->vector_in(m_axi_split_awready_out_9);
    mp_m_axi_awready_converter_9->scalar_out(m_m_axi_awready_converter_9_signal);
    mp_M09_AXI_transactor->AWREADY(m_m_axi_awready_converter_9_signal);
    mp_m_axi_wdata_converter_9 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_9");
    mp_m_axi_wdata_converter_9->vector_in(m_m_axi_wdata_converter_9_signal);
    mp_m_axi_wdata_converter_9->vector_out(m_axi_concat_wdata_out_9);
    mp_M09_AXI_transactor->WDATA(m_m_axi_wdata_converter_9_signal);
    mp_m_axi_wstrb_converter_9 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_9");
    mp_m_axi_wstrb_converter_9->vector_in(m_m_axi_wstrb_converter_9_signal);
    mp_m_axi_wstrb_converter_9->vector_out(m_axi_concat_wstrb_out_9);
    mp_M09_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_9_signal);
    mp_m_axi_wvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_9");
    mp_m_axi_wvalid_converter_9->scalar_in(m_m_axi_wvalid_converter_9_signal);
    mp_m_axi_wvalid_converter_9->vector_out(m_axi_concat_wvalid_out_9);
    mp_M09_AXI_transactor->WVALID(m_m_axi_wvalid_converter_9_signal);
    mp_m_axi_wready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_9");
    mp_m_axi_wready_converter_9->vector_in(m_axi_split_wready_out_9);
    mp_m_axi_wready_converter_9->scalar_out(m_m_axi_wready_converter_9_signal);
    mp_M09_AXI_transactor->WREADY(m_m_axi_wready_converter_9_signal);
    mp_m_axi_bresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_9");
    mp_m_axi_bresp_converter_9->vector_in(m_axi_split_bresp_out_9);
    mp_m_axi_bresp_converter_9->vector_out(m_m_axi_bresp_converter_9_signal);
    mp_M09_AXI_transactor->BRESP(m_m_axi_bresp_converter_9_signal);
    mp_m_axi_bvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_9");
    mp_m_axi_bvalid_converter_9->vector_in(m_axi_split_bvalid_out_9);
    mp_m_axi_bvalid_converter_9->scalar_out(m_m_axi_bvalid_converter_9_signal);
    mp_M09_AXI_transactor->BVALID(m_m_axi_bvalid_converter_9_signal);
    mp_m_axi_bready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_9");
    mp_m_axi_bready_converter_9->scalar_in(m_m_axi_bready_converter_9_signal);
    mp_m_axi_bready_converter_9->vector_out(m_axi_concat_bready_out_9);
    mp_M09_AXI_transactor->BREADY(m_m_axi_bready_converter_9_signal);
    mp_m_axi_araddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_9");
    mp_m_axi_araddr_converter_9->vector_in(m_m_axi_araddr_converter_9_signal);
    mp_m_axi_araddr_converter_9->vector_out(m_axi_concat_araddr_out_9);
    mp_M09_AXI_transactor->ARADDR(m_m_axi_araddr_converter_9_signal);
    mp_m_axi_arprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_9");
    mp_m_axi_arprot_converter_9->vector_in(m_m_axi_arprot_converter_9_signal);
    mp_m_axi_arprot_converter_9->vector_out(m_axi_concat_arprot_out_9);
    mp_M09_AXI_transactor->ARPROT(m_m_axi_arprot_converter_9_signal);
    mp_m_axi_arvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_9");
    mp_m_axi_arvalid_converter_9->scalar_in(m_m_axi_arvalid_converter_9_signal);
    mp_m_axi_arvalid_converter_9->vector_out(m_axi_concat_arvalid_out_9);
    mp_M09_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_9_signal);
    mp_m_axi_arready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_9");
    mp_m_axi_arready_converter_9->vector_in(m_axi_split_arready_out_9);
    mp_m_axi_arready_converter_9->scalar_out(m_m_axi_arready_converter_9_signal);
    mp_M09_AXI_transactor->ARREADY(m_m_axi_arready_converter_9_signal);
    mp_m_axi_rdata_converter_9 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_9");
    mp_m_axi_rdata_converter_9->vector_in(m_axi_split_rdata_out_9);
    mp_m_axi_rdata_converter_9->vector_out(m_m_axi_rdata_converter_9_signal);
    mp_M09_AXI_transactor->RDATA(m_m_axi_rdata_converter_9_signal);
    mp_m_axi_rresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_9");
    mp_m_axi_rresp_converter_9->vector_in(m_axi_split_rresp_out_9);
    mp_m_axi_rresp_converter_9->vector_out(m_m_axi_rresp_converter_9_signal);
    mp_M09_AXI_transactor->RRESP(m_m_axi_rresp_converter_9_signal);
    mp_m_axi_rvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_9");
    mp_m_axi_rvalid_converter_9->vector_in(m_axi_split_rvalid_out_9);
    mp_m_axi_rvalid_converter_9->scalar_out(m_m_axi_rvalid_converter_9_signal);
    mp_M09_AXI_transactor->RVALID(m_m_axi_rvalid_converter_9_signal);
    mp_m_axi_rready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_9");
    mp_m_axi_rready_converter_9->scalar_in(m_m_axi_rready_converter_9_signal);
    mp_m_axi_rready_converter_9->vector_out(m_axi_concat_rready_out_9);
    mp_M09_AXI_transactor->RREADY(m_m_axi_rready_converter_9_signal);
    mp_M09_AXI_transactor->CLK(aclk);
    mp_M09_AXI_transactor->RST(aresetn);

    // M09_AXI' transactor sockets

    mp_impl->initiator_9_rd_socket->bind(*(mp_M09_AXI_transactor->rd_socket));
    mp_impl->initiator_9_wr_socket->bind(*(mp_M09_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M10_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M10_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M10_AXI' transactor parameters
    xsc::common_cpp::properties M10_AXI_transactor_param_props;
    M10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M10_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M10_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M10_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M10_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M10_AXI_transactor", M10_AXI_transactor_param_props);

    // M10_AXI' transactor ports

    mp_m_axi_awaddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_10");
    mp_m_axi_awaddr_converter_10->vector_in(m_m_axi_awaddr_converter_10_signal);
    mp_m_axi_awaddr_converter_10->vector_out(m_axi_concat_awaddr_out_10);
    mp_M10_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_10_signal);
    mp_m_axi_awprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_10");
    mp_m_axi_awprot_converter_10->vector_in(m_m_axi_awprot_converter_10_signal);
    mp_m_axi_awprot_converter_10->vector_out(m_axi_concat_awprot_out_10);
    mp_M10_AXI_transactor->AWPROT(m_m_axi_awprot_converter_10_signal);
    mp_m_axi_awvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_10");
    mp_m_axi_awvalid_converter_10->scalar_in(m_m_axi_awvalid_converter_10_signal);
    mp_m_axi_awvalid_converter_10->vector_out(m_axi_concat_awvalid_out_10);
    mp_M10_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_10_signal);
    mp_m_axi_awready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_10");
    mp_m_axi_awready_converter_10->vector_in(m_axi_split_awready_out_10);
    mp_m_axi_awready_converter_10->scalar_out(m_m_axi_awready_converter_10_signal);
    mp_M10_AXI_transactor->AWREADY(m_m_axi_awready_converter_10_signal);
    mp_m_axi_wdata_converter_10 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_10");
    mp_m_axi_wdata_converter_10->vector_in(m_m_axi_wdata_converter_10_signal);
    mp_m_axi_wdata_converter_10->vector_out(m_axi_concat_wdata_out_10);
    mp_M10_AXI_transactor->WDATA(m_m_axi_wdata_converter_10_signal);
    mp_m_axi_wstrb_converter_10 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_10");
    mp_m_axi_wstrb_converter_10->vector_in(m_m_axi_wstrb_converter_10_signal);
    mp_m_axi_wstrb_converter_10->vector_out(m_axi_concat_wstrb_out_10);
    mp_M10_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_10_signal);
    mp_m_axi_wvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_10");
    mp_m_axi_wvalid_converter_10->scalar_in(m_m_axi_wvalid_converter_10_signal);
    mp_m_axi_wvalid_converter_10->vector_out(m_axi_concat_wvalid_out_10);
    mp_M10_AXI_transactor->WVALID(m_m_axi_wvalid_converter_10_signal);
    mp_m_axi_wready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_10");
    mp_m_axi_wready_converter_10->vector_in(m_axi_split_wready_out_10);
    mp_m_axi_wready_converter_10->scalar_out(m_m_axi_wready_converter_10_signal);
    mp_M10_AXI_transactor->WREADY(m_m_axi_wready_converter_10_signal);
    mp_m_axi_bresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_10");
    mp_m_axi_bresp_converter_10->vector_in(m_axi_split_bresp_out_10);
    mp_m_axi_bresp_converter_10->vector_out(m_m_axi_bresp_converter_10_signal);
    mp_M10_AXI_transactor->BRESP(m_m_axi_bresp_converter_10_signal);
    mp_m_axi_bvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_10");
    mp_m_axi_bvalid_converter_10->vector_in(m_axi_split_bvalid_out_10);
    mp_m_axi_bvalid_converter_10->scalar_out(m_m_axi_bvalid_converter_10_signal);
    mp_M10_AXI_transactor->BVALID(m_m_axi_bvalid_converter_10_signal);
    mp_m_axi_bready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_10");
    mp_m_axi_bready_converter_10->scalar_in(m_m_axi_bready_converter_10_signal);
    mp_m_axi_bready_converter_10->vector_out(m_axi_concat_bready_out_10);
    mp_M10_AXI_transactor->BREADY(m_m_axi_bready_converter_10_signal);
    mp_m_axi_araddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_10");
    mp_m_axi_araddr_converter_10->vector_in(m_m_axi_araddr_converter_10_signal);
    mp_m_axi_araddr_converter_10->vector_out(m_axi_concat_araddr_out_10);
    mp_M10_AXI_transactor->ARADDR(m_m_axi_araddr_converter_10_signal);
    mp_m_axi_arprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_10");
    mp_m_axi_arprot_converter_10->vector_in(m_m_axi_arprot_converter_10_signal);
    mp_m_axi_arprot_converter_10->vector_out(m_axi_concat_arprot_out_10);
    mp_M10_AXI_transactor->ARPROT(m_m_axi_arprot_converter_10_signal);
    mp_m_axi_arvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_10");
    mp_m_axi_arvalid_converter_10->scalar_in(m_m_axi_arvalid_converter_10_signal);
    mp_m_axi_arvalid_converter_10->vector_out(m_axi_concat_arvalid_out_10);
    mp_M10_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_10_signal);
    mp_m_axi_arready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_10");
    mp_m_axi_arready_converter_10->vector_in(m_axi_split_arready_out_10);
    mp_m_axi_arready_converter_10->scalar_out(m_m_axi_arready_converter_10_signal);
    mp_M10_AXI_transactor->ARREADY(m_m_axi_arready_converter_10_signal);
    mp_m_axi_rdata_converter_10 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_10");
    mp_m_axi_rdata_converter_10->vector_in(m_axi_split_rdata_out_10);
    mp_m_axi_rdata_converter_10->vector_out(m_m_axi_rdata_converter_10_signal);
    mp_M10_AXI_transactor->RDATA(m_m_axi_rdata_converter_10_signal);
    mp_m_axi_rresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_10");
    mp_m_axi_rresp_converter_10->vector_in(m_axi_split_rresp_out_10);
    mp_m_axi_rresp_converter_10->vector_out(m_m_axi_rresp_converter_10_signal);
    mp_M10_AXI_transactor->RRESP(m_m_axi_rresp_converter_10_signal);
    mp_m_axi_rvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_10");
    mp_m_axi_rvalid_converter_10->vector_in(m_axi_split_rvalid_out_10);
    mp_m_axi_rvalid_converter_10->scalar_out(m_m_axi_rvalid_converter_10_signal);
    mp_M10_AXI_transactor->RVALID(m_m_axi_rvalid_converter_10_signal);
    mp_m_axi_rready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_10");
    mp_m_axi_rready_converter_10->scalar_in(m_m_axi_rready_converter_10_signal);
    mp_m_axi_rready_converter_10->vector_out(m_axi_concat_rready_out_10);
    mp_M10_AXI_transactor->RREADY(m_m_axi_rready_converter_10_signal);
    mp_M10_AXI_transactor->CLK(aclk);
    mp_M10_AXI_transactor->RST(aresetn);

    // M10_AXI' transactor sockets

    mp_impl->initiator_10_rd_socket->bind(*(mp_M10_AXI_transactor->rd_socket));
    mp_impl->initiator_10_wr_socket->bind(*(mp_M10_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
design_1_xbar_0::design_1_xbar_0(const sc_core::sc_module_name& nm) : design_1_xbar_0_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awaddr("m_axi_awaddr"), m_axi_awprot("m_axi_awprot"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_araddr("m_axi_araddr"), m_axi_arprot("m_axi_arprot"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awvalid_converter = NULL;
  mp_s_axi_awready_converter = NULL;
  mp_s_axi_wvalid_converter = NULL;
  mp_s_axi_wready_converter = NULL;
  mp_s_axi_bvalid_converter = NULL;
  mp_s_axi_bready_converter = NULL;
  mp_s_axi_arvalid_converter = NULL;
  mp_s_axi_arready_converter = NULL;
  mp_s_axi_rvalid_converter = NULL;
  mp_s_axi_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_0 = NULL;
  mp_m_axi_awprot_converter_0 = NULL;
  mp_m_axi_awvalid_converter_0 = NULL;
  mp_m_axi_awready_converter_0 = NULL;
  mp_m_axi_wdata_converter_0 = NULL;
  mp_m_axi_wstrb_converter_0 = NULL;
  mp_m_axi_wvalid_converter_0 = NULL;
  mp_m_axi_wready_converter_0 = NULL;
  mp_m_axi_bresp_converter_0 = NULL;
  mp_m_axi_bvalid_converter_0 = NULL;
  mp_m_axi_bready_converter_0 = NULL;
  mp_m_axi_araddr_converter_0 = NULL;
  mp_m_axi_arprot_converter_0 = NULL;
  mp_m_axi_arvalid_converter_0 = NULL;
  mp_m_axi_arready_converter_0 = NULL;
  mp_m_axi_rdata_converter_0 = NULL;
  mp_m_axi_rresp_converter_0 = NULL;
  mp_m_axi_rvalid_converter_0 = NULL;
  mp_m_axi_rready_converter_0 = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_1 = NULL;
  mp_m_axi_awprot_converter_1 = NULL;
  mp_m_axi_awvalid_converter_1 = NULL;
  mp_m_axi_awready_converter_1 = NULL;
  mp_m_axi_wdata_converter_1 = NULL;
  mp_m_axi_wstrb_converter_1 = NULL;
  mp_m_axi_wvalid_converter_1 = NULL;
  mp_m_axi_wready_converter_1 = NULL;
  mp_m_axi_bresp_converter_1 = NULL;
  mp_m_axi_bvalid_converter_1 = NULL;
  mp_m_axi_bready_converter_1 = NULL;
  mp_m_axi_araddr_converter_1 = NULL;
  mp_m_axi_arprot_converter_1 = NULL;
  mp_m_axi_arvalid_converter_1 = NULL;
  mp_m_axi_arready_converter_1 = NULL;
  mp_m_axi_rdata_converter_1 = NULL;
  mp_m_axi_rresp_converter_1 = NULL;
  mp_m_axi_rvalid_converter_1 = NULL;
  mp_m_axi_rready_converter_1 = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_2 = NULL;
  mp_m_axi_awprot_converter_2 = NULL;
  mp_m_axi_awvalid_converter_2 = NULL;
  mp_m_axi_awready_converter_2 = NULL;
  mp_m_axi_wdata_converter_2 = NULL;
  mp_m_axi_wstrb_converter_2 = NULL;
  mp_m_axi_wvalid_converter_2 = NULL;
  mp_m_axi_wready_converter_2 = NULL;
  mp_m_axi_bresp_converter_2 = NULL;
  mp_m_axi_bvalid_converter_2 = NULL;
  mp_m_axi_bready_converter_2 = NULL;
  mp_m_axi_araddr_converter_2 = NULL;
  mp_m_axi_arprot_converter_2 = NULL;
  mp_m_axi_arvalid_converter_2 = NULL;
  mp_m_axi_arready_converter_2 = NULL;
  mp_m_axi_rdata_converter_2 = NULL;
  mp_m_axi_rresp_converter_2 = NULL;
  mp_m_axi_rvalid_converter_2 = NULL;
  mp_m_axi_rready_converter_2 = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_3 = NULL;
  mp_m_axi_awprot_converter_3 = NULL;
  mp_m_axi_awvalid_converter_3 = NULL;
  mp_m_axi_awready_converter_3 = NULL;
  mp_m_axi_wdata_converter_3 = NULL;
  mp_m_axi_wstrb_converter_3 = NULL;
  mp_m_axi_wvalid_converter_3 = NULL;
  mp_m_axi_wready_converter_3 = NULL;
  mp_m_axi_bresp_converter_3 = NULL;
  mp_m_axi_bvalid_converter_3 = NULL;
  mp_m_axi_bready_converter_3 = NULL;
  mp_m_axi_araddr_converter_3 = NULL;
  mp_m_axi_arprot_converter_3 = NULL;
  mp_m_axi_arvalid_converter_3 = NULL;
  mp_m_axi_arready_converter_3 = NULL;
  mp_m_axi_rdata_converter_3 = NULL;
  mp_m_axi_rresp_converter_3 = NULL;
  mp_m_axi_rvalid_converter_3 = NULL;
  mp_m_axi_rready_converter_3 = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_4 = NULL;
  mp_m_axi_awprot_converter_4 = NULL;
  mp_m_axi_awvalid_converter_4 = NULL;
  mp_m_axi_awready_converter_4 = NULL;
  mp_m_axi_wdata_converter_4 = NULL;
  mp_m_axi_wstrb_converter_4 = NULL;
  mp_m_axi_wvalid_converter_4 = NULL;
  mp_m_axi_wready_converter_4 = NULL;
  mp_m_axi_bresp_converter_4 = NULL;
  mp_m_axi_bvalid_converter_4 = NULL;
  mp_m_axi_bready_converter_4 = NULL;
  mp_m_axi_araddr_converter_4 = NULL;
  mp_m_axi_arprot_converter_4 = NULL;
  mp_m_axi_arvalid_converter_4 = NULL;
  mp_m_axi_arready_converter_4 = NULL;
  mp_m_axi_rdata_converter_4 = NULL;
  mp_m_axi_rresp_converter_4 = NULL;
  mp_m_axi_rvalid_converter_4 = NULL;
  mp_m_axi_rready_converter_4 = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_5 = NULL;
  mp_m_axi_awprot_converter_5 = NULL;
  mp_m_axi_awvalid_converter_5 = NULL;
  mp_m_axi_awready_converter_5 = NULL;
  mp_m_axi_wdata_converter_5 = NULL;
  mp_m_axi_wstrb_converter_5 = NULL;
  mp_m_axi_wvalid_converter_5 = NULL;
  mp_m_axi_wready_converter_5 = NULL;
  mp_m_axi_bresp_converter_5 = NULL;
  mp_m_axi_bvalid_converter_5 = NULL;
  mp_m_axi_bready_converter_5 = NULL;
  mp_m_axi_araddr_converter_5 = NULL;
  mp_m_axi_arprot_converter_5 = NULL;
  mp_m_axi_arvalid_converter_5 = NULL;
  mp_m_axi_arready_converter_5 = NULL;
  mp_m_axi_rdata_converter_5 = NULL;
  mp_m_axi_rresp_converter_5 = NULL;
  mp_m_axi_rvalid_converter_5 = NULL;
  mp_m_axi_rready_converter_5 = NULL;
  mp_M06_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_6 = NULL;
  mp_m_axi_awprot_converter_6 = NULL;
  mp_m_axi_awvalid_converter_6 = NULL;
  mp_m_axi_awready_converter_6 = NULL;
  mp_m_axi_wdata_converter_6 = NULL;
  mp_m_axi_wstrb_converter_6 = NULL;
  mp_m_axi_wvalid_converter_6 = NULL;
  mp_m_axi_wready_converter_6 = NULL;
  mp_m_axi_bresp_converter_6 = NULL;
  mp_m_axi_bvalid_converter_6 = NULL;
  mp_m_axi_bready_converter_6 = NULL;
  mp_m_axi_araddr_converter_6 = NULL;
  mp_m_axi_arprot_converter_6 = NULL;
  mp_m_axi_arvalid_converter_6 = NULL;
  mp_m_axi_arready_converter_6 = NULL;
  mp_m_axi_rdata_converter_6 = NULL;
  mp_m_axi_rresp_converter_6 = NULL;
  mp_m_axi_rvalid_converter_6 = NULL;
  mp_m_axi_rready_converter_6 = NULL;
  mp_M07_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_7 = NULL;
  mp_m_axi_awprot_converter_7 = NULL;
  mp_m_axi_awvalid_converter_7 = NULL;
  mp_m_axi_awready_converter_7 = NULL;
  mp_m_axi_wdata_converter_7 = NULL;
  mp_m_axi_wstrb_converter_7 = NULL;
  mp_m_axi_wvalid_converter_7 = NULL;
  mp_m_axi_wready_converter_7 = NULL;
  mp_m_axi_bresp_converter_7 = NULL;
  mp_m_axi_bvalid_converter_7 = NULL;
  mp_m_axi_bready_converter_7 = NULL;
  mp_m_axi_araddr_converter_7 = NULL;
  mp_m_axi_arprot_converter_7 = NULL;
  mp_m_axi_arvalid_converter_7 = NULL;
  mp_m_axi_arready_converter_7 = NULL;
  mp_m_axi_rdata_converter_7 = NULL;
  mp_m_axi_rresp_converter_7 = NULL;
  mp_m_axi_rvalid_converter_7 = NULL;
  mp_m_axi_rready_converter_7 = NULL;
  mp_M08_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_8 = NULL;
  mp_m_axi_awprot_converter_8 = NULL;
  mp_m_axi_awvalid_converter_8 = NULL;
  mp_m_axi_awready_converter_8 = NULL;
  mp_m_axi_wdata_converter_8 = NULL;
  mp_m_axi_wstrb_converter_8 = NULL;
  mp_m_axi_wvalid_converter_8 = NULL;
  mp_m_axi_wready_converter_8 = NULL;
  mp_m_axi_bresp_converter_8 = NULL;
  mp_m_axi_bvalid_converter_8 = NULL;
  mp_m_axi_bready_converter_8 = NULL;
  mp_m_axi_araddr_converter_8 = NULL;
  mp_m_axi_arprot_converter_8 = NULL;
  mp_m_axi_arvalid_converter_8 = NULL;
  mp_m_axi_arready_converter_8 = NULL;
  mp_m_axi_rdata_converter_8 = NULL;
  mp_m_axi_rresp_converter_8 = NULL;
  mp_m_axi_rvalid_converter_8 = NULL;
  mp_m_axi_rready_converter_8 = NULL;
  mp_M09_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_9 = NULL;
  mp_m_axi_awprot_converter_9 = NULL;
  mp_m_axi_awvalid_converter_9 = NULL;
  mp_m_axi_awready_converter_9 = NULL;
  mp_m_axi_wdata_converter_9 = NULL;
  mp_m_axi_wstrb_converter_9 = NULL;
  mp_m_axi_wvalid_converter_9 = NULL;
  mp_m_axi_wready_converter_9 = NULL;
  mp_m_axi_bresp_converter_9 = NULL;
  mp_m_axi_bvalid_converter_9 = NULL;
  mp_m_axi_bready_converter_9 = NULL;
  mp_m_axi_araddr_converter_9 = NULL;
  mp_m_axi_arprot_converter_9 = NULL;
  mp_m_axi_arvalid_converter_9 = NULL;
  mp_m_axi_arready_converter_9 = NULL;
  mp_m_axi_rdata_converter_9 = NULL;
  mp_m_axi_rresp_converter_9 = NULL;
  mp_m_axi_rvalid_converter_9 = NULL;
  mp_m_axi_rready_converter_9 = NULL;
  mp_M10_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_10 = NULL;
  mp_m_axi_awprot_converter_10 = NULL;
  mp_m_axi_awvalid_converter_10 = NULL;
  mp_m_axi_awready_converter_10 = NULL;
  mp_m_axi_wdata_converter_10 = NULL;
  mp_m_axi_wstrb_converter_10 = NULL;
  mp_m_axi_wvalid_converter_10 = NULL;
  mp_m_axi_wready_converter_10 = NULL;
  mp_m_axi_bresp_converter_10 = NULL;
  mp_m_axi_bvalid_converter_10 = NULL;
  mp_m_axi_bready_converter_10 = NULL;
  mp_m_axi_araddr_converter_10 = NULL;
  mp_m_axi_arprot_converter_10 = NULL;
  mp_m_axi_arvalid_converter_10 = NULL;
  mp_m_axi_arready_converter_10 = NULL;
  mp_m_axi_rdata_converter_10 = NULL;
  mp_m_axi_rresp_converter_10 = NULL;
  mp_m_axi_rvalid_converter_10 = NULL;
  mp_m_axi_rready_converter_10 = NULL;

  // initialize junctures
  mp_m_axi_concat_araddr = NULL;
  mp_m_axi_concat_arprot = NULL;
  mp_m_axi_concat_arvalid = NULL;
  mp_m_axi_concat_awaddr = NULL;
  mp_m_axi_concat_awprot = NULL;
  mp_m_axi_concat_awvalid = NULL;
  mp_m_axi_concat_bready = NULL;
  mp_m_axi_concat_rready = NULL;
  mp_m_axi_concat_wdata = NULL;
  mp_m_axi_concat_wstrb = NULL;
  mp_m_axi_concat_wvalid = NULL;
  mp_m_axi_split_arready = NULL;
  mp_m_axi_split_awready = NULL;
  mp_m_axi_split_bresp = NULL;
  mp_m_axi_split_bvalid = NULL;
  mp_m_axi_split_rdata = NULL;
  mp_m_axi_split_rresp = NULL;
  mp_m_axi_split_rvalid = NULL;
  mp_m_axi_split_wready = NULL;
  mp_m_axi_concat_awaddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_awaddr");
  mp_m_axi_concat_awaddr->in_port[0](m_axi_concat_awaddr_out_0);
  mp_m_axi_concat_awaddr->out_port(m_axi_awaddr);
    mp_m_axi_concat_awaddr->offset_port(0, 0);
  mp_m_axi_concat_awprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_awprot");
  mp_m_axi_concat_awprot->in_port[0](m_axi_concat_awprot_out_0);
  mp_m_axi_concat_awprot->out_port(m_axi_awprot);
    mp_m_axi_concat_awprot->offset_port(0, 0);
  mp_m_axi_concat_awvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_awvalid");
  mp_m_axi_concat_awvalid->in_port[0](m_axi_concat_awvalid_out_0);
  mp_m_axi_concat_awvalid->out_port(m_axi_awvalid);
    mp_m_axi_concat_awvalid->offset_port(0, 0);
  mp_m_axi_split_awready = new xsc::xsc_split<11, 11>("m_axi_split_awready");
  mp_m_axi_split_awready->in_port(m_axi_awready);
  mp_m_axi_split_awready->out_port[0](m_axi_split_awready_out_0);
    mp_m_axi_split_awready->add_mask(0,1,0);
  mp_m_axi_concat_wdata = new xsc::xsc_concatenator<352, 11>("m_axi_concat_wdata");
  mp_m_axi_concat_wdata->in_port[0](m_axi_concat_wdata_out_0);
  mp_m_axi_concat_wdata->out_port(m_axi_wdata);
    mp_m_axi_concat_wdata->offset_port(0, 0);
  mp_m_axi_concat_wstrb = new xsc::xsc_concatenator<44, 11>("m_axi_concat_wstrb");
  mp_m_axi_concat_wstrb->in_port[0](m_axi_concat_wstrb_out_0);
  mp_m_axi_concat_wstrb->out_port(m_axi_wstrb);
    mp_m_axi_concat_wstrb->offset_port(0, 0);
  mp_m_axi_concat_wvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_wvalid");
  mp_m_axi_concat_wvalid->in_port[0](m_axi_concat_wvalid_out_0);
  mp_m_axi_concat_wvalid->out_port(m_axi_wvalid);
    mp_m_axi_concat_wvalid->offset_port(0, 0);
  mp_m_axi_split_wready = new xsc::xsc_split<11, 11>("m_axi_split_wready");
  mp_m_axi_split_wready->in_port(m_axi_wready);
  mp_m_axi_split_wready->out_port[0](m_axi_split_wready_out_0);
    mp_m_axi_split_wready->add_mask(0,1,0);
  mp_m_axi_split_bresp = new xsc::xsc_split<22, 11>("m_axi_split_bresp");
  mp_m_axi_split_bresp->in_port(m_axi_bresp);
  mp_m_axi_split_bresp->out_port[0](m_axi_split_bresp_out_0);
    mp_m_axi_split_bresp->add_mask(0,2,0);
  mp_m_axi_split_bvalid = new xsc::xsc_split<11, 11>("m_axi_split_bvalid");
  mp_m_axi_split_bvalid->in_port(m_axi_bvalid);
  mp_m_axi_split_bvalid->out_port[0](m_axi_split_bvalid_out_0);
    mp_m_axi_split_bvalid->add_mask(0,1,0);
  mp_m_axi_concat_bready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_bready");
  mp_m_axi_concat_bready->in_port[0](m_axi_concat_bready_out_0);
  mp_m_axi_concat_bready->out_port(m_axi_bready);
    mp_m_axi_concat_bready->offset_port(0, 0);
  mp_m_axi_concat_araddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_araddr");
  mp_m_axi_concat_araddr->in_port[0](m_axi_concat_araddr_out_0);
  mp_m_axi_concat_araddr->out_port(m_axi_araddr);
    mp_m_axi_concat_araddr->offset_port(0, 0);
  mp_m_axi_concat_arprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_arprot");
  mp_m_axi_concat_arprot->in_port[0](m_axi_concat_arprot_out_0);
  mp_m_axi_concat_arprot->out_port(m_axi_arprot);
    mp_m_axi_concat_arprot->offset_port(0, 0);
  mp_m_axi_concat_arvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_arvalid");
  mp_m_axi_concat_arvalid->in_port[0](m_axi_concat_arvalid_out_0);
  mp_m_axi_concat_arvalid->out_port(m_axi_arvalid);
    mp_m_axi_concat_arvalid->offset_port(0, 0);
  mp_m_axi_split_arready = new xsc::xsc_split<11, 11>("m_axi_split_arready");
  mp_m_axi_split_arready->in_port(m_axi_arready);
  mp_m_axi_split_arready->out_port[0](m_axi_split_arready_out_0);
    mp_m_axi_split_arready->add_mask(0,1,0);
  mp_m_axi_split_rdata = new xsc::xsc_split<352, 11>("m_axi_split_rdata");
  mp_m_axi_split_rdata->in_port(m_axi_rdata);
  mp_m_axi_split_rdata->out_port[0](m_axi_split_rdata_out_0);
    mp_m_axi_split_rdata->add_mask(0,32,0);
  mp_m_axi_split_rresp = new xsc::xsc_split<22, 11>("m_axi_split_rresp");
  mp_m_axi_split_rresp->in_port(m_axi_rresp);
  mp_m_axi_split_rresp->out_port[0](m_axi_split_rresp_out_0);
    mp_m_axi_split_rresp->add_mask(0,2,0);
  mp_m_axi_split_rvalid = new xsc::xsc_split<11, 11>("m_axi_split_rvalid");
  mp_m_axi_split_rvalid->in_port(m_axi_rvalid);
  mp_m_axi_split_rvalid->out_port[0](m_axi_split_rvalid_out_0);
    mp_m_axi_split_rvalid->add_mask(0,1,0);
  mp_m_axi_concat_rready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_rready");
  mp_m_axi_concat_rready->in_port[0](m_axi_concat_rready_out_0);
  mp_m_axi_concat_rready->out_port(m_axi_rready);
    mp_m_axi_concat_rready->offset_port(0, 0);
  mp_m_axi_concat_awaddr->in_port[1](m_axi_concat_awaddr_out_1);
  mp_m_axi_concat_awaddr->offset_port(1, 40);
  mp_m_axi_concat_awprot->in_port[1](m_axi_concat_awprot_out_1);
  mp_m_axi_concat_awprot->offset_port(1, 3);
  mp_m_axi_concat_awvalid->in_port[1](m_axi_concat_awvalid_out_1);
  mp_m_axi_concat_awvalid->offset_port(1, 1);
  
  mp_m_axi_split_awready->out_port[1](m_axi_split_awready_out_1);
    mp_m_axi_split_awready->add_mask(1,2,1);
  mp_m_axi_concat_wdata->in_port[1](m_axi_concat_wdata_out_1);
  mp_m_axi_concat_wdata->offset_port(1, 32);
  mp_m_axi_concat_wstrb->in_port[1](m_axi_concat_wstrb_out_1);
  mp_m_axi_concat_wstrb->offset_port(1, 4);
  mp_m_axi_concat_wvalid->in_port[1](m_axi_concat_wvalid_out_1);
  mp_m_axi_concat_wvalid->offset_port(1, 1);
  
  mp_m_axi_split_wready->out_port[1](m_axi_split_wready_out_1);
    mp_m_axi_split_wready->add_mask(1,2,1);
  
  mp_m_axi_split_bresp->out_port[1](m_axi_split_bresp_out_1);
    mp_m_axi_split_bresp->add_mask(1,4,2);
  
  mp_m_axi_split_bvalid->out_port[1](m_axi_split_bvalid_out_1);
    mp_m_axi_split_bvalid->add_mask(1,2,1);
  mp_m_axi_concat_bready->in_port[1](m_axi_concat_bready_out_1);
  mp_m_axi_concat_bready->offset_port(1, 1);
  mp_m_axi_concat_araddr->in_port[1](m_axi_concat_araddr_out_1);
  mp_m_axi_concat_araddr->offset_port(1, 40);
  mp_m_axi_concat_arprot->in_port[1](m_axi_concat_arprot_out_1);
  mp_m_axi_concat_arprot->offset_port(1, 3);
  mp_m_axi_concat_arvalid->in_port[1](m_axi_concat_arvalid_out_1);
  mp_m_axi_concat_arvalid->offset_port(1, 1);
  
  mp_m_axi_split_arready->out_port[1](m_axi_split_arready_out_1);
    mp_m_axi_split_arready->add_mask(1,2,1);
  
  mp_m_axi_split_rdata->out_port[1](m_axi_split_rdata_out_1);
    mp_m_axi_split_rdata->add_mask(1,64,32);
  
  mp_m_axi_split_rresp->out_port[1](m_axi_split_rresp_out_1);
    mp_m_axi_split_rresp->add_mask(1,4,2);
  
  mp_m_axi_split_rvalid->out_port[1](m_axi_split_rvalid_out_1);
    mp_m_axi_split_rvalid->add_mask(1,2,1);
  mp_m_axi_concat_rready->in_port[1](m_axi_concat_rready_out_1);
  mp_m_axi_concat_rready->offset_port(1, 1);
  mp_m_axi_concat_awaddr->in_port[2](m_axi_concat_awaddr_out_2);
  mp_m_axi_concat_awaddr->offset_port(2, 80);
  mp_m_axi_concat_awprot->in_port[2](m_axi_concat_awprot_out_2);
  mp_m_axi_concat_awprot->offset_port(2, 6);
  mp_m_axi_concat_awvalid->in_port[2](m_axi_concat_awvalid_out_2);
  mp_m_axi_concat_awvalid->offset_port(2, 2);
  
  mp_m_axi_split_awready->out_port[2](m_axi_split_awready_out_2);
    mp_m_axi_split_awready->add_mask(2,3,2);
  mp_m_axi_concat_wdata->in_port[2](m_axi_concat_wdata_out_2);
  mp_m_axi_concat_wdata->offset_port(2, 64);
  mp_m_axi_concat_wstrb->in_port[2](m_axi_concat_wstrb_out_2);
  mp_m_axi_concat_wstrb->offset_port(2, 8);
  mp_m_axi_concat_wvalid->in_port[2](m_axi_concat_wvalid_out_2);
  mp_m_axi_concat_wvalid->offset_port(2, 2);
  
  mp_m_axi_split_wready->out_port[2](m_axi_split_wready_out_2);
    mp_m_axi_split_wready->add_mask(2,3,2);
  
  mp_m_axi_split_bresp->out_port[2](m_axi_split_bresp_out_2);
    mp_m_axi_split_bresp->add_mask(2,6,4);
  
  mp_m_axi_split_bvalid->out_port[2](m_axi_split_bvalid_out_2);
    mp_m_axi_split_bvalid->add_mask(2,3,2);
  mp_m_axi_concat_bready->in_port[2](m_axi_concat_bready_out_2);
  mp_m_axi_concat_bready->offset_port(2, 2);
  mp_m_axi_concat_araddr->in_port[2](m_axi_concat_araddr_out_2);
  mp_m_axi_concat_araddr->offset_port(2, 80);
  mp_m_axi_concat_arprot->in_port[2](m_axi_concat_arprot_out_2);
  mp_m_axi_concat_arprot->offset_port(2, 6);
  mp_m_axi_concat_arvalid->in_port[2](m_axi_concat_arvalid_out_2);
  mp_m_axi_concat_arvalid->offset_port(2, 2);
  
  mp_m_axi_split_arready->out_port[2](m_axi_split_arready_out_2);
    mp_m_axi_split_arready->add_mask(2,3,2);
  
  mp_m_axi_split_rdata->out_port[2](m_axi_split_rdata_out_2);
    mp_m_axi_split_rdata->add_mask(2,96,64);
  
  mp_m_axi_split_rresp->out_port[2](m_axi_split_rresp_out_2);
    mp_m_axi_split_rresp->add_mask(2,6,4);
  
  mp_m_axi_split_rvalid->out_port[2](m_axi_split_rvalid_out_2);
    mp_m_axi_split_rvalid->add_mask(2,3,2);
  mp_m_axi_concat_rready->in_port[2](m_axi_concat_rready_out_2);
  mp_m_axi_concat_rready->offset_port(2, 2);
  mp_m_axi_concat_awaddr->in_port[3](m_axi_concat_awaddr_out_3);
  mp_m_axi_concat_awaddr->offset_port(3, 120);
  mp_m_axi_concat_awprot->in_port[3](m_axi_concat_awprot_out_3);
  mp_m_axi_concat_awprot->offset_port(3, 9);
  mp_m_axi_concat_awvalid->in_port[3](m_axi_concat_awvalid_out_3);
  mp_m_axi_concat_awvalid->offset_port(3, 3);
  
  mp_m_axi_split_awready->out_port[3](m_axi_split_awready_out_3);
    mp_m_axi_split_awready->add_mask(3,4,3);
  mp_m_axi_concat_wdata->in_port[3](m_axi_concat_wdata_out_3);
  mp_m_axi_concat_wdata->offset_port(3, 96);
  mp_m_axi_concat_wstrb->in_port[3](m_axi_concat_wstrb_out_3);
  mp_m_axi_concat_wstrb->offset_port(3, 12);
  mp_m_axi_concat_wvalid->in_port[3](m_axi_concat_wvalid_out_3);
  mp_m_axi_concat_wvalid->offset_port(3, 3);
  
  mp_m_axi_split_wready->out_port[3](m_axi_split_wready_out_3);
    mp_m_axi_split_wready->add_mask(3,4,3);
  
  mp_m_axi_split_bresp->out_port[3](m_axi_split_bresp_out_3);
    mp_m_axi_split_bresp->add_mask(3,8,6);
  
  mp_m_axi_split_bvalid->out_port[3](m_axi_split_bvalid_out_3);
    mp_m_axi_split_bvalid->add_mask(3,4,3);
  mp_m_axi_concat_bready->in_port[3](m_axi_concat_bready_out_3);
  mp_m_axi_concat_bready->offset_port(3, 3);
  mp_m_axi_concat_araddr->in_port[3](m_axi_concat_araddr_out_3);
  mp_m_axi_concat_araddr->offset_port(3, 120);
  mp_m_axi_concat_arprot->in_port[3](m_axi_concat_arprot_out_3);
  mp_m_axi_concat_arprot->offset_port(3, 9);
  mp_m_axi_concat_arvalid->in_port[3](m_axi_concat_arvalid_out_3);
  mp_m_axi_concat_arvalid->offset_port(3, 3);
  
  mp_m_axi_split_arready->out_port[3](m_axi_split_arready_out_3);
    mp_m_axi_split_arready->add_mask(3,4,3);
  
  mp_m_axi_split_rdata->out_port[3](m_axi_split_rdata_out_3);
    mp_m_axi_split_rdata->add_mask(3,128,96);
  
  mp_m_axi_split_rresp->out_port[3](m_axi_split_rresp_out_3);
    mp_m_axi_split_rresp->add_mask(3,8,6);
  
  mp_m_axi_split_rvalid->out_port[3](m_axi_split_rvalid_out_3);
    mp_m_axi_split_rvalid->add_mask(3,4,3);
  mp_m_axi_concat_rready->in_port[3](m_axi_concat_rready_out_3);
  mp_m_axi_concat_rready->offset_port(3, 3);
  mp_m_axi_concat_awaddr->in_port[4](m_axi_concat_awaddr_out_4);
  mp_m_axi_concat_awaddr->offset_port(4, 160);
  mp_m_axi_concat_awprot->in_port[4](m_axi_concat_awprot_out_4);
  mp_m_axi_concat_awprot->offset_port(4, 12);
  mp_m_axi_concat_awvalid->in_port[4](m_axi_concat_awvalid_out_4);
  mp_m_axi_concat_awvalid->offset_port(4, 4);
  
  mp_m_axi_split_awready->out_port[4](m_axi_split_awready_out_4);
    mp_m_axi_split_awready->add_mask(4,5,4);
  mp_m_axi_concat_wdata->in_port[4](m_axi_concat_wdata_out_4);
  mp_m_axi_concat_wdata->offset_port(4, 128);
  mp_m_axi_concat_wstrb->in_port[4](m_axi_concat_wstrb_out_4);
  mp_m_axi_concat_wstrb->offset_port(4, 16);
  mp_m_axi_concat_wvalid->in_port[4](m_axi_concat_wvalid_out_4);
  mp_m_axi_concat_wvalid->offset_port(4, 4);
  
  mp_m_axi_split_wready->out_port[4](m_axi_split_wready_out_4);
    mp_m_axi_split_wready->add_mask(4,5,4);
  
  mp_m_axi_split_bresp->out_port[4](m_axi_split_bresp_out_4);
    mp_m_axi_split_bresp->add_mask(4,10,8);
  
  mp_m_axi_split_bvalid->out_port[4](m_axi_split_bvalid_out_4);
    mp_m_axi_split_bvalid->add_mask(4,5,4);
  mp_m_axi_concat_bready->in_port[4](m_axi_concat_bready_out_4);
  mp_m_axi_concat_bready->offset_port(4, 4);
  mp_m_axi_concat_araddr->in_port[4](m_axi_concat_araddr_out_4);
  mp_m_axi_concat_araddr->offset_port(4, 160);
  mp_m_axi_concat_arprot->in_port[4](m_axi_concat_arprot_out_4);
  mp_m_axi_concat_arprot->offset_port(4, 12);
  mp_m_axi_concat_arvalid->in_port[4](m_axi_concat_arvalid_out_4);
  mp_m_axi_concat_arvalid->offset_port(4, 4);
  
  mp_m_axi_split_arready->out_port[4](m_axi_split_arready_out_4);
    mp_m_axi_split_arready->add_mask(4,5,4);
  
  mp_m_axi_split_rdata->out_port[4](m_axi_split_rdata_out_4);
    mp_m_axi_split_rdata->add_mask(4,160,128);
  
  mp_m_axi_split_rresp->out_port[4](m_axi_split_rresp_out_4);
    mp_m_axi_split_rresp->add_mask(4,10,8);
  
  mp_m_axi_split_rvalid->out_port[4](m_axi_split_rvalid_out_4);
    mp_m_axi_split_rvalid->add_mask(4,5,4);
  mp_m_axi_concat_rready->in_port[4](m_axi_concat_rready_out_4);
  mp_m_axi_concat_rready->offset_port(4, 4);
  mp_m_axi_concat_awaddr->in_port[5](m_axi_concat_awaddr_out_5);
  mp_m_axi_concat_awaddr->offset_port(5, 200);
  mp_m_axi_concat_awprot->in_port[5](m_axi_concat_awprot_out_5);
  mp_m_axi_concat_awprot->offset_port(5, 15);
  mp_m_axi_concat_awvalid->in_port[5](m_axi_concat_awvalid_out_5);
  mp_m_axi_concat_awvalid->offset_port(5, 5);
  
  mp_m_axi_split_awready->out_port[5](m_axi_split_awready_out_5);
    mp_m_axi_split_awready->add_mask(5,6,5);
  mp_m_axi_concat_wdata->in_port[5](m_axi_concat_wdata_out_5);
  mp_m_axi_concat_wdata->offset_port(5, 160);
  mp_m_axi_concat_wstrb->in_port[5](m_axi_concat_wstrb_out_5);
  mp_m_axi_concat_wstrb->offset_port(5, 20);
  mp_m_axi_concat_wvalid->in_port[5](m_axi_concat_wvalid_out_5);
  mp_m_axi_concat_wvalid->offset_port(5, 5);
  
  mp_m_axi_split_wready->out_port[5](m_axi_split_wready_out_5);
    mp_m_axi_split_wready->add_mask(5,6,5);
  
  mp_m_axi_split_bresp->out_port[5](m_axi_split_bresp_out_5);
    mp_m_axi_split_bresp->add_mask(5,12,10);
  
  mp_m_axi_split_bvalid->out_port[5](m_axi_split_bvalid_out_5);
    mp_m_axi_split_bvalid->add_mask(5,6,5);
  mp_m_axi_concat_bready->in_port[5](m_axi_concat_bready_out_5);
  mp_m_axi_concat_bready->offset_port(5, 5);
  mp_m_axi_concat_araddr->in_port[5](m_axi_concat_araddr_out_5);
  mp_m_axi_concat_araddr->offset_port(5, 200);
  mp_m_axi_concat_arprot->in_port[5](m_axi_concat_arprot_out_5);
  mp_m_axi_concat_arprot->offset_port(5, 15);
  mp_m_axi_concat_arvalid->in_port[5](m_axi_concat_arvalid_out_5);
  mp_m_axi_concat_arvalid->offset_port(5, 5);
  
  mp_m_axi_split_arready->out_port[5](m_axi_split_arready_out_5);
    mp_m_axi_split_arready->add_mask(5,6,5);
  
  mp_m_axi_split_rdata->out_port[5](m_axi_split_rdata_out_5);
    mp_m_axi_split_rdata->add_mask(5,192,160);
  
  mp_m_axi_split_rresp->out_port[5](m_axi_split_rresp_out_5);
    mp_m_axi_split_rresp->add_mask(5,12,10);
  
  mp_m_axi_split_rvalid->out_port[5](m_axi_split_rvalid_out_5);
    mp_m_axi_split_rvalid->add_mask(5,6,5);
  mp_m_axi_concat_rready->in_port[5](m_axi_concat_rready_out_5);
  mp_m_axi_concat_rready->offset_port(5, 5);
  mp_m_axi_concat_awaddr->in_port[6](m_axi_concat_awaddr_out_6);
  mp_m_axi_concat_awaddr->offset_port(6, 240);
  mp_m_axi_concat_awprot->in_port[6](m_axi_concat_awprot_out_6);
  mp_m_axi_concat_awprot->offset_port(6, 18);
  mp_m_axi_concat_awvalid->in_port[6](m_axi_concat_awvalid_out_6);
  mp_m_axi_concat_awvalid->offset_port(6, 6);
  
  mp_m_axi_split_awready->out_port[6](m_axi_split_awready_out_6);
    mp_m_axi_split_awready->add_mask(6,7,6);
  mp_m_axi_concat_wdata->in_port[6](m_axi_concat_wdata_out_6);
  mp_m_axi_concat_wdata->offset_port(6, 192);
  mp_m_axi_concat_wstrb->in_port[6](m_axi_concat_wstrb_out_6);
  mp_m_axi_concat_wstrb->offset_port(6, 24);
  mp_m_axi_concat_wvalid->in_port[6](m_axi_concat_wvalid_out_6);
  mp_m_axi_concat_wvalid->offset_port(6, 6);
  
  mp_m_axi_split_wready->out_port[6](m_axi_split_wready_out_6);
    mp_m_axi_split_wready->add_mask(6,7,6);
  
  mp_m_axi_split_bresp->out_port[6](m_axi_split_bresp_out_6);
    mp_m_axi_split_bresp->add_mask(6,14,12);
  
  mp_m_axi_split_bvalid->out_port[6](m_axi_split_bvalid_out_6);
    mp_m_axi_split_bvalid->add_mask(6,7,6);
  mp_m_axi_concat_bready->in_port[6](m_axi_concat_bready_out_6);
  mp_m_axi_concat_bready->offset_port(6, 6);
  mp_m_axi_concat_araddr->in_port[6](m_axi_concat_araddr_out_6);
  mp_m_axi_concat_araddr->offset_port(6, 240);
  mp_m_axi_concat_arprot->in_port[6](m_axi_concat_arprot_out_6);
  mp_m_axi_concat_arprot->offset_port(6, 18);
  mp_m_axi_concat_arvalid->in_port[6](m_axi_concat_arvalid_out_6);
  mp_m_axi_concat_arvalid->offset_port(6, 6);
  
  mp_m_axi_split_arready->out_port[6](m_axi_split_arready_out_6);
    mp_m_axi_split_arready->add_mask(6,7,6);
  
  mp_m_axi_split_rdata->out_port[6](m_axi_split_rdata_out_6);
    mp_m_axi_split_rdata->add_mask(6,224,192);
  
  mp_m_axi_split_rresp->out_port[6](m_axi_split_rresp_out_6);
    mp_m_axi_split_rresp->add_mask(6,14,12);
  
  mp_m_axi_split_rvalid->out_port[6](m_axi_split_rvalid_out_6);
    mp_m_axi_split_rvalid->add_mask(6,7,6);
  mp_m_axi_concat_rready->in_port[6](m_axi_concat_rready_out_6);
  mp_m_axi_concat_rready->offset_port(6, 6);
  mp_m_axi_concat_awaddr->in_port[7](m_axi_concat_awaddr_out_7);
  mp_m_axi_concat_awaddr->offset_port(7, 280);
  mp_m_axi_concat_awprot->in_port[7](m_axi_concat_awprot_out_7);
  mp_m_axi_concat_awprot->offset_port(7, 21);
  mp_m_axi_concat_awvalid->in_port[7](m_axi_concat_awvalid_out_7);
  mp_m_axi_concat_awvalid->offset_port(7, 7);
  
  mp_m_axi_split_awready->out_port[7](m_axi_split_awready_out_7);
    mp_m_axi_split_awready->add_mask(7,8,7);
  mp_m_axi_concat_wdata->in_port[7](m_axi_concat_wdata_out_7);
  mp_m_axi_concat_wdata->offset_port(7, 224);
  mp_m_axi_concat_wstrb->in_port[7](m_axi_concat_wstrb_out_7);
  mp_m_axi_concat_wstrb->offset_port(7, 28);
  mp_m_axi_concat_wvalid->in_port[7](m_axi_concat_wvalid_out_7);
  mp_m_axi_concat_wvalid->offset_port(7, 7);
  
  mp_m_axi_split_wready->out_port[7](m_axi_split_wready_out_7);
    mp_m_axi_split_wready->add_mask(7,8,7);
  
  mp_m_axi_split_bresp->out_port[7](m_axi_split_bresp_out_7);
    mp_m_axi_split_bresp->add_mask(7,16,14);
  
  mp_m_axi_split_bvalid->out_port[7](m_axi_split_bvalid_out_7);
    mp_m_axi_split_bvalid->add_mask(7,8,7);
  mp_m_axi_concat_bready->in_port[7](m_axi_concat_bready_out_7);
  mp_m_axi_concat_bready->offset_port(7, 7);
  mp_m_axi_concat_araddr->in_port[7](m_axi_concat_araddr_out_7);
  mp_m_axi_concat_araddr->offset_port(7, 280);
  mp_m_axi_concat_arprot->in_port[7](m_axi_concat_arprot_out_7);
  mp_m_axi_concat_arprot->offset_port(7, 21);
  mp_m_axi_concat_arvalid->in_port[7](m_axi_concat_arvalid_out_7);
  mp_m_axi_concat_arvalid->offset_port(7, 7);
  
  mp_m_axi_split_arready->out_port[7](m_axi_split_arready_out_7);
    mp_m_axi_split_arready->add_mask(7,8,7);
  
  mp_m_axi_split_rdata->out_port[7](m_axi_split_rdata_out_7);
    mp_m_axi_split_rdata->add_mask(7,256,224);
  
  mp_m_axi_split_rresp->out_port[7](m_axi_split_rresp_out_7);
    mp_m_axi_split_rresp->add_mask(7,16,14);
  
  mp_m_axi_split_rvalid->out_port[7](m_axi_split_rvalid_out_7);
    mp_m_axi_split_rvalid->add_mask(7,8,7);
  mp_m_axi_concat_rready->in_port[7](m_axi_concat_rready_out_7);
  mp_m_axi_concat_rready->offset_port(7, 7);
  mp_m_axi_concat_awaddr->in_port[8](m_axi_concat_awaddr_out_8);
  mp_m_axi_concat_awaddr->offset_port(8, 320);
  mp_m_axi_concat_awprot->in_port[8](m_axi_concat_awprot_out_8);
  mp_m_axi_concat_awprot->offset_port(8, 24);
  mp_m_axi_concat_awvalid->in_port[8](m_axi_concat_awvalid_out_8);
  mp_m_axi_concat_awvalid->offset_port(8, 8);
  
  mp_m_axi_split_awready->out_port[8](m_axi_split_awready_out_8);
    mp_m_axi_split_awready->add_mask(8,9,8);
  mp_m_axi_concat_wdata->in_port[8](m_axi_concat_wdata_out_8);
  mp_m_axi_concat_wdata->offset_port(8, 256);
  mp_m_axi_concat_wstrb->in_port[8](m_axi_concat_wstrb_out_8);
  mp_m_axi_concat_wstrb->offset_port(8, 32);
  mp_m_axi_concat_wvalid->in_port[8](m_axi_concat_wvalid_out_8);
  mp_m_axi_concat_wvalid->offset_port(8, 8);
  
  mp_m_axi_split_wready->out_port[8](m_axi_split_wready_out_8);
    mp_m_axi_split_wready->add_mask(8,9,8);
  
  mp_m_axi_split_bresp->out_port[8](m_axi_split_bresp_out_8);
    mp_m_axi_split_bresp->add_mask(8,18,16);
  
  mp_m_axi_split_bvalid->out_port[8](m_axi_split_bvalid_out_8);
    mp_m_axi_split_bvalid->add_mask(8,9,8);
  mp_m_axi_concat_bready->in_port[8](m_axi_concat_bready_out_8);
  mp_m_axi_concat_bready->offset_port(8, 8);
  mp_m_axi_concat_araddr->in_port[8](m_axi_concat_araddr_out_8);
  mp_m_axi_concat_araddr->offset_port(8, 320);
  mp_m_axi_concat_arprot->in_port[8](m_axi_concat_arprot_out_8);
  mp_m_axi_concat_arprot->offset_port(8, 24);
  mp_m_axi_concat_arvalid->in_port[8](m_axi_concat_arvalid_out_8);
  mp_m_axi_concat_arvalid->offset_port(8, 8);
  
  mp_m_axi_split_arready->out_port[8](m_axi_split_arready_out_8);
    mp_m_axi_split_arready->add_mask(8,9,8);
  
  mp_m_axi_split_rdata->out_port[8](m_axi_split_rdata_out_8);
    mp_m_axi_split_rdata->add_mask(8,288,256);
  
  mp_m_axi_split_rresp->out_port[8](m_axi_split_rresp_out_8);
    mp_m_axi_split_rresp->add_mask(8,18,16);
  
  mp_m_axi_split_rvalid->out_port[8](m_axi_split_rvalid_out_8);
    mp_m_axi_split_rvalid->add_mask(8,9,8);
  mp_m_axi_concat_rready->in_port[8](m_axi_concat_rready_out_8);
  mp_m_axi_concat_rready->offset_port(8, 8);
  mp_m_axi_concat_awaddr->in_port[9](m_axi_concat_awaddr_out_9);
  mp_m_axi_concat_awaddr->offset_port(9, 360);
  mp_m_axi_concat_awprot->in_port[9](m_axi_concat_awprot_out_9);
  mp_m_axi_concat_awprot->offset_port(9, 27);
  mp_m_axi_concat_awvalid->in_port[9](m_axi_concat_awvalid_out_9);
  mp_m_axi_concat_awvalid->offset_port(9, 9);
  
  mp_m_axi_split_awready->out_port[9](m_axi_split_awready_out_9);
    mp_m_axi_split_awready->add_mask(9,10,9);
  mp_m_axi_concat_wdata->in_port[9](m_axi_concat_wdata_out_9);
  mp_m_axi_concat_wdata->offset_port(9, 288);
  mp_m_axi_concat_wstrb->in_port[9](m_axi_concat_wstrb_out_9);
  mp_m_axi_concat_wstrb->offset_port(9, 36);
  mp_m_axi_concat_wvalid->in_port[9](m_axi_concat_wvalid_out_9);
  mp_m_axi_concat_wvalid->offset_port(9, 9);
  
  mp_m_axi_split_wready->out_port[9](m_axi_split_wready_out_9);
    mp_m_axi_split_wready->add_mask(9,10,9);
  
  mp_m_axi_split_bresp->out_port[9](m_axi_split_bresp_out_9);
    mp_m_axi_split_bresp->add_mask(9,20,18);
  
  mp_m_axi_split_bvalid->out_port[9](m_axi_split_bvalid_out_9);
    mp_m_axi_split_bvalid->add_mask(9,10,9);
  mp_m_axi_concat_bready->in_port[9](m_axi_concat_bready_out_9);
  mp_m_axi_concat_bready->offset_port(9, 9);
  mp_m_axi_concat_araddr->in_port[9](m_axi_concat_araddr_out_9);
  mp_m_axi_concat_araddr->offset_port(9, 360);
  mp_m_axi_concat_arprot->in_port[9](m_axi_concat_arprot_out_9);
  mp_m_axi_concat_arprot->offset_port(9, 27);
  mp_m_axi_concat_arvalid->in_port[9](m_axi_concat_arvalid_out_9);
  mp_m_axi_concat_arvalid->offset_port(9, 9);
  
  mp_m_axi_split_arready->out_port[9](m_axi_split_arready_out_9);
    mp_m_axi_split_arready->add_mask(9,10,9);
  
  mp_m_axi_split_rdata->out_port[9](m_axi_split_rdata_out_9);
    mp_m_axi_split_rdata->add_mask(9,320,288);
  
  mp_m_axi_split_rresp->out_port[9](m_axi_split_rresp_out_9);
    mp_m_axi_split_rresp->add_mask(9,20,18);
  
  mp_m_axi_split_rvalid->out_port[9](m_axi_split_rvalid_out_9);
    mp_m_axi_split_rvalid->add_mask(9,10,9);
  mp_m_axi_concat_rready->in_port[9](m_axi_concat_rready_out_9);
  mp_m_axi_concat_rready->offset_port(9, 9);
  mp_m_axi_concat_awaddr->in_port[10](m_axi_concat_awaddr_out_10);
  mp_m_axi_concat_awaddr->offset_port(10, 400);
  mp_m_axi_concat_awprot->in_port[10](m_axi_concat_awprot_out_10);
  mp_m_axi_concat_awprot->offset_port(10, 30);
  mp_m_axi_concat_awvalid->in_port[10](m_axi_concat_awvalid_out_10);
  mp_m_axi_concat_awvalid->offset_port(10, 10);
  
  mp_m_axi_split_awready->out_port[10](m_axi_split_awready_out_10);
    mp_m_axi_split_awready->add_mask(10,11,10);
  mp_m_axi_concat_wdata->in_port[10](m_axi_concat_wdata_out_10);
  mp_m_axi_concat_wdata->offset_port(10, 320);
  mp_m_axi_concat_wstrb->in_port[10](m_axi_concat_wstrb_out_10);
  mp_m_axi_concat_wstrb->offset_port(10, 40);
  mp_m_axi_concat_wvalid->in_port[10](m_axi_concat_wvalid_out_10);
  mp_m_axi_concat_wvalid->offset_port(10, 10);
  
  mp_m_axi_split_wready->out_port[10](m_axi_split_wready_out_10);
    mp_m_axi_split_wready->add_mask(10,11,10);
  
  mp_m_axi_split_bresp->out_port[10](m_axi_split_bresp_out_10);
    mp_m_axi_split_bresp->add_mask(10,22,20);
  
  mp_m_axi_split_bvalid->out_port[10](m_axi_split_bvalid_out_10);
    mp_m_axi_split_bvalid->add_mask(10,11,10);
  mp_m_axi_concat_bready->in_port[10](m_axi_concat_bready_out_10);
  mp_m_axi_concat_bready->offset_port(10, 10);
  mp_m_axi_concat_araddr->in_port[10](m_axi_concat_araddr_out_10);
  mp_m_axi_concat_araddr->offset_port(10, 400);
  mp_m_axi_concat_arprot->in_port[10](m_axi_concat_arprot_out_10);
  mp_m_axi_concat_arprot->offset_port(10, 30);
  mp_m_axi_concat_arvalid->in_port[10](m_axi_concat_arvalid_out_10);
  mp_m_axi_concat_arvalid->offset_port(10, 10);
  
  mp_m_axi_split_arready->out_port[10](m_axi_split_arready_out_10);
    mp_m_axi_split_arready->add_mask(10,11,10);
  
  mp_m_axi_split_rdata->out_port[10](m_axi_split_rdata_out_10);
    mp_m_axi_split_rdata->add_mask(10,352,320);
  
  mp_m_axi_split_rresp->out_port[10](m_axi_split_rresp_out_10);
    mp_m_axi_split_rresp->add_mask(10,22,20);
  
  mp_m_axi_split_rvalid->out_port[10](m_axi_split_rvalid_out_10);
    mp_m_axi_split_rvalid->add_mask(10,11,10);
  mp_m_axi_concat_rready->in_port[10](m_axi_concat_rready_out_10);
  mp_m_axi_concat_rready->offset_port(10, 10);

  // initialize socket stubs

}

void design_1_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,40,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S00_AXI_transactor->AWPROT(s_axi_awprot);
    mp_s_axi_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awvalid_converter");
    mp_s_axi_awvalid_converter->vector_in(s_axi_awvalid);
    mp_s_axi_awvalid_converter->scalar_out(m_s_axi_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_signal);
    mp_s_axi_awready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_awready_converter");
    mp_s_axi_awready_converter->scalar_in(m_s_axi_awready_converter_signal);
    mp_s_axi_awready_converter->vector_out(s_axi_awready);
    mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(s_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_s_axi_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_wvalid_converter");
    mp_s_axi_wvalid_converter->vector_in(s_axi_wvalid);
    mp_s_axi_wvalid_converter->scalar_out(m_s_axi_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_signal);
    mp_s_axi_wready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_wready_converter");
    mp_s_axi_wready_converter->scalar_in(m_s_axi_wready_converter_signal);
    mp_s_axi_wready_converter->vector_out(s_axi_wready);
    mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_signal);
    mp_S00_AXI_transactor->BRESP(s_axi_bresp);
    mp_s_axi_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_bvalid_converter");
    mp_s_axi_bvalid_converter->scalar_in(m_s_axi_bvalid_converter_signal);
    mp_s_axi_bvalid_converter->vector_out(s_axi_bvalid);
    mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_signal);
    mp_s_axi_bready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_bready_converter");
    mp_s_axi_bready_converter->vector_in(s_axi_bready);
    mp_s_axi_bready_converter->scalar_out(m_s_axi_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_signal);
    mp_S00_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S00_AXI_transactor->ARPROT(s_axi_arprot);
    mp_s_axi_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arvalid_converter");
    mp_s_axi_arvalid_converter->vector_in(s_axi_arvalid);
    mp_s_axi_arvalid_converter->scalar_out(m_s_axi_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_signal);
    mp_s_axi_arready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_arready_converter");
    mp_s_axi_arready_converter->scalar_in(m_s_axi_arready_converter_signal);
    mp_s_axi_arready_converter->vector_out(s_axi_arready);
    mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_signal);
    mp_S00_AXI_transactor->RDATA(s_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s_axi_rresp);
    mp_s_axi_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_rvalid_converter");
    mp_s_axi_rvalid_converter->scalar_in(m_s_axi_rvalid_converter_signal);
    mp_s_axi_rvalid_converter->vector_out(s_axi_rvalid);
    mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_signal);
    mp_s_axi_rready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_rready_converter");
    mp_s_axi_rready_converter->vector_in(s_axi_rready);
    mp_s_axi_rready_converter->scalar_out(m_s_axi_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_m_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_0");
    mp_m_axi_awaddr_converter_0->vector_in(m_m_axi_awaddr_converter_0_signal);
    mp_m_axi_awaddr_converter_0->vector_out(m_axi_concat_awaddr_out_0);
    mp_M00_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_0_signal);
    mp_m_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_0");
    mp_m_axi_awprot_converter_0->vector_in(m_m_axi_awprot_converter_0_signal);
    mp_m_axi_awprot_converter_0->vector_out(m_axi_concat_awprot_out_0);
    mp_M00_AXI_transactor->AWPROT(m_m_axi_awprot_converter_0_signal);
    mp_m_axi_awvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_0");
    mp_m_axi_awvalid_converter_0->scalar_in(m_m_axi_awvalid_converter_0_signal);
    mp_m_axi_awvalid_converter_0->vector_out(m_axi_concat_awvalid_out_0);
    mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_0_signal);
    mp_m_axi_awready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_0");
    mp_m_axi_awready_converter_0->vector_in(m_axi_split_awready_out_0);
    mp_m_axi_awready_converter_0->scalar_out(m_m_axi_awready_converter_0_signal);
    mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_0_signal);
    mp_m_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_0");
    mp_m_axi_wdata_converter_0->vector_in(m_m_axi_wdata_converter_0_signal);
    mp_m_axi_wdata_converter_0->vector_out(m_axi_concat_wdata_out_0);
    mp_M00_AXI_transactor->WDATA(m_m_axi_wdata_converter_0_signal);
    mp_m_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_0");
    mp_m_axi_wstrb_converter_0->vector_in(m_m_axi_wstrb_converter_0_signal);
    mp_m_axi_wstrb_converter_0->vector_out(m_axi_concat_wstrb_out_0);
    mp_M00_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_0_signal);
    mp_m_axi_wvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_0");
    mp_m_axi_wvalid_converter_0->scalar_in(m_m_axi_wvalid_converter_0_signal);
    mp_m_axi_wvalid_converter_0->vector_out(m_axi_concat_wvalid_out_0);
    mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_0_signal);
    mp_m_axi_wready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_0");
    mp_m_axi_wready_converter_0->vector_in(m_axi_split_wready_out_0);
    mp_m_axi_wready_converter_0->scalar_out(m_m_axi_wready_converter_0_signal);
    mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_0_signal);
    mp_m_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_0");
    mp_m_axi_bresp_converter_0->vector_in(m_axi_split_bresp_out_0);
    mp_m_axi_bresp_converter_0->vector_out(m_m_axi_bresp_converter_0_signal);
    mp_M00_AXI_transactor->BRESP(m_m_axi_bresp_converter_0_signal);
    mp_m_axi_bvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_0");
    mp_m_axi_bvalid_converter_0->vector_in(m_axi_split_bvalid_out_0);
    mp_m_axi_bvalid_converter_0->scalar_out(m_m_axi_bvalid_converter_0_signal);
    mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_0_signal);
    mp_m_axi_bready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_0");
    mp_m_axi_bready_converter_0->scalar_in(m_m_axi_bready_converter_0_signal);
    mp_m_axi_bready_converter_0->vector_out(m_axi_concat_bready_out_0);
    mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_0_signal);
    mp_m_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_0");
    mp_m_axi_araddr_converter_0->vector_in(m_m_axi_araddr_converter_0_signal);
    mp_m_axi_araddr_converter_0->vector_out(m_axi_concat_araddr_out_0);
    mp_M00_AXI_transactor->ARADDR(m_m_axi_araddr_converter_0_signal);
    mp_m_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_0");
    mp_m_axi_arprot_converter_0->vector_in(m_m_axi_arprot_converter_0_signal);
    mp_m_axi_arprot_converter_0->vector_out(m_axi_concat_arprot_out_0);
    mp_M00_AXI_transactor->ARPROT(m_m_axi_arprot_converter_0_signal);
    mp_m_axi_arvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_0");
    mp_m_axi_arvalid_converter_0->scalar_in(m_m_axi_arvalid_converter_0_signal);
    mp_m_axi_arvalid_converter_0->vector_out(m_axi_concat_arvalid_out_0);
    mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_0_signal);
    mp_m_axi_arready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_0");
    mp_m_axi_arready_converter_0->vector_in(m_axi_split_arready_out_0);
    mp_m_axi_arready_converter_0->scalar_out(m_m_axi_arready_converter_0_signal);
    mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_0_signal);
    mp_m_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_0");
    mp_m_axi_rdata_converter_0->vector_in(m_axi_split_rdata_out_0);
    mp_m_axi_rdata_converter_0->vector_out(m_m_axi_rdata_converter_0_signal);
    mp_M00_AXI_transactor->RDATA(m_m_axi_rdata_converter_0_signal);
    mp_m_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_0");
    mp_m_axi_rresp_converter_0->vector_in(m_axi_split_rresp_out_0);
    mp_m_axi_rresp_converter_0->vector_out(m_m_axi_rresp_converter_0_signal);
    mp_M00_AXI_transactor->RRESP(m_m_axi_rresp_converter_0_signal);
    mp_m_axi_rvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_0");
    mp_m_axi_rvalid_converter_0->vector_in(m_axi_split_rvalid_out_0);
    mp_m_axi_rvalid_converter_0->scalar_out(m_m_axi_rvalid_converter_0_signal);
    mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_0_signal);
    mp_m_axi_rready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_0");
    mp_m_axi_rready_converter_0->scalar_in(m_m_axi_rready_converter_0_signal);
    mp_m_axi_rready_converter_0->vector_out(m_axi_concat_rready_out_0);
    mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_0_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_m_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_1");
    mp_m_axi_awaddr_converter_1->vector_in(m_m_axi_awaddr_converter_1_signal);
    mp_m_axi_awaddr_converter_1->vector_out(m_axi_concat_awaddr_out_1);
    mp_M01_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_1_signal);
    mp_m_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_1");
    mp_m_axi_awprot_converter_1->vector_in(m_m_axi_awprot_converter_1_signal);
    mp_m_axi_awprot_converter_1->vector_out(m_axi_concat_awprot_out_1);
    mp_M01_AXI_transactor->AWPROT(m_m_axi_awprot_converter_1_signal);
    mp_m_axi_awvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_1");
    mp_m_axi_awvalid_converter_1->scalar_in(m_m_axi_awvalid_converter_1_signal);
    mp_m_axi_awvalid_converter_1->vector_out(m_axi_concat_awvalid_out_1);
    mp_M01_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_1_signal);
    mp_m_axi_awready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_1");
    mp_m_axi_awready_converter_1->vector_in(m_axi_split_awready_out_1);
    mp_m_axi_awready_converter_1->scalar_out(m_m_axi_awready_converter_1_signal);
    mp_M01_AXI_transactor->AWREADY(m_m_axi_awready_converter_1_signal);
    mp_m_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_1");
    mp_m_axi_wdata_converter_1->vector_in(m_m_axi_wdata_converter_1_signal);
    mp_m_axi_wdata_converter_1->vector_out(m_axi_concat_wdata_out_1);
    mp_M01_AXI_transactor->WDATA(m_m_axi_wdata_converter_1_signal);
    mp_m_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_1");
    mp_m_axi_wstrb_converter_1->vector_in(m_m_axi_wstrb_converter_1_signal);
    mp_m_axi_wstrb_converter_1->vector_out(m_axi_concat_wstrb_out_1);
    mp_M01_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_1_signal);
    mp_m_axi_wvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_1");
    mp_m_axi_wvalid_converter_1->scalar_in(m_m_axi_wvalid_converter_1_signal);
    mp_m_axi_wvalid_converter_1->vector_out(m_axi_concat_wvalid_out_1);
    mp_M01_AXI_transactor->WVALID(m_m_axi_wvalid_converter_1_signal);
    mp_m_axi_wready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_1");
    mp_m_axi_wready_converter_1->vector_in(m_axi_split_wready_out_1);
    mp_m_axi_wready_converter_1->scalar_out(m_m_axi_wready_converter_1_signal);
    mp_M01_AXI_transactor->WREADY(m_m_axi_wready_converter_1_signal);
    mp_m_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_1");
    mp_m_axi_bresp_converter_1->vector_in(m_axi_split_bresp_out_1);
    mp_m_axi_bresp_converter_1->vector_out(m_m_axi_bresp_converter_1_signal);
    mp_M01_AXI_transactor->BRESP(m_m_axi_bresp_converter_1_signal);
    mp_m_axi_bvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_1");
    mp_m_axi_bvalid_converter_1->vector_in(m_axi_split_bvalid_out_1);
    mp_m_axi_bvalid_converter_1->scalar_out(m_m_axi_bvalid_converter_1_signal);
    mp_M01_AXI_transactor->BVALID(m_m_axi_bvalid_converter_1_signal);
    mp_m_axi_bready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_1");
    mp_m_axi_bready_converter_1->scalar_in(m_m_axi_bready_converter_1_signal);
    mp_m_axi_bready_converter_1->vector_out(m_axi_concat_bready_out_1);
    mp_M01_AXI_transactor->BREADY(m_m_axi_bready_converter_1_signal);
    mp_m_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_1");
    mp_m_axi_araddr_converter_1->vector_in(m_m_axi_araddr_converter_1_signal);
    mp_m_axi_araddr_converter_1->vector_out(m_axi_concat_araddr_out_1);
    mp_M01_AXI_transactor->ARADDR(m_m_axi_araddr_converter_1_signal);
    mp_m_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_1");
    mp_m_axi_arprot_converter_1->vector_in(m_m_axi_arprot_converter_1_signal);
    mp_m_axi_arprot_converter_1->vector_out(m_axi_concat_arprot_out_1);
    mp_M01_AXI_transactor->ARPROT(m_m_axi_arprot_converter_1_signal);
    mp_m_axi_arvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_1");
    mp_m_axi_arvalid_converter_1->scalar_in(m_m_axi_arvalid_converter_1_signal);
    mp_m_axi_arvalid_converter_1->vector_out(m_axi_concat_arvalid_out_1);
    mp_M01_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_1_signal);
    mp_m_axi_arready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_1");
    mp_m_axi_arready_converter_1->vector_in(m_axi_split_arready_out_1);
    mp_m_axi_arready_converter_1->scalar_out(m_m_axi_arready_converter_1_signal);
    mp_M01_AXI_transactor->ARREADY(m_m_axi_arready_converter_1_signal);
    mp_m_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_1");
    mp_m_axi_rdata_converter_1->vector_in(m_axi_split_rdata_out_1);
    mp_m_axi_rdata_converter_1->vector_out(m_m_axi_rdata_converter_1_signal);
    mp_M01_AXI_transactor->RDATA(m_m_axi_rdata_converter_1_signal);
    mp_m_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_1");
    mp_m_axi_rresp_converter_1->vector_in(m_axi_split_rresp_out_1);
    mp_m_axi_rresp_converter_1->vector_out(m_m_axi_rresp_converter_1_signal);
    mp_M01_AXI_transactor->RRESP(m_m_axi_rresp_converter_1_signal);
    mp_m_axi_rvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_1");
    mp_m_axi_rvalid_converter_1->vector_in(m_axi_split_rvalid_out_1);
    mp_m_axi_rvalid_converter_1->scalar_out(m_m_axi_rvalid_converter_1_signal);
    mp_M01_AXI_transactor->RVALID(m_m_axi_rvalid_converter_1_signal);
    mp_m_axi_rready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_1");
    mp_m_axi_rready_converter_1->scalar_in(m_m_axi_rready_converter_1_signal);
    mp_m_axi_rready_converter_1->vector_out(m_axi_concat_rready_out_1);
    mp_M01_AXI_transactor->RREADY(m_m_axi_rready_converter_1_signal);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_m_axi_awaddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_2");
    mp_m_axi_awaddr_converter_2->vector_in(m_m_axi_awaddr_converter_2_signal);
    mp_m_axi_awaddr_converter_2->vector_out(m_axi_concat_awaddr_out_2);
    mp_M02_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_2_signal);
    mp_m_axi_awprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_2");
    mp_m_axi_awprot_converter_2->vector_in(m_m_axi_awprot_converter_2_signal);
    mp_m_axi_awprot_converter_2->vector_out(m_axi_concat_awprot_out_2);
    mp_M02_AXI_transactor->AWPROT(m_m_axi_awprot_converter_2_signal);
    mp_m_axi_awvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_2");
    mp_m_axi_awvalid_converter_2->scalar_in(m_m_axi_awvalid_converter_2_signal);
    mp_m_axi_awvalid_converter_2->vector_out(m_axi_concat_awvalid_out_2);
    mp_M02_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_2_signal);
    mp_m_axi_awready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_2");
    mp_m_axi_awready_converter_2->vector_in(m_axi_split_awready_out_2);
    mp_m_axi_awready_converter_2->scalar_out(m_m_axi_awready_converter_2_signal);
    mp_M02_AXI_transactor->AWREADY(m_m_axi_awready_converter_2_signal);
    mp_m_axi_wdata_converter_2 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_2");
    mp_m_axi_wdata_converter_2->vector_in(m_m_axi_wdata_converter_2_signal);
    mp_m_axi_wdata_converter_2->vector_out(m_axi_concat_wdata_out_2);
    mp_M02_AXI_transactor->WDATA(m_m_axi_wdata_converter_2_signal);
    mp_m_axi_wstrb_converter_2 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_2");
    mp_m_axi_wstrb_converter_2->vector_in(m_m_axi_wstrb_converter_2_signal);
    mp_m_axi_wstrb_converter_2->vector_out(m_axi_concat_wstrb_out_2);
    mp_M02_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_2_signal);
    mp_m_axi_wvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_2");
    mp_m_axi_wvalid_converter_2->scalar_in(m_m_axi_wvalid_converter_2_signal);
    mp_m_axi_wvalid_converter_2->vector_out(m_axi_concat_wvalid_out_2);
    mp_M02_AXI_transactor->WVALID(m_m_axi_wvalid_converter_2_signal);
    mp_m_axi_wready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_2");
    mp_m_axi_wready_converter_2->vector_in(m_axi_split_wready_out_2);
    mp_m_axi_wready_converter_2->scalar_out(m_m_axi_wready_converter_2_signal);
    mp_M02_AXI_transactor->WREADY(m_m_axi_wready_converter_2_signal);
    mp_m_axi_bresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_2");
    mp_m_axi_bresp_converter_2->vector_in(m_axi_split_bresp_out_2);
    mp_m_axi_bresp_converter_2->vector_out(m_m_axi_bresp_converter_2_signal);
    mp_M02_AXI_transactor->BRESP(m_m_axi_bresp_converter_2_signal);
    mp_m_axi_bvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_2");
    mp_m_axi_bvalid_converter_2->vector_in(m_axi_split_bvalid_out_2);
    mp_m_axi_bvalid_converter_2->scalar_out(m_m_axi_bvalid_converter_2_signal);
    mp_M02_AXI_transactor->BVALID(m_m_axi_bvalid_converter_2_signal);
    mp_m_axi_bready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_2");
    mp_m_axi_bready_converter_2->scalar_in(m_m_axi_bready_converter_2_signal);
    mp_m_axi_bready_converter_2->vector_out(m_axi_concat_bready_out_2);
    mp_M02_AXI_transactor->BREADY(m_m_axi_bready_converter_2_signal);
    mp_m_axi_araddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_2");
    mp_m_axi_araddr_converter_2->vector_in(m_m_axi_araddr_converter_2_signal);
    mp_m_axi_araddr_converter_2->vector_out(m_axi_concat_araddr_out_2);
    mp_M02_AXI_transactor->ARADDR(m_m_axi_araddr_converter_2_signal);
    mp_m_axi_arprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_2");
    mp_m_axi_arprot_converter_2->vector_in(m_m_axi_arprot_converter_2_signal);
    mp_m_axi_arprot_converter_2->vector_out(m_axi_concat_arprot_out_2);
    mp_M02_AXI_transactor->ARPROT(m_m_axi_arprot_converter_2_signal);
    mp_m_axi_arvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_2");
    mp_m_axi_arvalid_converter_2->scalar_in(m_m_axi_arvalid_converter_2_signal);
    mp_m_axi_arvalid_converter_2->vector_out(m_axi_concat_arvalid_out_2);
    mp_M02_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_2_signal);
    mp_m_axi_arready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_2");
    mp_m_axi_arready_converter_2->vector_in(m_axi_split_arready_out_2);
    mp_m_axi_arready_converter_2->scalar_out(m_m_axi_arready_converter_2_signal);
    mp_M02_AXI_transactor->ARREADY(m_m_axi_arready_converter_2_signal);
    mp_m_axi_rdata_converter_2 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_2");
    mp_m_axi_rdata_converter_2->vector_in(m_axi_split_rdata_out_2);
    mp_m_axi_rdata_converter_2->vector_out(m_m_axi_rdata_converter_2_signal);
    mp_M02_AXI_transactor->RDATA(m_m_axi_rdata_converter_2_signal);
    mp_m_axi_rresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_2");
    mp_m_axi_rresp_converter_2->vector_in(m_axi_split_rresp_out_2);
    mp_m_axi_rresp_converter_2->vector_out(m_m_axi_rresp_converter_2_signal);
    mp_M02_AXI_transactor->RRESP(m_m_axi_rresp_converter_2_signal);
    mp_m_axi_rvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_2");
    mp_m_axi_rvalid_converter_2->vector_in(m_axi_split_rvalid_out_2);
    mp_m_axi_rvalid_converter_2->scalar_out(m_m_axi_rvalid_converter_2_signal);
    mp_M02_AXI_transactor->RVALID(m_m_axi_rvalid_converter_2_signal);
    mp_m_axi_rready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_2");
    mp_m_axi_rready_converter_2->scalar_in(m_m_axi_rready_converter_2_signal);
    mp_m_axi_rready_converter_2->vector_out(m_axi_concat_rready_out_2);
    mp_M02_AXI_transactor->RREADY(m_m_axi_rready_converter_2_signal);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_m_axi_awaddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_3");
    mp_m_axi_awaddr_converter_3->vector_in(m_m_axi_awaddr_converter_3_signal);
    mp_m_axi_awaddr_converter_3->vector_out(m_axi_concat_awaddr_out_3);
    mp_M03_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_3_signal);
    mp_m_axi_awprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_3");
    mp_m_axi_awprot_converter_3->vector_in(m_m_axi_awprot_converter_3_signal);
    mp_m_axi_awprot_converter_3->vector_out(m_axi_concat_awprot_out_3);
    mp_M03_AXI_transactor->AWPROT(m_m_axi_awprot_converter_3_signal);
    mp_m_axi_awvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_3");
    mp_m_axi_awvalid_converter_3->scalar_in(m_m_axi_awvalid_converter_3_signal);
    mp_m_axi_awvalid_converter_3->vector_out(m_axi_concat_awvalid_out_3);
    mp_M03_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_3_signal);
    mp_m_axi_awready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_3");
    mp_m_axi_awready_converter_3->vector_in(m_axi_split_awready_out_3);
    mp_m_axi_awready_converter_3->scalar_out(m_m_axi_awready_converter_3_signal);
    mp_M03_AXI_transactor->AWREADY(m_m_axi_awready_converter_3_signal);
    mp_m_axi_wdata_converter_3 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_3");
    mp_m_axi_wdata_converter_3->vector_in(m_m_axi_wdata_converter_3_signal);
    mp_m_axi_wdata_converter_3->vector_out(m_axi_concat_wdata_out_3);
    mp_M03_AXI_transactor->WDATA(m_m_axi_wdata_converter_3_signal);
    mp_m_axi_wstrb_converter_3 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_3");
    mp_m_axi_wstrb_converter_3->vector_in(m_m_axi_wstrb_converter_3_signal);
    mp_m_axi_wstrb_converter_3->vector_out(m_axi_concat_wstrb_out_3);
    mp_M03_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_3_signal);
    mp_m_axi_wvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_3");
    mp_m_axi_wvalid_converter_3->scalar_in(m_m_axi_wvalid_converter_3_signal);
    mp_m_axi_wvalid_converter_3->vector_out(m_axi_concat_wvalid_out_3);
    mp_M03_AXI_transactor->WVALID(m_m_axi_wvalid_converter_3_signal);
    mp_m_axi_wready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_3");
    mp_m_axi_wready_converter_3->vector_in(m_axi_split_wready_out_3);
    mp_m_axi_wready_converter_3->scalar_out(m_m_axi_wready_converter_3_signal);
    mp_M03_AXI_transactor->WREADY(m_m_axi_wready_converter_3_signal);
    mp_m_axi_bresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_3");
    mp_m_axi_bresp_converter_3->vector_in(m_axi_split_bresp_out_3);
    mp_m_axi_bresp_converter_3->vector_out(m_m_axi_bresp_converter_3_signal);
    mp_M03_AXI_transactor->BRESP(m_m_axi_bresp_converter_3_signal);
    mp_m_axi_bvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_3");
    mp_m_axi_bvalid_converter_3->vector_in(m_axi_split_bvalid_out_3);
    mp_m_axi_bvalid_converter_3->scalar_out(m_m_axi_bvalid_converter_3_signal);
    mp_M03_AXI_transactor->BVALID(m_m_axi_bvalid_converter_3_signal);
    mp_m_axi_bready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_3");
    mp_m_axi_bready_converter_3->scalar_in(m_m_axi_bready_converter_3_signal);
    mp_m_axi_bready_converter_3->vector_out(m_axi_concat_bready_out_3);
    mp_M03_AXI_transactor->BREADY(m_m_axi_bready_converter_3_signal);
    mp_m_axi_araddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_3");
    mp_m_axi_araddr_converter_3->vector_in(m_m_axi_araddr_converter_3_signal);
    mp_m_axi_araddr_converter_3->vector_out(m_axi_concat_araddr_out_3);
    mp_M03_AXI_transactor->ARADDR(m_m_axi_araddr_converter_3_signal);
    mp_m_axi_arprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_3");
    mp_m_axi_arprot_converter_3->vector_in(m_m_axi_arprot_converter_3_signal);
    mp_m_axi_arprot_converter_3->vector_out(m_axi_concat_arprot_out_3);
    mp_M03_AXI_transactor->ARPROT(m_m_axi_arprot_converter_3_signal);
    mp_m_axi_arvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_3");
    mp_m_axi_arvalid_converter_3->scalar_in(m_m_axi_arvalid_converter_3_signal);
    mp_m_axi_arvalid_converter_3->vector_out(m_axi_concat_arvalid_out_3);
    mp_M03_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_3_signal);
    mp_m_axi_arready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_3");
    mp_m_axi_arready_converter_3->vector_in(m_axi_split_arready_out_3);
    mp_m_axi_arready_converter_3->scalar_out(m_m_axi_arready_converter_3_signal);
    mp_M03_AXI_transactor->ARREADY(m_m_axi_arready_converter_3_signal);
    mp_m_axi_rdata_converter_3 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_3");
    mp_m_axi_rdata_converter_3->vector_in(m_axi_split_rdata_out_3);
    mp_m_axi_rdata_converter_3->vector_out(m_m_axi_rdata_converter_3_signal);
    mp_M03_AXI_transactor->RDATA(m_m_axi_rdata_converter_3_signal);
    mp_m_axi_rresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_3");
    mp_m_axi_rresp_converter_3->vector_in(m_axi_split_rresp_out_3);
    mp_m_axi_rresp_converter_3->vector_out(m_m_axi_rresp_converter_3_signal);
    mp_M03_AXI_transactor->RRESP(m_m_axi_rresp_converter_3_signal);
    mp_m_axi_rvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_3");
    mp_m_axi_rvalid_converter_3->vector_in(m_axi_split_rvalid_out_3);
    mp_m_axi_rvalid_converter_3->scalar_out(m_m_axi_rvalid_converter_3_signal);
    mp_M03_AXI_transactor->RVALID(m_m_axi_rvalid_converter_3_signal);
    mp_m_axi_rready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_3");
    mp_m_axi_rready_converter_3->scalar_in(m_m_axi_rready_converter_3_signal);
    mp_m_axi_rready_converter_3->vector_out(m_axi_concat_rready_out_3);
    mp_M03_AXI_transactor->RREADY(m_m_axi_rready_converter_3_signal);
    mp_M03_AXI_transactor->CLK(aclk);
    mp_M03_AXI_transactor->RST(aresetn);

    // M03_AXI' transactor sockets

    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M04_AXI' transactor parameters
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);

    // M04_AXI' transactor ports

    mp_m_axi_awaddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_4");
    mp_m_axi_awaddr_converter_4->vector_in(m_m_axi_awaddr_converter_4_signal);
    mp_m_axi_awaddr_converter_4->vector_out(m_axi_concat_awaddr_out_4);
    mp_M04_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_4_signal);
    mp_m_axi_awprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_4");
    mp_m_axi_awprot_converter_4->vector_in(m_m_axi_awprot_converter_4_signal);
    mp_m_axi_awprot_converter_4->vector_out(m_axi_concat_awprot_out_4);
    mp_M04_AXI_transactor->AWPROT(m_m_axi_awprot_converter_4_signal);
    mp_m_axi_awvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_4");
    mp_m_axi_awvalid_converter_4->scalar_in(m_m_axi_awvalid_converter_4_signal);
    mp_m_axi_awvalid_converter_4->vector_out(m_axi_concat_awvalid_out_4);
    mp_M04_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_4_signal);
    mp_m_axi_awready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_4");
    mp_m_axi_awready_converter_4->vector_in(m_axi_split_awready_out_4);
    mp_m_axi_awready_converter_4->scalar_out(m_m_axi_awready_converter_4_signal);
    mp_M04_AXI_transactor->AWREADY(m_m_axi_awready_converter_4_signal);
    mp_m_axi_wdata_converter_4 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_4");
    mp_m_axi_wdata_converter_4->vector_in(m_m_axi_wdata_converter_4_signal);
    mp_m_axi_wdata_converter_4->vector_out(m_axi_concat_wdata_out_4);
    mp_M04_AXI_transactor->WDATA(m_m_axi_wdata_converter_4_signal);
    mp_m_axi_wstrb_converter_4 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_4");
    mp_m_axi_wstrb_converter_4->vector_in(m_m_axi_wstrb_converter_4_signal);
    mp_m_axi_wstrb_converter_4->vector_out(m_axi_concat_wstrb_out_4);
    mp_M04_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_4_signal);
    mp_m_axi_wvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_4");
    mp_m_axi_wvalid_converter_4->scalar_in(m_m_axi_wvalid_converter_4_signal);
    mp_m_axi_wvalid_converter_4->vector_out(m_axi_concat_wvalid_out_4);
    mp_M04_AXI_transactor->WVALID(m_m_axi_wvalid_converter_4_signal);
    mp_m_axi_wready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_4");
    mp_m_axi_wready_converter_4->vector_in(m_axi_split_wready_out_4);
    mp_m_axi_wready_converter_4->scalar_out(m_m_axi_wready_converter_4_signal);
    mp_M04_AXI_transactor->WREADY(m_m_axi_wready_converter_4_signal);
    mp_m_axi_bresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_4");
    mp_m_axi_bresp_converter_4->vector_in(m_axi_split_bresp_out_4);
    mp_m_axi_bresp_converter_4->vector_out(m_m_axi_bresp_converter_4_signal);
    mp_M04_AXI_transactor->BRESP(m_m_axi_bresp_converter_4_signal);
    mp_m_axi_bvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_4");
    mp_m_axi_bvalid_converter_4->vector_in(m_axi_split_bvalid_out_4);
    mp_m_axi_bvalid_converter_4->scalar_out(m_m_axi_bvalid_converter_4_signal);
    mp_M04_AXI_transactor->BVALID(m_m_axi_bvalid_converter_4_signal);
    mp_m_axi_bready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_4");
    mp_m_axi_bready_converter_4->scalar_in(m_m_axi_bready_converter_4_signal);
    mp_m_axi_bready_converter_4->vector_out(m_axi_concat_bready_out_4);
    mp_M04_AXI_transactor->BREADY(m_m_axi_bready_converter_4_signal);
    mp_m_axi_araddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_4");
    mp_m_axi_araddr_converter_4->vector_in(m_m_axi_araddr_converter_4_signal);
    mp_m_axi_araddr_converter_4->vector_out(m_axi_concat_araddr_out_4);
    mp_M04_AXI_transactor->ARADDR(m_m_axi_araddr_converter_4_signal);
    mp_m_axi_arprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_4");
    mp_m_axi_arprot_converter_4->vector_in(m_m_axi_arprot_converter_4_signal);
    mp_m_axi_arprot_converter_4->vector_out(m_axi_concat_arprot_out_4);
    mp_M04_AXI_transactor->ARPROT(m_m_axi_arprot_converter_4_signal);
    mp_m_axi_arvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_4");
    mp_m_axi_arvalid_converter_4->scalar_in(m_m_axi_arvalid_converter_4_signal);
    mp_m_axi_arvalid_converter_4->vector_out(m_axi_concat_arvalid_out_4);
    mp_M04_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_4_signal);
    mp_m_axi_arready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_4");
    mp_m_axi_arready_converter_4->vector_in(m_axi_split_arready_out_4);
    mp_m_axi_arready_converter_4->scalar_out(m_m_axi_arready_converter_4_signal);
    mp_M04_AXI_transactor->ARREADY(m_m_axi_arready_converter_4_signal);
    mp_m_axi_rdata_converter_4 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_4");
    mp_m_axi_rdata_converter_4->vector_in(m_axi_split_rdata_out_4);
    mp_m_axi_rdata_converter_4->vector_out(m_m_axi_rdata_converter_4_signal);
    mp_M04_AXI_transactor->RDATA(m_m_axi_rdata_converter_4_signal);
    mp_m_axi_rresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_4");
    mp_m_axi_rresp_converter_4->vector_in(m_axi_split_rresp_out_4);
    mp_m_axi_rresp_converter_4->vector_out(m_m_axi_rresp_converter_4_signal);
    mp_M04_AXI_transactor->RRESP(m_m_axi_rresp_converter_4_signal);
    mp_m_axi_rvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_4");
    mp_m_axi_rvalid_converter_4->vector_in(m_axi_split_rvalid_out_4);
    mp_m_axi_rvalid_converter_4->scalar_out(m_m_axi_rvalid_converter_4_signal);
    mp_M04_AXI_transactor->RVALID(m_m_axi_rvalid_converter_4_signal);
    mp_m_axi_rready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_4");
    mp_m_axi_rready_converter_4->scalar_in(m_m_axi_rready_converter_4_signal);
    mp_m_axi_rready_converter_4->vector_out(m_axi_concat_rready_out_4);
    mp_M04_AXI_transactor->RREADY(m_m_axi_rready_converter_4_signal);
    mp_M04_AXI_transactor->CLK(aclk);
    mp_M04_AXI_transactor->RST(aresetn);

    // M04_AXI' transactor sockets

    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M05_AXI' transactor parameters
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);

    // M05_AXI' transactor ports

    mp_m_axi_awaddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_5");
    mp_m_axi_awaddr_converter_5->vector_in(m_m_axi_awaddr_converter_5_signal);
    mp_m_axi_awaddr_converter_5->vector_out(m_axi_concat_awaddr_out_5);
    mp_M05_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_5_signal);
    mp_m_axi_awprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_5");
    mp_m_axi_awprot_converter_5->vector_in(m_m_axi_awprot_converter_5_signal);
    mp_m_axi_awprot_converter_5->vector_out(m_axi_concat_awprot_out_5);
    mp_M05_AXI_transactor->AWPROT(m_m_axi_awprot_converter_5_signal);
    mp_m_axi_awvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_5");
    mp_m_axi_awvalid_converter_5->scalar_in(m_m_axi_awvalid_converter_5_signal);
    mp_m_axi_awvalid_converter_5->vector_out(m_axi_concat_awvalid_out_5);
    mp_M05_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_5_signal);
    mp_m_axi_awready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_5");
    mp_m_axi_awready_converter_5->vector_in(m_axi_split_awready_out_5);
    mp_m_axi_awready_converter_5->scalar_out(m_m_axi_awready_converter_5_signal);
    mp_M05_AXI_transactor->AWREADY(m_m_axi_awready_converter_5_signal);
    mp_m_axi_wdata_converter_5 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_5");
    mp_m_axi_wdata_converter_5->vector_in(m_m_axi_wdata_converter_5_signal);
    mp_m_axi_wdata_converter_5->vector_out(m_axi_concat_wdata_out_5);
    mp_M05_AXI_transactor->WDATA(m_m_axi_wdata_converter_5_signal);
    mp_m_axi_wstrb_converter_5 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_5");
    mp_m_axi_wstrb_converter_5->vector_in(m_m_axi_wstrb_converter_5_signal);
    mp_m_axi_wstrb_converter_5->vector_out(m_axi_concat_wstrb_out_5);
    mp_M05_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_5_signal);
    mp_m_axi_wvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_5");
    mp_m_axi_wvalid_converter_5->scalar_in(m_m_axi_wvalid_converter_5_signal);
    mp_m_axi_wvalid_converter_5->vector_out(m_axi_concat_wvalid_out_5);
    mp_M05_AXI_transactor->WVALID(m_m_axi_wvalid_converter_5_signal);
    mp_m_axi_wready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_5");
    mp_m_axi_wready_converter_5->vector_in(m_axi_split_wready_out_5);
    mp_m_axi_wready_converter_5->scalar_out(m_m_axi_wready_converter_5_signal);
    mp_M05_AXI_transactor->WREADY(m_m_axi_wready_converter_5_signal);
    mp_m_axi_bresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_5");
    mp_m_axi_bresp_converter_5->vector_in(m_axi_split_bresp_out_5);
    mp_m_axi_bresp_converter_5->vector_out(m_m_axi_bresp_converter_5_signal);
    mp_M05_AXI_transactor->BRESP(m_m_axi_bresp_converter_5_signal);
    mp_m_axi_bvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_5");
    mp_m_axi_bvalid_converter_5->vector_in(m_axi_split_bvalid_out_5);
    mp_m_axi_bvalid_converter_5->scalar_out(m_m_axi_bvalid_converter_5_signal);
    mp_M05_AXI_transactor->BVALID(m_m_axi_bvalid_converter_5_signal);
    mp_m_axi_bready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_5");
    mp_m_axi_bready_converter_5->scalar_in(m_m_axi_bready_converter_5_signal);
    mp_m_axi_bready_converter_5->vector_out(m_axi_concat_bready_out_5);
    mp_M05_AXI_transactor->BREADY(m_m_axi_bready_converter_5_signal);
    mp_m_axi_araddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_5");
    mp_m_axi_araddr_converter_5->vector_in(m_m_axi_araddr_converter_5_signal);
    mp_m_axi_araddr_converter_5->vector_out(m_axi_concat_araddr_out_5);
    mp_M05_AXI_transactor->ARADDR(m_m_axi_araddr_converter_5_signal);
    mp_m_axi_arprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_5");
    mp_m_axi_arprot_converter_5->vector_in(m_m_axi_arprot_converter_5_signal);
    mp_m_axi_arprot_converter_5->vector_out(m_axi_concat_arprot_out_5);
    mp_M05_AXI_transactor->ARPROT(m_m_axi_arprot_converter_5_signal);
    mp_m_axi_arvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_5");
    mp_m_axi_arvalid_converter_5->scalar_in(m_m_axi_arvalid_converter_5_signal);
    mp_m_axi_arvalid_converter_5->vector_out(m_axi_concat_arvalid_out_5);
    mp_M05_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_5_signal);
    mp_m_axi_arready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_5");
    mp_m_axi_arready_converter_5->vector_in(m_axi_split_arready_out_5);
    mp_m_axi_arready_converter_5->scalar_out(m_m_axi_arready_converter_5_signal);
    mp_M05_AXI_transactor->ARREADY(m_m_axi_arready_converter_5_signal);
    mp_m_axi_rdata_converter_5 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_5");
    mp_m_axi_rdata_converter_5->vector_in(m_axi_split_rdata_out_5);
    mp_m_axi_rdata_converter_5->vector_out(m_m_axi_rdata_converter_5_signal);
    mp_M05_AXI_transactor->RDATA(m_m_axi_rdata_converter_5_signal);
    mp_m_axi_rresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_5");
    mp_m_axi_rresp_converter_5->vector_in(m_axi_split_rresp_out_5);
    mp_m_axi_rresp_converter_5->vector_out(m_m_axi_rresp_converter_5_signal);
    mp_M05_AXI_transactor->RRESP(m_m_axi_rresp_converter_5_signal);
    mp_m_axi_rvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_5");
    mp_m_axi_rvalid_converter_5->vector_in(m_axi_split_rvalid_out_5);
    mp_m_axi_rvalid_converter_5->scalar_out(m_m_axi_rvalid_converter_5_signal);
    mp_M05_AXI_transactor->RVALID(m_m_axi_rvalid_converter_5_signal);
    mp_m_axi_rready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_5");
    mp_m_axi_rready_converter_5->scalar_in(m_m_axi_rready_converter_5_signal);
    mp_m_axi_rready_converter_5->vector_out(m_axi_concat_rready_out_5);
    mp_M05_AXI_transactor->RREADY(m_m_axi_rready_converter_5_signal);
    mp_M05_AXI_transactor->CLK(aclk);
    mp_M05_AXI_transactor->RST(aresetn);

    // M05_AXI' transactor sockets

    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M06_AXI' transactor parameters
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);

    // M06_AXI' transactor ports

    mp_m_axi_awaddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_6");
    mp_m_axi_awaddr_converter_6->vector_in(m_m_axi_awaddr_converter_6_signal);
    mp_m_axi_awaddr_converter_6->vector_out(m_axi_concat_awaddr_out_6);
    mp_M06_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_6_signal);
    mp_m_axi_awprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_6");
    mp_m_axi_awprot_converter_6->vector_in(m_m_axi_awprot_converter_6_signal);
    mp_m_axi_awprot_converter_6->vector_out(m_axi_concat_awprot_out_6);
    mp_M06_AXI_transactor->AWPROT(m_m_axi_awprot_converter_6_signal);
    mp_m_axi_awvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_6");
    mp_m_axi_awvalid_converter_6->scalar_in(m_m_axi_awvalid_converter_6_signal);
    mp_m_axi_awvalid_converter_6->vector_out(m_axi_concat_awvalid_out_6);
    mp_M06_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_6_signal);
    mp_m_axi_awready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_6");
    mp_m_axi_awready_converter_6->vector_in(m_axi_split_awready_out_6);
    mp_m_axi_awready_converter_6->scalar_out(m_m_axi_awready_converter_6_signal);
    mp_M06_AXI_transactor->AWREADY(m_m_axi_awready_converter_6_signal);
    mp_m_axi_wdata_converter_6 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_6");
    mp_m_axi_wdata_converter_6->vector_in(m_m_axi_wdata_converter_6_signal);
    mp_m_axi_wdata_converter_6->vector_out(m_axi_concat_wdata_out_6);
    mp_M06_AXI_transactor->WDATA(m_m_axi_wdata_converter_6_signal);
    mp_m_axi_wstrb_converter_6 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_6");
    mp_m_axi_wstrb_converter_6->vector_in(m_m_axi_wstrb_converter_6_signal);
    mp_m_axi_wstrb_converter_6->vector_out(m_axi_concat_wstrb_out_6);
    mp_M06_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_6_signal);
    mp_m_axi_wvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_6");
    mp_m_axi_wvalid_converter_6->scalar_in(m_m_axi_wvalid_converter_6_signal);
    mp_m_axi_wvalid_converter_6->vector_out(m_axi_concat_wvalid_out_6);
    mp_M06_AXI_transactor->WVALID(m_m_axi_wvalid_converter_6_signal);
    mp_m_axi_wready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_6");
    mp_m_axi_wready_converter_6->vector_in(m_axi_split_wready_out_6);
    mp_m_axi_wready_converter_6->scalar_out(m_m_axi_wready_converter_6_signal);
    mp_M06_AXI_transactor->WREADY(m_m_axi_wready_converter_6_signal);
    mp_m_axi_bresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_6");
    mp_m_axi_bresp_converter_6->vector_in(m_axi_split_bresp_out_6);
    mp_m_axi_bresp_converter_6->vector_out(m_m_axi_bresp_converter_6_signal);
    mp_M06_AXI_transactor->BRESP(m_m_axi_bresp_converter_6_signal);
    mp_m_axi_bvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_6");
    mp_m_axi_bvalid_converter_6->vector_in(m_axi_split_bvalid_out_6);
    mp_m_axi_bvalid_converter_6->scalar_out(m_m_axi_bvalid_converter_6_signal);
    mp_M06_AXI_transactor->BVALID(m_m_axi_bvalid_converter_6_signal);
    mp_m_axi_bready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_6");
    mp_m_axi_bready_converter_6->scalar_in(m_m_axi_bready_converter_6_signal);
    mp_m_axi_bready_converter_6->vector_out(m_axi_concat_bready_out_6);
    mp_M06_AXI_transactor->BREADY(m_m_axi_bready_converter_6_signal);
    mp_m_axi_araddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_6");
    mp_m_axi_araddr_converter_6->vector_in(m_m_axi_araddr_converter_6_signal);
    mp_m_axi_araddr_converter_6->vector_out(m_axi_concat_araddr_out_6);
    mp_M06_AXI_transactor->ARADDR(m_m_axi_araddr_converter_6_signal);
    mp_m_axi_arprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_6");
    mp_m_axi_arprot_converter_6->vector_in(m_m_axi_arprot_converter_6_signal);
    mp_m_axi_arprot_converter_6->vector_out(m_axi_concat_arprot_out_6);
    mp_M06_AXI_transactor->ARPROT(m_m_axi_arprot_converter_6_signal);
    mp_m_axi_arvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_6");
    mp_m_axi_arvalid_converter_6->scalar_in(m_m_axi_arvalid_converter_6_signal);
    mp_m_axi_arvalid_converter_6->vector_out(m_axi_concat_arvalid_out_6);
    mp_M06_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_6_signal);
    mp_m_axi_arready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_6");
    mp_m_axi_arready_converter_6->vector_in(m_axi_split_arready_out_6);
    mp_m_axi_arready_converter_6->scalar_out(m_m_axi_arready_converter_6_signal);
    mp_M06_AXI_transactor->ARREADY(m_m_axi_arready_converter_6_signal);
    mp_m_axi_rdata_converter_6 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_6");
    mp_m_axi_rdata_converter_6->vector_in(m_axi_split_rdata_out_6);
    mp_m_axi_rdata_converter_6->vector_out(m_m_axi_rdata_converter_6_signal);
    mp_M06_AXI_transactor->RDATA(m_m_axi_rdata_converter_6_signal);
    mp_m_axi_rresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_6");
    mp_m_axi_rresp_converter_6->vector_in(m_axi_split_rresp_out_6);
    mp_m_axi_rresp_converter_6->vector_out(m_m_axi_rresp_converter_6_signal);
    mp_M06_AXI_transactor->RRESP(m_m_axi_rresp_converter_6_signal);
    mp_m_axi_rvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_6");
    mp_m_axi_rvalid_converter_6->vector_in(m_axi_split_rvalid_out_6);
    mp_m_axi_rvalid_converter_6->scalar_out(m_m_axi_rvalid_converter_6_signal);
    mp_M06_AXI_transactor->RVALID(m_m_axi_rvalid_converter_6_signal);
    mp_m_axi_rready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_6");
    mp_m_axi_rready_converter_6->scalar_in(m_m_axi_rready_converter_6_signal);
    mp_m_axi_rready_converter_6->vector_out(m_axi_concat_rready_out_6);
    mp_M06_AXI_transactor->RREADY(m_m_axi_rready_converter_6_signal);
    mp_M06_AXI_transactor->CLK(aclk);
    mp_M06_AXI_transactor->RST(aresetn);

    // M06_AXI' transactor sockets

    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M07_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M07_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M07_AXI' transactor parameters
    xsc::common_cpp::properties M07_AXI_transactor_param_props;
    M07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M07_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M07_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M07_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M07_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M07_AXI_transactor", M07_AXI_transactor_param_props);

    // M07_AXI' transactor ports

    mp_m_axi_awaddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_7");
    mp_m_axi_awaddr_converter_7->vector_in(m_m_axi_awaddr_converter_7_signal);
    mp_m_axi_awaddr_converter_7->vector_out(m_axi_concat_awaddr_out_7);
    mp_M07_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_7_signal);
    mp_m_axi_awprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_7");
    mp_m_axi_awprot_converter_7->vector_in(m_m_axi_awprot_converter_7_signal);
    mp_m_axi_awprot_converter_7->vector_out(m_axi_concat_awprot_out_7);
    mp_M07_AXI_transactor->AWPROT(m_m_axi_awprot_converter_7_signal);
    mp_m_axi_awvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_7");
    mp_m_axi_awvalid_converter_7->scalar_in(m_m_axi_awvalid_converter_7_signal);
    mp_m_axi_awvalid_converter_7->vector_out(m_axi_concat_awvalid_out_7);
    mp_M07_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_7_signal);
    mp_m_axi_awready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_7");
    mp_m_axi_awready_converter_7->vector_in(m_axi_split_awready_out_7);
    mp_m_axi_awready_converter_7->scalar_out(m_m_axi_awready_converter_7_signal);
    mp_M07_AXI_transactor->AWREADY(m_m_axi_awready_converter_7_signal);
    mp_m_axi_wdata_converter_7 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_7");
    mp_m_axi_wdata_converter_7->vector_in(m_m_axi_wdata_converter_7_signal);
    mp_m_axi_wdata_converter_7->vector_out(m_axi_concat_wdata_out_7);
    mp_M07_AXI_transactor->WDATA(m_m_axi_wdata_converter_7_signal);
    mp_m_axi_wstrb_converter_7 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_7");
    mp_m_axi_wstrb_converter_7->vector_in(m_m_axi_wstrb_converter_7_signal);
    mp_m_axi_wstrb_converter_7->vector_out(m_axi_concat_wstrb_out_7);
    mp_M07_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_7_signal);
    mp_m_axi_wvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_7");
    mp_m_axi_wvalid_converter_7->scalar_in(m_m_axi_wvalid_converter_7_signal);
    mp_m_axi_wvalid_converter_7->vector_out(m_axi_concat_wvalid_out_7);
    mp_M07_AXI_transactor->WVALID(m_m_axi_wvalid_converter_7_signal);
    mp_m_axi_wready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_7");
    mp_m_axi_wready_converter_7->vector_in(m_axi_split_wready_out_7);
    mp_m_axi_wready_converter_7->scalar_out(m_m_axi_wready_converter_7_signal);
    mp_M07_AXI_transactor->WREADY(m_m_axi_wready_converter_7_signal);
    mp_m_axi_bresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_7");
    mp_m_axi_bresp_converter_7->vector_in(m_axi_split_bresp_out_7);
    mp_m_axi_bresp_converter_7->vector_out(m_m_axi_bresp_converter_7_signal);
    mp_M07_AXI_transactor->BRESP(m_m_axi_bresp_converter_7_signal);
    mp_m_axi_bvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_7");
    mp_m_axi_bvalid_converter_7->vector_in(m_axi_split_bvalid_out_7);
    mp_m_axi_bvalid_converter_7->scalar_out(m_m_axi_bvalid_converter_7_signal);
    mp_M07_AXI_transactor->BVALID(m_m_axi_bvalid_converter_7_signal);
    mp_m_axi_bready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_7");
    mp_m_axi_bready_converter_7->scalar_in(m_m_axi_bready_converter_7_signal);
    mp_m_axi_bready_converter_7->vector_out(m_axi_concat_bready_out_7);
    mp_M07_AXI_transactor->BREADY(m_m_axi_bready_converter_7_signal);
    mp_m_axi_araddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_7");
    mp_m_axi_araddr_converter_7->vector_in(m_m_axi_araddr_converter_7_signal);
    mp_m_axi_araddr_converter_7->vector_out(m_axi_concat_araddr_out_7);
    mp_M07_AXI_transactor->ARADDR(m_m_axi_araddr_converter_7_signal);
    mp_m_axi_arprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_7");
    mp_m_axi_arprot_converter_7->vector_in(m_m_axi_arprot_converter_7_signal);
    mp_m_axi_arprot_converter_7->vector_out(m_axi_concat_arprot_out_7);
    mp_M07_AXI_transactor->ARPROT(m_m_axi_arprot_converter_7_signal);
    mp_m_axi_arvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_7");
    mp_m_axi_arvalid_converter_7->scalar_in(m_m_axi_arvalid_converter_7_signal);
    mp_m_axi_arvalid_converter_7->vector_out(m_axi_concat_arvalid_out_7);
    mp_M07_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_7_signal);
    mp_m_axi_arready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_7");
    mp_m_axi_arready_converter_7->vector_in(m_axi_split_arready_out_7);
    mp_m_axi_arready_converter_7->scalar_out(m_m_axi_arready_converter_7_signal);
    mp_M07_AXI_transactor->ARREADY(m_m_axi_arready_converter_7_signal);
    mp_m_axi_rdata_converter_7 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_7");
    mp_m_axi_rdata_converter_7->vector_in(m_axi_split_rdata_out_7);
    mp_m_axi_rdata_converter_7->vector_out(m_m_axi_rdata_converter_7_signal);
    mp_M07_AXI_transactor->RDATA(m_m_axi_rdata_converter_7_signal);
    mp_m_axi_rresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_7");
    mp_m_axi_rresp_converter_7->vector_in(m_axi_split_rresp_out_7);
    mp_m_axi_rresp_converter_7->vector_out(m_m_axi_rresp_converter_7_signal);
    mp_M07_AXI_transactor->RRESP(m_m_axi_rresp_converter_7_signal);
    mp_m_axi_rvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_7");
    mp_m_axi_rvalid_converter_7->vector_in(m_axi_split_rvalid_out_7);
    mp_m_axi_rvalid_converter_7->scalar_out(m_m_axi_rvalid_converter_7_signal);
    mp_M07_AXI_transactor->RVALID(m_m_axi_rvalid_converter_7_signal);
    mp_m_axi_rready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_7");
    mp_m_axi_rready_converter_7->scalar_in(m_m_axi_rready_converter_7_signal);
    mp_m_axi_rready_converter_7->vector_out(m_axi_concat_rready_out_7);
    mp_M07_AXI_transactor->RREADY(m_m_axi_rready_converter_7_signal);
    mp_M07_AXI_transactor->CLK(aclk);
    mp_M07_AXI_transactor->RST(aresetn);

    // M07_AXI' transactor sockets

    mp_impl->initiator_7_rd_socket->bind(*(mp_M07_AXI_transactor->rd_socket));
    mp_impl->initiator_7_wr_socket->bind(*(mp_M07_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M08_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M08_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M08_AXI' transactor parameters
    xsc::common_cpp::properties M08_AXI_transactor_param_props;
    M08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M08_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M08_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M08_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M08_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M08_AXI_transactor", M08_AXI_transactor_param_props);

    // M08_AXI' transactor ports

    mp_m_axi_awaddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_8");
    mp_m_axi_awaddr_converter_8->vector_in(m_m_axi_awaddr_converter_8_signal);
    mp_m_axi_awaddr_converter_8->vector_out(m_axi_concat_awaddr_out_8);
    mp_M08_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_8_signal);
    mp_m_axi_awprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_8");
    mp_m_axi_awprot_converter_8->vector_in(m_m_axi_awprot_converter_8_signal);
    mp_m_axi_awprot_converter_8->vector_out(m_axi_concat_awprot_out_8);
    mp_M08_AXI_transactor->AWPROT(m_m_axi_awprot_converter_8_signal);
    mp_m_axi_awvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_8");
    mp_m_axi_awvalid_converter_8->scalar_in(m_m_axi_awvalid_converter_8_signal);
    mp_m_axi_awvalid_converter_8->vector_out(m_axi_concat_awvalid_out_8);
    mp_M08_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_8_signal);
    mp_m_axi_awready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_8");
    mp_m_axi_awready_converter_8->vector_in(m_axi_split_awready_out_8);
    mp_m_axi_awready_converter_8->scalar_out(m_m_axi_awready_converter_8_signal);
    mp_M08_AXI_transactor->AWREADY(m_m_axi_awready_converter_8_signal);
    mp_m_axi_wdata_converter_8 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_8");
    mp_m_axi_wdata_converter_8->vector_in(m_m_axi_wdata_converter_8_signal);
    mp_m_axi_wdata_converter_8->vector_out(m_axi_concat_wdata_out_8);
    mp_M08_AXI_transactor->WDATA(m_m_axi_wdata_converter_8_signal);
    mp_m_axi_wstrb_converter_8 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_8");
    mp_m_axi_wstrb_converter_8->vector_in(m_m_axi_wstrb_converter_8_signal);
    mp_m_axi_wstrb_converter_8->vector_out(m_axi_concat_wstrb_out_8);
    mp_M08_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_8_signal);
    mp_m_axi_wvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_8");
    mp_m_axi_wvalid_converter_8->scalar_in(m_m_axi_wvalid_converter_8_signal);
    mp_m_axi_wvalid_converter_8->vector_out(m_axi_concat_wvalid_out_8);
    mp_M08_AXI_transactor->WVALID(m_m_axi_wvalid_converter_8_signal);
    mp_m_axi_wready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_8");
    mp_m_axi_wready_converter_8->vector_in(m_axi_split_wready_out_8);
    mp_m_axi_wready_converter_8->scalar_out(m_m_axi_wready_converter_8_signal);
    mp_M08_AXI_transactor->WREADY(m_m_axi_wready_converter_8_signal);
    mp_m_axi_bresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_8");
    mp_m_axi_bresp_converter_8->vector_in(m_axi_split_bresp_out_8);
    mp_m_axi_bresp_converter_8->vector_out(m_m_axi_bresp_converter_8_signal);
    mp_M08_AXI_transactor->BRESP(m_m_axi_bresp_converter_8_signal);
    mp_m_axi_bvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_8");
    mp_m_axi_bvalid_converter_8->vector_in(m_axi_split_bvalid_out_8);
    mp_m_axi_bvalid_converter_8->scalar_out(m_m_axi_bvalid_converter_8_signal);
    mp_M08_AXI_transactor->BVALID(m_m_axi_bvalid_converter_8_signal);
    mp_m_axi_bready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_8");
    mp_m_axi_bready_converter_8->scalar_in(m_m_axi_bready_converter_8_signal);
    mp_m_axi_bready_converter_8->vector_out(m_axi_concat_bready_out_8);
    mp_M08_AXI_transactor->BREADY(m_m_axi_bready_converter_8_signal);
    mp_m_axi_araddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_8");
    mp_m_axi_araddr_converter_8->vector_in(m_m_axi_araddr_converter_8_signal);
    mp_m_axi_araddr_converter_8->vector_out(m_axi_concat_araddr_out_8);
    mp_M08_AXI_transactor->ARADDR(m_m_axi_araddr_converter_8_signal);
    mp_m_axi_arprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_8");
    mp_m_axi_arprot_converter_8->vector_in(m_m_axi_arprot_converter_8_signal);
    mp_m_axi_arprot_converter_8->vector_out(m_axi_concat_arprot_out_8);
    mp_M08_AXI_transactor->ARPROT(m_m_axi_arprot_converter_8_signal);
    mp_m_axi_arvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_8");
    mp_m_axi_arvalid_converter_8->scalar_in(m_m_axi_arvalid_converter_8_signal);
    mp_m_axi_arvalid_converter_8->vector_out(m_axi_concat_arvalid_out_8);
    mp_M08_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_8_signal);
    mp_m_axi_arready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_8");
    mp_m_axi_arready_converter_8->vector_in(m_axi_split_arready_out_8);
    mp_m_axi_arready_converter_8->scalar_out(m_m_axi_arready_converter_8_signal);
    mp_M08_AXI_transactor->ARREADY(m_m_axi_arready_converter_8_signal);
    mp_m_axi_rdata_converter_8 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_8");
    mp_m_axi_rdata_converter_8->vector_in(m_axi_split_rdata_out_8);
    mp_m_axi_rdata_converter_8->vector_out(m_m_axi_rdata_converter_8_signal);
    mp_M08_AXI_transactor->RDATA(m_m_axi_rdata_converter_8_signal);
    mp_m_axi_rresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_8");
    mp_m_axi_rresp_converter_8->vector_in(m_axi_split_rresp_out_8);
    mp_m_axi_rresp_converter_8->vector_out(m_m_axi_rresp_converter_8_signal);
    mp_M08_AXI_transactor->RRESP(m_m_axi_rresp_converter_8_signal);
    mp_m_axi_rvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_8");
    mp_m_axi_rvalid_converter_8->vector_in(m_axi_split_rvalid_out_8);
    mp_m_axi_rvalid_converter_8->scalar_out(m_m_axi_rvalid_converter_8_signal);
    mp_M08_AXI_transactor->RVALID(m_m_axi_rvalid_converter_8_signal);
    mp_m_axi_rready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_8");
    mp_m_axi_rready_converter_8->scalar_in(m_m_axi_rready_converter_8_signal);
    mp_m_axi_rready_converter_8->vector_out(m_axi_concat_rready_out_8);
    mp_M08_AXI_transactor->RREADY(m_m_axi_rready_converter_8_signal);
    mp_M08_AXI_transactor->CLK(aclk);
    mp_M08_AXI_transactor->RST(aresetn);

    // M08_AXI' transactor sockets

    mp_impl->initiator_8_rd_socket->bind(*(mp_M08_AXI_transactor->rd_socket));
    mp_impl->initiator_8_wr_socket->bind(*(mp_M08_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M09_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M09_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M09_AXI' transactor parameters
    xsc::common_cpp::properties M09_AXI_transactor_param_props;
    M09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M09_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M09_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M09_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M09_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M09_AXI_transactor", M09_AXI_transactor_param_props);

    // M09_AXI' transactor ports

    mp_m_axi_awaddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_9");
    mp_m_axi_awaddr_converter_9->vector_in(m_m_axi_awaddr_converter_9_signal);
    mp_m_axi_awaddr_converter_9->vector_out(m_axi_concat_awaddr_out_9);
    mp_M09_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_9_signal);
    mp_m_axi_awprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_9");
    mp_m_axi_awprot_converter_9->vector_in(m_m_axi_awprot_converter_9_signal);
    mp_m_axi_awprot_converter_9->vector_out(m_axi_concat_awprot_out_9);
    mp_M09_AXI_transactor->AWPROT(m_m_axi_awprot_converter_9_signal);
    mp_m_axi_awvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_9");
    mp_m_axi_awvalid_converter_9->scalar_in(m_m_axi_awvalid_converter_9_signal);
    mp_m_axi_awvalid_converter_9->vector_out(m_axi_concat_awvalid_out_9);
    mp_M09_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_9_signal);
    mp_m_axi_awready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_9");
    mp_m_axi_awready_converter_9->vector_in(m_axi_split_awready_out_9);
    mp_m_axi_awready_converter_9->scalar_out(m_m_axi_awready_converter_9_signal);
    mp_M09_AXI_transactor->AWREADY(m_m_axi_awready_converter_9_signal);
    mp_m_axi_wdata_converter_9 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_9");
    mp_m_axi_wdata_converter_9->vector_in(m_m_axi_wdata_converter_9_signal);
    mp_m_axi_wdata_converter_9->vector_out(m_axi_concat_wdata_out_9);
    mp_M09_AXI_transactor->WDATA(m_m_axi_wdata_converter_9_signal);
    mp_m_axi_wstrb_converter_9 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_9");
    mp_m_axi_wstrb_converter_9->vector_in(m_m_axi_wstrb_converter_9_signal);
    mp_m_axi_wstrb_converter_9->vector_out(m_axi_concat_wstrb_out_9);
    mp_M09_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_9_signal);
    mp_m_axi_wvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_9");
    mp_m_axi_wvalid_converter_9->scalar_in(m_m_axi_wvalid_converter_9_signal);
    mp_m_axi_wvalid_converter_9->vector_out(m_axi_concat_wvalid_out_9);
    mp_M09_AXI_transactor->WVALID(m_m_axi_wvalid_converter_9_signal);
    mp_m_axi_wready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_9");
    mp_m_axi_wready_converter_9->vector_in(m_axi_split_wready_out_9);
    mp_m_axi_wready_converter_9->scalar_out(m_m_axi_wready_converter_9_signal);
    mp_M09_AXI_transactor->WREADY(m_m_axi_wready_converter_9_signal);
    mp_m_axi_bresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_9");
    mp_m_axi_bresp_converter_9->vector_in(m_axi_split_bresp_out_9);
    mp_m_axi_bresp_converter_9->vector_out(m_m_axi_bresp_converter_9_signal);
    mp_M09_AXI_transactor->BRESP(m_m_axi_bresp_converter_9_signal);
    mp_m_axi_bvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_9");
    mp_m_axi_bvalid_converter_9->vector_in(m_axi_split_bvalid_out_9);
    mp_m_axi_bvalid_converter_9->scalar_out(m_m_axi_bvalid_converter_9_signal);
    mp_M09_AXI_transactor->BVALID(m_m_axi_bvalid_converter_9_signal);
    mp_m_axi_bready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_9");
    mp_m_axi_bready_converter_9->scalar_in(m_m_axi_bready_converter_9_signal);
    mp_m_axi_bready_converter_9->vector_out(m_axi_concat_bready_out_9);
    mp_M09_AXI_transactor->BREADY(m_m_axi_bready_converter_9_signal);
    mp_m_axi_araddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_9");
    mp_m_axi_araddr_converter_9->vector_in(m_m_axi_araddr_converter_9_signal);
    mp_m_axi_araddr_converter_9->vector_out(m_axi_concat_araddr_out_9);
    mp_M09_AXI_transactor->ARADDR(m_m_axi_araddr_converter_9_signal);
    mp_m_axi_arprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_9");
    mp_m_axi_arprot_converter_9->vector_in(m_m_axi_arprot_converter_9_signal);
    mp_m_axi_arprot_converter_9->vector_out(m_axi_concat_arprot_out_9);
    mp_M09_AXI_transactor->ARPROT(m_m_axi_arprot_converter_9_signal);
    mp_m_axi_arvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_9");
    mp_m_axi_arvalid_converter_9->scalar_in(m_m_axi_arvalid_converter_9_signal);
    mp_m_axi_arvalid_converter_9->vector_out(m_axi_concat_arvalid_out_9);
    mp_M09_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_9_signal);
    mp_m_axi_arready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_9");
    mp_m_axi_arready_converter_9->vector_in(m_axi_split_arready_out_9);
    mp_m_axi_arready_converter_9->scalar_out(m_m_axi_arready_converter_9_signal);
    mp_M09_AXI_transactor->ARREADY(m_m_axi_arready_converter_9_signal);
    mp_m_axi_rdata_converter_9 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_9");
    mp_m_axi_rdata_converter_9->vector_in(m_axi_split_rdata_out_9);
    mp_m_axi_rdata_converter_9->vector_out(m_m_axi_rdata_converter_9_signal);
    mp_M09_AXI_transactor->RDATA(m_m_axi_rdata_converter_9_signal);
    mp_m_axi_rresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_9");
    mp_m_axi_rresp_converter_9->vector_in(m_axi_split_rresp_out_9);
    mp_m_axi_rresp_converter_9->vector_out(m_m_axi_rresp_converter_9_signal);
    mp_M09_AXI_transactor->RRESP(m_m_axi_rresp_converter_9_signal);
    mp_m_axi_rvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_9");
    mp_m_axi_rvalid_converter_9->vector_in(m_axi_split_rvalid_out_9);
    mp_m_axi_rvalid_converter_9->scalar_out(m_m_axi_rvalid_converter_9_signal);
    mp_M09_AXI_transactor->RVALID(m_m_axi_rvalid_converter_9_signal);
    mp_m_axi_rready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_9");
    mp_m_axi_rready_converter_9->scalar_in(m_m_axi_rready_converter_9_signal);
    mp_m_axi_rready_converter_9->vector_out(m_axi_concat_rready_out_9);
    mp_M09_AXI_transactor->RREADY(m_m_axi_rready_converter_9_signal);
    mp_M09_AXI_transactor->CLK(aclk);
    mp_M09_AXI_transactor->RST(aresetn);

    // M09_AXI' transactor sockets

    mp_impl->initiator_9_rd_socket->bind(*(mp_M09_AXI_transactor->rd_socket));
    mp_impl->initiator_9_wr_socket->bind(*(mp_M09_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M10_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M10_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M10_AXI' transactor parameters
    xsc::common_cpp::properties M10_AXI_transactor_param_props;
    M10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M10_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M10_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M10_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M10_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M10_AXI_transactor", M10_AXI_transactor_param_props);

    // M10_AXI' transactor ports

    mp_m_axi_awaddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_10");
    mp_m_axi_awaddr_converter_10->vector_in(m_m_axi_awaddr_converter_10_signal);
    mp_m_axi_awaddr_converter_10->vector_out(m_axi_concat_awaddr_out_10);
    mp_M10_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_10_signal);
    mp_m_axi_awprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_10");
    mp_m_axi_awprot_converter_10->vector_in(m_m_axi_awprot_converter_10_signal);
    mp_m_axi_awprot_converter_10->vector_out(m_axi_concat_awprot_out_10);
    mp_M10_AXI_transactor->AWPROT(m_m_axi_awprot_converter_10_signal);
    mp_m_axi_awvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_10");
    mp_m_axi_awvalid_converter_10->scalar_in(m_m_axi_awvalid_converter_10_signal);
    mp_m_axi_awvalid_converter_10->vector_out(m_axi_concat_awvalid_out_10);
    mp_M10_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_10_signal);
    mp_m_axi_awready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_10");
    mp_m_axi_awready_converter_10->vector_in(m_axi_split_awready_out_10);
    mp_m_axi_awready_converter_10->scalar_out(m_m_axi_awready_converter_10_signal);
    mp_M10_AXI_transactor->AWREADY(m_m_axi_awready_converter_10_signal);
    mp_m_axi_wdata_converter_10 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_10");
    mp_m_axi_wdata_converter_10->vector_in(m_m_axi_wdata_converter_10_signal);
    mp_m_axi_wdata_converter_10->vector_out(m_axi_concat_wdata_out_10);
    mp_M10_AXI_transactor->WDATA(m_m_axi_wdata_converter_10_signal);
    mp_m_axi_wstrb_converter_10 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_10");
    mp_m_axi_wstrb_converter_10->vector_in(m_m_axi_wstrb_converter_10_signal);
    mp_m_axi_wstrb_converter_10->vector_out(m_axi_concat_wstrb_out_10);
    mp_M10_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_10_signal);
    mp_m_axi_wvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_10");
    mp_m_axi_wvalid_converter_10->scalar_in(m_m_axi_wvalid_converter_10_signal);
    mp_m_axi_wvalid_converter_10->vector_out(m_axi_concat_wvalid_out_10);
    mp_M10_AXI_transactor->WVALID(m_m_axi_wvalid_converter_10_signal);
    mp_m_axi_wready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_10");
    mp_m_axi_wready_converter_10->vector_in(m_axi_split_wready_out_10);
    mp_m_axi_wready_converter_10->scalar_out(m_m_axi_wready_converter_10_signal);
    mp_M10_AXI_transactor->WREADY(m_m_axi_wready_converter_10_signal);
    mp_m_axi_bresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_10");
    mp_m_axi_bresp_converter_10->vector_in(m_axi_split_bresp_out_10);
    mp_m_axi_bresp_converter_10->vector_out(m_m_axi_bresp_converter_10_signal);
    mp_M10_AXI_transactor->BRESP(m_m_axi_bresp_converter_10_signal);
    mp_m_axi_bvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_10");
    mp_m_axi_bvalid_converter_10->vector_in(m_axi_split_bvalid_out_10);
    mp_m_axi_bvalid_converter_10->scalar_out(m_m_axi_bvalid_converter_10_signal);
    mp_M10_AXI_transactor->BVALID(m_m_axi_bvalid_converter_10_signal);
    mp_m_axi_bready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_10");
    mp_m_axi_bready_converter_10->scalar_in(m_m_axi_bready_converter_10_signal);
    mp_m_axi_bready_converter_10->vector_out(m_axi_concat_bready_out_10);
    mp_M10_AXI_transactor->BREADY(m_m_axi_bready_converter_10_signal);
    mp_m_axi_araddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_10");
    mp_m_axi_araddr_converter_10->vector_in(m_m_axi_araddr_converter_10_signal);
    mp_m_axi_araddr_converter_10->vector_out(m_axi_concat_araddr_out_10);
    mp_M10_AXI_transactor->ARADDR(m_m_axi_araddr_converter_10_signal);
    mp_m_axi_arprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_10");
    mp_m_axi_arprot_converter_10->vector_in(m_m_axi_arprot_converter_10_signal);
    mp_m_axi_arprot_converter_10->vector_out(m_axi_concat_arprot_out_10);
    mp_M10_AXI_transactor->ARPROT(m_m_axi_arprot_converter_10_signal);
    mp_m_axi_arvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_10");
    mp_m_axi_arvalid_converter_10->scalar_in(m_m_axi_arvalid_converter_10_signal);
    mp_m_axi_arvalid_converter_10->vector_out(m_axi_concat_arvalid_out_10);
    mp_M10_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_10_signal);
    mp_m_axi_arready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_10");
    mp_m_axi_arready_converter_10->vector_in(m_axi_split_arready_out_10);
    mp_m_axi_arready_converter_10->scalar_out(m_m_axi_arready_converter_10_signal);
    mp_M10_AXI_transactor->ARREADY(m_m_axi_arready_converter_10_signal);
    mp_m_axi_rdata_converter_10 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_10");
    mp_m_axi_rdata_converter_10->vector_in(m_axi_split_rdata_out_10);
    mp_m_axi_rdata_converter_10->vector_out(m_m_axi_rdata_converter_10_signal);
    mp_M10_AXI_transactor->RDATA(m_m_axi_rdata_converter_10_signal);
    mp_m_axi_rresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_10");
    mp_m_axi_rresp_converter_10->vector_in(m_axi_split_rresp_out_10);
    mp_m_axi_rresp_converter_10->vector_out(m_m_axi_rresp_converter_10_signal);
    mp_M10_AXI_transactor->RRESP(m_m_axi_rresp_converter_10_signal);
    mp_m_axi_rvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_10");
    mp_m_axi_rvalid_converter_10->vector_in(m_axi_split_rvalid_out_10);
    mp_m_axi_rvalid_converter_10->scalar_out(m_m_axi_rvalid_converter_10_signal);
    mp_M10_AXI_transactor->RVALID(m_m_axi_rvalid_converter_10_signal);
    mp_m_axi_rready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_10");
    mp_m_axi_rready_converter_10->scalar_in(m_m_axi_rready_converter_10_signal);
    mp_m_axi_rready_converter_10->vector_out(m_axi_concat_rready_out_10);
    mp_M10_AXI_transactor->RREADY(m_m_axi_rready_converter_10_signal);
    mp_M10_AXI_transactor->CLK(aclk);
    mp_M10_AXI_transactor->RST(aresetn);

    // M10_AXI' transactor sockets

    mp_impl->initiator_10_rd_socket->bind(*(mp_M10_AXI_transactor->rd_socket));
    mp_impl->initiator_10_wr_socket->bind(*(mp_M10_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
design_1_xbar_0::design_1_xbar_0(const sc_core::sc_module_name& nm) : design_1_xbar_0_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awaddr("m_axi_awaddr"), m_axi_awprot("m_axi_awprot"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_araddr("m_axi_araddr"), m_axi_arprot("m_axi_arprot"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awvalid_converter = NULL;
  mp_s_axi_awready_converter = NULL;
  mp_s_axi_wvalid_converter = NULL;
  mp_s_axi_wready_converter = NULL;
  mp_s_axi_bvalid_converter = NULL;
  mp_s_axi_bready_converter = NULL;
  mp_s_axi_arvalid_converter = NULL;
  mp_s_axi_arready_converter = NULL;
  mp_s_axi_rvalid_converter = NULL;
  mp_s_axi_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_0 = NULL;
  mp_m_axi_awprot_converter_0 = NULL;
  mp_m_axi_awvalid_converter_0 = NULL;
  mp_m_axi_awready_converter_0 = NULL;
  mp_m_axi_wdata_converter_0 = NULL;
  mp_m_axi_wstrb_converter_0 = NULL;
  mp_m_axi_wvalid_converter_0 = NULL;
  mp_m_axi_wready_converter_0 = NULL;
  mp_m_axi_bresp_converter_0 = NULL;
  mp_m_axi_bvalid_converter_0 = NULL;
  mp_m_axi_bready_converter_0 = NULL;
  mp_m_axi_araddr_converter_0 = NULL;
  mp_m_axi_arprot_converter_0 = NULL;
  mp_m_axi_arvalid_converter_0 = NULL;
  mp_m_axi_arready_converter_0 = NULL;
  mp_m_axi_rdata_converter_0 = NULL;
  mp_m_axi_rresp_converter_0 = NULL;
  mp_m_axi_rvalid_converter_0 = NULL;
  mp_m_axi_rready_converter_0 = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_1 = NULL;
  mp_m_axi_awprot_converter_1 = NULL;
  mp_m_axi_awvalid_converter_1 = NULL;
  mp_m_axi_awready_converter_1 = NULL;
  mp_m_axi_wdata_converter_1 = NULL;
  mp_m_axi_wstrb_converter_1 = NULL;
  mp_m_axi_wvalid_converter_1 = NULL;
  mp_m_axi_wready_converter_1 = NULL;
  mp_m_axi_bresp_converter_1 = NULL;
  mp_m_axi_bvalid_converter_1 = NULL;
  mp_m_axi_bready_converter_1 = NULL;
  mp_m_axi_araddr_converter_1 = NULL;
  mp_m_axi_arprot_converter_1 = NULL;
  mp_m_axi_arvalid_converter_1 = NULL;
  mp_m_axi_arready_converter_1 = NULL;
  mp_m_axi_rdata_converter_1 = NULL;
  mp_m_axi_rresp_converter_1 = NULL;
  mp_m_axi_rvalid_converter_1 = NULL;
  mp_m_axi_rready_converter_1 = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_2 = NULL;
  mp_m_axi_awprot_converter_2 = NULL;
  mp_m_axi_awvalid_converter_2 = NULL;
  mp_m_axi_awready_converter_2 = NULL;
  mp_m_axi_wdata_converter_2 = NULL;
  mp_m_axi_wstrb_converter_2 = NULL;
  mp_m_axi_wvalid_converter_2 = NULL;
  mp_m_axi_wready_converter_2 = NULL;
  mp_m_axi_bresp_converter_2 = NULL;
  mp_m_axi_bvalid_converter_2 = NULL;
  mp_m_axi_bready_converter_2 = NULL;
  mp_m_axi_araddr_converter_2 = NULL;
  mp_m_axi_arprot_converter_2 = NULL;
  mp_m_axi_arvalid_converter_2 = NULL;
  mp_m_axi_arready_converter_2 = NULL;
  mp_m_axi_rdata_converter_2 = NULL;
  mp_m_axi_rresp_converter_2 = NULL;
  mp_m_axi_rvalid_converter_2 = NULL;
  mp_m_axi_rready_converter_2 = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_3 = NULL;
  mp_m_axi_awprot_converter_3 = NULL;
  mp_m_axi_awvalid_converter_3 = NULL;
  mp_m_axi_awready_converter_3 = NULL;
  mp_m_axi_wdata_converter_3 = NULL;
  mp_m_axi_wstrb_converter_3 = NULL;
  mp_m_axi_wvalid_converter_3 = NULL;
  mp_m_axi_wready_converter_3 = NULL;
  mp_m_axi_bresp_converter_3 = NULL;
  mp_m_axi_bvalid_converter_3 = NULL;
  mp_m_axi_bready_converter_3 = NULL;
  mp_m_axi_araddr_converter_3 = NULL;
  mp_m_axi_arprot_converter_3 = NULL;
  mp_m_axi_arvalid_converter_3 = NULL;
  mp_m_axi_arready_converter_3 = NULL;
  mp_m_axi_rdata_converter_3 = NULL;
  mp_m_axi_rresp_converter_3 = NULL;
  mp_m_axi_rvalid_converter_3 = NULL;
  mp_m_axi_rready_converter_3 = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_4 = NULL;
  mp_m_axi_awprot_converter_4 = NULL;
  mp_m_axi_awvalid_converter_4 = NULL;
  mp_m_axi_awready_converter_4 = NULL;
  mp_m_axi_wdata_converter_4 = NULL;
  mp_m_axi_wstrb_converter_4 = NULL;
  mp_m_axi_wvalid_converter_4 = NULL;
  mp_m_axi_wready_converter_4 = NULL;
  mp_m_axi_bresp_converter_4 = NULL;
  mp_m_axi_bvalid_converter_4 = NULL;
  mp_m_axi_bready_converter_4 = NULL;
  mp_m_axi_araddr_converter_4 = NULL;
  mp_m_axi_arprot_converter_4 = NULL;
  mp_m_axi_arvalid_converter_4 = NULL;
  mp_m_axi_arready_converter_4 = NULL;
  mp_m_axi_rdata_converter_4 = NULL;
  mp_m_axi_rresp_converter_4 = NULL;
  mp_m_axi_rvalid_converter_4 = NULL;
  mp_m_axi_rready_converter_4 = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_5 = NULL;
  mp_m_axi_awprot_converter_5 = NULL;
  mp_m_axi_awvalid_converter_5 = NULL;
  mp_m_axi_awready_converter_5 = NULL;
  mp_m_axi_wdata_converter_5 = NULL;
  mp_m_axi_wstrb_converter_5 = NULL;
  mp_m_axi_wvalid_converter_5 = NULL;
  mp_m_axi_wready_converter_5 = NULL;
  mp_m_axi_bresp_converter_5 = NULL;
  mp_m_axi_bvalid_converter_5 = NULL;
  mp_m_axi_bready_converter_5 = NULL;
  mp_m_axi_araddr_converter_5 = NULL;
  mp_m_axi_arprot_converter_5 = NULL;
  mp_m_axi_arvalid_converter_5 = NULL;
  mp_m_axi_arready_converter_5 = NULL;
  mp_m_axi_rdata_converter_5 = NULL;
  mp_m_axi_rresp_converter_5 = NULL;
  mp_m_axi_rvalid_converter_5 = NULL;
  mp_m_axi_rready_converter_5 = NULL;
  mp_M06_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_6 = NULL;
  mp_m_axi_awprot_converter_6 = NULL;
  mp_m_axi_awvalid_converter_6 = NULL;
  mp_m_axi_awready_converter_6 = NULL;
  mp_m_axi_wdata_converter_6 = NULL;
  mp_m_axi_wstrb_converter_6 = NULL;
  mp_m_axi_wvalid_converter_6 = NULL;
  mp_m_axi_wready_converter_6 = NULL;
  mp_m_axi_bresp_converter_6 = NULL;
  mp_m_axi_bvalid_converter_6 = NULL;
  mp_m_axi_bready_converter_6 = NULL;
  mp_m_axi_araddr_converter_6 = NULL;
  mp_m_axi_arprot_converter_6 = NULL;
  mp_m_axi_arvalid_converter_6 = NULL;
  mp_m_axi_arready_converter_6 = NULL;
  mp_m_axi_rdata_converter_6 = NULL;
  mp_m_axi_rresp_converter_6 = NULL;
  mp_m_axi_rvalid_converter_6 = NULL;
  mp_m_axi_rready_converter_6 = NULL;
  mp_M07_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_7 = NULL;
  mp_m_axi_awprot_converter_7 = NULL;
  mp_m_axi_awvalid_converter_7 = NULL;
  mp_m_axi_awready_converter_7 = NULL;
  mp_m_axi_wdata_converter_7 = NULL;
  mp_m_axi_wstrb_converter_7 = NULL;
  mp_m_axi_wvalid_converter_7 = NULL;
  mp_m_axi_wready_converter_7 = NULL;
  mp_m_axi_bresp_converter_7 = NULL;
  mp_m_axi_bvalid_converter_7 = NULL;
  mp_m_axi_bready_converter_7 = NULL;
  mp_m_axi_araddr_converter_7 = NULL;
  mp_m_axi_arprot_converter_7 = NULL;
  mp_m_axi_arvalid_converter_7 = NULL;
  mp_m_axi_arready_converter_7 = NULL;
  mp_m_axi_rdata_converter_7 = NULL;
  mp_m_axi_rresp_converter_7 = NULL;
  mp_m_axi_rvalid_converter_7 = NULL;
  mp_m_axi_rready_converter_7 = NULL;
  mp_M08_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_8 = NULL;
  mp_m_axi_awprot_converter_8 = NULL;
  mp_m_axi_awvalid_converter_8 = NULL;
  mp_m_axi_awready_converter_8 = NULL;
  mp_m_axi_wdata_converter_8 = NULL;
  mp_m_axi_wstrb_converter_8 = NULL;
  mp_m_axi_wvalid_converter_8 = NULL;
  mp_m_axi_wready_converter_8 = NULL;
  mp_m_axi_bresp_converter_8 = NULL;
  mp_m_axi_bvalid_converter_8 = NULL;
  mp_m_axi_bready_converter_8 = NULL;
  mp_m_axi_araddr_converter_8 = NULL;
  mp_m_axi_arprot_converter_8 = NULL;
  mp_m_axi_arvalid_converter_8 = NULL;
  mp_m_axi_arready_converter_8 = NULL;
  mp_m_axi_rdata_converter_8 = NULL;
  mp_m_axi_rresp_converter_8 = NULL;
  mp_m_axi_rvalid_converter_8 = NULL;
  mp_m_axi_rready_converter_8 = NULL;
  mp_M09_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_9 = NULL;
  mp_m_axi_awprot_converter_9 = NULL;
  mp_m_axi_awvalid_converter_9 = NULL;
  mp_m_axi_awready_converter_9 = NULL;
  mp_m_axi_wdata_converter_9 = NULL;
  mp_m_axi_wstrb_converter_9 = NULL;
  mp_m_axi_wvalid_converter_9 = NULL;
  mp_m_axi_wready_converter_9 = NULL;
  mp_m_axi_bresp_converter_9 = NULL;
  mp_m_axi_bvalid_converter_9 = NULL;
  mp_m_axi_bready_converter_9 = NULL;
  mp_m_axi_araddr_converter_9 = NULL;
  mp_m_axi_arprot_converter_9 = NULL;
  mp_m_axi_arvalid_converter_9 = NULL;
  mp_m_axi_arready_converter_9 = NULL;
  mp_m_axi_rdata_converter_9 = NULL;
  mp_m_axi_rresp_converter_9 = NULL;
  mp_m_axi_rvalid_converter_9 = NULL;
  mp_m_axi_rready_converter_9 = NULL;
  mp_M10_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_10 = NULL;
  mp_m_axi_awprot_converter_10 = NULL;
  mp_m_axi_awvalid_converter_10 = NULL;
  mp_m_axi_awready_converter_10 = NULL;
  mp_m_axi_wdata_converter_10 = NULL;
  mp_m_axi_wstrb_converter_10 = NULL;
  mp_m_axi_wvalid_converter_10 = NULL;
  mp_m_axi_wready_converter_10 = NULL;
  mp_m_axi_bresp_converter_10 = NULL;
  mp_m_axi_bvalid_converter_10 = NULL;
  mp_m_axi_bready_converter_10 = NULL;
  mp_m_axi_araddr_converter_10 = NULL;
  mp_m_axi_arprot_converter_10 = NULL;
  mp_m_axi_arvalid_converter_10 = NULL;
  mp_m_axi_arready_converter_10 = NULL;
  mp_m_axi_rdata_converter_10 = NULL;
  mp_m_axi_rresp_converter_10 = NULL;
  mp_m_axi_rvalid_converter_10 = NULL;
  mp_m_axi_rready_converter_10 = NULL;

  // initialize junctures
  mp_m_axi_concat_araddr = NULL;
  mp_m_axi_concat_arprot = NULL;
  mp_m_axi_concat_arvalid = NULL;
  mp_m_axi_concat_awaddr = NULL;
  mp_m_axi_concat_awprot = NULL;
  mp_m_axi_concat_awvalid = NULL;
  mp_m_axi_concat_bready = NULL;
  mp_m_axi_concat_rready = NULL;
  mp_m_axi_concat_wdata = NULL;
  mp_m_axi_concat_wstrb = NULL;
  mp_m_axi_concat_wvalid = NULL;
  mp_m_axi_split_arready = NULL;
  mp_m_axi_split_awready = NULL;
  mp_m_axi_split_bresp = NULL;
  mp_m_axi_split_bvalid = NULL;
  mp_m_axi_split_rdata = NULL;
  mp_m_axi_split_rresp = NULL;
  mp_m_axi_split_rvalid = NULL;
  mp_m_axi_split_wready = NULL;
  mp_m_axi_concat_awaddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_awaddr");
  mp_m_axi_concat_awaddr->in_port[0](m_axi_concat_awaddr_out_0);
  mp_m_axi_concat_awaddr->out_port(m_axi_awaddr);
    mp_m_axi_concat_awaddr->offset_port(0, 0);
  mp_m_axi_concat_awprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_awprot");
  mp_m_axi_concat_awprot->in_port[0](m_axi_concat_awprot_out_0);
  mp_m_axi_concat_awprot->out_port(m_axi_awprot);
    mp_m_axi_concat_awprot->offset_port(0, 0);
  mp_m_axi_concat_awvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_awvalid");
  mp_m_axi_concat_awvalid->in_port[0](m_axi_concat_awvalid_out_0);
  mp_m_axi_concat_awvalid->out_port(m_axi_awvalid);
    mp_m_axi_concat_awvalid->offset_port(0, 0);
  mp_m_axi_split_awready = new xsc::xsc_split<11, 11>("m_axi_split_awready");
  mp_m_axi_split_awready->in_port(m_axi_awready);
  mp_m_axi_split_awready->out_port[0](m_axi_split_awready_out_0);
    mp_m_axi_split_awready->add_mask(0,1,0);
  mp_m_axi_concat_wdata = new xsc::xsc_concatenator<352, 11>("m_axi_concat_wdata");
  mp_m_axi_concat_wdata->in_port[0](m_axi_concat_wdata_out_0);
  mp_m_axi_concat_wdata->out_port(m_axi_wdata);
    mp_m_axi_concat_wdata->offset_port(0, 0);
  mp_m_axi_concat_wstrb = new xsc::xsc_concatenator<44, 11>("m_axi_concat_wstrb");
  mp_m_axi_concat_wstrb->in_port[0](m_axi_concat_wstrb_out_0);
  mp_m_axi_concat_wstrb->out_port(m_axi_wstrb);
    mp_m_axi_concat_wstrb->offset_port(0, 0);
  mp_m_axi_concat_wvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_wvalid");
  mp_m_axi_concat_wvalid->in_port[0](m_axi_concat_wvalid_out_0);
  mp_m_axi_concat_wvalid->out_port(m_axi_wvalid);
    mp_m_axi_concat_wvalid->offset_port(0, 0);
  mp_m_axi_split_wready = new xsc::xsc_split<11, 11>("m_axi_split_wready");
  mp_m_axi_split_wready->in_port(m_axi_wready);
  mp_m_axi_split_wready->out_port[0](m_axi_split_wready_out_0);
    mp_m_axi_split_wready->add_mask(0,1,0);
  mp_m_axi_split_bresp = new xsc::xsc_split<22, 11>("m_axi_split_bresp");
  mp_m_axi_split_bresp->in_port(m_axi_bresp);
  mp_m_axi_split_bresp->out_port[0](m_axi_split_bresp_out_0);
    mp_m_axi_split_bresp->add_mask(0,2,0);
  mp_m_axi_split_bvalid = new xsc::xsc_split<11, 11>("m_axi_split_bvalid");
  mp_m_axi_split_bvalid->in_port(m_axi_bvalid);
  mp_m_axi_split_bvalid->out_port[0](m_axi_split_bvalid_out_0);
    mp_m_axi_split_bvalid->add_mask(0,1,0);
  mp_m_axi_concat_bready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_bready");
  mp_m_axi_concat_bready->in_port[0](m_axi_concat_bready_out_0);
  mp_m_axi_concat_bready->out_port(m_axi_bready);
    mp_m_axi_concat_bready->offset_port(0, 0);
  mp_m_axi_concat_araddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_araddr");
  mp_m_axi_concat_araddr->in_port[0](m_axi_concat_araddr_out_0);
  mp_m_axi_concat_araddr->out_port(m_axi_araddr);
    mp_m_axi_concat_araddr->offset_port(0, 0);
  mp_m_axi_concat_arprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_arprot");
  mp_m_axi_concat_arprot->in_port[0](m_axi_concat_arprot_out_0);
  mp_m_axi_concat_arprot->out_port(m_axi_arprot);
    mp_m_axi_concat_arprot->offset_port(0, 0);
  mp_m_axi_concat_arvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_arvalid");
  mp_m_axi_concat_arvalid->in_port[0](m_axi_concat_arvalid_out_0);
  mp_m_axi_concat_arvalid->out_port(m_axi_arvalid);
    mp_m_axi_concat_arvalid->offset_port(0, 0);
  mp_m_axi_split_arready = new xsc::xsc_split<11, 11>("m_axi_split_arready");
  mp_m_axi_split_arready->in_port(m_axi_arready);
  mp_m_axi_split_arready->out_port[0](m_axi_split_arready_out_0);
    mp_m_axi_split_arready->add_mask(0,1,0);
  mp_m_axi_split_rdata = new xsc::xsc_split<352, 11>("m_axi_split_rdata");
  mp_m_axi_split_rdata->in_port(m_axi_rdata);
  mp_m_axi_split_rdata->out_port[0](m_axi_split_rdata_out_0);
    mp_m_axi_split_rdata->add_mask(0,32,0);
  mp_m_axi_split_rresp = new xsc::xsc_split<22, 11>("m_axi_split_rresp");
  mp_m_axi_split_rresp->in_port(m_axi_rresp);
  mp_m_axi_split_rresp->out_port[0](m_axi_split_rresp_out_0);
    mp_m_axi_split_rresp->add_mask(0,2,0);
  mp_m_axi_split_rvalid = new xsc::xsc_split<11, 11>("m_axi_split_rvalid");
  mp_m_axi_split_rvalid->in_port(m_axi_rvalid);
  mp_m_axi_split_rvalid->out_port[0](m_axi_split_rvalid_out_0);
    mp_m_axi_split_rvalid->add_mask(0,1,0);
  mp_m_axi_concat_rready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_rready");
  mp_m_axi_concat_rready->in_port[0](m_axi_concat_rready_out_0);
  mp_m_axi_concat_rready->out_port(m_axi_rready);
    mp_m_axi_concat_rready->offset_port(0, 0);
  mp_m_axi_concat_awaddr->in_port[1](m_axi_concat_awaddr_out_1);
  mp_m_axi_concat_awaddr->offset_port(1, 40);
  mp_m_axi_concat_awprot->in_port[1](m_axi_concat_awprot_out_1);
  mp_m_axi_concat_awprot->offset_port(1, 3);
  mp_m_axi_concat_awvalid->in_port[1](m_axi_concat_awvalid_out_1);
  mp_m_axi_concat_awvalid->offset_port(1, 1);
  
  mp_m_axi_split_awready->out_port[1](m_axi_split_awready_out_1);
    mp_m_axi_split_awready->add_mask(1,2,1);
  mp_m_axi_concat_wdata->in_port[1](m_axi_concat_wdata_out_1);
  mp_m_axi_concat_wdata->offset_port(1, 32);
  mp_m_axi_concat_wstrb->in_port[1](m_axi_concat_wstrb_out_1);
  mp_m_axi_concat_wstrb->offset_port(1, 4);
  mp_m_axi_concat_wvalid->in_port[1](m_axi_concat_wvalid_out_1);
  mp_m_axi_concat_wvalid->offset_port(1, 1);
  
  mp_m_axi_split_wready->out_port[1](m_axi_split_wready_out_1);
    mp_m_axi_split_wready->add_mask(1,2,1);
  
  mp_m_axi_split_bresp->out_port[1](m_axi_split_bresp_out_1);
    mp_m_axi_split_bresp->add_mask(1,4,2);
  
  mp_m_axi_split_bvalid->out_port[1](m_axi_split_bvalid_out_1);
    mp_m_axi_split_bvalid->add_mask(1,2,1);
  mp_m_axi_concat_bready->in_port[1](m_axi_concat_bready_out_1);
  mp_m_axi_concat_bready->offset_port(1, 1);
  mp_m_axi_concat_araddr->in_port[1](m_axi_concat_araddr_out_1);
  mp_m_axi_concat_araddr->offset_port(1, 40);
  mp_m_axi_concat_arprot->in_port[1](m_axi_concat_arprot_out_1);
  mp_m_axi_concat_arprot->offset_port(1, 3);
  mp_m_axi_concat_arvalid->in_port[1](m_axi_concat_arvalid_out_1);
  mp_m_axi_concat_arvalid->offset_port(1, 1);
  
  mp_m_axi_split_arready->out_port[1](m_axi_split_arready_out_1);
    mp_m_axi_split_arready->add_mask(1,2,1);
  
  mp_m_axi_split_rdata->out_port[1](m_axi_split_rdata_out_1);
    mp_m_axi_split_rdata->add_mask(1,64,32);
  
  mp_m_axi_split_rresp->out_port[1](m_axi_split_rresp_out_1);
    mp_m_axi_split_rresp->add_mask(1,4,2);
  
  mp_m_axi_split_rvalid->out_port[1](m_axi_split_rvalid_out_1);
    mp_m_axi_split_rvalid->add_mask(1,2,1);
  mp_m_axi_concat_rready->in_port[1](m_axi_concat_rready_out_1);
  mp_m_axi_concat_rready->offset_port(1, 1);
  mp_m_axi_concat_awaddr->in_port[2](m_axi_concat_awaddr_out_2);
  mp_m_axi_concat_awaddr->offset_port(2, 80);
  mp_m_axi_concat_awprot->in_port[2](m_axi_concat_awprot_out_2);
  mp_m_axi_concat_awprot->offset_port(2, 6);
  mp_m_axi_concat_awvalid->in_port[2](m_axi_concat_awvalid_out_2);
  mp_m_axi_concat_awvalid->offset_port(2, 2);
  
  mp_m_axi_split_awready->out_port[2](m_axi_split_awready_out_2);
    mp_m_axi_split_awready->add_mask(2,3,2);
  mp_m_axi_concat_wdata->in_port[2](m_axi_concat_wdata_out_2);
  mp_m_axi_concat_wdata->offset_port(2, 64);
  mp_m_axi_concat_wstrb->in_port[2](m_axi_concat_wstrb_out_2);
  mp_m_axi_concat_wstrb->offset_port(2, 8);
  mp_m_axi_concat_wvalid->in_port[2](m_axi_concat_wvalid_out_2);
  mp_m_axi_concat_wvalid->offset_port(2, 2);
  
  mp_m_axi_split_wready->out_port[2](m_axi_split_wready_out_2);
    mp_m_axi_split_wready->add_mask(2,3,2);
  
  mp_m_axi_split_bresp->out_port[2](m_axi_split_bresp_out_2);
    mp_m_axi_split_bresp->add_mask(2,6,4);
  
  mp_m_axi_split_bvalid->out_port[2](m_axi_split_bvalid_out_2);
    mp_m_axi_split_bvalid->add_mask(2,3,2);
  mp_m_axi_concat_bready->in_port[2](m_axi_concat_bready_out_2);
  mp_m_axi_concat_bready->offset_port(2, 2);
  mp_m_axi_concat_araddr->in_port[2](m_axi_concat_araddr_out_2);
  mp_m_axi_concat_araddr->offset_port(2, 80);
  mp_m_axi_concat_arprot->in_port[2](m_axi_concat_arprot_out_2);
  mp_m_axi_concat_arprot->offset_port(2, 6);
  mp_m_axi_concat_arvalid->in_port[2](m_axi_concat_arvalid_out_2);
  mp_m_axi_concat_arvalid->offset_port(2, 2);
  
  mp_m_axi_split_arready->out_port[2](m_axi_split_arready_out_2);
    mp_m_axi_split_arready->add_mask(2,3,2);
  
  mp_m_axi_split_rdata->out_port[2](m_axi_split_rdata_out_2);
    mp_m_axi_split_rdata->add_mask(2,96,64);
  
  mp_m_axi_split_rresp->out_port[2](m_axi_split_rresp_out_2);
    mp_m_axi_split_rresp->add_mask(2,6,4);
  
  mp_m_axi_split_rvalid->out_port[2](m_axi_split_rvalid_out_2);
    mp_m_axi_split_rvalid->add_mask(2,3,2);
  mp_m_axi_concat_rready->in_port[2](m_axi_concat_rready_out_2);
  mp_m_axi_concat_rready->offset_port(2, 2);
  mp_m_axi_concat_awaddr->in_port[3](m_axi_concat_awaddr_out_3);
  mp_m_axi_concat_awaddr->offset_port(3, 120);
  mp_m_axi_concat_awprot->in_port[3](m_axi_concat_awprot_out_3);
  mp_m_axi_concat_awprot->offset_port(3, 9);
  mp_m_axi_concat_awvalid->in_port[3](m_axi_concat_awvalid_out_3);
  mp_m_axi_concat_awvalid->offset_port(3, 3);
  
  mp_m_axi_split_awready->out_port[3](m_axi_split_awready_out_3);
    mp_m_axi_split_awready->add_mask(3,4,3);
  mp_m_axi_concat_wdata->in_port[3](m_axi_concat_wdata_out_3);
  mp_m_axi_concat_wdata->offset_port(3, 96);
  mp_m_axi_concat_wstrb->in_port[3](m_axi_concat_wstrb_out_3);
  mp_m_axi_concat_wstrb->offset_port(3, 12);
  mp_m_axi_concat_wvalid->in_port[3](m_axi_concat_wvalid_out_3);
  mp_m_axi_concat_wvalid->offset_port(3, 3);
  
  mp_m_axi_split_wready->out_port[3](m_axi_split_wready_out_3);
    mp_m_axi_split_wready->add_mask(3,4,3);
  
  mp_m_axi_split_bresp->out_port[3](m_axi_split_bresp_out_3);
    mp_m_axi_split_bresp->add_mask(3,8,6);
  
  mp_m_axi_split_bvalid->out_port[3](m_axi_split_bvalid_out_3);
    mp_m_axi_split_bvalid->add_mask(3,4,3);
  mp_m_axi_concat_bready->in_port[3](m_axi_concat_bready_out_3);
  mp_m_axi_concat_bready->offset_port(3, 3);
  mp_m_axi_concat_araddr->in_port[3](m_axi_concat_araddr_out_3);
  mp_m_axi_concat_araddr->offset_port(3, 120);
  mp_m_axi_concat_arprot->in_port[3](m_axi_concat_arprot_out_3);
  mp_m_axi_concat_arprot->offset_port(3, 9);
  mp_m_axi_concat_arvalid->in_port[3](m_axi_concat_arvalid_out_3);
  mp_m_axi_concat_arvalid->offset_port(3, 3);
  
  mp_m_axi_split_arready->out_port[3](m_axi_split_arready_out_3);
    mp_m_axi_split_arready->add_mask(3,4,3);
  
  mp_m_axi_split_rdata->out_port[3](m_axi_split_rdata_out_3);
    mp_m_axi_split_rdata->add_mask(3,128,96);
  
  mp_m_axi_split_rresp->out_port[3](m_axi_split_rresp_out_3);
    mp_m_axi_split_rresp->add_mask(3,8,6);
  
  mp_m_axi_split_rvalid->out_port[3](m_axi_split_rvalid_out_3);
    mp_m_axi_split_rvalid->add_mask(3,4,3);
  mp_m_axi_concat_rready->in_port[3](m_axi_concat_rready_out_3);
  mp_m_axi_concat_rready->offset_port(3, 3);
  mp_m_axi_concat_awaddr->in_port[4](m_axi_concat_awaddr_out_4);
  mp_m_axi_concat_awaddr->offset_port(4, 160);
  mp_m_axi_concat_awprot->in_port[4](m_axi_concat_awprot_out_4);
  mp_m_axi_concat_awprot->offset_port(4, 12);
  mp_m_axi_concat_awvalid->in_port[4](m_axi_concat_awvalid_out_4);
  mp_m_axi_concat_awvalid->offset_port(4, 4);
  
  mp_m_axi_split_awready->out_port[4](m_axi_split_awready_out_4);
    mp_m_axi_split_awready->add_mask(4,5,4);
  mp_m_axi_concat_wdata->in_port[4](m_axi_concat_wdata_out_4);
  mp_m_axi_concat_wdata->offset_port(4, 128);
  mp_m_axi_concat_wstrb->in_port[4](m_axi_concat_wstrb_out_4);
  mp_m_axi_concat_wstrb->offset_port(4, 16);
  mp_m_axi_concat_wvalid->in_port[4](m_axi_concat_wvalid_out_4);
  mp_m_axi_concat_wvalid->offset_port(4, 4);
  
  mp_m_axi_split_wready->out_port[4](m_axi_split_wready_out_4);
    mp_m_axi_split_wready->add_mask(4,5,4);
  
  mp_m_axi_split_bresp->out_port[4](m_axi_split_bresp_out_4);
    mp_m_axi_split_bresp->add_mask(4,10,8);
  
  mp_m_axi_split_bvalid->out_port[4](m_axi_split_bvalid_out_4);
    mp_m_axi_split_bvalid->add_mask(4,5,4);
  mp_m_axi_concat_bready->in_port[4](m_axi_concat_bready_out_4);
  mp_m_axi_concat_bready->offset_port(4, 4);
  mp_m_axi_concat_araddr->in_port[4](m_axi_concat_araddr_out_4);
  mp_m_axi_concat_araddr->offset_port(4, 160);
  mp_m_axi_concat_arprot->in_port[4](m_axi_concat_arprot_out_4);
  mp_m_axi_concat_arprot->offset_port(4, 12);
  mp_m_axi_concat_arvalid->in_port[4](m_axi_concat_arvalid_out_4);
  mp_m_axi_concat_arvalid->offset_port(4, 4);
  
  mp_m_axi_split_arready->out_port[4](m_axi_split_arready_out_4);
    mp_m_axi_split_arready->add_mask(4,5,4);
  
  mp_m_axi_split_rdata->out_port[4](m_axi_split_rdata_out_4);
    mp_m_axi_split_rdata->add_mask(4,160,128);
  
  mp_m_axi_split_rresp->out_port[4](m_axi_split_rresp_out_4);
    mp_m_axi_split_rresp->add_mask(4,10,8);
  
  mp_m_axi_split_rvalid->out_port[4](m_axi_split_rvalid_out_4);
    mp_m_axi_split_rvalid->add_mask(4,5,4);
  mp_m_axi_concat_rready->in_port[4](m_axi_concat_rready_out_4);
  mp_m_axi_concat_rready->offset_port(4, 4);
  mp_m_axi_concat_awaddr->in_port[5](m_axi_concat_awaddr_out_5);
  mp_m_axi_concat_awaddr->offset_port(5, 200);
  mp_m_axi_concat_awprot->in_port[5](m_axi_concat_awprot_out_5);
  mp_m_axi_concat_awprot->offset_port(5, 15);
  mp_m_axi_concat_awvalid->in_port[5](m_axi_concat_awvalid_out_5);
  mp_m_axi_concat_awvalid->offset_port(5, 5);
  
  mp_m_axi_split_awready->out_port[5](m_axi_split_awready_out_5);
    mp_m_axi_split_awready->add_mask(5,6,5);
  mp_m_axi_concat_wdata->in_port[5](m_axi_concat_wdata_out_5);
  mp_m_axi_concat_wdata->offset_port(5, 160);
  mp_m_axi_concat_wstrb->in_port[5](m_axi_concat_wstrb_out_5);
  mp_m_axi_concat_wstrb->offset_port(5, 20);
  mp_m_axi_concat_wvalid->in_port[5](m_axi_concat_wvalid_out_5);
  mp_m_axi_concat_wvalid->offset_port(5, 5);
  
  mp_m_axi_split_wready->out_port[5](m_axi_split_wready_out_5);
    mp_m_axi_split_wready->add_mask(5,6,5);
  
  mp_m_axi_split_bresp->out_port[5](m_axi_split_bresp_out_5);
    mp_m_axi_split_bresp->add_mask(5,12,10);
  
  mp_m_axi_split_bvalid->out_port[5](m_axi_split_bvalid_out_5);
    mp_m_axi_split_bvalid->add_mask(5,6,5);
  mp_m_axi_concat_bready->in_port[5](m_axi_concat_bready_out_5);
  mp_m_axi_concat_bready->offset_port(5, 5);
  mp_m_axi_concat_araddr->in_port[5](m_axi_concat_araddr_out_5);
  mp_m_axi_concat_araddr->offset_port(5, 200);
  mp_m_axi_concat_arprot->in_port[5](m_axi_concat_arprot_out_5);
  mp_m_axi_concat_arprot->offset_port(5, 15);
  mp_m_axi_concat_arvalid->in_port[5](m_axi_concat_arvalid_out_5);
  mp_m_axi_concat_arvalid->offset_port(5, 5);
  
  mp_m_axi_split_arready->out_port[5](m_axi_split_arready_out_5);
    mp_m_axi_split_arready->add_mask(5,6,5);
  
  mp_m_axi_split_rdata->out_port[5](m_axi_split_rdata_out_5);
    mp_m_axi_split_rdata->add_mask(5,192,160);
  
  mp_m_axi_split_rresp->out_port[5](m_axi_split_rresp_out_5);
    mp_m_axi_split_rresp->add_mask(5,12,10);
  
  mp_m_axi_split_rvalid->out_port[5](m_axi_split_rvalid_out_5);
    mp_m_axi_split_rvalid->add_mask(5,6,5);
  mp_m_axi_concat_rready->in_port[5](m_axi_concat_rready_out_5);
  mp_m_axi_concat_rready->offset_port(5, 5);
  mp_m_axi_concat_awaddr->in_port[6](m_axi_concat_awaddr_out_6);
  mp_m_axi_concat_awaddr->offset_port(6, 240);
  mp_m_axi_concat_awprot->in_port[6](m_axi_concat_awprot_out_6);
  mp_m_axi_concat_awprot->offset_port(6, 18);
  mp_m_axi_concat_awvalid->in_port[6](m_axi_concat_awvalid_out_6);
  mp_m_axi_concat_awvalid->offset_port(6, 6);
  
  mp_m_axi_split_awready->out_port[6](m_axi_split_awready_out_6);
    mp_m_axi_split_awready->add_mask(6,7,6);
  mp_m_axi_concat_wdata->in_port[6](m_axi_concat_wdata_out_6);
  mp_m_axi_concat_wdata->offset_port(6, 192);
  mp_m_axi_concat_wstrb->in_port[6](m_axi_concat_wstrb_out_6);
  mp_m_axi_concat_wstrb->offset_port(6, 24);
  mp_m_axi_concat_wvalid->in_port[6](m_axi_concat_wvalid_out_6);
  mp_m_axi_concat_wvalid->offset_port(6, 6);
  
  mp_m_axi_split_wready->out_port[6](m_axi_split_wready_out_6);
    mp_m_axi_split_wready->add_mask(6,7,6);
  
  mp_m_axi_split_bresp->out_port[6](m_axi_split_bresp_out_6);
    mp_m_axi_split_bresp->add_mask(6,14,12);
  
  mp_m_axi_split_bvalid->out_port[6](m_axi_split_bvalid_out_6);
    mp_m_axi_split_bvalid->add_mask(6,7,6);
  mp_m_axi_concat_bready->in_port[6](m_axi_concat_bready_out_6);
  mp_m_axi_concat_bready->offset_port(6, 6);
  mp_m_axi_concat_araddr->in_port[6](m_axi_concat_araddr_out_6);
  mp_m_axi_concat_araddr->offset_port(6, 240);
  mp_m_axi_concat_arprot->in_port[6](m_axi_concat_arprot_out_6);
  mp_m_axi_concat_arprot->offset_port(6, 18);
  mp_m_axi_concat_arvalid->in_port[6](m_axi_concat_arvalid_out_6);
  mp_m_axi_concat_arvalid->offset_port(6, 6);
  
  mp_m_axi_split_arready->out_port[6](m_axi_split_arready_out_6);
    mp_m_axi_split_arready->add_mask(6,7,6);
  
  mp_m_axi_split_rdata->out_port[6](m_axi_split_rdata_out_6);
    mp_m_axi_split_rdata->add_mask(6,224,192);
  
  mp_m_axi_split_rresp->out_port[6](m_axi_split_rresp_out_6);
    mp_m_axi_split_rresp->add_mask(6,14,12);
  
  mp_m_axi_split_rvalid->out_port[6](m_axi_split_rvalid_out_6);
    mp_m_axi_split_rvalid->add_mask(6,7,6);
  mp_m_axi_concat_rready->in_port[6](m_axi_concat_rready_out_6);
  mp_m_axi_concat_rready->offset_port(6, 6);
  mp_m_axi_concat_awaddr->in_port[7](m_axi_concat_awaddr_out_7);
  mp_m_axi_concat_awaddr->offset_port(7, 280);
  mp_m_axi_concat_awprot->in_port[7](m_axi_concat_awprot_out_7);
  mp_m_axi_concat_awprot->offset_port(7, 21);
  mp_m_axi_concat_awvalid->in_port[7](m_axi_concat_awvalid_out_7);
  mp_m_axi_concat_awvalid->offset_port(7, 7);
  
  mp_m_axi_split_awready->out_port[7](m_axi_split_awready_out_7);
    mp_m_axi_split_awready->add_mask(7,8,7);
  mp_m_axi_concat_wdata->in_port[7](m_axi_concat_wdata_out_7);
  mp_m_axi_concat_wdata->offset_port(7, 224);
  mp_m_axi_concat_wstrb->in_port[7](m_axi_concat_wstrb_out_7);
  mp_m_axi_concat_wstrb->offset_port(7, 28);
  mp_m_axi_concat_wvalid->in_port[7](m_axi_concat_wvalid_out_7);
  mp_m_axi_concat_wvalid->offset_port(7, 7);
  
  mp_m_axi_split_wready->out_port[7](m_axi_split_wready_out_7);
    mp_m_axi_split_wready->add_mask(7,8,7);
  
  mp_m_axi_split_bresp->out_port[7](m_axi_split_bresp_out_7);
    mp_m_axi_split_bresp->add_mask(7,16,14);
  
  mp_m_axi_split_bvalid->out_port[7](m_axi_split_bvalid_out_7);
    mp_m_axi_split_bvalid->add_mask(7,8,7);
  mp_m_axi_concat_bready->in_port[7](m_axi_concat_bready_out_7);
  mp_m_axi_concat_bready->offset_port(7, 7);
  mp_m_axi_concat_araddr->in_port[7](m_axi_concat_araddr_out_7);
  mp_m_axi_concat_araddr->offset_port(7, 280);
  mp_m_axi_concat_arprot->in_port[7](m_axi_concat_arprot_out_7);
  mp_m_axi_concat_arprot->offset_port(7, 21);
  mp_m_axi_concat_arvalid->in_port[7](m_axi_concat_arvalid_out_7);
  mp_m_axi_concat_arvalid->offset_port(7, 7);
  
  mp_m_axi_split_arready->out_port[7](m_axi_split_arready_out_7);
    mp_m_axi_split_arready->add_mask(7,8,7);
  
  mp_m_axi_split_rdata->out_port[7](m_axi_split_rdata_out_7);
    mp_m_axi_split_rdata->add_mask(7,256,224);
  
  mp_m_axi_split_rresp->out_port[7](m_axi_split_rresp_out_7);
    mp_m_axi_split_rresp->add_mask(7,16,14);
  
  mp_m_axi_split_rvalid->out_port[7](m_axi_split_rvalid_out_7);
    mp_m_axi_split_rvalid->add_mask(7,8,7);
  mp_m_axi_concat_rready->in_port[7](m_axi_concat_rready_out_7);
  mp_m_axi_concat_rready->offset_port(7, 7);
  mp_m_axi_concat_awaddr->in_port[8](m_axi_concat_awaddr_out_8);
  mp_m_axi_concat_awaddr->offset_port(8, 320);
  mp_m_axi_concat_awprot->in_port[8](m_axi_concat_awprot_out_8);
  mp_m_axi_concat_awprot->offset_port(8, 24);
  mp_m_axi_concat_awvalid->in_port[8](m_axi_concat_awvalid_out_8);
  mp_m_axi_concat_awvalid->offset_port(8, 8);
  
  mp_m_axi_split_awready->out_port[8](m_axi_split_awready_out_8);
    mp_m_axi_split_awready->add_mask(8,9,8);
  mp_m_axi_concat_wdata->in_port[8](m_axi_concat_wdata_out_8);
  mp_m_axi_concat_wdata->offset_port(8, 256);
  mp_m_axi_concat_wstrb->in_port[8](m_axi_concat_wstrb_out_8);
  mp_m_axi_concat_wstrb->offset_port(8, 32);
  mp_m_axi_concat_wvalid->in_port[8](m_axi_concat_wvalid_out_8);
  mp_m_axi_concat_wvalid->offset_port(8, 8);
  
  mp_m_axi_split_wready->out_port[8](m_axi_split_wready_out_8);
    mp_m_axi_split_wready->add_mask(8,9,8);
  
  mp_m_axi_split_bresp->out_port[8](m_axi_split_bresp_out_8);
    mp_m_axi_split_bresp->add_mask(8,18,16);
  
  mp_m_axi_split_bvalid->out_port[8](m_axi_split_bvalid_out_8);
    mp_m_axi_split_bvalid->add_mask(8,9,8);
  mp_m_axi_concat_bready->in_port[8](m_axi_concat_bready_out_8);
  mp_m_axi_concat_bready->offset_port(8, 8);
  mp_m_axi_concat_araddr->in_port[8](m_axi_concat_araddr_out_8);
  mp_m_axi_concat_araddr->offset_port(8, 320);
  mp_m_axi_concat_arprot->in_port[8](m_axi_concat_arprot_out_8);
  mp_m_axi_concat_arprot->offset_port(8, 24);
  mp_m_axi_concat_arvalid->in_port[8](m_axi_concat_arvalid_out_8);
  mp_m_axi_concat_arvalid->offset_port(8, 8);
  
  mp_m_axi_split_arready->out_port[8](m_axi_split_arready_out_8);
    mp_m_axi_split_arready->add_mask(8,9,8);
  
  mp_m_axi_split_rdata->out_port[8](m_axi_split_rdata_out_8);
    mp_m_axi_split_rdata->add_mask(8,288,256);
  
  mp_m_axi_split_rresp->out_port[8](m_axi_split_rresp_out_8);
    mp_m_axi_split_rresp->add_mask(8,18,16);
  
  mp_m_axi_split_rvalid->out_port[8](m_axi_split_rvalid_out_8);
    mp_m_axi_split_rvalid->add_mask(8,9,8);
  mp_m_axi_concat_rready->in_port[8](m_axi_concat_rready_out_8);
  mp_m_axi_concat_rready->offset_port(8, 8);
  mp_m_axi_concat_awaddr->in_port[9](m_axi_concat_awaddr_out_9);
  mp_m_axi_concat_awaddr->offset_port(9, 360);
  mp_m_axi_concat_awprot->in_port[9](m_axi_concat_awprot_out_9);
  mp_m_axi_concat_awprot->offset_port(9, 27);
  mp_m_axi_concat_awvalid->in_port[9](m_axi_concat_awvalid_out_9);
  mp_m_axi_concat_awvalid->offset_port(9, 9);
  
  mp_m_axi_split_awready->out_port[9](m_axi_split_awready_out_9);
    mp_m_axi_split_awready->add_mask(9,10,9);
  mp_m_axi_concat_wdata->in_port[9](m_axi_concat_wdata_out_9);
  mp_m_axi_concat_wdata->offset_port(9, 288);
  mp_m_axi_concat_wstrb->in_port[9](m_axi_concat_wstrb_out_9);
  mp_m_axi_concat_wstrb->offset_port(9, 36);
  mp_m_axi_concat_wvalid->in_port[9](m_axi_concat_wvalid_out_9);
  mp_m_axi_concat_wvalid->offset_port(9, 9);
  
  mp_m_axi_split_wready->out_port[9](m_axi_split_wready_out_9);
    mp_m_axi_split_wready->add_mask(9,10,9);
  
  mp_m_axi_split_bresp->out_port[9](m_axi_split_bresp_out_9);
    mp_m_axi_split_bresp->add_mask(9,20,18);
  
  mp_m_axi_split_bvalid->out_port[9](m_axi_split_bvalid_out_9);
    mp_m_axi_split_bvalid->add_mask(9,10,9);
  mp_m_axi_concat_bready->in_port[9](m_axi_concat_bready_out_9);
  mp_m_axi_concat_bready->offset_port(9, 9);
  mp_m_axi_concat_araddr->in_port[9](m_axi_concat_araddr_out_9);
  mp_m_axi_concat_araddr->offset_port(9, 360);
  mp_m_axi_concat_arprot->in_port[9](m_axi_concat_arprot_out_9);
  mp_m_axi_concat_arprot->offset_port(9, 27);
  mp_m_axi_concat_arvalid->in_port[9](m_axi_concat_arvalid_out_9);
  mp_m_axi_concat_arvalid->offset_port(9, 9);
  
  mp_m_axi_split_arready->out_port[9](m_axi_split_arready_out_9);
    mp_m_axi_split_arready->add_mask(9,10,9);
  
  mp_m_axi_split_rdata->out_port[9](m_axi_split_rdata_out_9);
    mp_m_axi_split_rdata->add_mask(9,320,288);
  
  mp_m_axi_split_rresp->out_port[9](m_axi_split_rresp_out_9);
    mp_m_axi_split_rresp->add_mask(9,20,18);
  
  mp_m_axi_split_rvalid->out_port[9](m_axi_split_rvalid_out_9);
    mp_m_axi_split_rvalid->add_mask(9,10,9);
  mp_m_axi_concat_rready->in_port[9](m_axi_concat_rready_out_9);
  mp_m_axi_concat_rready->offset_port(9, 9);
  mp_m_axi_concat_awaddr->in_port[10](m_axi_concat_awaddr_out_10);
  mp_m_axi_concat_awaddr->offset_port(10, 400);
  mp_m_axi_concat_awprot->in_port[10](m_axi_concat_awprot_out_10);
  mp_m_axi_concat_awprot->offset_port(10, 30);
  mp_m_axi_concat_awvalid->in_port[10](m_axi_concat_awvalid_out_10);
  mp_m_axi_concat_awvalid->offset_port(10, 10);
  
  mp_m_axi_split_awready->out_port[10](m_axi_split_awready_out_10);
    mp_m_axi_split_awready->add_mask(10,11,10);
  mp_m_axi_concat_wdata->in_port[10](m_axi_concat_wdata_out_10);
  mp_m_axi_concat_wdata->offset_port(10, 320);
  mp_m_axi_concat_wstrb->in_port[10](m_axi_concat_wstrb_out_10);
  mp_m_axi_concat_wstrb->offset_port(10, 40);
  mp_m_axi_concat_wvalid->in_port[10](m_axi_concat_wvalid_out_10);
  mp_m_axi_concat_wvalid->offset_port(10, 10);
  
  mp_m_axi_split_wready->out_port[10](m_axi_split_wready_out_10);
    mp_m_axi_split_wready->add_mask(10,11,10);
  
  mp_m_axi_split_bresp->out_port[10](m_axi_split_bresp_out_10);
    mp_m_axi_split_bresp->add_mask(10,22,20);
  
  mp_m_axi_split_bvalid->out_port[10](m_axi_split_bvalid_out_10);
    mp_m_axi_split_bvalid->add_mask(10,11,10);
  mp_m_axi_concat_bready->in_port[10](m_axi_concat_bready_out_10);
  mp_m_axi_concat_bready->offset_port(10, 10);
  mp_m_axi_concat_araddr->in_port[10](m_axi_concat_araddr_out_10);
  mp_m_axi_concat_araddr->offset_port(10, 400);
  mp_m_axi_concat_arprot->in_port[10](m_axi_concat_arprot_out_10);
  mp_m_axi_concat_arprot->offset_port(10, 30);
  mp_m_axi_concat_arvalid->in_port[10](m_axi_concat_arvalid_out_10);
  mp_m_axi_concat_arvalid->offset_port(10, 10);
  
  mp_m_axi_split_arready->out_port[10](m_axi_split_arready_out_10);
    mp_m_axi_split_arready->add_mask(10,11,10);
  
  mp_m_axi_split_rdata->out_port[10](m_axi_split_rdata_out_10);
    mp_m_axi_split_rdata->add_mask(10,352,320);
  
  mp_m_axi_split_rresp->out_port[10](m_axi_split_rresp_out_10);
    mp_m_axi_split_rresp->add_mask(10,22,20);
  
  mp_m_axi_split_rvalid->out_port[10](m_axi_split_rvalid_out_10);
    mp_m_axi_split_rvalid->add_mask(10,11,10);
  mp_m_axi_concat_rready->in_port[10](m_axi_concat_rready_out_10);
  mp_m_axi_concat_rready->offset_port(10, 10);

  // initialize socket stubs

}

void design_1_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,40,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S00_AXI_transactor->AWPROT(s_axi_awprot);
    mp_s_axi_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awvalid_converter");
    mp_s_axi_awvalid_converter->vector_in(s_axi_awvalid);
    mp_s_axi_awvalid_converter->scalar_out(m_s_axi_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_signal);
    mp_s_axi_awready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_awready_converter");
    mp_s_axi_awready_converter->scalar_in(m_s_axi_awready_converter_signal);
    mp_s_axi_awready_converter->vector_out(s_axi_awready);
    mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(s_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_s_axi_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_wvalid_converter");
    mp_s_axi_wvalid_converter->vector_in(s_axi_wvalid);
    mp_s_axi_wvalid_converter->scalar_out(m_s_axi_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_signal);
    mp_s_axi_wready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_wready_converter");
    mp_s_axi_wready_converter->scalar_in(m_s_axi_wready_converter_signal);
    mp_s_axi_wready_converter->vector_out(s_axi_wready);
    mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_signal);
    mp_S00_AXI_transactor->BRESP(s_axi_bresp);
    mp_s_axi_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_bvalid_converter");
    mp_s_axi_bvalid_converter->scalar_in(m_s_axi_bvalid_converter_signal);
    mp_s_axi_bvalid_converter->vector_out(s_axi_bvalid);
    mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_signal);
    mp_s_axi_bready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_bready_converter");
    mp_s_axi_bready_converter->vector_in(s_axi_bready);
    mp_s_axi_bready_converter->scalar_out(m_s_axi_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_signal);
    mp_S00_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S00_AXI_transactor->ARPROT(s_axi_arprot);
    mp_s_axi_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arvalid_converter");
    mp_s_axi_arvalid_converter->vector_in(s_axi_arvalid);
    mp_s_axi_arvalid_converter->scalar_out(m_s_axi_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_signal);
    mp_s_axi_arready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_arready_converter");
    mp_s_axi_arready_converter->scalar_in(m_s_axi_arready_converter_signal);
    mp_s_axi_arready_converter->vector_out(s_axi_arready);
    mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_signal);
    mp_S00_AXI_transactor->RDATA(s_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s_axi_rresp);
    mp_s_axi_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_rvalid_converter");
    mp_s_axi_rvalid_converter->scalar_in(m_s_axi_rvalid_converter_signal);
    mp_s_axi_rvalid_converter->vector_out(s_axi_rvalid);
    mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_signal);
    mp_s_axi_rready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_rready_converter");
    mp_s_axi_rready_converter->vector_in(s_axi_rready);
    mp_s_axi_rready_converter->scalar_out(m_s_axi_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_m_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_0");
    mp_m_axi_awaddr_converter_0->vector_in(m_m_axi_awaddr_converter_0_signal);
    mp_m_axi_awaddr_converter_0->vector_out(m_axi_concat_awaddr_out_0);
    mp_M00_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_0_signal);
    mp_m_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_0");
    mp_m_axi_awprot_converter_0->vector_in(m_m_axi_awprot_converter_0_signal);
    mp_m_axi_awprot_converter_0->vector_out(m_axi_concat_awprot_out_0);
    mp_M00_AXI_transactor->AWPROT(m_m_axi_awprot_converter_0_signal);
    mp_m_axi_awvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_0");
    mp_m_axi_awvalid_converter_0->scalar_in(m_m_axi_awvalid_converter_0_signal);
    mp_m_axi_awvalid_converter_0->vector_out(m_axi_concat_awvalid_out_0);
    mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_0_signal);
    mp_m_axi_awready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_0");
    mp_m_axi_awready_converter_0->vector_in(m_axi_split_awready_out_0);
    mp_m_axi_awready_converter_0->scalar_out(m_m_axi_awready_converter_0_signal);
    mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_0_signal);
    mp_m_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_0");
    mp_m_axi_wdata_converter_0->vector_in(m_m_axi_wdata_converter_0_signal);
    mp_m_axi_wdata_converter_0->vector_out(m_axi_concat_wdata_out_0);
    mp_M00_AXI_transactor->WDATA(m_m_axi_wdata_converter_0_signal);
    mp_m_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_0");
    mp_m_axi_wstrb_converter_0->vector_in(m_m_axi_wstrb_converter_0_signal);
    mp_m_axi_wstrb_converter_0->vector_out(m_axi_concat_wstrb_out_0);
    mp_M00_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_0_signal);
    mp_m_axi_wvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_0");
    mp_m_axi_wvalid_converter_0->scalar_in(m_m_axi_wvalid_converter_0_signal);
    mp_m_axi_wvalid_converter_0->vector_out(m_axi_concat_wvalid_out_0);
    mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_0_signal);
    mp_m_axi_wready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_0");
    mp_m_axi_wready_converter_0->vector_in(m_axi_split_wready_out_0);
    mp_m_axi_wready_converter_0->scalar_out(m_m_axi_wready_converter_0_signal);
    mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_0_signal);
    mp_m_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_0");
    mp_m_axi_bresp_converter_0->vector_in(m_axi_split_bresp_out_0);
    mp_m_axi_bresp_converter_0->vector_out(m_m_axi_bresp_converter_0_signal);
    mp_M00_AXI_transactor->BRESP(m_m_axi_bresp_converter_0_signal);
    mp_m_axi_bvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_0");
    mp_m_axi_bvalid_converter_0->vector_in(m_axi_split_bvalid_out_0);
    mp_m_axi_bvalid_converter_0->scalar_out(m_m_axi_bvalid_converter_0_signal);
    mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_0_signal);
    mp_m_axi_bready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_0");
    mp_m_axi_bready_converter_0->scalar_in(m_m_axi_bready_converter_0_signal);
    mp_m_axi_bready_converter_0->vector_out(m_axi_concat_bready_out_0);
    mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_0_signal);
    mp_m_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_0");
    mp_m_axi_araddr_converter_0->vector_in(m_m_axi_araddr_converter_0_signal);
    mp_m_axi_araddr_converter_0->vector_out(m_axi_concat_araddr_out_0);
    mp_M00_AXI_transactor->ARADDR(m_m_axi_araddr_converter_0_signal);
    mp_m_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_0");
    mp_m_axi_arprot_converter_0->vector_in(m_m_axi_arprot_converter_0_signal);
    mp_m_axi_arprot_converter_0->vector_out(m_axi_concat_arprot_out_0);
    mp_M00_AXI_transactor->ARPROT(m_m_axi_arprot_converter_0_signal);
    mp_m_axi_arvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_0");
    mp_m_axi_arvalid_converter_0->scalar_in(m_m_axi_arvalid_converter_0_signal);
    mp_m_axi_arvalid_converter_0->vector_out(m_axi_concat_arvalid_out_0);
    mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_0_signal);
    mp_m_axi_arready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_0");
    mp_m_axi_arready_converter_0->vector_in(m_axi_split_arready_out_0);
    mp_m_axi_arready_converter_0->scalar_out(m_m_axi_arready_converter_0_signal);
    mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_0_signal);
    mp_m_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_0");
    mp_m_axi_rdata_converter_0->vector_in(m_axi_split_rdata_out_0);
    mp_m_axi_rdata_converter_0->vector_out(m_m_axi_rdata_converter_0_signal);
    mp_M00_AXI_transactor->RDATA(m_m_axi_rdata_converter_0_signal);
    mp_m_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_0");
    mp_m_axi_rresp_converter_0->vector_in(m_axi_split_rresp_out_0);
    mp_m_axi_rresp_converter_0->vector_out(m_m_axi_rresp_converter_0_signal);
    mp_M00_AXI_transactor->RRESP(m_m_axi_rresp_converter_0_signal);
    mp_m_axi_rvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_0");
    mp_m_axi_rvalid_converter_0->vector_in(m_axi_split_rvalid_out_0);
    mp_m_axi_rvalid_converter_0->scalar_out(m_m_axi_rvalid_converter_0_signal);
    mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_0_signal);
    mp_m_axi_rready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_0");
    mp_m_axi_rready_converter_0->scalar_in(m_m_axi_rready_converter_0_signal);
    mp_m_axi_rready_converter_0->vector_out(m_axi_concat_rready_out_0);
    mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_0_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_m_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_1");
    mp_m_axi_awaddr_converter_1->vector_in(m_m_axi_awaddr_converter_1_signal);
    mp_m_axi_awaddr_converter_1->vector_out(m_axi_concat_awaddr_out_1);
    mp_M01_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_1_signal);
    mp_m_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_1");
    mp_m_axi_awprot_converter_1->vector_in(m_m_axi_awprot_converter_1_signal);
    mp_m_axi_awprot_converter_1->vector_out(m_axi_concat_awprot_out_1);
    mp_M01_AXI_transactor->AWPROT(m_m_axi_awprot_converter_1_signal);
    mp_m_axi_awvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_1");
    mp_m_axi_awvalid_converter_1->scalar_in(m_m_axi_awvalid_converter_1_signal);
    mp_m_axi_awvalid_converter_1->vector_out(m_axi_concat_awvalid_out_1);
    mp_M01_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_1_signal);
    mp_m_axi_awready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_1");
    mp_m_axi_awready_converter_1->vector_in(m_axi_split_awready_out_1);
    mp_m_axi_awready_converter_1->scalar_out(m_m_axi_awready_converter_1_signal);
    mp_M01_AXI_transactor->AWREADY(m_m_axi_awready_converter_1_signal);
    mp_m_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_1");
    mp_m_axi_wdata_converter_1->vector_in(m_m_axi_wdata_converter_1_signal);
    mp_m_axi_wdata_converter_1->vector_out(m_axi_concat_wdata_out_1);
    mp_M01_AXI_transactor->WDATA(m_m_axi_wdata_converter_1_signal);
    mp_m_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_1");
    mp_m_axi_wstrb_converter_1->vector_in(m_m_axi_wstrb_converter_1_signal);
    mp_m_axi_wstrb_converter_1->vector_out(m_axi_concat_wstrb_out_1);
    mp_M01_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_1_signal);
    mp_m_axi_wvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_1");
    mp_m_axi_wvalid_converter_1->scalar_in(m_m_axi_wvalid_converter_1_signal);
    mp_m_axi_wvalid_converter_1->vector_out(m_axi_concat_wvalid_out_1);
    mp_M01_AXI_transactor->WVALID(m_m_axi_wvalid_converter_1_signal);
    mp_m_axi_wready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_1");
    mp_m_axi_wready_converter_1->vector_in(m_axi_split_wready_out_1);
    mp_m_axi_wready_converter_1->scalar_out(m_m_axi_wready_converter_1_signal);
    mp_M01_AXI_transactor->WREADY(m_m_axi_wready_converter_1_signal);
    mp_m_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_1");
    mp_m_axi_bresp_converter_1->vector_in(m_axi_split_bresp_out_1);
    mp_m_axi_bresp_converter_1->vector_out(m_m_axi_bresp_converter_1_signal);
    mp_M01_AXI_transactor->BRESP(m_m_axi_bresp_converter_1_signal);
    mp_m_axi_bvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_1");
    mp_m_axi_bvalid_converter_1->vector_in(m_axi_split_bvalid_out_1);
    mp_m_axi_bvalid_converter_1->scalar_out(m_m_axi_bvalid_converter_1_signal);
    mp_M01_AXI_transactor->BVALID(m_m_axi_bvalid_converter_1_signal);
    mp_m_axi_bready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_1");
    mp_m_axi_bready_converter_1->scalar_in(m_m_axi_bready_converter_1_signal);
    mp_m_axi_bready_converter_1->vector_out(m_axi_concat_bready_out_1);
    mp_M01_AXI_transactor->BREADY(m_m_axi_bready_converter_1_signal);
    mp_m_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_1");
    mp_m_axi_araddr_converter_1->vector_in(m_m_axi_araddr_converter_1_signal);
    mp_m_axi_araddr_converter_1->vector_out(m_axi_concat_araddr_out_1);
    mp_M01_AXI_transactor->ARADDR(m_m_axi_araddr_converter_1_signal);
    mp_m_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_1");
    mp_m_axi_arprot_converter_1->vector_in(m_m_axi_arprot_converter_1_signal);
    mp_m_axi_arprot_converter_1->vector_out(m_axi_concat_arprot_out_1);
    mp_M01_AXI_transactor->ARPROT(m_m_axi_arprot_converter_1_signal);
    mp_m_axi_arvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_1");
    mp_m_axi_arvalid_converter_1->scalar_in(m_m_axi_arvalid_converter_1_signal);
    mp_m_axi_arvalid_converter_1->vector_out(m_axi_concat_arvalid_out_1);
    mp_M01_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_1_signal);
    mp_m_axi_arready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_1");
    mp_m_axi_arready_converter_1->vector_in(m_axi_split_arready_out_1);
    mp_m_axi_arready_converter_1->scalar_out(m_m_axi_arready_converter_1_signal);
    mp_M01_AXI_transactor->ARREADY(m_m_axi_arready_converter_1_signal);
    mp_m_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_1");
    mp_m_axi_rdata_converter_1->vector_in(m_axi_split_rdata_out_1);
    mp_m_axi_rdata_converter_1->vector_out(m_m_axi_rdata_converter_1_signal);
    mp_M01_AXI_transactor->RDATA(m_m_axi_rdata_converter_1_signal);
    mp_m_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_1");
    mp_m_axi_rresp_converter_1->vector_in(m_axi_split_rresp_out_1);
    mp_m_axi_rresp_converter_1->vector_out(m_m_axi_rresp_converter_1_signal);
    mp_M01_AXI_transactor->RRESP(m_m_axi_rresp_converter_1_signal);
    mp_m_axi_rvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_1");
    mp_m_axi_rvalid_converter_1->vector_in(m_axi_split_rvalid_out_1);
    mp_m_axi_rvalid_converter_1->scalar_out(m_m_axi_rvalid_converter_1_signal);
    mp_M01_AXI_transactor->RVALID(m_m_axi_rvalid_converter_1_signal);
    mp_m_axi_rready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_1");
    mp_m_axi_rready_converter_1->scalar_in(m_m_axi_rready_converter_1_signal);
    mp_m_axi_rready_converter_1->vector_out(m_axi_concat_rready_out_1);
    mp_M01_AXI_transactor->RREADY(m_m_axi_rready_converter_1_signal);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_m_axi_awaddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_2");
    mp_m_axi_awaddr_converter_2->vector_in(m_m_axi_awaddr_converter_2_signal);
    mp_m_axi_awaddr_converter_2->vector_out(m_axi_concat_awaddr_out_2);
    mp_M02_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_2_signal);
    mp_m_axi_awprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_2");
    mp_m_axi_awprot_converter_2->vector_in(m_m_axi_awprot_converter_2_signal);
    mp_m_axi_awprot_converter_2->vector_out(m_axi_concat_awprot_out_2);
    mp_M02_AXI_transactor->AWPROT(m_m_axi_awprot_converter_2_signal);
    mp_m_axi_awvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_2");
    mp_m_axi_awvalid_converter_2->scalar_in(m_m_axi_awvalid_converter_2_signal);
    mp_m_axi_awvalid_converter_2->vector_out(m_axi_concat_awvalid_out_2);
    mp_M02_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_2_signal);
    mp_m_axi_awready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_2");
    mp_m_axi_awready_converter_2->vector_in(m_axi_split_awready_out_2);
    mp_m_axi_awready_converter_2->scalar_out(m_m_axi_awready_converter_2_signal);
    mp_M02_AXI_transactor->AWREADY(m_m_axi_awready_converter_2_signal);
    mp_m_axi_wdata_converter_2 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_2");
    mp_m_axi_wdata_converter_2->vector_in(m_m_axi_wdata_converter_2_signal);
    mp_m_axi_wdata_converter_2->vector_out(m_axi_concat_wdata_out_2);
    mp_M02_AXI_transactor->WDATA(m_m_axi_wdata_converter_2_signal);
    mp_m_axi_wstrb_converter_2 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_2");
    mp_m_axi_wstrb_converter_2->vector_in(m_m_axi_wstrb_converter_2_signal);
    mp_m_axi_wstrb_converter_2->vector_out(m_axi_concat_wstrb_out_2);
    mp_M02_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_2_signal);
    mp_m_axi_wvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_2");
    mp_m_axi_wvalid_converter_2->scalar_in(m_m_axi_wvalid_converter_2_signal);
    mp_m_axi_wvalid_converter_2->vector_out(m_axi_concat_wvalid_out_2);
    mp_M02_AXI_transactor->WVALID(m_m_axi_wvalid_converter_2_signal);
    mp_m_axi_wready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_2");
    mp_m_axi_wready_converter_2->vector_in(m_axi_split_wready_out_2);
    mp_m_axi_wready_converter_2->scalar_out(m_m_axi_wready_converter_2_signal);
    mp_M02_AXI_transactor->WREADY(m_m_axi_wready_converter_2_signal);
    mp_m_axi_bresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_2");
    mp_m_axi_bresp_converter_2->vector_in(m_axi_split_bresp_out_2);
    mp_m_axi_bresp_converter_2->vector_out(m_m_axi_bresp_converter_2_signal);
    mp_M02_AXI_transactor->BRESP(m_m_axi_bresp_converter_2_signal);
    mp_m_axi_bvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_2");
    mp_m_axi_bvalid_converter_2->vector_in(m_axi_split_bvalid_out_2);
    mp_m_axi_bvalid_converter_2->scalar_out(m_m_axi_bvalid_converter_2_signal);
    mp_M02_AXI_transactor->BVALID(m_m_axi_bvalid_converter_2_signal);
    mp_m_axi_bready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_2");
    mp_m_axi_bready_converter_2->scalar_in(m_m_axi_bready_converter_2_signal);
    mp_m_axi_bready_converter_2->vector_out(m_axi_concat_bready_out_2);
    mp_M02_AXI_transactor->BREADY(m_m_axi_bready_converter_2_signal);
    mp_m_axi_araddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_2");
    mp_m_axi_araddr_converter_2->vector_in(m_m_axi_araddr_converter_2_signal);
    mp_m_axi_araddr_converter_2->vector_out(m_axi_concat_araddr_out_2);
    mp_M02_AXI_transactor->ARADDR(m_m_axi_araddr_converter_2_signal);
    mp_m_axi_arprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_2");
    mp_m_axi_arprot_converter_2->vector_in(m_m_axi_arprot_converter_2_signal);
    mp_m_axi_arprot_converter_2->vector_out(m_axi_concat_arprot_out_2);
    mp_M02_AXI_transactor->ARPROT(m_m_axi_arprot_converter_2_signal);
    mp_m_axi_arvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_2");
    mp_m_axi_arvalid_converter_2->scalar_in(m_m_axi_arvalid_converter_2_signal);
    mp_m_axi_arvalid_converter_2->vector_out(m_axi_concat_arvalid_out_2);
    mp_M02_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_2_signal);
    mp_m_axi_arready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_2");
    mp_m_axi_arready_converter_2->vector_in(m_axi_split_arready_out_2);
    mp_m_axi_arready_converter_2->scalar_out(m_m_axi_arready_converter_2_signal);
    mp_M02_AXI_transactor->ARREADY(m_m_axi_arready_converter_2_signal);
    mp_m_axi_rdata_converter_2 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_2");
    mp_m_axi_rdata_converter_2->vector_in(m_axi_split_rdata_out_2);
    mp_m_axi_rdata_converter_2->vector_out(m_m_axi_rdata_converter_2_signal);
    mp_M02_AXI_transactor->RDATA(m_m_axi_rdata_converter_2_signal);
    mp_m_axi_rresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_2");
    mp_m_axi_rresp_converter_2->vector_in(m_axi_split_rresp_out_2);
    mp_m_axi_rresp_converter_2->vector_out(m_m_axi_rresp_converter_2_signal);
    mp_M02_AXI_transactor->RRESP(m_m_axi_rresp_converter_2_signal);
    mp_m_axi_rvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_2");
    mp_m_axi_rvalid_converter_2->vector_in(m_axi_split_rvalid_out_2);
    mp_m_axi_rvalid_converter_2->scalar_out(m_m_axi_rvalid_converter_2_signal);
    mp_M02_AXI_transactor->RVALID(m_m_axi_rvalid_converter_2_signal);
    mp_m_axi_rready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_2");
    mp_m_axi_rready_converter_2->scalar_in(m_m_axi_rready_converter_2_signal);
    mp_m_axi_rready_converter_2->vector_out(m_axi_concat_rready_out_2);
    mp_M02_AXI_transactor->RREADY(m_m_axi_rready_converter_2_signal);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_m_axi_awaddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_3");
    mp_m_axi_awaddr_converter_3->vector_in(m_m_axi_awaddr_converter_3_signal);
    mp_m_axi_awaddr_converter_3->vector_out(m_axi_concat_awaddr_out_3);
    mp_M03_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_3_signal);
    mp_m_axi_awprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_3");
    mp_m_axi_awprot_converter_3->vector_in(m_m_axi_awprot_converter_3_signal);
    mp_m_axi_awprot_converter_3->vector_out(m_axi_concat_awprot_out_3);
    mp_M03_AXI_transactor->AWPROT(m_m_axi_awprot_converter_3_signal);
    mp_m_axi_awvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_3");
    mp_m_axi_awvalid_converter_3->scalar_in(m_m_axi_awvalid_converter_3_signal);
    mp_m_axi_awvalid_converter_3->vector_out(m_axi_concat_awvalid_out_3);
    mp_M03_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_3_signal);
    mp_m_axi_awready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_3");
    mp_m_axi_awready_converter_3->vector_in(m_axi_split_awready_out_3);
    mp_m_axi_awready_converter_3->scalar_out(m_m_axi_awready_converter_3_signal);
    mp_M03_AXI_transactor->AWREADY(m_m_axi_awready_converter_3_signal);
    mp_m_axi_wdata_converter_3 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_3");
    mp_m_axi_wdata_converter_3->vector_in(m_m_axi_wdata_converter_3_signal);
    mp_m_axi_wdata_converter_3->vector_out(m_axi_concat_wdata_out_3);
    mp_M03_AXI_transactor->WDATA(m_m_axi_wdata_converter_3_signal);
    mp_m_axi_wstrb_converter_3 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_3");
    mp_m_axi_wstrb_converter_3->vector_in(m_m_axi_wstrb_converter_3_signal);
    mp_m_axi_wstrb_converter_3->vector_out(m_axi_concat_wstrb_out_3);
    mp_M03_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_3_signal);
    mp_m_axi_wvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_3");
    mp_m_axi_wvalid_converter_3->scalar_in(m_m_axi_wvalid_converter_3_signal);
    mp_m_axi_wvalid_converter_3->vector_out(m_axi_concat_wvalid_out_3);
    mp_M03_AXI_transactor->WVALID(m_m_axi_wvalid_converter_3_signal);
    mp_m_axi_wready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_3");
    mp_m_axi_wready_converter_3->vector_in(m_axi_split_wready_out_3);
    mp_m_axi_wready_converter_3->scalar_out(m_m_axi_wready_converter_3_signal);
    mp_M03_AXI_transactor->WREADY(m_m_axi_wready_converter_3_signal);
    mp_m_axi_bresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_3");
    mp_m_axi_bresp_converter_3->vector_in(m_axi_split_bresp_out_3);
    mp_m_axi_bresp_converter_3->vector_out(m_m_axi_bresp_converter_3_signal);
    mp_M03_AXI_transactor->BRESP(m_m_axi_bresp_converter_3_signal);
    mp_m_axi_bvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_3");
    mp_m_axi_bvalid_converter_3->vector_in(m_axi_split_bvalid_out_3);
    mp_m_axi_bvalid_converter_3->scalar_out(m_m_axi_bvalid_converter_3_signal);
    mp_M03_AXI_transactor->BVALID(m_m_axi_bvalid_converter_3_signal);
    mp_m_axi_bready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_3");
    mp_m_axi_bready_converter_3->scalar_in(m_m_axi_bready_converter_3_signal);
    mp_m_axi_bready_converter_3->vector_out(m_axi_concat_bready_out_3);
    mp_M03_AXI_transactor->BREADY(m_m_axi_bready_converter_3_signal);
    mp_m_axi_araddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_3");
    mp_m_axi_araddr_converter_3->vector_in(m_m_axi_araddr_converter_3_signal);
    mp_m_axi_araddr_converter_3->vector_out(m_axi_concat_araddr_out_3);
    mp_M03_AXI_transactor->ARADDR(m_m_axi_araddr_converter_3_signal);
    mp_m_axi_arprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_3");
    mp_m_axi_arprot_converter_3->vector_in(m_m_axi_arprot_converter_3_signal);
    mp_m_axi_arprot_converter_3->vector_out(m_axi_concat_arprot_out_3);
    mp_M03_AXI_transactor->ARPROT(m_m_axi_arprot_converter_3_signal);
    mp_m_axi_arvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_3");
    mp_m_axi_arvalid_converter_3->scalar_in(m_m_axi_arvalid_converter_3_signal);
    mp_m_axi_arvalid_converter_3->vector_out(m_axi_concat_arvalid_out_3);
    mp_M03_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_3_signal);
    mp_m_axi_arready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_3");
    mp_m_axi_arready_converter_3->vector_in(m_axi_split_arready_out_3);
    mp_m_axi_arready_converter_3->scalar_out(m_m_axi_arready_converter_3_signal);
    mp_M03_AXI_transactor->ARREADY(m_m_axi_arready_converter_3_signal);
    mp_m_axi_rdata_converter_3 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_3");
    mp_m_axi_rdata_converter_3->vector_in(m_axi_split_rdata_out_3);
    mp_m_axi_rdata_converter_3->vector_out(m_m_axi_rdata_converter_3_signal);
    mp_M03_AXI_transactor->RDATA(m_m_axi_rdata_converter_3_signal);
    mp_m_axi_rresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_3");
    mp_m_axi_rresp_converter_3->vector_in(m_axi_split_rresp_out_3);
    mp_m_axi_rresp_converter_3->vector_out(m_m_axi_rresp_converter_3_signal);
    mp_M03_AXI_transactor->RRESP(m_m_axi_rresp_converter_3_signal);
    mp_m_axi_rvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_3");
    mp_m_axi_rvalid_converter_3->vector_in(m_axi_split_rvalid_out_3);
    mp_m_axi_rvalid_converter_3->scalar_out(m_m_axi_rvalid_converter_3_signal);
    mp_M03_AXI_transactor->RVALID(m_m_axi_rvalid_converter_3_signal);
    mp_m_axi_rready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_3");
    mp_m_axi_rready_converter_3->scalar_in(m_m_axi_rready_converter_3_signal);
    mp_m_axi_rready_converter_3->vector_out(m_axi_concat_rready_out_3);
    mp_M03_AXI_transactor->RREADY(m_m_axi_rready_converter_3_signal);
    mp_M03_AXI_transactor->CLK(aclk);
    mp_M03_AXI_transactor->RST(aresetn);

    // M03_AXI' transactor sockets

    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M04_AXI' transactor parameters
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);

    // M04_AXI' transactor ports

    mp_m_axi_awaddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_4");
    mp_m_axi_awaddr_converter_4->vector_in(m_m_axi_awaddr_converter_4_signal);
    mp_m_axi_awaddr_converter_4->vector_out(m_axi_concat_awaddr_out_4);
    mp_M04_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_4_signal);
    mp_m_axi_awprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_4");
    mp_m_axi_awprot_converter_4->vector_in(m_m_axi_awprot_converter_4_signal);
    mp_m_axi_awprot_converter_4->vector_out(m_axi_concat_awprot_out_4);
    mp_M04_AXI_transactor->AWPROT(m_m_axi_awprot_converter_4_signal);
    mp_m_axi_awvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_4");
    mp_m_axi_awvalid_converter_4->scalar_in(m_m_axi_awvalid_converter_4_signal);
    mp_m_axi_awvalid_converter_4->vector_out(m_axi_concat_awvalid_out_4);
    mp_M04_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_4_signal);
    mp_m_axi_awready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_4");
    mp_m_axi_awready_converter_4->vector_in(m_axi_split_awready_out_4);
    mp_m_axi_awready_converter_4->scalar_out(m_m_axi_awready_converter_4_signal);
    mp_M04_AXI_transactor->AWREADY(m_m_axi_awready_converter_4_signal);
    mp_m_axi_wdata_converter_4 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_4");
    mp_m_axi_wdata_converter_4->vector_in(m_m_axi_wdata_converter_4_signal);
    mp_m_axi_wdata_converter_4->vector_out(m_axi_concat_wdata_out_4);
    mp_M04_AXI_transactor->WDATA(m_m_axi_wdata_converter_4_signal);
    mp_m_axi_wstrb_converter_4 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_4");
    mp_m_axi_wstrb_converter_4->vector_in(m_m_axi_wstrb_converter_4_signal);
    mp_m_axi_wstrb_converter_4->vector_out(m_axi_concat_wstrb_out_4);
    mp_M04_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_4_signal);
    mp_m_axi_wvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_4");
    mp_m_axi_wvalid_converter_4->scalar_in(m_m_axi_wvalid_converter_4_signal);
    mp_m_axi_wvalid_converter_4->vector_out(m_axi_concat_wvalid_out_4);
    mp_M04_AXI_transactor->WVALID(m_m_axi_wvalid_converter_4_signal);
    mp_m_axi_wready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_4");
    mp_m_axi_wready_converter_4->vector_in(m_axi_split_wready_out_4);
    mp_m_axi_wready_converter_4->scalar_out(m_m_axi_wready_converter_4_signal);
    mp_M04_AXI_transactor->WREADY(m_m_axi_wready_converter_4_signal);
    mp_m_axi_bresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_4");
    mp_m_axi_bresp_converter_4->vector_in(m_axi_split_bresp_out_4);
    mp_m_axi_bresp_converter_4->vector_out(m_m_axi_bresp_converter_4_signal);
    mp_M04_AXI_transactor->BRESP(m_m_axi_bresp_converter_4_signal);
    mp_m_axi_bvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_4");
    mp_m_axi_bvalid_converter_4->vector_in(m_axi_split_bvalid_out_4);
    mp_m_axi_bvalid_converter_4->scalar_out(m_m_axi_bvalid_converter_4_signal);
    mp_M04_AXI_transactor->BVALID(m_m_axi_bvalid_converter_4_signal);
    mp_m_axi_bready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_4");
    mp_m_axi_bready_converter_4->scalar_in(m_m_axi_bready_converter_4_signal);
    mp_m_axi_bready_converter_4->vector_out(m_axi_concat_bready_out_4);
    mp_M04_AXI_transactor->BREADY(m_m_axi_bready_converter_4_signal);
    mp_m_axi_araddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_4");
    mp_m_axi_araddr_converter_4->vector_in(m_m_axi_araddr_converter_4_signal);
    mp_m_axi_araddr_converter_4->vector_out(m_axi_concat_araddr_out_4);
    mp_M04_AXI_transactor->ARADDR(m_m_axi_araddr_converter_4_signal);
    mp_m_axi_arprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_4");
    mp_m_axi_arprot_converter_4->vector_in(m_m_axi_arprot_converter_4_signal);
    mp_m_axi_arprot_converter_4->vector_out(m_axi_concat_arprot_out_4);
    mp_M04_AXI_transactor->ARPROT(m_m_axi_arprot_converter_4_signal);
    mp_m_axi_arvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_4");
    mp_m_axi_arvalid_converter_4->scalar_in(m_m_axi_arvalid_converter_4_signal);
    mp_m_axi_arvalid_converter_4->vector_out(m_axi_concat_arvalid_out_4);
    mp_M04_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_4_signal);
    mp_m_axi_arready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_4");
    mp_m_axi_arready_converter_4->vector_in(m_axi_split_arready_out_4);
    mp_m_axi_arready_converter_4->scalar_out(m_m_axi_arready_converter_4_signal);
    mp_M04_AXI_transactor->ARREADY(m_m_axi_arready_converter_4_signal);
    mp_m_axi_rdata_converter_4 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_4");
    mp_m_axi_rdata_converter_4->vector_in(m_axi_split_rdata_out_4);
    mp_m_axi_rdata_converter_4->vector_out(m_m_axi_rdata_converter_4_signal);
    mp_M04_AXI_transactor->RDATA(m_m_axi_rdata_converter_4_signal);
    mp_m_axi_rresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_4");
    mp_m_axi_rresp_converter_4->vector_in(m_axi_split_rresp_out_4);
    mp_m_axi_rresp_converter_4->vector_out(m_m_axi_rresp_converter_4_signal);
    mp_M04_AXI_transactor->RRESP(m_m_axi_rresp_converter_4_signal);
    mp_m_axi_rvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_4");
    mp_m_axi_rvalid_converter_4->vector_in(m_axi_split_rvalid_out_4);
    mp_m_axi_rvalid_converter_4->scalar_out(m_m_axi_rvalid_converter_4_signal);
    mp_M04_AXI_transactor->RVALID(m_m_axi_rvalid_converter_4_signal);
    mp_m_axi_rready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_4");
    mp_m_axi_rready_converter_4->scalar_in(m_m_axi_rready_converter_4_signal);
    mp_m_axi_rready_converter_4->vector_out(m_axi_concat_rready_out_4);
    mp_M04_AXI_transactor->RREADY(m_m_axi_rready_converter_4_signal);
    mp_M04_AXI_transactor->CLK(aclk);
    mp_M04_AXI_transactor->RST(aresetn);

    // M04_AXI' transactor sockets

    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M05_AXI' transactor parameters
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);

    // M05_AXI' transactor ports

    mp_m_axi_awaddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_5");
    mp_m_axi_awaddr_converter_5->vector_in(m_m_axi_awaddr_converter_5_signal);
    mp_m_axi_awaddr_converter_5->vector_out(m_axi_concat_awaddr_out_5);
    mp_M05_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_5_signal);
    mp_m_axi_awprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_5");
    mp_m_axi_awprot_converter_5->vector_in(m_m_axi_awprot_converter_5_signal);
    mp_m_axi_awprot_converter_5->vector_out(m_axi_concat_awprot_out_5);
    mp_M05_AXI_transactor->AWPROT(m_m_axi_awprot_converter_5_signal);
    mp_m_axi_awvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_5");
    mp_m_axi_awvalid_converter_5->scalar_in(m_m_axi_awvalid_converter_5_signal);
    mp_m_axi_awvalid_converter_5->vector_out(m_axi_concat_awvalid_out_5);
    mp_M05_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_5_signal);
    mp_m_axi_awready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_5");
    mp_m_axi_awready_converter_5->vector_in(m_axi_split_awready_out_5);
    mp_m_axi_awready_converter_5->scalar_out(m_m_axi_awready_converter_5_signal);
    mp_M05_AXI_transactor->AWREADY(m_m_axi_awready_converter_5_signal);
    mp_m_axi_wdata_converter_5 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_5");
    mp_m_axi_wdata_converter_5->vector_in(m_m_axi_wdata_converter_5_signal);
    mp_m_axi_wdata_converter_5->vector_out(m_axi_concat_wdata_out_5);
    mp_M05_AXI_transactor->WDATA(m_m_axi_wdata_converter_5_signal);
    mp_m_axi_wstrb_converter_5 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_5");
    mp_m_axi_wstrb_converter_5->vector_in(m_m_axi_wstrb_converter_5_signal);
    mp_m_axi_wstrb_converter_5->vector_out(m_axi_concat_wstrb_out_5);
    mp_M05_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_5_signal);
    mp_m_axi_wvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_5");
    mp_m_axi_wvalid_converter_5->scalar_in(m_m_axi_wvalid_converter_5_signal);
    mp_m_axi_wvalid_converter_5->vector_out(m_axi_concat_wvalid_out_5);
    mp_M05_AXI_transactor->WVALID(m_m_axi_wvalid_converter_5_signal);
    mp_m_axi_wready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_5");
    mp_m_axi_wready_converter_5->vector_in(m_axi_split_wready_out_5);
    mp_m_axi_wready_converter_5->scalar_out(m_m_axi_wready_converter_5_signal);
    mp_M05_AXI_transactor->WREADY(m_m_axi_wready_converter_5_signal);
    mp_m_axi_bresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_5");
    mp_m_axi_bresp_converter_5->vector_in(m_axi_split_bresp_out_5);
    mp_m_axi_bresp_converter_5->vector_out(m_m_axi_bresp_converter_5_signal);
    mp_M05_AXI_transactor->BRESP(m_m_axi_bresp_converter_5_signal);
    mp_m_axi_bvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_5");
    mp_m_axi_bvalid_converter_5->vector_in(m_axi_split_bvalid_out_5);
    mp_m_axi_bvalid_converter_5->scalar_out(m_m_axi_bvalid_converter_5_signal);
    mp_M05_AXI_transactor->BVALID(m_m_axi_bvalid_converter_5_signal);
    mp_m_axi_bready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_5");
    mp_m_axi_bready_converter_5->scalar_in(m_m_axi_bready_converter_5_signal);
    mp_m_axi_bready_converter_5->vector_out(m_axi_concat_bready_out_5);
    mp_M05_AXI_transactor->BREADY(m_m_axi_bready_converter_5_signal);
    mp_m_axi_araddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_5");
    mp_m_axi_araddr_converter_5->vector_in(m_m_axi_araddr_converter_5_signal);
    mp_m_axi_araddr_converter_5->vector_out(m_axi_concat_araddr_out_5);
    mp_M05_AXI_transactor->ARADDR(m_m_axi_araddr_converter_5_signal);
    mp_m_axi_arprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_5");
    mp_m_axi_arprot_converter_5->vector_in(m_m_axi_arprot_converter_5_signal);
    mp_m_axi_arprot_converter_5->vector_out(m_axi_concat_arprot_out_5);
    mp_M05_AXI_transactor->ARPROT(m_m_axi_arprot_converter_5_signal);
    mp_m_axi_arvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_5");
    mp_m_axi_arvalid_converter_5->scalar_in(m_m_axi_arvalid_converter_5_signal);
    mp_m_axi_arvalid_converter_5->vector_out(m_axi_concat_arvalid_out_5);
    mp_M05_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_5_signal);
    mp_m_axi_arready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_5");
    mp_m_axi_arready_converter_5->vector_in(m_axi_split_arready_out_5);
    mp_m_axi_arready_converter_5->scalar_out(m_m_axi_arready_converter_5_signal);
    mp_M05_AXI_transactor->ARREADY(m_m_axi_arready_converter_5_signal);
    mp_m_axi_rdata_converter_5 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_5");
    mp_m_axi_rdata_converter_5->vector_in(m_axi_split_rdata_out_5);
    mp_m_axi_rdata_converter_5->vector_out(m_m_axi_rdata_converter_5_signal);
    mp_M05_AXI_transactor->RDATA(m_m_axi_rdata_converter_5_signal);
    mp_m_axi_rresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_5");
    mp_m_axi_rresp_converter_5->vector_in(m_axi_split_rresp_out_5);
    mp_m_axi_rresp_converter_5->vector_out(m_m_axi_rresp_converter_5_signal);
    mp_M05_AXI_transactor->RRESP(m_m_axi_rresp_converter_5_signal);
    mp_m_axi_rvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_5");
    mp_m_axi_rvalid_converter_5->vector_in(m_axi_split_rvalid_out_5);
    mp_m_axi_rvalid_converter_5->scalar_out(m_m_axi_rvalid_converter_5_signal);
    mp_M05_AXI_transactor->RVALID(m_m_axi_rvalid_converter_5_signal);
    mp_m_axi_rready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_5");
    mp_m_axi_rready_converter_5->scalar_in(m_m_axi_rready_converter_5_signal);
    mp_m_axi_rready_converter_5->vector_out(m_axi_concat_rready_out_5);
    mp_M05_AXI_transactor->RREADY(m_m_axi_rready_converter_5_signal);
    mp_M05_AXI_transactor->CLK(aclk);
    mp_M05_AXI_transactor->RST(aresetn);

    // M05_AXI' transactor sockets

    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M06_AXI' transactor parameters
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);

    // M06_AXI' transactor ports

    mp_m_axi_awaddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_6");
    mp_m_axi_awaddr_converter_6->vector_in(m_m_axi_awaddr_converter_6_signal);
    mp_m_axi_awaddr_converter_6->vector_out(m_axi_concat_awaddr_out_6);
    mp_M06_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_6_signal);
    mp_m_axi_awprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_6");
    mp_m_axi_awprot_converter_6->vector_in(m_m_axi_awprot_converter_6_signal);
    mp_m_axi_awprot_converter_6->vector_out(m_axi_concat_awprot_out_6);
    mp_M06_AXI_transactor->AWPROT(m_m_axi_awprot_converter_6_signal);
    mp_m_axi_awvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_6");
    mp_m_axi_awvalid_converter_6->scalar_in(m_m_axi_awvalid_converter_6_signal);
    mp_m_axi_awvalid_converter_6->vector_out(m_axi_concat_awvalid_out_6);
    mp_M06_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_6_signal);
    mp_m_axi_awready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_6");
    mp_m_axi_awready_converter_6->vector_in(m_axi_split_awready_out_6);
    mp_m_axi_awready_converter_6->scalar_out(m_m_axi_awready_converter_6_signal);
    mp_M06_AXI_transactor->AWREADY(m_m_axi_awready_converter_6_signal);
    mp_m_axi_wdata_converter_6 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_6");
    mp_m_axi_wdata_converter_6->vector_in(m_m_axi_wdata_converter_6_signal);
    mp_m_axi_wdata_converter_6->vector_out(m_axi_concat_wdata_out_6);
    mp_M06_AXI_transactor->WDATA(m_m_axi_wdata_converter_6_signal);
    mp_m_axi_wstrb_converter_6 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_6");
    mp_m_axi_wstrb_converter_6->vector_in(m_m_axi_wstrb_converter_6_signal);
    mp_m_axi_wstrb_converter_6->vector_out(m_axi_concat_wstrb_out_6);
    mp_M06_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_6_signal);
    mp_m_axi_wvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_6");
    mp_m_axi_wvalid_converter_6->scalar_in(m_m_axi_wvalid_converter_6_signal);
    mp_m_axi_wvalid_converter_6->vector_out(m_axi_concat_wvalid_out_6);
    mp_M06_AXI_transactor->WVALID(m_m_axi_wvalid_converter_6_signal);
    mp_m_axi_wready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_6");
    mp_m_axi_wready_converter_6->vector_in(m_axi_split_wready_out_6);
    mp_m_axi_wready_converter_6->scalar_out(m_m_axi_wready_converter_6_signal);
    mp_M06_AXI_transactor->WREADY(m_m_axi_wready_converter_6_signal);
    mp_m_axi_bresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_6");
    mp_m_axi_bresp_converter_6->vector_in(m_axi_split_bresp_out_6);
    mp_m_axi_bresp_converter_6->vector_out(m_m_axi_bresp_converter_6_signal);
    mp_M06_AXI_transactor->BRESP(m_m_axi_bresp_converter_6_signal);
    mp_m_axi_bvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_6");
    mp_m_axi_bvalid_converter_6->vector_in(m_axi_split_bvalid_out_6);
    mp_m_axi_bvalid_converter_6->scalar_out(m_m_axi_bvalid_converter_6_signal);
    mp_M06_AXI_transactor->BVALID(m_m_axi_bvalid_converter_6_signal);
    mp_m_axi_bready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_6");
    mp_m_axi_bready_converter_6->scalar_in(m_m_axi_bready_converter_6_signal);
    mp_m_axi_bready_converter_6->vector_out(m_axi_concat_bready_out_6);
    mp_M06_AXI_transactor->BREADY(m_m_axi_bready_converter_6_signal);
    mp_m_axi_araddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_6");
    mp_m_axi_araddr_converter_6->vector_in(m_m_axi_araddr_converter_6_signal);
    mp_m_axi_araddr_converter_6->vector_out(m_axi_concat_araddr_out_6);
    mp_M06_AXI_transactor->ARADDR(m_m_axi_araddr_converter_6_signal);
    mp_m_axi_arprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_6");
    mp_m_axi_arprot_converter_6->vector_in(m_m_axi_arprot_converter_6_signal);
    mp_m_axi_arprot_converter_6->vector_out(m_axi_concat_arprot_out_6);
    mp_M06_AXI_transactor->ARPROT(m_m_axi_arprot_converter_6_signal);
    mp_m_axi_arvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_6");
    mp_m_axi_arvalid_converter_6->scalar_in(m_m_axi_arvalid_converter_6_signal);
    mp_m_axi_arvalid_converter_6->vector_out(m_axi_concat_arvalid_out_6);
    mp_M06_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_6_signal);
    mp_m_axi_arready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_6");
    mp_m_axi_arready_converter_6->vector_in(m_axi_split_arready_out_6);
    mp_m_axi_arready_converter_6->scalar_out(m_m_axi_arready_converter_6_signal);
    mp_M06_AXI_transactor->ARREADY(m_m_axi_arready_converter_6_signal);
    mp_m_axi_rdata_converter_6 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_6");
    mp_m_axi_rdata_converter_6->vector_in(m_axi_split_rdata_out_6);
    mp_m_axi_rdata_converter_6->vector_out(m_m_axi_rdata_converter_6_signal);
    mp_M06_AXI_transactor->RDATA(m_m_axi_rdata_converter_6_signal);
    mp_m_axi_rresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_6");
    mp_m_axi_rresp_converter_6->vector_in(m_axi_split_rresp_out_6);
    mp_m_axi_rresp_converter_6->vector_out(m_m_axi_rresp_converter_6_signal);
    mp_M06_AXI_transactor->RRESP(m_m_axi_rresp_converter_6_signal);
    mp_m_axi_rvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_6");
    mp_m_axi_rvalid_converter_6->vector_in(m_axi_split_rvalid_out_6);
    mp_m_axi_rvalid_converter_6->scalar_out(m_m_axi_rvalid_converter_6_signal);
    mp_M06_AXI_transactor->RVALID(m_m_axi_rvalid_converter_6_signal);
    mp_m_axi_rready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_6");
    mp_m_axi_rready_converter_6->scalar_in(m_m_axi_rready_converter_6_signal);
    mp_m_axi_rready_converter_6->vector_out(m_axi_concat_rready_out_6);
    mp_M06_AXI_transactor->RREADY(m_m_axi_rready_converter_6_signal);
    mp_M06_AXI_transactor->CLK(aclk);
    mp_M06_AXI_transactor->RST(aresetn);

    // M06_AXI' transactor sockets

    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M07_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M07_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M07_AXI' transactor parameters
    xsc::common_cpp::properties M07_AXI_transactor_param_props;
    M07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M07_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M07_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M07_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M07_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M07_AXI_transactor", M07_AXI_transactor_param_props);

    // M07_AXI' transactor ports

    mp_m_axi_awaddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_7");
    mp_m_axi_awaddr_converter_7->vector_in(m_m_axi_awaddr_converter_7_signal);
    mp_m_axi_awaddr_converter_7->vector_out(m_axi_concat_awaddr_out_7);
    mp_M07_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_7_signal);
    mp_m_axi_awprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_7");
    mp_m_axi_awprot_converter_7->vector_in(m_m_axi_awprot_converter_7_signal);
    mp_m_axi_awprot_converter_7->vector_out(m_axi_concat_awprot_out_7);
    mp_M07_AXI_transactor->AWPROT(m_m_axi_awprot_converter_7_signal);
    mp_m_axi_awvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_7");
    mp_m_axi_awvalid_converter_7->scalar_in(m_m_axi_awvalid_converter_7_signal);
    mp_m_axi_awvalid_converter_7->vector_out(m_axi_concat_awvalid_out_7);
    mp_M07_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_7_signal);
    mp_m_axi_awready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_7");
    mp_m_axi_awready_converter_7->vector_in(m_axi_split_awready_out_7);
    mp_m_axi_awready_converter_7->scalar_out(m_m_axi_awready_converter_7_signal);
    mp_M07_AXI_transactor->AWREADY(m_m_axi_awready_converter_7_signal);
    mp_m_axi_wdata_converter_7 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_7");
    mp_m_axi_wdata_converter_7->vector_in(m_m_axi_wdata_converter_7_signal);
    mp_m_axi_wdata_converter_7->vector_out(m_axi_concat_wdata_out_7);
    mp_M07_AXI_transactor->WDATA(m_m_axi_wdata_converter_7_signal);
    mp_m_axi_wstrb_converter_7 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_7");
    mp_m_axi_wstrb_converter_7->vector_in(m_m_axi_wstrb_converter_7_signal);
    mp_m_axi_wstrb_converter_7->vector_out(m_axi_concat_wstrb_out_7);
    mp_M07_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_7_signal);
    mp_m_axi_wvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_7");
    mp_m_axi_wvalid_converter_7->scalar_in(m_m_axi_wvalid_converter_7_signal);
    mp_m_axi_wvalid_converter_7->vector_out(m_axi_concat_wvalid_out_7);
    mp_M07_AXI_transactor->WVALID(m_m_axi_wvalid_converter_7_signal);
    mp_m_axi_wready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_7");
    mp_m_axi_wready_converter_7->vector_in(m_axi_split_wready_out_7);
    mp_m_axi_wready_converter_7->scalar_out(m_m_axi_wready_converter_7_signal);
    mp_M07_AXI_transactor->WREADY(m_m_axi_wready_converter_7_signal);
    mp_m_axi_bresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_7");
    mp_m_axi_bresp_converter_7->vector_in(m_axi_split_bresp_out_7);
    mp_m_axi_bresp_converter_7->vector_out(m_m_axi_bresp_converter_7_signal);
    mp_M07_AXI_transactor->BRESP(m_m_axi_bresp_converter_7_signal);
    mp_m_axi_bvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_7");
    mp_m_axi_bvalid_converter_7->vector_in(m_axi_split_bvalid_out_7);
    mp_m_axi_bvalid_converter_7->scalar_out(m_m_axi_bvalid_converter_7_signal);
    mp_M07_AXI_transactor->BVALID(m_m_axi_bvalid_converter_7_signal);
    mp_m_axi_bready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_7");
    mp_m_axi_bready_converter_7->scalar_in(m_m_axi_bready_converter_7_signal);
    mp_m_axi_bready_converter_7->vector_out(m_axi_concat_bready_out_7);
    mp_M07_AXI_transactor->BREADY(m_m_axi_bready_converter_7_signal);
    mp_m_axi_araddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_7");
    mp_m_axi_araddr_converter_7->vector_in(m_m_axi_araddr_converter_7_signal);
    mp_m_axi_araddr_converter_7->vector_out(m_axi_concat_araddr_out_7);
    mp_M07_AXI_transactor->ARADDR(m_m_axi_araddr_converter_7_signal);
    mp_m_axi_arprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_7");
    mp_m_axi_arprot_converter_7->vector_in(m_m_axi_arprot_converter_7_signal);
    mp_m_axi_arprot_converter_7->vector_out(m_axi_concat_arprot_out_7);
    mp_M07_AXI_transactor->ARPROT(m_m_axi_arprot_converter_7_signal);
    mp_m_axi_arvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_7");
    mp_m_axi_arvalid_converter_7->scalar_in(m_m_axi_arvalid_converter_7_signal);
    mp_m_axi_arvalid_converter_7->vector_out(m_axi_concat_arvalid_out_7);
    mp_M07_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_7_signal);
    mp_m_axi_arready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_7");
    mp_m_axi_arready_converter_7->vector_in(m_axi_split_arready_out_7);
    mp_m_axi_arready_converter_7->scalar_out(m_m_axi_arready_converter_7_signal);
    mp_M07_AXI_transactor->ARREADY(m_m_axi_arready_converter_7_signal);
    mp_m_axi_rdata_converter_7 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_7");
    mp_m_axi_rdata_converter_7->vector_in(m_axi_split_rdata_out_7);
    mp_m_axi_rdata_converter_7->vector_out(m_m_axi_rdata_converter_7_signal);
    mp_M07_AXI_transactor->RDATA(m_m_axi_rdata_converter_7_signal);
    mp_m_axi_rresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_7");
    mp_m_axi_rresp_converter_7->vector_in(m_axi_split_rresp_out_7);
    mp_m_axi_rresp_converter_7->vector_out(m_m_axi_rresp_converter_7_signal);
    mp_M07_AXI_transactor->RRESP(m_m_axi_rresp_converter_7_signal);
    mp_m_axi_rvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_7");
    mp_m_axi_rvalid_converter_7->vector_in(m_axi_split_rvalid_out_7);
    mp_m_axi_rvalid_converter_7->scalar_out(m_m_axi_rvalid_converter_7_signal);
    mp_M07_AXI_transactor->RVALID(m_m_axi_rvalid_converter_7_signal);
    mp_m_axi_rready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_7");
    mp_m_axi_rready_converter_7->scalar_in(m_m_axi_rready_converter_7_signal);
    mp_m_axi_rready_converter_7->vector_out(m_axi_concat_rready_out_7);
    mp_M07_AXI_transactor->RREADY(m_m_axi_rready_converter_7_signal);
    mp_M07_AXI_transactor->CLK(aclk);
    mp_M07_AXI_transactor->RST(aresetn);

    // M07_AXI' transactor sockets

    mp_impl->initiator_7_rd_socket->bind(*(mp_M07_AXI_transactor->rd_socket));
    mp_impl->initiator_7_wr_socket->bind(*(mp_M07_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M08_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M08_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M08_AXI' transactor parameters
    xsc::common_cpp::properties M08_AXI_transactor_param_props;
    M08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M08_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M08_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M08_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M08_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M08_AXI_transactor", M08_AXI_transactor_param_props);

    // M08_AXI' transactor ports

    mp_m_axi_awaddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_8");
    mp_m_axi_awaddr_converter_8->vector_in(m_m_axi_awaddr_converter_8_signal);
    mp_m_axi_awaddr_converter_8->vector_out(m_axi_concat_awaddr_out_8);
    mp_M08_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_8_signal);
    mp_m_axi_awprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_8");
    mp_m_axi_awprot_converter_8->vector_in(m_m_axi_awprot_converter_8_signal);
    mp_m_axi_awprot_converter_8->vector_out(m_axi_concat_awprot_out_8);
    mp_M08_AXI_transactor->AWPROT(m_m_axi_awprot_converter_8_signal);
    mp_m_axi_awvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_8");
    mp_m_axi_awvalid_converter_8->scalar_in(m_m_axi_awvalid_converter_8_signal);
    mp_m_axi_awvalid_converter_8->vector_out(m_axi_concat_awvalid_out_8);
    mp_M08_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_8_signal);
    mp_m_axi_awready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_8");
    mp_m_axi_awready_converter_8->vector_in(m_axi_split_awready_out_8);
    mp_m_axi_awready_converter_8->scalar_out(m_m_axi_awready_converter_8_signal);
    mp_M08_AXI_transactor->AWREADY(m_m_axi_awready_converter_8_signal);
    mp_m_axi_wdata_converter_8 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_8");
    mp_m_axi_wdata_converter_8->vector_in(m_m_axi_wdata_converter_8_signal);
    mp_m_axi_wdata_converter_8->vector_out(m_axi_concat_wdata_out_8);
    mp_M08_AXI_transactor->WDATA(m_m_axi_wdata_converter_8_signal);
    mp_m_axi_wstrb_converter_8 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_8");
    mp_m_axi_wstrb_converter_8->vector_in(m_m_axi_wstrb_converter_8_signal);
    mp_m_axi_wstrb_converter_8->vector_out(m_axi_concat_wstrb_out_8);
    mp_M08_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_8_signal);
    mp_m_axi_wvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_8");
    mp_m_axi_wvalid_converter_8->scalar_in(m_m_axi_wvalid_converter_8_signal);
    mp_m_axi_wvalid_converter_8->vector_out(m_axi_concat_wvalid_out_8);
    mp_M08_AXI_transactor->WVALID(m_m_axi_wvalid_converter_8_signal);
    mp_m_axi_wready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_8");
    mp_m_axi_wready_converter_8->vector_in(m_axi_split_wready_out_8);
    mp_m_axi_wready_converter_8->scalar_out(m_m_axi_wready_converter_8_signal);
    mp_M08_AXI_transactor->WREADY(m_m_axi_wready_converter_8_signal);
    mp_m_axi_bresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_8");
    mp_m_axi_bresp_converter_8->vector_in(m_axi_split_bresp_out_8);
    mp_m_axi_bresp_converter_8->vector_out(m_m_axi_bresp_converter_8_signal);
    mp_M08_AXI_transactor->BRESP(m_m_axi_bresp_converter_8_signal);
    mp_m_axi_bvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_8");
    mp_m_axi_bvalid_converter_8->vector_in(m_axi_split_bvalid_out_8);
    mp_m_axi_bvalid_converter_8->scalar_out(m_m_axi_bvalid_converter_8_signal);
    mp_M08_AXI_transactor->BVALID(m_m_axi_bvalid_converter_8_signal);
    mp_m_axi_bready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_8");
    mp_m_axi_bready_converter_8->scalar_in(m_m_axi_bready_converter_8_signal);
    mp_m_axi_bready_converter_8->vector_out(m_axi_concat_bready_out_8);
    mp_M08_AXI_transactor->BREADY(m_m_axi_bready_converter_8_signal);
    mp_m_axi_araddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_8");
    mp_m_axi_araddr_converter_8->vector_in(m_m_axi_araddr_converter_8_signal);
    mp_m_axi_araddr_converter_8->vector_out(m_axi_concat_araddr_out_8);
    mp_M08_AXI_transactor->ARADDR(m_m_axi_araddr_converter_8_signal);
    mp_m_axi_arprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_8");
    mp_m_axi_arprot_converter_8->vector_in(m_m_axi_arprot_converter_8_signal);
    mp_m_axi_arprot_converter_8->vector_out(m_axi_concat_arprot_out_8);
    mp_M08_AXI_transactor->ARPROT(m_m_axi_arprot_converter_8_signal);
    mp_m_axi_arvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_8");
    mp_m_axi_arvalid_converter_8->scalar_in(m_m_axi_arvalid_converter_8_signal);
    mp_m_axi_arvalid_converter_8->vector_out(m_axi_concat_arvalid_out_8);
    mp_M08_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_8_signal);
    mp_m_axi_arready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_8");
    mp_m_axi_arready_converter_8->vector_in(m_axi_split_arready_out_8);
    mp_m_axi_arready_converter_8->scalar_out(m_m_axi_arready_converter_8_signal);
    mp_M08_AXI_transactor->ARREADY(m_m_axi_arready_converter_8_signal);
    mp_m_axi_rdata_converter_8 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_8");
    mp_m_axi_rdata_converter_8->vector_in(m_axi_split_rdata_out_8);
    mp_m_axi_rdata_converter_8->vector_out(m_m_axi_rdata_converter_8_signal);
    mp_M08_AXI_transactor->RDATA(m_m_axi_rdata_converter_8_signal);
    mp_m_axi_rresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_8");
    mp_m_axi_rresp_converter_8->vector_in(m_axi_split_rresp_out_8);
    mp_m_axi_rresp_converter_8->vector_out(m_m_axi_rresp_converter_8_signal);
    mp_M08_AXI_transactor->RRESP(m_m_axi_rresp_converter_8_signal);
    mp_m_axi_rvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_8");
    mp_m_axi_rvalid_converter_8->vector_in(m_axi_split_rvalid_out_8);
    mp_m_axi_rvalid_converter_8->scalar_out(m_m_axi_rvalid_converter_8_signal);
    mp_M08_AXI_transactor->RVALID(m_m_axi_rvalid_converter_8_signal);
    mp_m_axi_rready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_8");
    mp_m_axi_rready_converter_8->scalar_in(m_m_axi_rready_converter_8_signal);
    mp_m_axi_rready_converter_8->vector_out(m_axi_concat_rready_out_8);
    mp_M08_AXI_transactor->RREADY(m_m_axi_rready_converter_8_signal);
    mp_M08_AXI_transactor->CLK(aclk);
    mp_M08_AXI_transactor->RST(aresetn);

    // M08_AXI' transactor sockets

    mp_impl->initiator_8_rd_socket->bind(*(mp_M08_AXI_transactor->rd_socket));
    mp_impl->initiator_8_wr_socket->bind(*(mp_M08_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M09_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M09_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M09_AXI' transactor parameters
    xsc::common_cpp::properties M09_AXI_transactor_param_props;
    M09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M09_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M09_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M09_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M09_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M09_AXI_transactor", M09_AXI_transactor_param_props);

    // M09_AXI' transactor ports

    mp_m_axi_awaddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_9");
    mp_m_axi_awaddr_converter_9->vector_in(m_m_axi_awaddr_converter_9_signal);
    mp_m_axi_awaddr_converter_9->vector_out(m_axi_concat_awaddr_out_9);
    mp_M09_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_9_signal);
    mp_m_axi_awprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_9");
    mp_m_axi_awprot_converter_9->vector_in(m_m_axi_awprot_converter_9_signal);
    mp_m_axi_awprot_converter_9->vector_out(m_axi_concat_awprot_out_9);
    mp_M09_AXI_transactor->AWPROT(m_m_axi_awprot_converter_9_signal);
    mp_m_axi_awvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_9");
    mp_m_axi_awvalid_converter_9->scalar_in(m_m_axi_awvalid_converter_9_signal);
    mp_m_axi_awvalid_converter_9->vector_out(m_axi_concat_awvalid_out_9);
    mp_M09_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_9_signal);
    mp_m_axi_awready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_9");
    mp_m_axi_awready_converter_9->vector_in(m_axi_split_awready_out_9);
    mp_m_axi_awready_converter_9->scalar_out(m_m_axi_awready_converter_9_signal);
    mp_M09_AXI_transactor->AWREADY(m_m_axi_awready_converter_9_signal);
    mp_m_axi_wdata_converter_9 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_9");
    mp_m_axi_wdata_converter_9->vector_in(m_m_axi_wdata_converter_9_signal);
    mp_m_axi_wdata_converter_9->vector_out(m_axi_concat_wdata_out_9);
    mp_M09_AXI_transactor->WDATA(m_m_axi_wdata_converter_9_signal);
    mp_m_axi_wstrb_converter_9 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_9");
    mp_m_axi_wstrb_converter_9->vector_in(m_m_axi_wstrb_converter_9_signal);
    mp_m_axi_wstrb_converter_9->vector_out(m_axi_concat_wstrb_out_9);
    mp_M09_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_9_signal);
    mp_m_axi_wvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_9");
    mp_m_axi_wvalid_converter_9->scalar_in(m_m_axi_wvalid_converter_9_signal);
    mp_m_axi_wvalid_converter_9->vector_out(m_axi_concat_wvalid_out_9);
    mp_M09_AXI_transactor->WVALID(m_m_axi_wvalid_converter_9_signal);
    mp_m_axi_wready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_9");
    mp_m_axi_wready_converter_9->vector_in(m_axi_split_wready_out_9);
    mp_m_axi_wready_converter_9->scalar_out(m_m_axi_wready_converter_9_signal);
    mp_M09_AXI_transactor->WREADY(m_m_axi_wready_converter_9_signal);
    mp_m_axi_bresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_9");
    mp_m_axi_bresp_converter_9->vector_in(m_axi_split_bresp_out_9);
    mp_m_axi_bresp_converter_9->vector_out(m_m_axi_bresp_converter_9_signal);
    mp_M09_AXI_transactor->BRESP(m_m_axi_bresp_converter_9_signal);
    mp_m_axi_bvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_9");
    mp_m_axi_bvalid_converter_9->vector_in(m_axi_split_bvalid_out_9);
    mp_m_axi_bvalid_converter_9->scalar_out(m_m_axi_bvalid_converter_9_signal);
    mp_M09_AXI_transactor->BVALID(m_m_axi_bvalid_converter_9_signal);
    mp_m_axi_bready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_9");
    mp_m_axi_bready_converter_9->scalar_in(m_m_axi_bready_converter_9_signal);
    mp_m_axi_bready_converter_9->vector_out(m_axi_concat_bready_out_9);
    mp_M09_AXI_transactor->BREADY(m_m_axi_bready_converter_9_signal);
    mp_m_axi_araddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_9");
    mp_m_axi_araddr_converter_9->vector_in(m_m_axi_araddr_converter_9_signal);
    mp_m_axi_araddr_converter_9->vector_out(m_axi_concat_araddr_out_9);
    mp_M09_AXI_transactor->ARADDR(m_m_axi_araddr_converter_9_signal);
    mp_m_axi_arprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_9");
    mp_m_axi_arprot_converter_9->vector_in(m_m_axi_arprot_converter_9_signal);
    mp_m_axi_arprot_converter_9->vector_out(m_axi_concat_arprot_out_9);
    mp_M09_AXI_transactor->ARPROT(m_m_axi_arprot_converter_9_signal);
    mp_m_axi_arvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_9");
    mp_m_axi_arvalid_converter_9->scalar_in(m_m_axi_arvalid_converter_9_signal);
    mp_m_axi_arvalid_converter_9->vector_out(m_axi_concat_arvalid_out_9);
    mp_M09_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_9_signal);
    mp_m_axi_arready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_9");
    mp_m_axi_arready_converter_9->vector_in(m_axi_split_arready_out_9);
    mp_m_axi_arready_converter_9->scalar_out(m_m_axi_arready_converter_9_signal);
    mp_M09_AXI_transactor->ARREADY(m_m_axi_arready_converter_9_signal);
    mp_m_axi_rdata_converter_9 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_9");
    mp_m_axi_rdata_converter_9->vector_in(m_axi_split_rdata_out_9);
    mp_m_axi_rdata_converter_9->vector_out(m_m_axi_rdata_converter_9_signal);
    mp_M09_AXI_transactor->RDATA(m_m_axi_rdata_converter_9_signal);
    mp_m_axi_rresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_9");
    mp_m_axi_rresp_converter_9->vector_in(m_axi_split_rresp_out_9);
    mp_m_axi_rresp_converter_9->vector_out(m_m_axi_rresp_converter_9_signal);
    mp_M09_AXI_transactor->RRESP(m_m_axi_rresp_converter_9_signal);
    mp_m_axi_rvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_9");
    mp_m_axi_rvalid_converter_9->vector_in(m_axi_split_rvalid_out_9);
    mp_m_axi_rvalid_converter_9->scalar_out(m_m_axi_rvalid_converter_9_signal);
    mp_M09_AXI_transactor->RVALID(m_m_axi_rvalid_converter_9_signal);
    mp_m_axi_rready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_9");
    mp_m_axi_rready_converter_9->scalar_in(m_m_axi_rready_converter_9_signal);
    mp_m_axi_rready_converter_9->vector_out(m_axi_concat_rready_out_9);
    mp_M09_AXI_transactor->RREADY(m_m_axi_rready_converter_9_signal);
    mp_M09_AXI_transactor->CLK(aclk);
    mp_M09_AXI_transactor->RST(aresetn);

    // M09_AXI' transactor sockets

    mp_impl->initiator_9_rd_socket->bind(*(mp_M09_AXI_transactor->rd_socket));
    mp_impl->initiator_9_wr_socket->bind(*(mp_M09_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M10_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M10_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M10_AXI' transactor parameters
    xsc::common_cpp::properties M10_AXI_transactor_param_props;
    M10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M10_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M10_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M10_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M10_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M10_AXI_transactor", M10_AXI_transactor_param_props);

    // M10_AXI' transactor ports

    mp_m_axi_awaddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_10");
    mp_m_axi_awaddr_converter_10->vector_in(m_m_axi_awaddr_converter_10_signal);
    mp_m_axi_awaddr_converter_10->vector_out(m_axi_concat_awaddr_out_10);
    mp_M10_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_10_signal);
    mp_m_axi_awprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_10");
    mp_m_axi_awprot_converter_10->vector_in(m_m_axi_awprot_converter_10_signal);
    mp_m_axi_awprot_converter_10->vector_out(m_axi_concat_awprot_out_10);
    mp_M10_AXI_transactor->AWPROT(m_m_axi_awprot_converter_10_signal);
    mp_m_axi_awvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_10");
    mp_m_axi_awvalid_converter_10->scalar_in(m_m_axi_awvalid_converter_10_signal);
    mp_m_axi_awvalid_converter_10->vector_out(m_axi_concat_awvalid_out_10);
    mp_M10_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_10_signal);
    mp_m_axi_awready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_10");
    mp_m_axi_awready_converter_10->vector_in(m_axi_split_awready_out_10);
    mp_m_axi_awready_converter_10->scalar_out(m_m_axi_awready_converter_10_signal);
    mp_M10_AXI_transactor->AWREADY(m_m_axi_awready_converter_10_signal);
    mp_m_axi_wdata_converter_10 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_10");
    mp_m_axi_wdata_converter_10->vector_in(m_m_axi_wdata_converter_10_signal);
    mp_m_axi_wdata_converter_10->vector_out(m_axi_concat_wdata_out_10);
    mp_M10_AXI_transactor->WDATA(m_m_axi_wdata_converter_10_signal);
    mp_m_axi_wstrb_converter_10 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_10");
    mp_m_axi_wstrb_converter_10->vector_in(m_m_axi_wstrb_converter_10_signal);
    mp_m_axi_wstrb_converter_10->vector_out(m_axi_concat_wstrb_out_10);
    mp_M10_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_10_signal);
    mp_m_axi_wvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_10");
    mp_m_axi_wvalid_converter_10->scalar_in(m_m_axi_wvalid_converter_10_signal);
    mp_m_axi_wvalid_converter_10->vector_out(m_axi_concat_wvalid_out_10);
    mp_M10_AXI_transactor->WVALID(m_m_axi_wvalid_converter_10_signal);
    mp_m_axi_wready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_10");
    mp_m_axi_wready_converter_10->vector_in(m_axi_split_wready_out_10);
    mp_m_axi_wready_converter_10->scalar_out(m_m_axi_wready_converter_10_signal);
    mp_M10_AXI_transactor->WREADY(m_m_axi_wready_converter_10_signal);
    mp_m_axi_bresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_10");
    mp_m_axi_bresp_converter_10->vector_in(m_axi_split_bresp_out_10);
    mp_m_axi_bresp_converter_10->vector_out(m_m_axi_bresp_converter_10_signal);
    mp_M10_AXI_transactor->BRESP(m_m_axi_bresp_converter_10_signal);
    mp_m_axi_bvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_10");
    mp_m_axi_bvalid_converter_10->vector_in(m_axi_split_bvalid_out_10);
    mp_m_axi_bvalid_converter_10->scalar_out(m_m_axi_bvalid_converter_10_signal);
    mp_M10_AXI_transactor->BVALID(m_m_axi_bvalid_converter_10_signal);
    mp_m_axi_bready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_10");
    mp_m_axi_bready_converter_10->scalar_in(m_m_axi_bready_converter_10_signal);
    mp_m_axi_bready_converter_10->vector_out(m_axi_concat_bready_out_10);
    mp_M10_AXI_transactor->BREADY(m_m_axi_bready_converter_10_signal);
    mp_m_axi_araddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_10");
    mp_m_axi_araddr_converter_10->vector_in(m_m_axi_araddr_converter_10_signal);
    mp_m_axi_araddr_converter_10->vector_out(m_axi_concat_araddr_out_10);
    mp_M10_AXI_transactor->ARADDR(m_m_axi_araddr_converter_10_signal);
    mp_m_axi_arprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_10");
    mp_m_axi_arprot_converter_10->vector_in(m_m_axi_arprot_converter_10_signal);
    mp_m_axi_arprot_converter_10->vector_out(m_axi_concat_arprot_out_10);
    mp_M10_AXI_transactor->ARPROT(m_m_axi_arprot_converter_10_signal);
    mp_m_axi_arvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_10");
    mp_m_axi_arvalid_converter_10->scalar_in(m_m_axi_arvalid_converter_10_signal);
    mp_m_axi_arvalid_converter_10->vector_out(m_axi_concat_arvalid_out_10);
    mp_M10_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_10_signal);
    mp_m_axi_arready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_10");
    mp_m_axi_arready_converter_10->vector_in(m_axi_split_arready_out_10);
    mp_m_axi_arready_converter_10->scalar_out(m_m_axi_arready_converter_10_signal);
    mp_M10_AXI_transactor->ARREADY(m_m_axi_arready_converter_10_signal);
    mp_m_axi_rdata_converter_10 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_10");
    mp_m_axi_rdata_converter_10->vector_in(m_axi_split_rdata_out_10);
    mp_m_axi_rdata_converter_10->vector_out(m_m_axi_rdata_converter_10_signal);
    mp_M10_AXI_transactor->RDATA(m_m_axi_rdata_converter_10_signal);
    mp_m_axi_rresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_10");
    mp_m_axi_rresp_converter_10->vector_in(m_axi_split_rresp_out_10);
    mp_m_axi_rresp_converter_10->vector_out(m_m_axi_rresp_converter_10_signal);
    mp_M10_AXI_transactor->RRESP(m_m_axi_rresp_converter_10_signal);
    mp_m_axi_rvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_10");
    mp_m_axi_rvalid_converter_10->vector_in(m_axi_split_rvalid_out_10);
    mp_m_axi_rvalid_converter_10->scalar_out(m_m_axi_rvalid_converter_10_signal);
    mp_M10_AXI_transactor->RVALID(m_m_axi_rvalid_converter_10_signal);
    mp_m_axi_rready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_10");
    mp_m_axi_rready_converter_10->scalar_in(m_m_axi_rready_converter_10_signal);
    mp_m_axi_rready_converter_10->vector_out(m_axi_concat_rready_out_10);
    mp_M10_AXI_transactor->RREADY(m_m_axi_rready_converter_10_signal);
    mp_M10_AXI_transactor->CLK(aclk);
    mp_M10_AXI_transactor->RST(aresetn);

    // M10_AXI' transactor sockets

    mp_impl->initiator_10_rd_socket->bind(*(mp_M10_AXI_transactor->rd_socket));
    mp_impl->initiator_10_wr_socket->bind(*(mp_M10_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
design_1_xbar_0::design_1_xbar_0(const sc_core::sc_module_name& nm) : design_1_xbar_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awaddr("m_axi_awaddr"), m_axi_awprot("m_axi_awprot"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_araddr("m_axi_araddr"), m_axi_arprot("m_axi_arprot"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awvalid_converter = NULL;
  mp_s_axi_awready_converter = NULL;
  mp_s_axi_wvalid_converter = NULL;
  mp_s_axi_wready_converter = NULL;
  mp_s_axi_bvalid_converter = NULL;
  mp_s_axi_bready_converter = NULL;
  mp_s_axi_arvalid_converter = NULL;
  mp_s_axi_arready_converter = NULL;
  mp_s_axi_rvalid_converter = NULL;
  mp_s_axi_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_0 = NULL;
  mp_m_axi_awprot_converter_0 = NULL;
  mp_m_axi_awvalid_converter_0 = NULL;
  mp_m_axi_awready_converter_0 = NULL;
  mp_m_axi_wdata_converter_0 = NULL;
  mp_m_axi_wstrb_converter_0 = NULL;
  mp_m_axi_wvalid_converter_0 = NULL;
  mp_m_axi_wready_converter_0 = NULL;
  mp_m_axi_bresp_converter_0 = NULL;
  mp_m_axi_bvalid_converter_0 = NULL;
  mp_m_axi_bready_converter_0 = NULL;
  mp_m_axi_araddr_converter_0 = NULL;
  mp_m_axi_arprot_converter_0 = NULL;
  mp_m_axi_arvalid_converter_0 = NULL;
  mp_m_axi_arready_converter_0 = NULL;
  mp_m_axi_rdata_converter_0 = NULL;
  mp_m_axi_rresp_converter_0 = NULL;
  mp_m_axi_rvalid_converter_0 = NULL;
  mp_m_axi_rready_converter_0 = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_1 = NULL;
  mp_m_axi_awprot_converter_1 = NULL;
  mp_m_axi_awvalid_converter_1 = NULL;
  mp_m_axi_awready_converter_1 = NULL;
  mp_m_axi_wdata_converter_1 = NULL;
  mp_m_axi_wstrb_converter_1 = NULL;
  mp_m_axi_wvalid_converter_1 = NULL;
  mp_m_axi_wready_converter_1 = NULL;
  mp_m_axi_bresp_converter_1 = NULL;
  mp_m_axi_bvalid_converter_1 = NULL;
  mp_m_axi_bready_converter_1 = NULL;
  mp_m_axi_araddr_converter_1 = NULL;
  mp_m_axi_arprot_converter_1 = NULL;
  mp_m_axi_arvalid_converter_1 = NULL;
  mp_m_axi_arready_converter_1 = NULL;
  mp_m_axi_rdata_converter_1 = NULL;
  mp_m_axi_rresp_converter_1 = NULL;
  mp_m_axi_rvalid_converter_1 = NULL;
  mp_m_axi_rready_converter_1 = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_2 = NULL;
  mp_m_axi_awprot_converter_2 = NULL;
  mp_m_axi_awvalid_converter_2 = NULL;
  mp_m_axi_awready_converter_2 = NULL;
  mp_m_axi_wdata_converter_2 = NULL;
  mp_m_axi_wstrb_converter_2 = NULL;
  mp_m_axi_wvalid_converter_2 = NULL;
  mp_m_axi_wready_converter_2 = NULL;
  mp_m_axi_bresp_converter_2 = NULL;
  mp_m_axi_bvalid_converter_2 = NULL;
  mp_m_axi_bready_converter_2 = NULL;
  mp_m_axi_araddr_converter_2 = NULL;
  mp_m_axi_arprot_converter_2 = NULL;
  mp_m_axi_arvalid_converter_2 = NULL;
  mp_m_axi_arready_converter_2 = NULL;
  mp_m_axi_rdata_converter_2 = NULL;
  mp_m_axi_rresp_converter_2 = NULL;
  mp_m_axi_rvalid_converter_2 = NULL;
  mp_m_axi_rready_converter_2 = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_3 = NULL;
  mp_m_axi_awprot_converter_3 = NULL;
  mp_m_axi_awvalid_converter_3 = NULL;
  mp_m_axi_awready_converter_3 = NULL;
  mp_m_axi_wdata_converter_3 = NULL;
  mp_m_axi_wstrb_converter_3 = NULL;
  mp_m_axi_wvalid_converter_3 = NULL;
  mp_m_axi_wready_converter_3 = NULL;
  mp_m_axi_bresp_converter_3 = NULL;
  mp_m_axi_bvalid_converter_3 = NULL;
  mp_m_axi_bready_converter_3 = NULL;
  mp_m_axi_araddr_converter_3 = NULL;
  mp_m_axi_arprot_converter_3 = NULL;
  mp_m_axi_arvalid_converter_3 = NULL;
  mp_m_axi_arready_converter_3 = NULL;
  mp_m_axi_rdata_converter_3 = NULL;
  mp_m_axi_rresp_converter_3 = NULL;
  mp_m_axi_rvalid_converter_3 = NULL;
  mp_m_axi_rready_converter_3 = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_4 = NULL;
  mp_m_axi_awprot_converter_4 = NULL;
  mp_m_axi_awvalid_converter_4 = NULL;
  mp_m_axi_awready_converter_4 = NULL;
  mp_m_axi_wdata_converter_4 = NULL;
  mp_m_axi_wstrb_converter_4 = NULL;
  mp_m_axi_wvalid_converter_4 = NULL;
  mp_m_axi_wready_converter_4 = NULL;
  mp_m_axi_bresp_converter_4 = NULL;
  mp_m_axi_bvalid_converter_4 = NULL;
  mp_m_axi_bready_converter_4 = NULL;
  mp_m_axi_araddr_converter_4 = NULL;
  mp_m_axi_arprot_converter_4 = NULL;
  mp_m_axi_arvalid_converter_4 = NULL;
  mp_m_axi_arready_converter_4 = NULL;
  mp_m_axi_rdata_converter_4 = NULL;
  mp_m_axi_rresp_converter_4 = NULL;
  mp_m_axi_rvalid_converter_4 = NULL;
  mp_m_axi_rready_converter_4 = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_5 = NULL;
  mp_m_axi_awprot_converter_5 = NULL;
  mp_m_axi_awvalid_converter_5 = NULL;
  mp_m_axi_awready_converter_5 = NULL;
  mp_m_axi_wdata_converter_5 = NULL;
  mp_m_axi_wstrb_converter_5 = NULL;
  mp_m_axi_wvalid_converter_5 = NULL;
  mp_m_axi_wready_converter_5 = NULL;
  mp_m_axi_bresp_converter_5 = NULL;
  mp_m_axi_bvalid_converter_5 = NULL;
  mp_m_axi_bready_converter_5 = NULL;
  mp_m_axi_araddr_converter_5 = NULL;
  mp_m_axi_arprot_converter_5 = NULL;
  mp_m_axi_arvalid_converter_5 = NULL;
  mp_m_axi_arready_converter_5 = NULL;
  mp_m_axi_rdata_converter_5 = NULL;
  mp_m_axi_rresp_converter_5 = NULL;
  mp_m_axi_rvalid_converter_5 = NULL;
  mp_m_axi_rready_converter_5 = NULL;
  mp_M06_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_6 = NULL;
  mp_m_axi_awprot_converter_6 = NULL;
  mp_m_axi_awvalid_converter_6 = NULL;
  mp_m_axi_awready_converter_6 = NULL;
  mp_m_axi_wdata_converter_6 = NULL;
  mp_m_axi_wstrb_converter_6 = NULL;
  mp_m_axi_wvalid_converter_6 = NULL;
  mp_m_axi_wready_converter_6 = NULL;
  mp_m_axi_bresp_converter_6 = NULL;
  mp_m_axi_bvalid_converter_6 = NULL;
  mp_m_axi_bready_converter_6 = NULL;
  mp_m_axi_araddr_converter_6 = NULL;
  mp_m_axi_arprot_converter_6 = NULL;
  mp_m_axi_arvalid_converter_6 = NULL;
  mp_m_axi_arready_converter_6 = NULL;
  mp_m_axi_rdata_converter_6 = NULL;
  mp_m_axi_rresp_converter_6 = NULL;
  mp_m_axi_rvalid_converter_6 = NULL;
  mp_m_axi_rready_converter_6 = NULL;
  mp_M07_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_7 = NULL;
  mp_m_axi_awprot_converter_7 = NULL;
  mp_m_axi_awvalid_converter_7 = NULL;
  mp_m_axi_awready_converter_7 = NULL;
  mp_m_axi_wdata_converter_7 = NULL;
  mp_m_axi_wstrb_converter_7 = NULL;
  mp_m_axi_wvalid_converter_7 = NULL;
  mp_m_axi_wready_converter_7 = NULL;
  mp_m_axi_bresp_converter_7 = NULL;
  mp_m_axi_bvalid_converter_7 = NULL;
  mp_m_axi_bready_converter_7 = NULL;
  mp_m_axi_araddr_converter_7 = NULL;
  mp_m_axi_arprot_converter_7 = NULL;
  mp_m_axi_arvalid_converter_7 = NULL;
  mp_m_axi_arready_converter_7 = NULL;
  mp_m_axi_rdata_converter_7 = NULL;
  mp_m_axi_rresp_converter_7 = NULL;
  mp_m_axi_rvalid_converter_7 = NULL;
  mp_m_axi_rready_converter_7 = NULL;
  mp_M08_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_8 = NULL;
  mp_m_axi_awprot_converter_8 = NULL;
  mp_m_axi_awvalid_converter_8 = NULL;
  mp_m_axi_awready_converter_8 = NULL;
  mp_m_axi_wdata_converter_8 = NULL;
  mp_m_axi_wstrb_converter_8 = NULL;
  mp_m_axi_wvalid_converter_8 = NULL;
  mp_m_axi_wready_converter_8 = NULL;
  mp_m_axi_bresp_converter_8 = NULL;
  mp_m_axi_bvalid_converter_8 = NULL;
  mp_m_axi_bready_converter_8 = NULL;
  mp_m_axi_araddr_converter_8 = NULL;
  mp_m_axi_arprot_converter_8 = NULL;
  mp_m_axi_arvalid_converter_8 = NULL;
  mp_m_axi_arready_converter_8 = NULL;
  mp_m_axi_rdata_converter_8 = NULL;
  mp_m_axi_rresp_converter_8 = NULL;
  mp_m_axi_rvalid_converter_8 = NULL;
  mp_m_axi_rready_converter_8 = NULL;
  mp_M09_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_9 = NULL;
  mp_m_axi_awprot_converter_9 = NULL;
  mp_m_axi_awvalid_converter_9 = NULL;
  mp_m_axi_awready_converter_9 = NULL;
  mp_m_axi_wdata_converter_9 = NULL;
  mp_m_axi_wstrb_converter_9 = NULL;
  mp_m_axi_wvalid_converter_9 = NULL;
  mp_m_axi_wready_converter_9 = NULL;
  mp_m_axi_bresp_converter_9 = NULL;
  mp_m_axi_bvalid_converter_9 = NULL;
  mp_m_axi_bready_converter_9 = NULL;
  mp_m_axi_araddr_converter_9 = NULL;
  mp_m_axi_arprot_converter_9 = NULL;
  mp_m_axi_arvalid_converter_9 = NULL;
  mp_m_axi_arready_converter_9 = NULL;
  mp_m_axi_rdata_converter_9 = NULL;
  mp_m_axi_rresp_converter_9 = NULL;
  mp_m_axi_rvalid_converter_9 = NULL;
  mp_m_axi_rready_converter_9 = NULL;
  mp_M10_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_10 = NULL;
  mp_m_axi_awprot_converter_10 = NULL;
  mp_m_axi_awvalid_converter_10 = NULL;
  mp_m_axi_awready_converter_10 = NULL;
  mp_m_axi_wdata_converter_10 = NULL;
  mp_m_axi_wstrb_converter_10 = NULL;
  mp_m_axi_wvalid_converter_10 = NULL;
  mp_m_axi_wready_converter_10 = NULL;
  mp_m_axi_bresp_converter_10 = NULL;
  mp_m_axi_bvalid_converter_10 = NULL;
  mp_m_axi_bready_converter_10 = NULL;
  mp_m_axi_araddr_converter_10 = NULL;
  mp_m_axi_arprot_converter_10 = NULL;
  mp_m_axi_arvalid_converter_10 = NULL;
  mp_m_axi_arready_converter_10 = NULL;
  mp_m_axi_rdata_converter_10 = NULL;
  mp_m_axi_rresp_converter_10 = NULL;
  mp_m_axi_rvalid_converter_10 = NULL;
  mp_m_axi_rready_converter_10 = NULL;

  // initialize port junctures
  mp_m_axi_concat_araddr = NULL;
  mp_m_axi_concat_arprot = NULL;
  mp_m_axi_concat_arvalid = NULL;
  mp_m_axi_concat_awaddr = NULL;
  mp_m_axi_concat_awprot = NULL;
  mp_m_axi_concat_awvalid = NULL;
  mp_m_axi_concat_bready = NULL;
  mp_m_axi_concat_rready = NULL;
  mp_m_axi_concat_wdata = NULL;
  mp_m_axi_concat_wstrb = NULL;
  mp_m_axi_concat_wvalid = NULL;
  mp_m_axi_split_arready = NULL;
  mp_m_axi_split_awready = NULL;
  mp_m_axi_split_bresp = NULL;
  mp_m_axi_split_bvalid = NULL;
  mp_m_axi_split_rdata = NULL;
  mp_m_axi_split_rresp = NULL;
  mp_m_axi_split_rvalid = NULL;
  mp_m_axi_split_wready = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,40,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWADDR(s_axi_awaddr);
  mp_S00_AXI_transactor->AWPROT(s_axi_awprot);
  mp_s_axi_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awvalid_converter");
  mp_s_axi_awvalid_converter->vector_in(s_axi_awvalid);
  mp_s_axi_awvalid_converter->scalar_out(m_s_axi_awvalid_converter_signal);
  mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_signal);
  mp_s_axi_awready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_awready_converter");
  mp_s_axi_awready_converter->scalar_in(m_s_axi_awready_converter_signal);
  mp_s_axi_awready_converter->vector_out(s_axi_awready);
  mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_signal);
  mp_S00_AXI_transactor->WDATA(s_axi_wdata);
  mp_S00_AXI_transactor->WSTRB(s_axi_wstrb);
  mp_s_axi_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_wvalid_converter");
  mp_s_axi_wvalid_converter->vector_in(s_axi_wvalid);
  mp_s_axi_wvalid_converter->scalar_out(m_s_axi_wvalid_converter_signal);
  mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_signal);
  mp_s_axi_wready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_wready_converter");
  mp_s_axi_wready_converter->scalar_in(m_s_axi_wready_converter_signal);
  mp_s_axi_wready_converter->vector_out(s_axi_wready);
  mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_signal);
  mp_S00_AXI_transactor->BRESP(s_axi_bresp);
  mp_s_axi_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_bvalid_converter");
  mp_s_axi_bvalid_converter->scalar_in(m_s_axi_bvalid_converter_signal);
  mp_s_axi_bvalid_converter->vector_out(s_axi_bvalid);
  mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_signal);
  mp_s_axi_bready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_bready_converter");
  mp_s_axi_bready_converter->vector_in(s_axi_bready);
  mp_s_axi_bready_converter->scalar_out(m_s_axi_bready_converter_signal);
  mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_signal);
  mp_S00_AXI_transactor->ARADDR(s_axi_araddr);
  mp_S00_AXI_transactor->ARPROT(s_axi_arprot);
  mp_s_axi_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arvalid_converter");
  mp_s_axi_arvalid_converter->vector_in(s_axi_arvalid);
  mp_s_axi_arvalid_converter->scalar_out(m_s_axi_arvalid_converter_signal);
  mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_signal);
  mp_s_axi_arready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_arready_converter");
  mp_s_axi_arready_converter->scalar_in(m_s_axi_arready_converter_signal);
  mp_s_axi_arready_converter->vector_out(s_axi_arready);
  mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_signal);
  mp_S00_AXI_transactor->RDATA(s_axi_rdata);
  mp_S00_AXI_transactor->RRESP(s_axi_rresp);
  mp_s_axi_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_rvalid_converter");
  mp_s_axi_rvalid_converter->scalar_in(m_s_axi_rvalid_converter_signal);
  mp_s_axi_rvalid_converter->vector_out(s_axi_rvalid);
  mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_signal);
  mp_s_axi_rready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_rready_converter");
  mp_s_axi_rready_converter->vector_in(s_axi_rready);
  mp_s_axi_rready_converter->scalar_out(m_s_axi_rready_converter_signal);
  mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_signal);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);
  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_0");
  mp_m_axi_concat_awaddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_awaddr");
  mp_m_axi_concat_awaddr->in_port[0](m_axi_concat_awaddr_out_0);
  mp_m_axi_concat_awaddr->out_port(m_axi_awaddr);
    mp_m_axi_concat_awaddr->offset_port(0, 0);
  mp_m_axi_awaddr_converter_0->vector_in(m_m_axi_awaddr_converter_0_signal);
  mp_m_axi_awaddr_converter_0->vector_out(m_axi_concat_awaddr_out_0);
  mp_M00_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_0_signal);
  mp_m_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_0");
  mp_m_axi_concat_awprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_awprot");
  mp_m_axi_concat_awprot->in_port[0](m_axi_concat_awprot_out_0);
  mp_m_axi_concat_awprot->out_port(m_axi_awprot);
    mp_m_axi_concat_awprot->offset_port(0, 0);
  mp_m_axi_awprot_converter_0->vector_in(m_m_axi_awprot_converter_0_signal);
  mp_m_axi_awprot_converter_0->vector_out(m_axi_concat_awprot_out_0);
  mp_M00_AXI_transactor->AWPROT(m_m_axi_awprot_converter_0_signal);
  mp_m_axi_awvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_0");
  mp_m_axi_concat_awvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_awvalid");
  mp_m_axi_concat_awvalid->in_port[0](m_axi_concat_awvalid_out_0);
  mp_m_axi_concat_awvalid->out_port(m_axi_awvalid);
    mp_m_axi_concat_awvalid->offset_port(0, 0);
  mp_m_axi_awvalid_converter_0->scalar_in(m_m_axi_awvalid_converter_0_signal);
  mp_m_axi_awvalid_converter_0->vector_out(m_axi_concat_awvalid_out_0);
  mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_0_signal);
  mp_m_axi_awready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_0");
  mp_m_axi_split_awready = new xsc::xsc_split<11, 11>("m_axi_split_awready");
  mp_m_axi_split_awready->in_port(m_axi_awready);
  mp_m_axi_split_awready->out_port[0](m_axi_split_awready_out_0);
    mp_m_axi_split_awready->add_mask(0,1,0);
  mp_m_axi_awready_converter_0->vector_in(m_axi_split_awready_out_0);
  mp_m_axi_awready_converter_0->scalar_out(m_m_axi_awready_converter_0_signal);
  mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_0_signal);
  mp_m_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_0");
  mp_m_axi_concat_wdata = new xsc::xsc_concatenator<352, 11>("m_axi_concat_wdata");
  mp_m_axi_concat_wdata->in_port[0](m_axi_concat_wdata_out_0);
  mp_m_axi_concat_wdata->out_port(m_axi_wdata);
    mp_m_axi_concat_wdata->offset_port(0, 0);
  mp_m_axi_wdata_converter_0->vector_in(m_m_axi_wdata_converter_0_signal);
  mp_m_axi_wdata_converter_0->vector_out(m_axi_concat_wdata_out_0);
  mp_M00_AXI_transactor->WDATA(m_m_axi_wdata_converter_0_signal);
  mp_m_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_0");
  mp_m_axi_concat_wstrb = new xsc::xsc_concatenator<44, 11>("m_axi_concat_wstrb");
  mp_m_axi_concat_wstrb->in_port[0](m_axi_concat_wstrb_out_0);
  mp_m_axi_concat_wstrb->out_port(m_axi_wstrb);
    mp_m_axi_concat_wstrb->offset_port(0, 0);
  mp_m_axi_wstrb_converter_0->vector_in(m_m_axi_wstrb_converter_0_signal);
  mp_m_axi_wstrb_converter_0->vector_out(m_axi_concat_wstrb_out_0);
  mp_M00_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_0_signal);
  mp_m_axi_wvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_0");
  mp_m_axi_concat_wvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_wvalid");
  mp_m_axi_concat_wvalid->in_port[0](m_axi_concat_wvalid_out_0);
  mp_m_axi_concat_wvalid->out_port(m_axi_wvalid);
    mp_m_axi_concat_wvalid->offset_port(0, 0);
  mp_m_axi_wvalid_converter_0->scalar_in(m_m_axi_wvalid_converter_0_signal);
  mp_m_axi_wvalid_converter_0->vector_out(m_axi_concat_wvalid_out_0);
  mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_0_signal);
  mp_m_axi_wready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_0");
  mp_m_axi_split_wready = new xsc::xsc_split<11, 11>("m_axi_split_wready");
  mp_m_axi_split_wready->in_port(m_axi_wready);
  mp_m_axi_split_wready->out_port[0](m_axi_split_wready_out_0);
    mp_m_axi_split_wready->add_mask(0,1,0);
  mp_m_axi_wready_converter_0->vector_in(m_axi_split_wready_out_0);
  mp_m_axi_wready_converter_0->scalar_out(m_m_axi_wready_converter_0_signal);
  mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_0_signal);
  mp_m_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_0");
  mp_m_axi_split_bresp = new xsc::xsc_split<22, 11>("m_axi_split_bresp");
  mp_m_axi_split_bresp->in_port(m_axi_bresp);
  mp_m_axi_split_bresp->out_port[0](m_axi_split_bresp_out_0);
    mp_m_axi_split_bresp->add_mask(0,2,0);
  mp_m_axi_bresp_converter_0->vector_in(m_axi_split_bresp_out_0);
  mp_m_axi_bresp_converter_0->vector_out(m_m_axi_bresp_converter_0_signal);
  mp_M00_AXI_transactor->BRESP(m_m_axi_bresp_converter_0_signal);
  mp_m_axi_bvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_0");
  mp_m_axi_split_bvalid = new xsc::xsc_split<11, 11>("m_axi_split_bvalid");
  mp_m_axi_split_bvalid->in_port(m_axi_bvalid);
  mp_m_axi_split_bvalid->out_port[0](m_axi_split_bvalid_out_0);
    mp_m_axi_split_bvalid->add_mask(0,1,0);
  mp_m_axi_bvalid_converter_0->vector_in(m_axi_split_bvalid_out_0);
  mp_m_axi_bvalid_converter_0->scalar_out(m_m_axi_bvalid_converter_0_signal);
  mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_0_signal);
  mp_m_axi_bready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_0");
  mp_m_axi_concat_bready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_bready");
  mp_m_axi_concat_bready->in_port[0](m_axi_concat_bready_out_0);
  mp_m_axi_concat_bready->out_port(m_axi_bready);
    mp_m_axi_concat_bready->offset_port(0, 0);
  mp_m_axi_bready_converter_0->scalar_in(m_m_axi_bready_converter_0_signal);
  mp_m_axi_bready_converter_0->vector_out(m_axi_concat_bready_out_0);
  mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_0_signal);
  mp_m_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_0");
  mp_m_axi_concat_araddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_araddr");
  mp_m_axi_concat_araddr->in_port[0](m_axi_concat_araddr_out_0);
  mp_m_axi_concat_araddr->out_port(m_axi_araddr);
    mp_m_axi_concat_araddr->offset_port(0, 0);
  mp_m_axi_araddr_converter_0->vector_in(m_m_axi_araddr_converter_0_signal);
  mp_m_axi_araddr_converter_0->vector_out(m_axi_concat_araddr_out_0);
  mp_M00_AXI_transactor->ARADDR(m_m_axi_araddr_converter_0_signal);
  mp_m_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_0");
  mp_m_axi_concat_arprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_arprot");
  mp_m_axi_concat_arprot->in_port[0](m_axi_concat_arprot_out_0);
  mp_m_axi_concat_arprot->out_port(m_axi_arprot);
    mp_m_axi_concat_arprot->offset_port(0, 0);
  mp_m_axi_arprot_converter_0->vector_in(m_m_axi_arprot_converter_0_signal);
  mp_m_axi_arprot_converter_0->vector_out(m_axi_concat_arprot_out_0);
  mp_M00_AXI_transactor->ARPROT(m_m_axi_arprot_converter_0_signal);
  mp_m_axi_arvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_0");
  mp_m_axi_concat_arvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_arvalid");
  mp_m_axi_concat_arvalid->in_port[0](m_axi_concat_arvalid_out_0);
  mp_m_axi_concat_arvalid->out_port(m_axi_arvalid);
    mp_m_axi_concat_arvalid->offset_port(0, 0);
  mp_m_axi_arvalid_converter_0->scalar_in(m_m_axi_arvalid_converter_0_signal);
  mp_m_axi_arvalid_converter_0->vector_out(m_axi_concat_arvalid_out_0);
  mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_0_signal);
  mp_m_axi_arready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_0");
  mp_m_axi_split_arready = new xsc::xsc_split<11, 11>("m_axi_split_arready");
  mp_m_axi_split_arready->in_port(m_axi_arready);
  mp_m_axi_split_arready->out_port[0](m_axi_split_arready_out_0);
    mp_m_axi_split_arready->add_mask(0,1,0);
  mp_m_axi_arready_converter_0->vector_in(m_axi_split_arready_out_0);
  mp_m_axi_arready_converter_0->scalar_out(m_m_axi_arready_converter_0_signal);
  mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_0_signal);
  mp_m_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_0");
  mp_m_axi_split_rdata = new xsc::xsc_split<352, 11>("m_axi_split_rdata");
  mp_m_axi_split_rdata->in_port(m_axi_rdata);
  mp_m_axi_split_rdata->out_port[0](m_axi_split_rdata_out_0);
    mp_m_axi_split_rdata->add_mask(0,32,0);
  mp_m_axi_rdata_converter_0->vector_in(m_axi_split_rdata_out_0);
  mp_m_axi_rdata_converter_0->vector_out(m_m_axi_rdata_converter_0_signal);
  mp_M00_AXI_transactor->RDATA(m_m_axi_rdata_converter_0_signal);
  mp_m_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_0");
  mp_m_axi_split_rresp = new xsc::xsc_split<22, 11>("m_axi_split_rresp");
  mp_m_axi_split_rresp->in_port(m_axi_rresp);
  mp_m_axi_split_rresp->out_port[0](m_axi_split_rresp_out_0);
    mp_m_axi_split_rresp->add_mask(0,2,0);
  mp_m_axi_rresp_converter_0->vector_in(m_axi_split_rresp_out_0);
  mp_m_axi_rresp_converter_0->vector_out(m_m_axi_rresp_converter_0_signal);
  mp_M00_AXI_transactor->RRESP(m_m_axi_rresp_converter_0_signal);
  mp_m_axi_rvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_0");
  mp_m_axi_split_rvalid = new xsc::xsc_split<11, 11>("m_axi_split_rvalid");
  mp_m_axi_split_rvalid->in_port(m_axi_rvalid);
  mp_m_axi_split_rvalid->out_port[0](m_axi_split_rvalid_out_0);
    mp_m_axi_split_rvalid->add_mask(0,1,0);
  mp_m_axi_rvalid_converter_0->vector_in(m_axi_split_rvalid_out_0);
  mp_m_axi_rvalid_converter_0->scalar_out(m_m_axi_rvalid_converter_0_signal);
  mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_0_signal);
  mp_m_axi_rready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_0");
  mp_m_axi_concat_rready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_rready");
  mp_m_axi_concat_rready->in_port[0](m_axi_concat_rready_out_0);
  mp_m_axi_concat_rready->out_port(m_axi_rready);
    mp_m_axi_concat_rready->offset_port(0, 0);
  mp_m_axi_rready_converter_0->scalar_in(m_m_axi_rready_converter_0_signal);
  mp_m_axi_rready_converter_0->vector_out(m_axi_concat_rready_out_0);
  mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_0_signal);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);
  // configure M01_AXI_transactor
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_1");
  mp_m_axi_concat_awaddr->in_port[1](m_axi_concat_awaddr_out_1);
  mp_m_axi_concat_awaddr->offset_port(1, 40);
  mp_m_axi_awaddr_converter_1->vector_in(m_m_axi_awaddr_converter_1_signal);
  mp_m_axi_awaddr_converter_1->vector_out(m_axi_concat_awaddr_out_1);
  mp_M01_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_1_signal);
  mp_m_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_1");
  mp_m_axi_concat_awprot->in_port[1](m_axi_concat_awprot_out_1);
  mp_m_axi_concat_awprot->offset_port(1, 3);
  mp_m_axi_awprot_converter_1->vector_in(m_m_axi_awprot_converter_1_signal);
  mp_m_axi_awprot_converter_1->vector_out(m_axi_concat_awprot_out_1);
  mp_M01_AXI_transactor->AWPROT(m_m_axi_awprot_converter_1_signal);
  mp_m_axi_awvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_1");
  mp_m_axi_concat_awvalid->in_port[1](m_axi_concat_awvalid_out_1);
  mp_m_axi_concat_awvalid->offset_port(1, 1);
  mp_m_axi_awvalid_converter_1->scalar_in(m_m_axi_awvalid_converter_1_signal);
  mp_m_axi_awvalid_converter_1->vector_out(m_axi_concat_awvalid_out_1);
  mp_M01_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_1_signal);
  mp_m_axi_awready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_1");
  
  mp_m_axi_split_awready->out_port[1](m_axi_split_awready_out_1);
    mp_m_axi_split_awready->add_mask(1,2,1);
  mp_m_axi_awready_converter_1->vector_in(m_axi_split_awready_out_1);
  mp_m_axi_awready_converter_1->scalar_out(m_m_axi_awready_converter_1_signal);
  mp_M01_AXI_transactor->AWREADY(m_m_axi_awready_converter_1_signal);
  mp_m_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_1");
  mp_m_axi_concat_wdata->in_port[1](m_axi_concat_wdata_out_1);
  mp_m_axi_concat_wdata->offset_port(1, 32);
  mp_m_axi_wdata_converter_1->vector_in(m_m_axi_wdata_converter_1_signal);
  mp_m_axi_wdata_converter_1->vector_out(m_axi_concat_wdata_out_1);
  mp_M01_AXI_transactor->WDATA(m_m_axi_wdata_converter_1_signal);
  mp_m_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_1");
  mp_m_axi_concat_wstrb->in_port[1](m_axi_concat_wstrb_out_1);
  mp_m_axi_concat_wstrb->offset_port(1, 4);
  mp_m_axi_wstrb_converter_1->vector_in(m_m_axi_wstrb_converter_1_signal);
  mp_m_axi_wstrb_converter_1->vector_out(m_axi_concat_wstrb_out_1);
  mp_M01_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_1_signal);
  mp_m_axi_wvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_1");
  mp_m_axi_concat_wvalid->in_port[1](m_axi_concat_wvalid_out_1);
  mp_m_axi_concat_wvalid->offset_port(1, 1);
  mp_m_axi_wvalid_converter_1->scalar_in(m_m_axi_wvalid_converter_1_signal);
  mp_m_axi_wvalid_converter_1->vector_out(m_axi_concat_wvalid_out_1);
  mp_M01_AXI_transactor->WVALID(m_m_axi_wvalid_converter_1_signal);
  mp_m_axi_wready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_1");
  
  mp_m_axi_split_wready->out_port[1](m_axi_split_wready_out_1);
    mp_m_axi_split_wready->add_mask(1,2,1);
  mp_m_axi_wready_converter_1->vector_in(m_axi_split_wready_out_1);
  mp_m_axi_wready_converter_1->scalar_out(m_m_axi_wready_converter_1_signal);
  mp_M01_AXI_transactor->WREADY(m_m_axi_wready_converter_1_signal);
  mp_m_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_1");
  
  mp_m_axi_split_bresp->out_port[1](m_axi_split_bresp_out_1);
    mp_m_axi_split_bresp->add_mask(1,4,2);
  mp_m_axi_bresp_converter_1->vector_in(m_axi_split_bresp_out_1);
  mp_m_axi_bresp_converter_1->vector_out(m_m_axi_bresp_converter_1_signal);
  mp_M01_AXI_transactor->BRESP(m_m_axi_bresp_converter_1_signal);
  mp_m_axi_bvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_1");
  
  mp_m_axi_split_bvalid->out_port[1](m_axi_split_bvalid_out_1);
    mp_m_axi_split_bvalid->add_mask(1,2,1);
  mp_m_axi_bvalid_converter_1->vector_in(m_axi_split_bvalid_out_1);
  mp_m_axi_bvalid_converter_1->scalar_out(m_m_axi_bvalid_converter_1_signal);
  mp_M01_AXI_transactor->BVALID(m_m_axi_bvalid_converter_1_signal);
  mp_m_axi_bready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_1");
  mp_m_axi_concat_bready->in_port[1](m_axi_concat_bready_out_1);
  mp_m_axi_concat_bready->offset_port(1, 1);
  mp_m_axi_bready_converter_1->scalar_in(m_m_axi_bready_converter_1_signal);
  mp_m_axi_bready_converter_1->vector_out(m_axi_concat_bready_out_1);
  mp_M01_AXI_transactor->BREADY(m_m_axi_bready_converter_1_signal);
  mp_m_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_1");
  mp_m_axi_concat_araddr->in_port[1](m_axi_concat_araddr_out_1);
  mp_m_axi_concat_araddr->offset_port(1, 40);
  mp_m_axi_araddr_converter_1->vector_in(m_m_axi_araddr_converter_1_signal);
  mp_m_axi_araddr_converter_1->vector_out(m_axi_concat_araddr_out_1);
  mp_M01_AXI_transactor->ARADDR(m_m_axi_araddr_converter_1_signal);
  mp_m_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_1");
  mp_m_axi_concat_arprot->in_port[1](m_axi_concat_arprot_out_1);
  mp_m_axi_concat_arprot->offset_port(1, 3);
  mp_m_axi_arprot_converter_1->vector_in(m_m_axi_arprot_converter_1_signal);
  mp_m_axi_arprot_converter_1->vector_out(m_axi_concat_arprot_out_1);
  mp_M01_AXI_transactor->ARPROT(m_m_axi_arprot_converter_1_signal);
  mp_m_axi_arvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_1");
  mp_m_axi_concat_arvalid->in_port[1](m_axi_concat_arvalid_out_1);
  mp_m_axi_concat_arvalid->offset_port(1, 1);
  mp_m_axi_arvalid_converter_1->scalar_in(m_m_axi_arvalid_converter_1_signal);
  mp_m_axi_arvalid_converter_1->vector_out(m_axi_concat_arvalid_out_1);
  mp_M01_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_1_signal);
  mp_m_axi_arready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_1");
  
  mp_m_axi_split_arready->out_port[1](m_axi_split_arready_out_1);
    mp_m_axi_split_arready->add_mask(1,2,1);
  mp_m_axi_arready_converter_1->vector_in(m_axi_split_arready_out_1);
  mp_m_axi_arready_converter_1->scalar_out(m_m_axi_arready_converter_1_signal);
  mp_M01_AXI_transactor->ARREADY(m_m_axi_arready_converter_1_signal);
  mp_m_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_1");
  
  mp_m_axi_split_rdata->out_port[1](m_axi_split_rdata_out_1);
    mp_m_axi_split_rdata->add_mask(1,64,32);
  mp_m_axi_rdata_converter_1->vector_in(m_axi_split_rdata_out_1);
  mp_m_axi_rdata_converter_1->vector_out(m_m_axi_rdata_converter_1_signal);
  mp_M01_AXI_transactor->RDATA(m_m_axi_rdata_converter_1_signal);
  mp_m_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_1");
  
  mp_m_axi_split_rresp->out_port[1](m_axi_split_rresp_out_1);
    mp_m_axi_split_rresp->add_mask(1,4,2);
  mp_m_axi_rresp_converter_1->vector_in(m_axi_split_rresp_out_1);
  mp_m_axi_rresp_converter_1->vector_out(m_m_axi_rresp_converter_1_signal);
  mp_M01_AXI_transactor->RRESP(m_m_axi_rresp_converter_1_signal);
  mp_m_axi_rvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_1");
  
  mp_m_axi_split_rvalid->out_port[1](m_axi_split_rvalid_out_1);
    mp_m_axi_split_rvalid->add_mask(1,2,1);
  mp_m_axi_rvalid_converter_1->vector_in(m_axi_split_rvalid_out_1);
  mp_m_axi_rvalid_converter_1->scalar_out(m_m_axi_rvalid_converter_1_signal);
  mp_M01_AXI_transactor->RVALID(m_m_axi_rvalid_converter_1_signal);
  mp_m_axi_rready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_1");
  mp_m_axi_concat_rready->in_port[1](m_axi_concat_rready_out_1);
  mp_m_axi_concat_rready->offset_port(1, 1);
  mp_m_axi_rready_converter_1->scalar_in(m_m_axi_rready_converter_1_signal);
  mp_m_axi_rready_converter_1->vector_out(m_axi_concat_rready_out_1);
  mp_M01_AXI_transactor->RREADY(m_m_axi_rready_converter_1_signal);
  mp_M01_AXI_transactor->CLK(aclk);
  mp_M01_AXI_transactor->RST(aresetn);
  // configure M02_AXI_transactor
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_2");
  mp_m_axi_concat_awaddr->in_port[2](m_axi_concat_awaddr_out_2);
  mp_m_axi_concat_awaddr->offset_port(2, 80);
  mp_m_axi_awaddr_converter_2->vector_in(m_m_axi_awaddr_converter_2_signal);
  mp_m_axi_awaddr_converter_2->vector_out(m_axi_concat_awaddr_out_2);
  mp_M02_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_2_signal);
  mp_m_axi_awprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_2");
  mp_m_axi_concat_awprot->in_port[2](m_axi_concat_awprot_out_2);
  mp_m_axi_concat_awprot->offset_port(2, 6);
  mp_m_axi_awprot_converter_2->vector_in(m_m_axi_awprot_converter_2_signal);
  mp_m_axi_awprot_converter_2->vector_out(m_axi_concat_awprot_out_2);
  mp_M02_AXI_transactor->AWPROT(m_m_axi_awprot_converter_2_signal);
  mp_m_axi_awvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_2");
  mp_m_axi_concat_awvalid->in_port[2](m_axi_concat_awvalid_out_2);
  mp_m_axi_concat_awvalid->offset_port(2, 2);
  mp_m_axi_awvalid_converter_2->scalar_in(m_m_axi_awvalid_converter_2_signal);
  mp_m_axi_awvalid_converter_2->vector_out(m_axi_concat_awvalid_out_2);
  mp_M02_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_2_signal);
  mp_m_axi_awready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_2");
  
  mp_m_axi_split_awready->out_port[2](m_axi_split_awready_out_2);
    mp_m_axi_split_awready->add_mask(2,3,2);
  mp_m_axi_awready_converter_2->vector_in(m_axi_split_awready_out_2);
  mp_m_axi_awready_converter_2->scalar_out(m_m_axi_awready_converter_2_signal);
  mp_M02_AXI_transactor->AWREADY(m_m_axi_awready_converter_2_signal);
  mp_m_axi_wdata_converter_2 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_2");
  mp_m_axi_concat_wdata->in_port[2](m_axi_concat_wdata_out_2);
  mp_m_axi_concat_wdata->offset_port(2, 64);
  mp_m_axi_wdata_converter_2->vector_in(m_m_axi_wdata_converter_2_signal);
  mp_m_axi_wdata_converter_2->vector_out(m_axi_concat_wdata_out_2);
  mp_M02_AXI_transactor->WDATA(m_m_axi_wdata_converter_2_signal);
  mp_m_axi_wstrb_converter_2 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_2");
  mp_m_axi_concat_wstrb->in_port[2](m_axi_concat_wstrb_out_2);
  mp_m_axi_concat_wstrb->offset_port(2, 8);
  mp_m_axi_wstrb_converter_2->vector_in(m_m_axi_wstrb_converter_2_signal);
  mp_m_axi_wstrb_converter_2->vector_out(m_axi_concat_wstrb_out_2);
  mp_M02_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_2_signal);
  mp_m_axi_wvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_2");
  mp_m_axi_concat_wvalid->in_port[2](m_axi_concat_wvalid_out_2);
  mp_m_axi_concat_wvalid->offset_port(2, 2);
  mp_m_axi_wvalid_converter_2->scalar_in(m_m_axi_wvalid_converter_2_signal);
  mp_m_axi_wvalid_converter_2->vector_out(m_axi_concat_wvalid_out_2);
  mp_M02_AXI_transactor->WVALID(m_m_axi_wvalid_converter_2_signal);
  mp_m_axi_wready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_2");
  
  mp_m_axi_split_wready->out_port[2](m_axi_split_wready_out_2);
    mp_m_axi_split_wready->add_mask(2,3,2);
  mp_m_axi_wready_converter_2->vector_in(m_axi_split_wready_out_2);
  mp_m_axi_wready_converter_2->scalar_out(m_m_axi_wready_converter_2_signal);
  mp_M02_AXI_transactor->WREADY(m_m_axi_wready_converter_2_signal);
  mp_m_axi_bresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_2");
  
  mp_m_axi_split_bresp->out_port[2](m_axi_split_bresp_out_2);
    mp_m_axi_split_bresp->add_mask(2,6,4);
  mp_m_axi_bresp_converter_2->vector_in(m_axi_split_bresp_out_2);
  mp_m_axi_bresp_converter_2->vector_out(m_m_axi_bresp_converter_2_signal);
  mp_M02_AXI_transactor->BRESP(m_m_axi_bresp_converter_2_signal);
  mp_m_axi_bvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_2");
  
  mp_m_axi_split_bvalid->out_port[2](m_axi_split_bvalid_out_2);
    mp_m_axi_split_bvalid->add_mask(2,3,2);
  mp_m_axi_bvalid_converter_2->vector_in(m_axi_split_bvalid_out_2);
  mp_m_axi_bvalid_converter_2->scalar_out(m_m_axi_bvalid_converter_2_signal);
  mp_M02_AXI_transactor->BVALID(m_m_axi_bvalid_converter_2_signal);
  mp_m_axi_bready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_2");
  mp_m_axi_concat_bready->in_port[2](m_axi_concat_bready_out_2);
  mp_m_axi_concat_bready->offset_port(2, 2);
  mp_m_axi_bready_converter_2->scalar_in(m_m_axi_bready_converter_2_signal);
  mp_m_axi_bready_converter_2->vector_out(m_axi_concat_bready_out_2);
  mp_M02_AXI_transactor->BREADY(m_m_axi_bready_converter_2_signal);
  mp_m_axi_araddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_2");
  mp_m_axi_concat_araddr->in_port[2](m_axi_concat_araddr_out_2);
  mp_m_axi_concat_araddr->offset_port(2, 80);
  mp_m_axi_araddr_converter_2->vector_in(m_m_axi_araddr_converter_2_signal);
  mp_m_axi_araddr_converter_2->vector_out(m_axi_concat_araddr_out_2);
  mp_M02_AXI_transactor->ARADDR(m_m_axi_araddr_converter_2_signal);
  mp_m_axi_arprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_2");
  mp_m_axi_concat_arprot->in_port[2](m_axi_concat_arprot_out_2);
  mp_m_axi_concat_arprot->offset_port(2, 6);
  mp_m_axi_arprot_converter_2->vector_in(m_m_axi_arprot_converter_2_signal);
  mp_m_axi_arprot_converter_2->vector_out(m_axi_concat_arprot_out_2);
  mp_M02_AXI_transactor->ARPROT(m_m_axi_arprot_converter_2_signal);
  mp_m_axi_arvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_2");
  mp_m_axi_concat_arvalid->in_port[2](m_axi_concat_arvalid_out_2);
  mp_m_axi_concat_arvalid->offset_port(2, 2);
  mp_m_axi_arvalid_converter_2->scalar_in(m_m_axi_arvalid_converter_2_signal);
  mp_m_axi_arvalid_converter_2->vector_out(m_axi_concat_arvalid_out_2);
  mp_M02_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_2_signal);
  mp_m_axi_arready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_2");
  
  mp_m_axi_split_arready->out_port[2](m_axi_split_arready_out_2);
    mp_m_axi_split_arready->add_mask(2,3,2);
  mp_m_axi_arready_converter_2->vector_in(m_axi_split_arready_out_2);
  mp_m_axi_arready_converter_2->scalar_out(m_m_axi_arready_converter_2_signal);
  mp_M02_AXI_transactor->ARREADY(m_m_axi_arready_converter_2_signal);
  mp_m_axi_rdata_converter_2 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_2");
  
  mp_m_axi_split_rdata->out_port[2](m_axi_split_rdata_out_2);
    mp_m_axi_split_rdata->add_mask(2,96,64);
  mp_m_axi_rdata_converter_2->vector_in(m_axi_split_rdata_out_2);
  mp_m_axi_rdata_converter_2->vector_out(m_m_axi_rdata_converter_2_signal);
  mp_M02_AXI_transactor->RDATA(m_m_axi_rdata_converter_2_signal);
  mp_m_axi_rresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_2");
  
  mp_m_axi_split_rresp->out_port[2](m_axi_split_rresp_out_2);
    mp_m_axi_split_rresp->add_mask(2,6,4);
  mp_m_axi_rresp_converter_2->vector_in(m_axi_split_rresp_out_2);
  mp_m_axi_rresp_converter_2->vector_out(m_m_axi_rresp_converter_2_signal);
  mp_M02_AXI_transactor->RRESP(m_m_axi_rresp_converter_2_signal);
  mp_m_axi_rvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_2");
  
  mp_m_axi_split_rvalid->out_port[2](m_axi_split_rvalid_out_2);
    mp_m_axi_split_rvalid->add_mask(2,3,2);
  mp_m_axi_rvalid_converter_2->vector_in(m_axi_split_rvalid_out_2);
  mp_m_axi_rvalid_converter_2->scalar_out(m_m_axi_rvalid_converter_2_signal);
  mp_M02_AXI_transactor->RVALID(m_m_axi_rvalid_converter_2_signal);
  mp_m_axi_rready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_2");
  mp_m_axi_concat_rready->in_port[2](m_axi_concat_rready_out_2);
  mp_m_axi_concat_rready->offset_port(2, 2);
  mp_m_axi_rready_converter_2->scalar_in(m_m_axi_rready_converter_2_signal);
  mp_m_axi_rready_converter_2->vector_out(m_axi_concat_rready_out_2);
  mp_M02_AXI_transactor->RREADY(m_m_axi_rready_converter_2_signal);
  mp_M02_AXI_transactor->CLK(aclk);
  mp_M02_AXI_transactor->RST(aresetn);
  // configure M03_AXI_transactor
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_3");
  mp_m_axi_concat_awaddr->in_port[3](m_axi_concat_awaddr_out_3);
  mp_m_axi_concat_awaddr->offset_port(3, 120);
  mp_m_axi_awaddr_converter_3->vector_in(m_m_axi_awaddr_converter_3_signal);
  mp_m_axi_awaddr_converter_3->vector_out(m_axi_concat_awaddr_out_3);
  mp_M03_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_3_signal);
  mp_m_axi_awprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_3");
  mp_m_axi_concat_awprot->in_port[3](m_axi_concat_awprot_out_3);
  mp_m_axi_concat_awprot->offset_port(3, 9);
  mp_m_axi_awprot_converter_3->vector_in(m_m_axi_awprot_converter_3_signal);
  mp_m_axi_awprot_converter_3->vector_out(m_axi_concat_awprot_out_3);
  mp_M03_AXI_transactor->AWPROT(m_m_axi_awprot_converter_3_signal);
  mp_m_axi_awvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_3");
  mp_m_axi_concat_awvalid->in_port[3](m_axi_concat_awvalid_out_3);
  mp_m_axi_concat_awvalid->offset_port(3, 3);
  mp_m_axi_awvalid_converter_3->scalar_in(m_m_axi_awvalid_converter_3_signal);
  mp_m_axi_awvalid_converter_3->vector_out(m_axi_concat_awvalid_out_3);
  mp_M03_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_3_signal);
  mp_m_axi_awready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_3");
  
  mp_m_axi_split_awready->out_port[3](m_axi_split_awready_out_3);
    mp_m_axi_split_awready->add_mask(3,4,3);
  mp_m_axi_awready_converter_3->vector_in(m_axi_split_awready_out_3);
  mp_m_axi_awready_converter_3->scalar_out(m_m_axi_awready_converter_3_signal);
  mp_M03_AXI_transactor->AWREADY(m_m_axi_awready_converter_3_signal);
  mp_m_axi_wdata_converter_3 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_3");
  mp_m_axi_concat_wdata->in_port[3](m_axi_concat_wdata_out_3);
  mp_m_axi_concat_wdata->offset_port(3, 96);
  mp_m_axi_wdata_converter_3->vector_in(m_m_axi_wdata_converter_3_signal);
  mp_m_axi_wdata_converter_3->vector_out(m_axi_concat_wdata_out_3);
  mp_M03_AXI_transactor->WDATA(m_m_axi_wdata_converter_3_signal);
  mp_m_axi_wstrb_converter_3 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_3");
  mp_m_axi_concat_wstrb->in_port[3](m_axi_concat_wstrb_out_3);
  mp_m_axi_concat_wstrb->offset_port(3, 12);
  mp_m_axi_wstrb_converter_3->vector_in(m_m_axi_wstrb_converter_3_signal);
  mp_m_axi_wstrb_converter_3->vector_out(m_axi_concat_wstrb_out_3);
  mp_M03_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_3_signal);
  mp_m_axi_wvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_3");
  mp_m_axi_concat_wvalid->in_port[3](m_axi_concat_wvalid_out_3);
  mp_m_axi_concat_wvalid->offset_port(3, 3);
  mp_m_axi_wvalid_converter_3->scalar_in(m_m_axi_wvalid_converter_3_signal);
  mp_m_axi_wvalid_converter_3->vector_out(m_axi_concat_wvalid_out_3);
  mp_M03_AXI_transactor->WVALID(m_m_axi_wvalid_converter_3_signal);
  mp_m_axi_wready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_3");
  
  mp_m_axi_split_wready->out_port[3](m_axi_split_wready_out_3);
    mp_m_axi_split_wready->add_mask(3,4,3);
  mp_m_axi_wready_converter_3->vector_in(m_axi_split_wready_out_3);
  mp_m_axi_wready_converter_3->scalar_out(m_m_axi_wready_converter_3_signal);
  mp_M03_AXI_transactor->WREADY(m_m_axi_wready_converter_3_signal);
  mp_m_axi_bresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_3");
  
  mp_m_axi_split_bresp->out_port[3](m_axi_split_bresp_out_3);
    mp_m_axi_split_bresp->add_mask(3,8,6);
  mp_m_axi_bresp_converter_3->vector_in(m_axi_split_bresp_out_3);
  mp_m_axi_bresp_converter_3->vector_out(m_m_axi_bresp_converter_3_signal);
  mp_M03_AXI_transactor->BRESP(m_m_axi_bresp_converter_3_signal);
  mp_m_axi_bvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_3");
  
  mp_m_axi_split_bvalid->out_port[3](m_axi_split_bvalid_out_3);
    mp_m_axi_split_bvalid->add_mask(3,4,3);
  mp_m_axi_bvalid_converter_3->vector_in(m_axi_split_bvalid_out_3);
  mp_m_axi_bvalid_converter_3->scalar_out(m_m_axi_bvalid_converter_3_signal);
  mp_M03_AXI_transactor->BVALID(m_m_axi_bvalid_converter_3_signal);
  mp_m_axi_bready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_3");
  mp_m_axi_concat_bready->in_port[3](m_axi_concat_bready_out_3);
  mp_m_axi_concat_bready->offset_port(3, 3);
  mp_m_axi_bready_converter_3->scalar_in(m_m_axi_bready_converter_3_signal);
  mp_m_axi_bready_converter_3->vector_out(m_axi_concat_bready_out_3);
  mp_M03_AXI_transactor->BREADY(m_m_axi_bready_converter_3_signal);
  mp_m_axi_araddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_3");
  mp_m_axi_concat_araddr->in_port[3](m_axi_concat_araddr_out_3);
  mp_m_axi_concat_araddr->offset_port(3, 120);
  mp_m_axi_araddr_converter_3->vector_in(m_m_axi_araddr_converter_3_signal);
  mp_m_axi_araddr_converter_3->vector_out(m_axi_concat_araddr_out_3);
  mp_M03_AXI_transactor->ARADDR(m_m_axi_araddr_converter_3_signal);
  mp_m_axi_arprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_3");
  mp_m_axi_concat_arprot->in_port[3](m_axi_concat_arprot_out_3);
  mp_m_axi_concat_arprot->offset_port(3, 9);
  mp_m_axi_arprot_converter_3->vector_in(m_m_axi_arprot_converter_3_signal);
  mp_m_axi_arprot_converter_3->vector_out(m_axi_concat_arprot_out_3);
  mp_M03_AXI_transactor->ARPROT(m_m_axi_arprot_converter_3_signal);
  mp_m_axi_arvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_3");
  mp_m_axi_concat_arvalid->in_port[3](m_axi_concat_arvalid_out_3);
  mp_m_axi_concat_arvalid->offset_port(3, 3);
  mp_m_axi_arvalid_converter_3->scalar_in(m_m_axi_arvalid_converter_3_signal);
  mp_m_axi_arvalid_converter_3->vector_out(m_axi_concat_arvalid_out_3);
  mp_M03_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_3_signal);
  mp_m_axi_arready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_3");
  
  mp_m_axi_split_arready->out_port[3](m_axi_split_arready_out_3);
    mp_m_axi_split_arready->add_mask(3,4,3);
  mp_m_axi_arready_converter_3->vector_in(m_axi_split_arready_out_3);
  mp_m_axi_arready_converter_3->scalar_out(m_m_axi_arready_converter_3_signal);
  mp_M03_AXI_transactor->ARREADY(m_m_axi_arready_converter_3_signal);
  mp_m_axi_rdata_converter_3 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_3");
  
  mp_m_axi_split_rdata->out_port[3](m_axi_split_rdata_out_3);
    mp_m_axi_split_rdata->add_mask(3,128,96);
  mp_m_axi_rdata_converter_3->vector_in(m_axi_split_rdata_out_3);
  mp_m_axi_rdata_converter_3->vector_out(m_m_axi_rdata_converter_3_signal);
  mp_M03_AXI_transactor->RDATA(m_m_axi_rdata_converter_3_signal);
  mp_m_axi_rresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_3");
  
  mp_m_axi_split_rresp->out_port[3](m_axi_split_rresp_out_3);
    mp_m_axi_split_rresp->add_mask(3,8,6);
  mp_m_axi_rresp_converter_3->vector_in(m_axi_split_rresp_out_3);
  mp_m_axi_rresp_converter_3->vector_out(m_m_axi_rresp_converter_3_signal);
  mp_M03_AXI_transactor->RRESP(m_m_axi_rresp_converter_3_signal);
  mp_m_axi_rvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_3");
  
  mp_m_axi_split_rvalid->out_port[3](m_axi_split_rvalid_out_3);
    mp_m_axi_split_rvalid->add_mask(3,4,3);
  mp_m_axi_rvalid_converter_3->vector_in(m_axi_split_rvalid_out_3);
  mp_m_axi_rvalid_converter_3->scalar_out(m_m_axi_rvalid_converter_3_signal);
  mp_M03_AXI_transactor->RVALID(m_m_axi_rvalid_converter_3_signal);
  mp_m_axi_rready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_3");
  mp_m_axi_concat_rready->in_port[3](m_axi_concat_rready_out_3);
  mp_m_axi_concat_rready->offset_port(3, 3);
  mp_m_axi_rready_converter_3->scalar_in(m_m_axi_rready_converter_3_signal);
  mp_m_axi_rready_converter_3->vector_out(m_axi_concat_rready_out_3);
  mp_M03_AXI_transactor->RREADY(m_m_axi_rready_converter_3_signal);
  mp_M03_AXI_transactor->CLK(aclk);
  mp_M03_AXI_transactor->RST(aresetn);
  // configure M04_AXI_transactor
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_4");
  mp_m_axi_concat_awaddr->in_port[4](m_axi_concat_awaddr_out_4);
  mp_m_axi_concat_awaddr->offset_port(4, 160);
  mp_m_axi_awaddr_converter_4->vector_in(m_m_axi_awaddr_converter_4_signal);
  mp_m_axi_awaddr_converter_4->vector_out(m_axi_concat_awaddr_out_4);
  mp_M04_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_4_signal);
  mp_m_axi_awprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_4");
  mp_m_axi_concat_awprot->in_port[4](m_axi_concat_awprot_out_4);
  mp_m_axi_concat_awprot->offset_port(4, 12);
  mp_m_axi_awprot_converter_4->vector_in(m_m_axi_awprot_converter_4_signal);
  mp_m_axi_awprot_converter_4->vector_out(m_axi_concat_awprot_out_4);
  mp_M04_AXI_transactor->AWPROT(m_m_axi_awprot_converter_4_signal);
  mp_m_axi_awvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_4");
  mp_m_axi_concat_awvalid->in_port[4](m_axi_concat_awvalid_out_4);
  mp_m_axi_concat_awvalid->offset_port(4, 4);
  mp_m_axi_awvalid_converter_4->scalar_in(m_m_axi_awvalid_converter_4_signal);
  mp_m_axi_awvalid_converter_4->vector_out(m_axi_concat_awvalid_out_4);
  mp_M04_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_4_signal);
  mp_m_axi_awready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_4");
  
  mp_m_axi_split_awready->out_port[4](m_axi_split_awready_out_4);
    mp_m_axi_split_awready->add_mask(4,5,4);
  mp_m_axi_awready_converter_4->vector_in(m_axi_split_awready_out_4);
  mp_m_axi_awready_converter_4->scalar_out(m_m_axi_awready_converter_4_signal);
  mp_M04_AXI_transactor->AWREADY(m_m_axi_awready_converter_4_signal);
  mp_m_axi_wdata_converter_4 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_4");
  mp_m_axi_concat_wdata->in_port[4](m_axi_concat_wdata_out_4);
  mp_m_axi_concat_wdata->offset_port(4, 128);
  mp_m_axi_wdata_converter_4->vector_in(m_m_axi_wdata_converter_4_signal);
  mp_m_axi_wdata_converter_4->vector_out(m_axi_concat_wdata_out_4);
  mp_M04_AXI_transactor->WDATA(m_m_axi_wdata_converter_4_signal);
  mp_m_axi_wstrb_converter_4 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_4");
  mp_m_axi_concat_wstrb->in_port[4](m_axi_concat_wstrb_out_4);
  mp_m_axi_concat_wstrb->offset_port(4, 16);
  mp_m_axi_wstrb_converter_4->vector_in(m_m_axi_wstrb_converter_4_signal);
  mp_m_axi_wstrb_converter_4->vector_out(m_axi_concat_wstrb_out_4);
  mp_M04_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_4_signal);
  mp_m_axi_wvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_4");
  mp_m_axi_concat_wvalid->in_port[4](m_axi_concat_wvalid_out_4);
  mp_m_axi_concat_wvalid->offset_port(4, 4);
  mp_m_axi_wvalid_converter_4->scalar_in(m_m_axi_wvalid_converter_4_signal);
  mp_m_axi_wvalid_converter_4->vector_out(m_axi_concat_wvalid_out_4);
  mp_M04_AXI_transactor->WVALID(m_m_axi_wvalid_converter_4_signal);
  mp_m_axi_wready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_4");
  
  mp_m_axi_split_wready->out_port[4](m_axi_split_wready_out_4);
    mp_m_axi_split_wready->add_mask(4,5,4);
  mp_m_axi_wready_converter_4->vector_in(m_axi_split_wready_out_4);
  mp_m_axi_wready_converter_4->scalar_out(m_m_axi_wready_converter_4_signal);
  mp_M04_AXI_transactor->WREADY(m_m_axi_wready_converter_4_signal);
  mp_m_axi_bresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_4");
  
  mp_m_axi_split_bresp->out_port[4](m_axi_split_bresp_out_4);
    mp_m_axi_split_bresp->add_mask(4,10,8);
  mp_m_axi_bresp_converter_4->vector_in(m_axi_split_bresp_out_4);
  mp_m_axi_bresp_converter_4->vector_out(m_m_axi_bresp_converter_4_signal);
  mp_M04_AXI_transactor->BRESP(m_m_axi_bresp_converter_4_signal);
  mp_m_axi_bvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_4");
  
  mp_m_axi_split_bvalid->out_port[4](m_axi_split_bvalid_out_4);
    mp_m_axi_split_bvalid->add_mask(4,5,4);
  mp_m_axi_bvalid_converter_4->vector_in(m_axi_split_bvalid_out_4);
  mp_m_axi_bvalid_converter_4->scalar_out(m_m_axi_bvalid_converter_4_signal);
  mp_M04_AXI_transactor->BVALID(m_m_axi_bvalid_converter_4_signal);
  mp_m_axi_bready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_4");
  mp_m_axi_concat_bready->in_port[4](m_axi_concat_bready_out_4);
  mp_m_axi_concat_bready->offset_port(4, 4);
  mp_m_axi_bready_converter_4->scalar_in(m_m_axi_bready_converter_4_signal);
  mp_m_axi_bready_converter_4->vector_out(m_axi_concat_bready_out_4);
  mp_M04_AXI_transactor->BREADY(m_m_axi_bready_converter_4_signal);
  mp_m_axi_araddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_4");
  mp_m_axi_concat_araddr->in_port[4](m_axi_concat_araddr_out_4);
  mp_m_axi_concat_araddr->offset_port(4, 160);
  mp_m_axi_araddr_converter_4->vector_in(m_m_axi_araddr_converter_4_signal);
  mp_m_axi_araddr_converter_4->vector_out(m_axi_concat_araddr_out_4);
  mp_M04_AXI_transactor->ARADDR(m_m_axi_araddr_converter_4_signal);
  mp_m_axi_arprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_4");
  mp_m_axi_concat_arprot->in_port[4](m_axi_concat_arprot_out_4);
  mp_m_axi_concat_arprot->offset_port(4, 12);
  mp_m_axi_arprot_converter_4->vector_in(m_m_axi_arprot_converter_4_signal);
  mp_m_axi_arprot_converter_4->vector_out(m_axi_concat_arprot_out_4);
  mp_M04_AXI_transactor->ARPROT(m_m_axi_arprot_converter_4_signal);
  mp_m_axi_arvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_4");
  mp_m_axi_concat_arvalid->in_port[4](m_axi_concat_arvalid_out_4);
  mp_m_axi_concat_arvalid->offset_port(4, 4);
  mp_m_axi_arvalid_converter_4->scalar_in(m_m_axi_arvalid_converter_4_signal);
  mp_m_axi_arvalid_converter_4->vector_out(m_axi_concat_arvalid_out_4);
  mp_M04_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_4_signal);
  mp_m_axi_arready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_4");
  
  mp_m_axi_split_arready->out_port[4](m_axi_split_arready_out_4);
    mp_m_axi_split_arready->add_mask(4,5,4);
  mp_m_axi_arready_converter_4->vector_in(m_axi_split_arready_out_4);
  mp_m_axi_arready_converter_4->scalar_out(m_m_axi_arready_converter_4_signal);
  mp_M04_AXI_transactor->ARREADY(m_m_axi_arready_converter_4_signal);
  mp_m_axi_rdata_converter_4 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_4");
  
  mp_m_axi_split_rdata->out_port[4](m_axi_split_rdata_out_4);
    mp_m_axi_split_rdata->add_mask(4,160,128);
  mp_m_axi_rdata_converter_4->vector_in(m_axi_split_rdata_out_4);
  mp_m_axi_rdata_converter_4->vector_out(m_m_axi_rdata_converter_4_signal);
  mp_M04_AXI_transactor->RDATA(m_m_axi_rdata_converter_4_signal);
  mp_m_axi_rresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_4");
  
  mp_m_axi_split_rresp->out_port[4](m_axi_split_rresp_out_4);
    mp_m_axi_split_rresp->add_mask(4,10,8);
  mp_m_axi_rresp_converter_4->vector_in(m_axi_split_rresp_out_4);
  mp_m_axi_rresp_converter_4->vector_out(m_m_axi_rresp_converter_4_signal);
  mp_M04_AXI_transactor->RRESP(m_m_axi_rresp_converter_4_signal);
  mp_m_axi_rvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_4");
  
  mp_m_axi_split_rvalid->out_port[4](m_axi_split_rvalid_out_4);
    mp_m_axi_split_rvalid->add_mask(4,5,4);
  mp_m_axi_rvalid_converter_4->vector_in(m_axi_split_rvalid_out_4);
  mp_m_axi_rvalid_converter_4->scalar_out(m_m_axi_rvalid_converter_4_signal);
  mp_M04_AXI_transactor->RVALID(m_m_axi_rvalid_converter_4_signal);
  mp_m_axi_rready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_4");
  mp_m_axi_concat_rready->in_port[4](m_axi_concat_rready_out_4);
  mp_m_axi_concat_rready->offset_port(4, 4);
  mp_m_axi_rready_converter_4->scalar_in(m_m_axi_rready_converter_4_signal);
  mp_m_axi_rready_converter_4->vector_out(m_axi_concat_rready_out_4);
  mp_M04_AXI_transactor->RREADY(m_m_axi_rready_converter_4_signal);
  mp_M04_AXI_transactor->CLK(aclk);
  mp_M04_AXI_transactor->RST(aresetn);
  // configure M05_AXI_transactor
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_5");
  mp_m_axi_concat_awaddr->in_port[5](m_axi_concat_awaddr_out_5);
  mp_m_axi_concat_awaddr->offset_port(5, 200);
  mp_m_axi_awaddr_converter_5->vector_in(m_m_axi_awaddr_converter_5_signal);
  mp_m_axi_awaddr_converter_5->vector_out(m_axi_concat_awaddr_out_5);
  mp_M05_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_5_signal);
  mp_m_axi_awprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_5");
  mp_m_axi_concat_awprot->in_port[5](m_axi_concat_awprot_out_5);
  mp_m_axi_concat_awprot->offset_port(5, 15);
  mp_m_axi_awprot_converter_5->vector_in(m_m_axi_awprot_converter_5_signal);
  mp_m_axi_awprot_converter_5->vector_out(m_axi_concat_awprot_out_5);
  mp_M05_AXI_transactor->AWPROT(m_m_axi_awprot_converter_5_signal);
  mp_m_axi_awvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_5");
  mp_m_axi_concat_awvalid->in_port[5](m_axi_concat_awvalid_out_5);
  mp_m_axi_concat_awvalid->offset_port(5, 5);
  mp_m_axi_awvalid_converter_5->scalar_in(m_m_axi_awvalid_converter_5_signal);
  mp_m_axi_awvalid_converter_5->vector_out(m_axi_concat_awvalid_out_5);
  mp_M05_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_5_signal);
  mp_m_axi_awready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_5");
  
  mp_m_axi_split_awready->out_port[5](m_axi_split_awready_out_5);
    mp_m_axi_split_awready->add_mask(5,6,5);
  mp_m_axi_awready_converter_5->vector_in(m_axi_split_awready_out_5);
  mp_m_axi_awready_converter_5->scalar_out(m_m_axi_awready_converter_5_signal);
  mp_M05_AXI_transactor->AWREADY(m_m_axi_awready_converter_5_signal);
  mp_m_axi_wdata_converter_5 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_5");
  mp_m_axi_concat_wdata->in_port[5](m_axi_concat_wdata_out_5);
  mp_m_axi_concat_wdata->offset_port(5, 160);
  mp_m_axi_wdata_converter_5->vector_in(m_m_axi_wdata_converter_5_signal);
  mp_m_axi_wdata_converter_5->vector_out(m_axi_concat_wdata_out_5);
  mp_M05_AXI_transactor->WDATA(m_m_axi_wdata_converter_5_signal);
  mp_m_axi_wstrb_converter_5 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_5");
  mp_m_axi_concat_wstrb->in_port[5](m_axi_concat_wstrb_out_5);
  mp_m_axi_concat_wstrb->offset_port(5, 20);
  mp_m_axi_wstrb_converter_5->vector_in(m_m_axi_wstrb_converter_5_signal);
  mp_m_axi_wstrb_converter_5->vector_out(m_axi_concat_wstrb_out_5);
  mp_M05_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_5_signal);
  mp_m_axi_wvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_5");
  mp_m_axi_concat_wvalid->in_port[5](m_axi_concat_wvalid_out_5);
  mp_m_axi_concat_wvalid->offset_port(5, 5);
  mp_m_axi_wvalid_converter_5->scalar_in(m_m_axi_wvalid_converter_5_signal);
  mp_m_axi_wvalid_converter_5->vector_out(m_axi_concat_wvalid_out_5);
  mp_M05_AXI_transactor->WVALID(m_m_axi_wvalid_converter_5_signal);
  mp_m_axi_wready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_5");
  
  mp_m_axi_split_wready->out_port[5](m_axi_split_wready_out_5);
    mp_m_axi_split_wready->add_mask(5,6,5);
  mp_m_axi_wready_converter_5->vector_in(m_axi_split_wready_out_5);
  mp_m_axi_wready_converter_5->scalar_out(m_m_axi_wready_converter_5_signal);
  mp_M05_AXI_transactor->WREADY(m_m_axi_wready_converter_5_signal);
  mp_m_axi_bresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_5");
  
  mp_m_axi_split_bresp->out_port[5](m_axi_split_bresp_out_5);
    mp_m_axi_split_bresp->add_mask(5,12,10);
  mp_m_axi_bresp_converter_5->vector_in(m_axi_split_bresp_out_5);
  mp_m_axi_bresp_converter_5->vector_out(m_m_axi_bresp_converter_5_signal);
  mp_M05_AXI_transactor->BRESP(m_m_axi_bresp_converter_5_signal);
  mp_m_axi_bvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_5");
  
  mp_m_axi_split_bvalid->out_port[5](m_axi_split_bvalid_out_5);
    mp_m_axi_split_bvalid->add_mask(5,6,5);
  mp_m_axi_bvalid_converter_5->vector_in(m_axi_split_bvalid_out_5);
  mp_m_axi_bvalid_converter_5->scalar_out(m_m_axi_bvalid_converter_5_signal);
  mp_M05_AXI_transactor->BVALID(m_m_axi_bvalid_converter_5_signal);
  mp_m_axi_bready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_5");
  mp_m_axi_concat_bready->in_port[5](m_axi_concat_bready_out_5);
  mp_m_axi_concat_bready->offset_port(5, 5);
  mp_m_axi_bready_converter_5->scalar_in(m_m_axi_bready_converter_5_signal);
  mp_m_axi_bready_converter_5->vector_out(m_axi_concat_bready_out_5);
  mp_M05_AXI_transactor->BREADY(m_m_axi_bready_converter_5_signal);
  mp_m_axi_araddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_5");
  mp_m_axi_concat_araddr->in_port[5](m_axi_concat_araddr_out_5);
  mp_m_axi_concat_araddr->offset_port(5, 200);
  mp_m_axi_araddr_converter_5->vector_in(m_m_axi_araddr_converter_5_signal);
  mp_m_axi_araddr_converter_5->vector_out(m_axi_concat_araddr_out_5);
  mp_M05_AXI_transactor->ARADDR(m_m_axi_araddr_converter_5_signal);
  mp_m_axi_arprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_5");
  mp_m_axi_concat_arprot->in_port[5](m_axi_concat_arprot_out_5);
  mp_m_axi_concat_arprot->offset_port(5, 15);
  mp_m_axi_arprot_converter_5->vector_in(m_m_axi_arprot_converter_5_signal);
  mp_m_axi_arprot_converter_5->vector_out(m_axi_concat_arprot_out_5);
  mp_M05_AXI_transactor->ARPROT(m_m_axi_arprot_converter_5_signal);
  mp_m_axi_arvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_5");
  mp_m_axi_concat_arvalid->in_port[5](m_axi_concat_arvalid_out_5);
  mp_m_axi_concat_arvalid->offset_port(5, 5);
  mp_m_axi_arvalid_converter_5->scalar_in(m_m_axi_arvalid_converter_5_signal);
  mp_m_axi_arvalid_converter_5->vector_out(m_axi_concat_arvalid_out_5);
  mp_M05_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_5_signal);
  mp_m_axi_arready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_5");
  
  mp_m_axi_split_arready->out_port[5](m_axi_split_arready_out_5);
    mp_m_axi_split_arready->add_mask(5,6,5);
  mp_m_axi_arready_converter_5->vector_in(m_axi_split_arready_out_5);
  mp_m_axi_arready_converter_5->scalar_out(m_m_axi_arready_converter_5_signal);
  mp_M05_AXI_transactor->ARREADY(m_m_axi_arready_converter_5_signal);
  mp_m_axi_rdata_converter_5 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_5");
  
  mp_m_axi_split_rdata->out_port[5](m_axi_split_rdata_out_5);
    mp_m_axi_split_rdata->add_mask(5,192,160);
  mp_m_axi_rdata_converter_5->vector_in(m_axi_split_rdata_out_5);
  mp_m_axi_rdata_converter_5->vector_out(m_m_axi_rdata_converter_5_signal);
  mp_M05_AXI_transactor->RDATA(m_m_axi_rdata_converter_5_signal);
  mp_m_axi_rresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_5");
  
  mp_m_axi_split_rresp->out_port[5](m_axi_split_rresp_out_5);
    mp_m_axi_split_rresp->add_mask(5,12,10);
  mp_m_axi_rresp_converter_5->vector_in(m_axi_split_rresp_out_5);
  mp_m_axi_rresp_converter_5->vector_out(m_m_axi_rresp_converter_5_signal);
  mp_M05_AXI_transactor->RRESP(m_m_axi_rresp_converter_5_signal);
  mp_m_axi_rvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_5");
  
  mp_m_axi_split_rvalid->out_port[5](m_axi_split_rvalid_out_5);
    mp_m_axi_split_rvalid->add_mask(5,6,5);
  mp_m_axi_rvalid_converter_5->vector_in(m_axi_split_rvalid_out_5);
  mp_m_axi_rvalid_converter_5->scalar_out(m_m_axi_rvalid_converter_5_signal);
  mp_M05_AXI_transactor->RVALID(m_m_axi_rvalid_converter_5_signal);
  mp_m_axi_rready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_5");
  mp_m_axi_concat_rready->in_port[5](m_axi_concat_rready_out_5);
  mp_m_axi_concat_rready->offset_port(5, 5);
  mp_m_axi_rready_converter_5->scalar_in(m_m_axi_rready_converter_5_signal);
  mp_m_axi_rready_converter_5->vector_out(m_axi_concat_rready_out_5);
  mp_M05_AXI_transactor->RREADY(m_m_axi_rready_converter_5_signal);
  mp_M05_AXI_transactor->CLK(aclk);
  mp_M05_AXI_transactor->RST(aresetn);
  // configure M06_AXI_transactor
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_6");
  mp_m_axi_concat_awaddr->in_port[6](m_axi_concat_awaddr_out_6);
  mp_m_axi_concat_awaddr->offset_port(6, 240);
  mp_m_axi_awaddr_converter_6->vector_in(m_m_axi_awaddr_converter_6_signal);
  mp_m_axi_awaddr_converter_6->vector_out(m_axi_concat_awaddr_out_6);
  mp_M06_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_6_signal);
  mp_m_axi_awprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_6");
  mp_m_axi_concat_awprot->in_port[6](m_axi_concat_awprot_out_6);
  mp_m_axi_concat_awprot->offset_port(6, 18);
  mp_m_axi_awprot_converter_6->vector_in(m_m_axi_awprot_converter_6_signal);
  mp_m_axi_awprot_converter_6->vector_out(m_axi_concat_awprot_out_6);
  mp_M06_AXI_transactor->AWPROT(m_m_axi_awprot_converter_6_signal);
  mp_m_axi_awvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_6");
  mp_m_axi_concat_awvalid->in_port[6](m_axi_concat_awvalid_out_6);
  mp_m_axi_concat_awvalid->offset_port(6, 6);
  mp_m_axi_awvalid_converter_6->scalar_in(m_m_axi_awvalid_converter_6_signal);
  mp_m_axi_awvalid_converter_6->vector_out(m_axi_concat_awvalid_out_6);
  mp_M06_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_6_signal);
  mp_m_axi_awready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_6");
  
  mp_m_axi_split_awready->out_port[6](m_axi_split_awready_out_6);
    mp_m_axi_split_awready->add_mask(6,7,6);
  mp_m_axi_awready_converter_6->vector_in(m_axi_split_awready_out_6);
  mp_m_axi_awready_converter_6->scalar_out(m_m_axi_awready_converter_6_signal);
  mp_M06_AXI_transactor->AWREADY(m_m_axi_awready_converter_6_signal);
  mp_m_axi_wdata_converter_6 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_6");
  mp_m_axi_concat_wdata->in_port[6](m_axi_concat_wdata_out_6);
  mp_m_axi_concat_wdata->offset_port(6, 192);
  mp_m_axi_wdata_converter_6->vector_in(m_m_axi_wdata_converter_6_signal);
  mp_m_axi_wdata_converter_6->vector_out(m_axi_concat_wdata_out_6);
  mp_M06_AXI_transactor->WDATA(m_m_axi_wdata_converter_6_signal);
  mp_m_axi_wstrb_converter_6 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_6");
  mp_m_axi_concat_wstrb->in_port[6](m_axi_concat_wstrb_out_6);
  mp_m_axi_concat_wstrb->offset_port(6, 24);
  mp_m_axi_wstrb_converter_6->vector_in(m_m_axi_wstrb_converter_6_signal);
  mp_m_axi_wstrb_converter_6->vector_out(m_axi_concat_wstrb_out_6);
  mp_M06_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_6_signal);
  mp_m_axi_wvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_6");
  mp_m_axi_concat_wvalid->in_port[6](m_axi_concat_wvalid_out_6);
  mp_m_axi_concat_wvalid->offset_port(6, 6);
  mp_m_axi_wvalid_converter_6->scalar_in(m_m_axi_wvalid_converter_6_signal);
  mp_m_axi_wvalid_converter_6->vector_out(m_axi_concat_wvalid_out_6);
  mp_M06_AXI_transactor->WVALID(m_m_axi_wvalid_converter_6_signal);
  mp_m_axi_wready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_6");
  
  mp_m_axi_split_wready->out_port[6](m_axi_split_wready_out_6);
    mp_m_axi_split_wready->add_mask(6,7,6);
  mp_m_axi_wready_converter_6->vector_in(m_axi_split_wready_out_6);
  mp_m_axi_wready_converter_6->scalar_out(m_m_axi_wready_converter_6_signal);
  mp_M06_AXI_transactor->WREADY(m_m_axi_wready_converter_6_signal);
  mp_m_axi_bresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_6");
  
  mp_m_axi_split_bresp->out_port[6](m_axi_split_bresp_out_6);
    mp_m_axi_split_bresp->add_mask(6,14,12);
  mp_m_axi_bresp_converter_6->vector_in(m_axi_split_bresp_out_6);
  mp_m_axi_bresp_converter_6->vector_out(m_m_axi_bresp_converter_6_signal);
  mp_M06_AXI_transactor->BRESP(m_m_axi_bresp_converter_6_signal);
  mp_m_axi_bvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_6");
  
  mp_m_axi_split_bvalid->out_port[6](m_axi_split_bvalid_out_6);
    mp_m_axi_split_bvalid->add_mask(6,7,6);
  mp_m_axi_bvalid_converter_6->vector_in(m_axi_split_bvalid_out_6);
  mp_m_axi_bvalid_converter_6->scalar_out(m_m_axi_bvalid_converter_6_signal);
  mp_M06_AXI_transactor->BVALID(m_m_axi_bvalid_converter_6_signal);
  mp_m_axi_bready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_6");
  mp_m_axi_concat_bready->in_port[6](m_axi_concat_bready_out_6);
  mp_m_axi_concat_bready->offset_port(6, 6);
  mp_m_axi_bready_converter_6->scalar_in(m_m_axi_bready_converter_6_signal);
  mp_m_axi_bready_converter_6->vector_out(m_axi_concat_bready_out_6);
  mp_M06_AXI_transactor->BREADY(m_m_axi_bready_converter_6_signal);
  mp_m_axi_araddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_6");
  mp_m_axi_concat_araddr->in_port[6](m_axi_concat_araddr_out_6);
  mp_m_axi_concat_araddr->offset_port(6, 240);
  mp_m_axi_araddr_converter_6->vector_in(m_m_axi_araddr_converter_6_signal);
  mp_m_axi_araddr_converter_6->vector_out(m_axi_concat_araddr_out_6);
  mp_M06_AXI_transactor->ARADDR(m_m_axi_araddr_converter_6_signal);
  mp_m_axi_arprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_6");
  mp_m_axi_concat_arprot->in_port[6](m_axi_concat_arprot_out_6);
  mp_m_axi_concat_arprot->offset_port(6, 18);
  mp_m_axi_arprot_converter_6->vector_in(m_m_axi_arprot_converter_6_signal);
  mp_m_axi_arprot_converter_6->vector_out(m_axi_concat_arprot_out_6);
  mp_M06_AXI_transactor->ARPROT(m_m_axi_arprot_converter_6_signal);
  mp_m_axi_arvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_6");
  mp_m_axi_concat_arvalid->in_port[6](m_axi_concat_arvalid_out_6);
  mp_m_axi_concat_arvalid->offset_port(6, 6);
  mp_m_axi_arvalid_converter_6->scalar_in(m_m_axi_arvalid_converter_6_signal);
  mp_m_axi_arvalid_converter_6->vector_out(m_axi_concat_arvalid_out_6);
  mp_M06_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_6_signal);
  mp_m_axi_arready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_6");
  
  mp_m_axi_split_arready->out_port[6](m_axi_split_arready_out_6);
    mp_m_axi_split_arready->add_mask(6,7,6);
  mp_m_axi_arready_converter_6->vector_in(m_axi_split_arready_out_6);
  mp_m_axi_arready_converter_6->scalar_out(m_m_axi_arready_converter_6_signal);
  mp_M06_AXI_transactor->ARREADY(m_m_axi_arready_converter_6_signal);
  mp_m_axi_rdata_converter_6 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_6");
  
  mp_m_axi_split_rdata->out_port[6](m_axi_split_rdata_out_6);
    mp_m_axi_split_rdata->add_mask(6,224,192);
  mp_m_axi_rdata_converter_6->vector_in(m_axi_split_rdata_out_6);
  mp_m_axi_rdata_converter_6->vector_out(m_m_axi_rdata_converter_6_signal);
  mp_M06_AXI_transactor->RDATA(m_m_axi_rdata_converter_6_signal);
  mp_m_axi_rresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_6");
  
  mp_m_axi_split_rresp->out_port[6](m_axi_split_rresp_out_6);
    mp_m_axi_split_rresp->add_mask(6,14,12);
  mp_m_axi_rresp_converter_6->vector_in(m_axi_split_rresp_out_6);
  mp_m_axi_rresp_converter_6->vector_out(m_m_axi_rresp_converter_6_signal);
  mp_M06_AXI_transactor->RRESP(m_m_axi_rresp_converter_6_signal);
  mp_m_axi_rvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_6");
  
  mp_m_axi_split_rvalid->out_port[6](m_axi_split_rvalid_out_6);
    mp_m_axi_split_rvalid->add_mask(6,7,6);
  mp_m_axi_rvalid_converter_6->vector_in(m_axi_split_rvalid_out_6);
  mp_m_axi_rvalid_converter_6->scalar_out(m_m_axi_rvalid_converter_6_signal);
  mp_M06_AXI_transactor->RVALID(m_m_axi_rvalid_converter_6_signal);
  mp_m_axi_rready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_6");
  mp_m_axi_concat_rready->in_port[6](m_axi_concat_rready_out_6);
  mp_m_axi_concat_rready->offset_port(6, 6);
  mp_m_axi_rready_converter_6->scalar_in(m_m_axi_rready_converter_6_signal);
  mp_m_axi_rready_converter_6->vector_out(m_axi_concat_rready_out_6);
  mp_M06_AXI_transactor->RREADY(m_m_axi_rready_converter_6_signal);
  mp_M06_AXI_transactor->CLK(aclk);
  mp_M06_AXI_transactor->RST(aresetn);
  // configure M07_AXI_transactor
    xsc::common_cpp::properties M07_AXI_transactor_param_props;
    M07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M07_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M07_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M07_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M07_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M07_AXI_transactor", M07_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_7");
  mp_m_axi_concat_awaddr->in_port[7](m_axi_concat_awaddr_out_7);
  mp_m_axi_concat_awaddr->offset_port(7, 280);
  mp_m_axi_awaddr_converter_7->vector_in(m_m_axi_awaddr_converter_7_signal);
  mp_m_axi_awaddr_converter_7->vector_out(m_axi_concat_awaddr_out_7);
  mp_M07_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_7_signal);
  mp_m_axi_awprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_7");
  mp_m_axi_concat_awprot->in_port[7](m_axi_concat_awprot_out_7);
  mp_m_axi_concat_awprot->offset_port(7, 21);
  mp_m_axi_awprot_converter_7->vector_in(m_m_axi_awprot_converter_7_signal);
  mp_m_axi_awprot_converter_7->vector_out(m_axi_concat_awprot_out_7);
  mp_M07_AXI_transactor->AWPROT(m_m_axi_awprot_converter_7_signal);
  mp_m_axi_awvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_7");
  mp_m_axi_concat_awvalid->in_port[7](m_axi_concat_awvalid_out_7);
  mp_m_axi_concat_awvalid->offset_port(7, 7);
  mp_m_axi_awvalid_converter_7->scalar_in(m_m_axi_awvalid_converter_7_signal);
  mp_m_axi_awvalid_converter_7->vector_out(m_axi_concat_awvalid_out_7);
  mp_M07_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_7_signal);
  mp_m_axi_awready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_7");
  
  mp_m_axi_split_awready->out_port[7](m_axi_split_awready_out_7);
    mp_m_axi_split_awready->add_mask(7,8,7);
  mp_m_axi_awready_converter_7->vector_in(m_axi_split_awready_out_7);
  mp_m_axi_awready_converter_7->scalar_out(m_m_axi_awready_converter_7_signal);
  mp_M07_AXI_transactor->AWREADY(m_m_axi_awready_converter_7_signal);
  mp_m_axi_wdata_converter_7 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_7");
  mp_m_axi_concat_wdata->in_port[7](m_axi_concat_wdata_out_7);
  mp_m_axi_concat_wdata->offset_port(7, 224);
  mp_m_axi_wdata_converter_7->vector_in(m_m_axi_wdata_converter_7_signal);
  mp_m_axi_wdata_converter_7->vector_out(m_axi_concat_wdata_out_7);
  mp_M07_AXI_transactor->WDATA(m_m_axi_wdata_converter_7_signal);
  mp_m_axi_wstrb_converter_7 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_7");
  mp_m_axi_concat_wstrb->in_port[7](m_axi_concat_wstrb_out_7);
  mp_m_axi_concat_wstrb->offset_port(7, 28);
  mp_m_axi_wstrb_converter_7->vector_in(m_m_axi_wstrb_converter_7_signal);
  mp_m_axi_wstrb_converter_7->vector_out(m_axi_concat_wstrb_out_7);
  mp_M07_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_7_signal);
  mp_m_axi_wvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_7");
  mp_m_axi_concat_wvalid->in_port[7](m_axi_concat_wvalid_out_7);
  mp_m_axi_concat_wvalid->offset_port(7, 7);
  mp_m_axi_wvalid_converter_7->scalar_in(m_m_axi_wvalid_converter_7_signal);
  mp_m_axi_wvalid_converter_7->vector_out(m_axi_concat_wvalid_out_7);
  mp_M07_AXI_transactor->WVALID(m_m_axi_wvalid_converter_7_signal);
  mp_m_axi_wready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_7");
  
  mp_m_axi_split_wready->out_port[7](m_axi_split_wready_out_7);
    mp_m_axi_split_wready->add_mask(7,8,7);
  mp_m_axi_wready_converter_7->vector_in(m_axi_split_wready_out_7);
  mp_m_axi_wready_converter_7->scalar_out(m_m_axi_wready_converter_7_signal);
  mp_M07_AXI_transactor->WREADY(m_m_axi_wready_converter_7_signal);
  mp_m_axi_bresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_7");
  
  mp_m_axi_split_bresp->out_port[7](m_axi_split_bresp_out_7);
    mp_m_axi_split_bresp->add_mask(7,16,14);
  mp_m_axi_bresp_converter_7->vector_in(m_axi_split_bresp_out_7);
  mp_m_axi_bresp_converter_7->vector_out(m_m_axi_bresp_converter_7_signal);
  mp_M07_AXI_transactor->BRESP(m_m_axi_bresp_converter_7_signal);
  mp_m_axi_bvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_7");
  
  mp_m_axi_split_bvalid->out_port[7](m_axi_split_bvalid_out_7);
    mp_m_axi_split_bvalid->add_mask(7,8,7);
  mp_m_axi_bvalid_converter_7->vector_in(m_axi_split_bvalid_out_7);
  mp_m_axi_bvalid_converter_7->scalar_out(m_m_axi_bvalid_converter_7_signal);
  mp_M07_AXI_transactor->BVALID(m_m_axi_bvalid_converter_7_signal);
  mp_m_axi_bready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_7");
  mp_m_axi_concat_bready->in_port[7](m_axi_concat_bready_out_7);
  mp_m_axi_concat_bready->offset_port(7, 7);
  mp_m_axi_bready_converter_7->scalar_in(m_m_axi_bready_converter_7_signal);
  mp_m_axi_bready_converter_7->vector_out(m_axi_concat_bready_out_7);
  mp_M07_AXI_transactor->BREADY(m_m_axi_bready_converter_7_signal);
  mp_m_axi_araddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_7");
  mp_m_axi_concat_araddr->in_port[7](m_axi_concat_araddr_out_7);
  mp_m_axi_concat_araddr->offset_port(7, 280);
  mp_m_axi_araddr_converter_7->vector_in(m_m_axi_araddr_converter_7_signal);
  mp_m_axi_araddr_converter_7->vector_out(m_axi_concat_araddr_out_7);
  mp_M07_AXI_transactor->ARADDR(m_m_axi_araddr_converter_7_signal);
  mp_m_axi_arprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_7");
  mp_m_axi_concat_arprot->in_port[7](m_axi_concat_arprot_out_7);
  mp_m_axi_concat_arprot->offset_port(7, 21);
  mp_m_axi_arprot_converter_7->vector_in(m_m_axi_arprot_converter_7_signal);
  mp_m_axi_arprot_converter_7->vector_out(m_axi_concat_arprot_out_7);
  mp_M07_AXI_transactor->ARPROT(m_m_axi_arprot_converter_7_signal);
  mp_m_axi_arvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_7");
  mp_m_axi_concat_arvalid->in_port[7](m_axi_concat_arvalid_out_7);
  mp_m_axi_concat_arvalid->offset_port(7, 7);
  mp_m_axi_arvalid_converter_7->scalar_in(m_m_axi_arvalid_converter_7_signal);
  mp_m_axi_arvalid_converter_7->vector_out(m_axi_concat_arvalid_out_7);
  mp_M07_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_7_signal);
  mp_m_axi_arready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_7");
  
  mp_m_axi_split_arready->out_port[7](m_axi_split_arready_out_7);
    mp_m_axi_split_arready->add_mask(7,8,7);
  mp_m_axi_arready_converter_7->vector_in(m_axi_split_arready_out_7);
  mp_m_axi_arready_converter_7->scalar_out(m_m_axi_arready_converter_7_signal);
  mp_M07_AXI_transactor->ARREADY(m_m_axi_arready_converter_7_signal);
  mp_m_axi_rdata_converter_7 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_7");
  
  mp_m_axi_split_rdata->out_port[7](m_axi_split_rdata_out_7);
    mp_m_axi_split_rdata->add_mask(7,256,224);
  mp_m_axi_rdata_converter_7->vector_in(m_axi_split_rdata_out_7);
  mp_m_axi_rdata_converter_7->vector_out(m_m_axi_rdata_converter_7_signal);
  mp_M07_AXI_transactor->RDATA(m_m_axi_rdata_converter_7_signal);
  mp_m_axi_rresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_7");
  
  mp_m_axi_split_rresp->out_port[7](m_axi_split_rresp_out_7);
    mp_m_axi_split_rresp->add_mask(7,16,14);
  mp_m_axi_rresp_converter_7->vector_in(m_axi_split_rresp_out_7);
  mp_m_axi_rresp_converter_7->vector_out(m_m_axi_rresp_converter_7_signal);
  mp_M07_AXI_transactor->RRESP(m_m_axi_rresp_converter_7_signal);
  mp_m_axi_rvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_7");
  
  mp_m_axi_split_rvalid->out_port[7](m_axi_split_rvalid_out_7);
    mp_m_axi_split_rvalid->add_mask(7,8,7);
  mp_m_axi_rvalid_converter_7->vector_in(m_axi_split_rvalid_out_7);
  mp_m_axi_rvalid_converter_7->scalar_out(m_m_axi_rvalid_converter_7_signal);
  mp_M07_AXI_transactor->RVALID(m_m_axi_rvalid_converter_7_signal);
  mp_m_axi_rready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_7");
  mp_m_axi_concat_rready->in_port[7](m_axi_concat_rready_out_7);
  mp_m_axi_concat_rready->offset_port(7, 7);
  mp_m_axi_rready_converter_7->scalar_in(m_m_axi_rready_converter_7_signal);
  mp_m_axi_rready_converter_7->vector_out(m_axi_concat_rready_out_7);
  mp_M07_AXI_transactor->RREADY(m_m_axi_rready_converter_7_signal);
  mp_M07_AXI_transactor->CLK(aclk);
  mp_M07_AXI_transactor->RST(aresetn);
  // configure M08_AXI_transactor
    xsc::common_cpp::properties M08_AXI_transactor_param_props;
    M08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M08_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M08_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M08_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M08_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M08_AXI_transactor", M08_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_8");
  mp_m_axi_concat_awaddr->in_port[8](m_axi_concat_awaddr_out_8);
  mp_m_axi_concat_awaddr->offset_port(8, 320);
  mp_m_axi_awaddr_converter_8->vector_in(m_m_axi_awaddr_converter_8_signal);
  mp_m_axi_awaddr_converter_8->vector_out(m_axi_concat_awaddr_out_8);
  mp_M08_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_8_signal);
  mp_m_axi_awprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_8");
  mp_m_axi_concat_awprot->in_port[8](m_axi_concat_awprot_out_8);
  mp_m_axi_concat_awprot->offset_port(8, 24);
  mp_m_axi_awprot_converter_8->vector_in(m_m_axi_awprot_converter_8_signal);
  mp_m_axi_awprot_converter_8->vector_out(m_axi_concat_awprot_out_8);
  mp_M08_AXI_transactor->AWPROT(m_m_axi_awprot_converter_8_signal);
  mp_m_axi_awvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_8");
  mp_m_axi_concat_awvalid->in_port[8](m_axi_concat_awvalid_out_8);
  mp_m_axi_concat_awvalid->offset_port(8, 8);
  mp_m_axi_awvalid_converter_8->scalar_in(m_m_axi_awvalid_converter_8_signal);
  mp_m_axi_awvalid_converter_8->vector_out(m_axi_concat_awvalid_out_8);
  mp_M08_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_8_signal);
  mp_m_axi_awready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_8");
  
  mp_m_axi_split_awready->out_port[8](m_axi_split_awready_out_8);
    mp_m_axi_split_awready->add_mask(8,9,8);
  mp_m_axi_awready_converter_8->vector_in(m_axi_split_awready_out_8);
  mp_m_axi_awready_converter_8->scalar_out(m_m_axi_awready_converter_8_signal);
  mp_M08_AXI_transactor->AWREADY(m_m_axi_awready_converter_8_signal);
  mp_m_axi_wdata_converter_8 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_8");
  mp_m_axi_concat_wdata->in_port[8](m_axi_concat_wdata_out_8);
  mp_m_axi_concat_wdata->offset_port(8, 256);
  mp_m_axi_wdata_converter_8->vector_in(m_m_axi_wdata_converter_8_signal);
  mp_m_axi_wdata_converter_8->vector_out(m_axi_concat_wdata_out_8);
  mp_M08_AXI_transactor->WDATA(m_m_axi_wdata_converter_8_signal);
  mp_m_axi_wstrb_converter_8 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_8");
  mp_m_axi_concat_wstrb->in_port[8](m_axi_concat_wstrb_out_8);
  mp_m_axi_concat_wstrb->offset_port(8, 32);
  mp_m_axi_wstrb_converter_8->vector_in(m_m_axi_wstrb_converter_8_signal);
  mp_m_axi_wstrb_converter_8->vector_out(m_axi_concat_wstrb_out_8);
  mp_M08_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_8_signal);
  mp_m_axi_wvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_8");
  mp_m_axi_concat_wvalid->in_port[8](m_axi_concat_wvalid_out_8);
  mp_m_axi_concat_wvalid->offset_port(8, 8);
  mp_m_axi_wvalid_converter_8->scalar_in(m_m_axi_wvalid_converter_8_signal);
  mp_m_axi_wvalid_converter_8->vector_out(m_axi_concat_wvalid_out_8);
  mp_M08_AXI_transactor->WVALID(m_m_axi_wvalid_converter_8_signal);
  mp_m_axi_wready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_8");
  
  mp_m_axi_split_wready->out_port[8](m_axi_split_wready_out_8);
    mp_m_axi_split_wready->add_mask(8,9,8);
  mp_m_axi_wready_converter_8->vector_in(m_axi_split_wready_out_8);
  mp_m_axi_wready_converter_8->scalar_out(m_m_axi_wready_converter_8_signal);
  mp_M08_AXI_transactor->WREADY(m_m_axi_wready_converter_8_signal);
  mp_m_axi_bresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_8");
  
  mp_m_axi_split_bresp->out_port[8](m_axi_split_bresp_out_8);
    mp_m_axi_split_bresp->add_mask(8,18,16);
  mp_m_axi_bresp_converter_8->vector_in(m_axi_split_bresp_out_8);
  mp_m_axi_bresp_converter_8->vector_out(m_m_axi_bresp_converter_8_signal);
  mp_M08_AXI_transactor->BRESP(m_m_axi_bresp_converter_8_signal);
  mp_m_axi_bvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_8");
  
  mp_m_axi_split_bvalid->out_port[8](m_axi_split_bvalid_out_8);
    mp_m_axi_split_bvalid->add_mask(8,9,8);
  mp_m_axi_bvalid_converter_8->vector_in(m_axi_split_bvalid_out_8);
  mp_m_axi_bvalid_converter_8->scalar_out(m_m_axi_bvalid_converter_8_signal);
  mp_M08_AXI_transactor->BVALID(m_m_axi_bvalid_converter_8_signal);
  mp_m_axi_bready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_8");
  mp_m_axi_concat_bready->in_port[8](m_axi_concat_bready_out_8);
  mp_m_axi_concat_bready->offset_port(8, 8);
  mp_m_axi_bready_converter_8->scalar_in(m_m_axi_bready_converter_8_signal);
  mp_m_axi_bready_converter_8->vector_out(m_axi_concat_bready_out_8);
  mp_M08_AXI_transactor->BREADY(m_m_axi_bready_converter_8_signal);
  mp_m_axi_araddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_8");
  mp_m_axi_concat_araddr->in_port[8](m_axi_concat_araddr_out_8);
  mp_m_axi_concat_araddr->offset_port(8, 320);
  mp_m_axi_araddr_converter_8->vector_in(m_m_axi_araddr_converter_8_signal);
  mp_m_axi_araddr_converter_8->vector_out(m_axi_concat_araddr_out_8);
  mp_M08_AXI_transactor->ARADDR(m_m_axi_araddr_converter_8_signal);
  mp_m_axi_arprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_8");
  mp_m_axi_concat_arprot->in_port[8](m_axi_concat_arprot_out_8);
  mp_m_axi_concat_arprot->offset_port(8, 24);
  mp_m_axi_arprot_converter_8->vector_in(m_m_axi_arprot_converter_8_signal);
  mp_m_axi_arprot_converter_8->vector_out(m_axi_concat_arprot_out_8);
  mp_M08_AXI_transactor->ARPROT(m_m_axi_arprot_converter_8_signal);
  mp_m_axi_arvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_8");
  mp_m_axi_concat_arvalid->in_port[8](m_axi_concat_arvalid_out_8);
  mp_m_axi_concat_arvalid->offset_port(8, 8);
  mp_m_axi_arvalid_converter_8->scalar_in(m_m_axi_arvalid_converter_8_signal);
  mp_m_axi_arvalid_converter_8->vector_out(m_axi_concat_arvalid_out_8);
  mp_M08_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_8_signal);
  mp_m_axi_arready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_8");
  
  mp_m_axi_split_arready->out_port[8](m_axi_split_arready_out_8);
    mp_m_axi_split_arready->add_mask(8,9,8);
  mp_m_axi_arready_converter_8->vector_in(m_axi_split_arready_out_8);
  mp_m_axi_arready_converter_8->scalar_out(m_m_axi_arready_converter_8_signal);
  mp_M08_AXI_transactor->ARREADY(m_m_axi_arready_converter_8_signal);
  mp_m_axi_rdata_converter_8 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_8");
  
  mp_m_axi_split_rdata->out_port[8](m_axi_split_rdata_out_8);
    mp_m_axi_split_rdata->add_mask(8,288,256);
  mp_m_axi_rdata_converter_8->vector_in(m_axi_split_rdata_out_8);
  mp_m_axi_rdata_converter_8->vector_out(m_m_axi_rdata_converter_8_signal);
  mp_M08_AXI_transactor->RDATA(m_m_axi_rdata_converter_8_signal);
  mp_m_axi_rresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_8");
  
  mp_m_axi_split_rresp->out_port[8](m_axi_split_rresp_out_8);
    mp_m_axi_split_rresp->add_mask(8,18,16);
  mp_m_axi_rresp_converter_8->vector_in(m_axi_split_rresp_out_8);
  mp_m_axi_rresp_converter_8->vector_out(m_m_axi_rresp_converter_8_signal);
  mp_M08_AXI_transactor->RRESP(m_m_axi_rresp_converter_8_signal);
  mp_m_axi_rvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_8");
  
  mp_m_axi_split_rvalid->out_port[8](m_axi_split_rvalid_out_8);
    mp_m_axi_split_rvalid->add_mask(8,9,8);
  mp_m_axi_rvalid_converter_8->vector_in(m_axi_split_rvalid_out_8);
  mp_m_axi_rvalid_converter_8->scalar_out(m_m_axi_rvalid_converter_8_signal);
  mp_M08_AXI_transactor->RVALID(m_m_axi_rvalid_converter_8_signal);
  mp_m_axi_rready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_8");
  mp_m_axi_concat_rready->in_port[8](m_axi_concat_rready_out_8);
  mp_m_axi_concat_rready->offset_port(8, 8);
  mp_m_axi_rready_converter_8->scalar_in(m_m_axi_rready_converter_8_signal);
  mp_m_axi_rready_converter_8->vector_out(m_axi_concat_rready_out_8);
  mp_M08_AXI_transactor->RREADY(m_m_axi_rready_converter_8_signal);
  mp_M08_AXI_transactor->CLK(aclk);
  mp_M08_AXI_transactor->RST(aresetn);
  // configure M09_AXI_transactor
    xsc::common_cpp::properties M09_AXI_transactor_param_props;
    M09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M09_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M09_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M09_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M09_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M09_AXI_transactor", M09_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_9");
  mp_m_axi_concat_awaddr->in_port[9](m_axi_concat_awaddr_out_9);
  mp_m_axi_concat_awaddr->offset_port(9, 360);
  mp_m_axi_awaddr_converter_9->vector_in(m_m_axi_awaddr_converter_9_signal);
  mp_m_axi_awaddr_converter_9->vector_out(m_axi_concat_awaddr_out_9);
  mp_M09_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_9_signal);
  mp_m_axi_awprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_9");
  mp_m_axi_concat_awprot->in_port[9](m_axi_concat_awprot_out_9);
  mp_m_axi_concat_awprot->offset_port(9, 27);
  mp_m_axi_awprot_converter_9->vector_in(m_m_axi_awprot_converter_9_signal);
  mp_m_axi_awprot_converter_9->vector_out(m_axi_concat_awprot_out_9);
  mp_M09_AXI_transactor->AWPROT(m_m_axi_awprot_converter_9_signal);
  mp_m_axi_awvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_9");
  mp_m_axi_concat_awvalid->in_port[9](m_axi_concat_awvalid_out_9);
  mp_m_axi_concat_awvalid->offset_port(9, 9);
  mp_m_axi_awvalid_converter_9->scalar_in(m_m_axi_awvalid_converter_9_signal);
  mp_m_axi_awvalid_converter_9->vector_out(m_axi_concat_awvalid_out_9);
  mp_M09_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_9_signal);
  mp_m_axi_awready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_9");
  
  mp_m_axi_split_awready->out_port[9](m_axi_split_awready_out_9);
    mp_m_axi_split_awready->add_mask(9,10,9);
  mp_m_axi_awready_converter_9->vector_in(m_axi_split_awready_out_9);
  mp_m_axi_awready_converter_9->scalar_out(m_m_axi_awready_converter_9_signal);
  mp_M09_AXI_transactor->AWREADY(m_m_axi_awready_converter_9_signal);
  mp_m_axi_wdata_converter_9 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_9");
  mp_m_axi_concat_wdata->in_port[9](m_axi_concat_wdata_out_9);
  mp_m_axi_concat_wdata->offset_port(9, 288);
  mp_m_axi_wdata_converter_9->vector_in(m_m_axi_wdata_converter_9_signal);
  mp_m_axi_wdata_converter_9->vector_out(m_axi_concat_wdata_out_9);
  mp_M09_AXI_transactor->WDATA(m_m_axi_wdata_converter_9_signal);
  mp_m_axi_wstrb_converter_9 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_9");
  mp_m_axi_concat_wstrb->in_port[9](m_axi_concat_wstrb_out_9);
  mp_m_axi_concat_wstrb->offset_port(9, 36);
  mp_m_axi_wstrb_converter_9->vector_in(m_m_axi_wstrb_converter_9_signal);
  mp_m_axi_wstrb_converter_9->vector_out(m_axi_concat_wstrb_out_9);
  mp_M09_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_9_signal);
  mp_m_axi_wvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_9");
  mp_m_axi_concat_wvalid->in_port[9](m_axi_concat_wvalid_out_9);
  mp_m_axi_concat_wvalid->offset_port(9, 9);
  mp_m_axi_wvalid_converter_9->scalar_in(m_m_axi_wvalid_converter_9_signal);
  mp_m_axi_wvalid_converter_9->vector_out(m_axi_concat_wvalid_out_9);
  mp_M09_AXI_transactor->WVALID(m_m_axi_wvalid_converter_9_signal);
  mp_m_axi_wready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_9");
  
  mp_m_axi_split_wready->out_port[9](m_axi_split_wready_out_9);
    mp_m_axi_split_wready->add_mask(9,10,9);
  mp_m_axi_wready_converter_9->vector_in(m_axi_split_wready_out_9);
  mp_m_axi_wready_converter_9->scalar_out(m_m_axi_wready_converter_9_signal);
  mp_M09_AXI_transactor->WREADY(m_m_axi_wready_converter_9_signal);
  mp_m_axi_bresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_9");
  
  mp_m_axi_split_bresp->out_port[9](m_axi_split_bresp_out_9);
    mp_m_axi_split_bresp->add_mask(9,20,18);
  mp_m_axi_bresp_converter_9->vector_in(m_axi_split_bresp_out_9);
  mp_m_axi_bresp_converter_9->vector_out(m_m_axi_bresp_converter_9_signal);
  mp_M09_AXI_transactor->BRESP(m_m_axi_bresp_converter_9_signal);
  mp_m_axi_bvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_9");
  
  mp_m_axi_split_bvalid->out_port[9](m_axi_split_bvalid_out_9);
    mp_m_axi_split_bvalid->add_mask(9,10,9);
  mp_m_axi_bvalid_converter_9->vector_in(m_axi_split_bvalid_out_9);
  mp_m_axi_bvalid_converter_9->scalar_out(m_m_axi_bvalid_converter_9_signal);
  mp_M09_AXI_transactor->BVALID(m_m_axi_bvalid_converter_9_signal);
  mp_m_axi_bready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_9");
  mp_m_axi_concat_bready->in_port[9](m_axi_concat_bready_out_9);
  mp_m_axi_concat_bready->offset_port(9, 9);
  mp_m_axi_bready_converter_9->scalar_in(m_m_axi_bready_converter_9_signal);
  mp_m_axi_bready_converter_9->vector_out(m_axi_concat_bready_out_9);
  mp_M09_AXI_transactor->BREADY(m_m_axi_bready_converter_9_signal);
  mp_m_axi_araddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_9");
  mp_m_axi_concat_araddr->in_port[9](m_axi_concat_araddr_out_9);
  mp_m_axi_concat_araddr->offset_port(9, 360);
  mp_m_axi_araddr_converter_9->vector_in(m_m_axi_araddr_converter_9_signal);
  mp_m_axi_araddr_converter_9->vector_out(m_axi_concat_araddr_out_9);
  mp_M09_AXI_transactor->ARADDR(m_m_axi_araddr_converter_9_signal);
  mp_m_axi_arprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_9");
  mp_m_axi_concat_arprot->in_port[9](m_axi_concat_arprot_out_9);
  mp_m_axi_concat_arprot->offset_port(9, 27);
  mp_m_axi_arprot_converter_9->vector_in(m_m_axi_arprot_converter_9_signal);
  mp_m_axi_arprot_converter_9->vector_out(m_axi_concat_arprot_out_9);
  mp_M09_AXI_transactor->ARPROT(m_m_axi_arprot_converter_9_signal);
  mp_m_axi_arvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_9");
  mp_m_axi_concat_arvalid->in_port[9](m_axi_concat_arvalid_out_9);
  mp_m_axi_concat_arvalid->offset_port(9, 9);
  mp_m_axi_arvalid_converter_9->scalar_in(m_m_axi_arvalid_converter_9_signal);
  mp_m_axi_arvalid_converter_9->vector_out(m_axi_concat_arvalid_out_9);
  mp_M09_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_9_signal);
  mp_m_axi_arready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_9");
  
  mp_m_axi_split_arready->out_port[9](m_axi_split_arready_out_9);
    mp_m_axi_split_arready->add_mask(9,10,9);
  mp_m_axi_arready_converter_9->vector_in(m_axi_split_arready_out_9);
  mp_m_axi_arready_converter_9->scalar_out(m_m_axi_arready_converter_9_signal);
  mp_M09_AXI_transactor->ARREADY(m_m_axi_arready_converter_9_signal);
  mp_m_axi_rdata_converter_9 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_9");
  
  mp_m_axi_split_rdata->out_port[9](m_axi_split_rdata_out_9);
    mp_m_axi_split_rdata->add_mask(9,320,288);
  mp_m_axi_rdata_converter_9->vector_in(m_axi_split_rdata_out_9);
  mp_m_axi_rdata_converter_9->vector_out(m_m_axi_rdata_converter_9_signal);
  mp_M09_AXI_transactor->RDATA(m_m_axi_rdata_converter_9_signal);
  mp_m_axi_rresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_9");
  
  mp_m_axi_split_rresp->out_port[9](m_axi_split_rresp_out_9);
    mp_m_axi_split_rresp->add_mask(9,20,18);
  mp_m_axi_rresp_converter_9->vector_in(m_axi_split_rresp_out_9);
  mp_m_axi_rresp_converter_9->vector_out(m_m_axi_rresp_converter_9_signal);
  mp_M09_AXI_transactor->RRESP(m_m_axi_rresp_converter_9_signal);
  mp_m_axi_rvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_9");
  
  mp_m_axi_split_rvalid->out_port[9](m_axi_split_rvalid_out_9);
    mp_m_axi_split_rvalid->add_mask(9,10,9);
  mp_m_axi_rvalid_converter_9->vector_in(m_axi_split_rvalid_out_9);
  mp_m_axi_rvalid_converter_9->scalar_out(m_m_axi_rvalid_converter_9_signal);
  mp_M09_AXI_transactor->RVALID(m_m_axi_rvalid_converter_9_signal);
  mp_m_axi_rready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_9");
  mp_m_axi_concat_rready->in_port[9](m_axi_concat_rready_out_9);
  mp_m_axi_concat_rready->offset_port(9, 9);
  mp_m_axi_rready_converter_9->scalar_in(m_m_axi_rready_converter_9_signal);
  mp_m_axi_rready_converter_9->vector_out(m_axi_concat_rready_out_9);
  mp_M09_AXI_transactor->RREADY(m_m_axi_rready_converter_9_signal);
  mp_M09_AXI_transactor->CLK(aclk);
  mp_M09_AXI_transactor->RST(aresetn);
  // configure M10_AXI_transactor
    xsc::common_cpp::properties M10_AXI_transactor_param_props;
    M10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M10_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M10_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M10_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M10_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M10_AXI_transactor", M10_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_10");
  mp_m_axi_concat_awaddr->in_port[10](m_axi_concat_awaddr_out_10);
  mp_m_axi_concat_awaddr->offset_port(10, 400);
  mp_m_axi_awaddr_converter_10->vector_in(m_m_axi_awaddr_converter_10_signal);
  mp_m_axi_awaddr_converter_10->vector_out(m_axi_concat_awaddr_out_10);
  mp_M10_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_10_signal);
  mp_m_axi_awprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_10");
  mp_m_axi_concat_awprot->in_port[10](m_axi_concat_awprot_out_10);
  mp_m_axi_concat_awprot->offset_port(10, 30);
  mp_m_axi_awprot_converter_10->vector_in(m_m_axi_awprot_converter_10_signal);
  mp_m_axi_awprot_converter_10->vector_out(m_axi_concat_awprot_out_10);
  mp_M10_AXI_transactor->AWPROT(m_m_axi_awprot_converter_10_signal);
  mp_m_axi_awvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_10");
  mp_m_axi_concat_awvalid->in_port[10](m_axi_concat_awvalid_out_10);
  mp_m_axi_concat_awvalid->offset_port(10, 10);
  mp_m_axi_awvalid_converter_10->scalar_in(m_m_axi_awvalid_converter_10_signal);
  mp_m_axi_awvalid_converter_10->vector_out(m_axi_concat_awvalid_out_10);
  mp_M10_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_10_signal);
  mp_m_axi_awready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_10");
  
  mp_m_axi_split_awready->out_port[10](m_axi_split_awready_out_10);
    mp_m_axi_split_awready->add_mask(10,11,10);
  mp_m_axi_awready_converter_10->vector_in(m_axi_split_awready_out_10);
  mp_m_axi_awready_converter_10->scalar_out(m_m_axi_awready_converter_10_signal);
  mp_M10_AXI_transactor->AWREADY(m_m_axi_awready_converter_10_signal);
  mp_m_axi_wdata_converter_10 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_10");
  mp_m_axi_concat_wdata->in_port[10](m_axi_concat_wdata_out_10);
  mp_m_axi_concat_wdata->offset_port(10, 320);
  mp_m_axi_wdata_converter_10->vector_in(m_m_axi_wdata_converter_10_signal);
  mp_m_axi_wdata_converter_10->vector_out(m_axi_concat_wdata_out_10);
  mp_M10_AXI_transactor->WDATA(m_m_axi_wdata_converter_10_signal);
  mp_m_axi_wstrb_converter_10 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_10");
  mp_m_axi_concat_wstrb->in_port[10](m_axi_concat_wstrb_out_10);
  mp_m_axi_concat_wstrb->offset_port(10, 40);
  mp_m_axi_wstrb_converter_10->vector_in(m_m_axi_wstrb_converter_10_signal);
  mp_m_axi_wstrb_converter_10->vector_out(m_axi_concat_wstrb_out_10);
  mp_M10_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_10_signal);
  mp_m_axi_wvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_10");
  mp_m_axi_concat_wvalid->in_port[10](m_axi_concat_wvalid_out_10);
  mp_m_axi_concat_wvalid->offset_port(10, 10);
  mp_m_axi_wvalid_converter_10->scalar_in(m_m_axi_wvalid_converter_10_signal);
  mp_m_axi_wvalid_converter_10->vector_out(m_axi_concat_wvalid_out_10);
  mp_M10_AXI_transactor->WVALID(m_m_axi_wvalid_converter_10_signal);
  mp_m_axi_wready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_10");
  
  mp_m_axi_split_wready->out_port[10](m_axi_split_wready_out_10);
    mp_m_axi_split_wready->add_mask(10,11,10);
  mp_m_axi_wready_converter_10->vector_in(m_axi_split_wready_out_10);
  mp_m_axi_wready_converter_10->scalar_out(m_m_axi_wready_converter_10_signal);
  mp_M10_AXI_transactor->WREADY(m_m_axi_wready_converter_10_signal);
  mp_m_axi_bresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_10");
  
  mp_m_axi_split_bresp->out_port[10](m_axi_split_bresp_out_10);
    mp_m_axi_split_bresp->add_mask(10,22,20);
  mp_m_axi_bresp_converter_10->vector_in(m_axi_split_bresp_out_10);
  mp_m_axi_bresp_converter_10->vector_out(m_m_axi_bresp_converter_10_signal);
  mp_M10_AXI_transactor->BRESP(m_m_axi_bresp_converter_10_signal);
  mp_m_axi_bvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_10");
  
  mp_m_axi_split_bvalid->out_port[10](m_axi_split_bvalid_out_10);
    mp_m_axi_split_bvalid->add_mask(10,11,10);
  mp_m_axi_bvalid_converter_10->vector_in(m_axi_split_bvalid_out_10);
  mp_m_axi_bvalid_converter_10->scalar_out(m_m_axi_bvalid_converter_10_signal);
  mp_M10_AXI_transactor->BVALID(m_m_axi_bvalid_converter_10_signal);
  mp_m_axi_bready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_10");
  mp_m_axi_concat_bready->in_port[10](m_axi_concat_bready_out_10);
  mp_m_axi_concat_bready->offset_port(10, 10);
  mp_m_axi_bready_converter_10->scalar_in(m_m_axi_bready_converter_10_signal);
  mp_m_axi_bready_converter_10->vector_out(m_axi_concat_bready_out_10);
  mp_M10_AXI_transactor->BREADY(m_m_axi_bready_converter_10_signal);
  mp_m_axi_araddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_10");
  mp_m_axi_concat_araddr->in_port[10](m_axi_concat_araddr_out_10);
  mp_m_axi_concat_araddr->offset_port(10, 400);
  mp_m_axi_araddr_converter_10->vector_in(m_m_axi_araddr_converter_10_signal);
  mp_m_axi_araddr_converter_10->vector_out(m_axi_concat_araddr_out_10);
  mp_M10_AXI_transactor->ARADDR(m_m_axi_araddr_converter_10_signal);
  mp_m_axi_arprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_10");
  mp_m_axi_concat_arprot->in_port[10](m_axi_concat_arprot_out_10);
  mp_m_axi_concat_arprot->offset_port(10, 30);
  mp_m_axi_arprot_converter_10->vector_in(m_m_axi_arprot_converter_10_signal);
  mp_m_axi_arprot_converter_10->vector_out(m_axi_concat_arprot_out_10);
  mp_M10_AXI_transactor->ARPROT(m_m_axi_arprot_converter_10_signal);
  mp_m_axi_arvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_10");
  mp_m_axi_concat_arvalid->in_port[10](m_axi_concat_arvalid_out_10);
  mp_m_axi_concat_arvalid->offset_port(10, 10);
  mp_m_axi_arvalid_converter_10->scalar_in(m_m_axi_arvalid_converter_10_signal);
  mp_m_axi_arvalid_converter_10->vector_out(m_axi_concat_arvalid_out_10);
  mp_M10_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_10_signal);
  mp_m_axi_arready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_10");
  
  mp_m_axi_split_arready->out_port[10](m_axi_split_arready_out_10);
    mp_m_axi_split_arready->add_mask(10,11,10);
  mp_m_axi_arready_converter_10->vector_in(m_axi_split_arready_out_10);
  mp_m_axi_arready_converter_10->scalar_out(m_m_axi_arready_converter_10_signal);
  mp_M10_AXI_transactor->ARREADY(m_m_axi_arready_converter_10_signal);
  mp_m_axi_rdata_converter_10 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_10");
  
  mp_m_axi_split_rdata->out_port[10](m_axi_split_rdata_out_10);
    mp_m_axi_split_rdata->add_mask(10,352,320);
  mp_m_axi_rdata_converter_10->vector_in(m_axi_split_rdata_out_10);
  mp_m_axi_rdata_converter_10->vector_out(m_m_axi_rdata_converter_10_signal);
  mp_M10_AXI_transactor->RDATA(m_m_axi_rdata_converter_10_signal);
  mp_m_axi_rresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_10");
  
  mp_m_axi_split_rresp->out_port[10](m_axi_split_rresp_out_10);
    mp_m_axi_split_rresp->add_mask(10,22,20);
  mp_m_axi_rresp_converter_10->vector_in(m_axi_split_rresp_out_10);
  mp_m_axi_rresp_converter_10->vector_out(m_m_axi_rresp_converter_10_signal);
  mp_M10_AXI_transactor->RRESP(m_m_axi_rresp_converter_10_signal);
  mp_m_axi_rvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_10");
  
  mp_m_axi_split_rvalid->out_port[10](m_axi_split_rvalid_out_10);
    mp_m_axi_split_rvalid->add_mask(10,11,10);
  mp_m_axi_rvalid_converter_10->vector_in(m_axi_split_rvalid_out_10);
  mp_m_axi_rvalid_converter_10->scalar_out(m_m_axi_rvalid_converter_10_signal);
  mp_M10_AXI_transactor->RVALID(m_m_axi_rvalid_converter_10_signal);
  mp_m_axi_rready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_10");
  mp_m_axi_concat_rready->in_port[10](m_axi_concat_rready_out_10);
  mp_m_axi_concat_rready->offset_port(10, 10);
  mp_m_axi_rready_converter_10->scalar_in(m_m_axi_rready_converter_10_signal);
  mp_m_axi_rready_converter_10->vector_out(m_axi_concat_rready_out_10);
  mp_M10_AXI_transactor->RREADY(m_m_axi_rready_converter_10_signal);
  mp_M10_AXI_transactor->CLK(aclk);
  mp_M10_AXI_transactor->RST(aresetn);

  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M01_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M01_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M02_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M02_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M03_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M03_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M04_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M04_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M05_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M05_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M06_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M06_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M07_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M07_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M08_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M08_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M09_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M09_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M10_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M10_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void design_1_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

  // configure 'M01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M01_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  
  }
  else
  {
    M01_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M01_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M01_AXI_transactor->wr_socket));
    M01_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M01_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_M01_AXI_transactor->disable_transactor();
  }

  // configure 'M02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M02_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  
  }
  else
  {
    M02_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M02_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M02_AXI_transactor->wr_socket));
    M02_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M02_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_M02_AXI_transactor->disable_transactor();
  }

  // configure 'M03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M03_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  
  }
  else
  {
    M03_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M03_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M03_AXI_transactor->wr_socket));
    M03_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M03_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_M03_AXI_transactor->disable_transactor();
  }

  // configure 'M04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M04_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  
  }
  else
  {
    M04_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M04_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M04_AXI_transactor->wr_socket));
    M04_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M04_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_M04_AXI_transactor->disable_transactor();
  }

  // configure 'M05_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M05_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  
  }
  else
  {
    M05_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M05_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M05_AXI_transactor->wr_socket));
    M05_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M05_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_M05_AXI_transactor->disable_transactor();
  }

  // configure 'M06_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M06_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  
  }
  else
  {
    M06_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M06_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M06_AXI_transactor->wr_socket));
    M06_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M06_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_M06_AXI_transactor->disable_transactor();
  }

  // configure 'M07_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M07_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_7_rd_socket->bind(*(mp_M07_AXI_transactor->rd_socket));
    mp_impl->initiator_7_wr_socket->bind(*(mp_M07_AXI_transactor->wr_socket));
  
  }
  else
  {
    M07_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M07_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M07_AXI_transactor->wr_socket));
    M07_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M07_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M07_AXI_transactor->rd_socket));
    mp_M07_AXI_transactor->disable_transactor();
  }

  // configure 'M08_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M08_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_8_rd_socket->bind(*(mp_M08_AXI_transactor->rd_socket));
    mp_impl->initiator_8_wr_socket->bind(*(mp_M08_AXI_transactor->wr_socket));
  
  }
  else
  {
    M08_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M08_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M08_AXI_transactor->wr_socket));
    M08_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M08_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M08_AXI_transactor->rd_socket));
    mp_M08_AXI_transactor->disable_transactor();
  }

  // configure 'M09_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M09_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_9_rd_socket->bind(*(mp_M09_AXI_transactor->rd_socket));
    mp_impl->initiator_9_wr_socket->bind(*(mp_M09_AXI_transactor->wr_socket));
  
  }
  else
  {
    M09_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M09_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M09_AXI_transactor->wr_socket));
    M09_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M09_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M09_AXI_transactor->rd_socket));
    mp_M09_AXI_transactor->disable_transactor();
  }

  // configure 'M10_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M10_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_10_rd_socket->bind(*(mp_M10_AXI_transactor->rd_socket));
    mp_impl->initiator_10_wr_socket->bind(*(mp_M10_AXI_transactor->wr_socket));
  
  }
  else
  {
    M10_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M10_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M10_AXI_transactor->wr_socket));
    M10_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M10_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M10_AXI_transactor->rd_socket));
    mp_M10_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
design_1_xbar_0::design_1_xbar_0(const sc_core::sc_module_name& nm) : design_1_xbar_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axi_awaddr("s_axi_awaddr"), s_axi_awprot("s_axi_awprot"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arprot("s_axi_arprot"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awaddr("m_axi_awaddr"), m_axi_awprot("m_axi_awprot"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_araddr("m_axi_araddr"), m_axi_arprot("m_axi_arprot"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awvalid_converter = NULL;
  mp_s_axi_awready_converter = NULL;
  mp_s_axi_wvalid_converter = NULL;
  mp_s_axi_wready_converter = NULL;
  mp_s_axi_bvalid_converter = NULL;
  mp_s_axi_bready_converter = NULL;
  mp_s_axi_arvalid_converter = NULL;
  mp_s_axi_arready_converter = NULL;
  mp_s_axi_rvalid_converter = NULL;
  mp_s_axi_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_0 = NULL;
  mp_m_axi_awprot_converter_0 = NULL;
  mp_m_axi_awvalid_converter_0 = NULL;
  mp_m_axi_awready_converter_0 = NULL;
  mp_m_axi_wdata_converter_0 = NULL;
  mp_m_axi_wstrb_converter_0 = NULL;
  mp_m_axi_wvalid_converter_0 = NULL;
  mp_m_axi_wready_converter_0 = NULL;
  mp_m_axi_bresp_converter_0 = NULL;
  mp_m_axi_bvalid_converter_0 = NULL;
  mp_m_axi_bready_converter_0 = NULL;
  mp_m_axi_araddr_converter_0 = NULL;
  mp_m_axi_arprot_converter_0 = NULL;
  mp_m_axi_arvalid_converter_0 = NULL;
  mp_m_axi_arready_converter_0 = NULL;
  mp_m_axi_rdata_converter_0 = NULL;
  mp_m_axi_rresp_converter_0 = NULL;
  mp_m_axi_rvalid_converter_0 = NULL;
  mp_m_axi_rready_converter_0 = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_1 = NULL;
  mp_m_axi_awprot_converter_1 = NULL;
  mp_m_axi_awvalid_converter_1 = NULL;
  mp_m_axi_awready_converter_1 = NULL;
  mp_m_axi_wdata_converter_1 = NULL;
  mp_m_axi_wstrb_converter_1 = NULL;
  mp_m_axi_wvalid_converter_1 = NULL;
  mp_m_axi_wready_converter_1 = NULL;
  mp_m_axi_bresp_converter_1 = NULL;
  mp_m_axi_bvalid_converter_1 = NULL;
  mp_m_axi_bready_converter_1 = NULL;
  mp_m_axi_araddr_converter_1 = NULL;
  mp_m_axi_arprot_converter_1 = NULL;
  mp_m_axi_arvalid_converter_1 = NULL;
  mp_m_axi_arready_converter_1 = NULL;
  mp_m_axi_rdata_converter_1 = NULL;
  mp_m_axi_rresp_converter_1 = NULL;
  mp_m_axi_rvalid_converter_1 = NULL;
  mp_m_axi_rready_converter_1 = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_2 = NULL;
  mp_m_axi_awprot_converter_2 = NULL;
  mp_m_axi_awvalid_converter_2 = NULL;
  mp_m_axi_awready_converter_2 = NULL;
  mp_m_axi_wdata_converter_2 = NULL;
  mp_m_axi_wstrb_converter_2 = NULL;
  mp_m_axi_wvalid_converter_2 = NULL;
  mp_m_axi_wready_converter_2 = NULL;
  mp_m_axi_bresp_converter_2 = NULL;
  mp_m_axi_bvalid_converter_2 = NULL;
  mp_m_axi_bready_converter_2 = NULL;
  mp_m_axi_araddr_converter_2 = NULL;
  mp_m_axi_arprot_converter_2 = NULL;
  mp_m_axi_arvalid_converter_2 = NULL;
  mp_m_axi_arready_converter_2 = NULL;
  mp_m_axi_rdata_converter_2 = NULL;
  mp_m_axi_rresp_converter_2 = NULL;
  mp_m_axi_rvalid_converter_2 = NULL;
  mp_m_axi_rready_converter_2 = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_3 = NULL;
  mp_m_axi_awprot_converter_3 = NULL;
  mp_m_axi_awvalid_converter_3 = NULL;
  mp_m_axi_awready_converter_3 = NULL;
  mp_m_axi_wdata_converter_3 = NULL;
  mp_m_axi_wstrb_converter_3 = NULL;
  mp_m_axi_wvalid_converter_3 = NULL;
  mp_m_axi_wready_converter_3 = NULL;
  mp_m_axi_bresp_converter_3 = NULL;
  mp_m_axi_bvalid_converter_3 = NULL;
  mp_m_axi_bready_converter_3 = NULL;
  mp_m_axi_araddr_converter_3 = NULL;
  mp_m_axi_arprot_converter_3 = NULL;
  mp_m_axi_arvalid_converter_3 = NULL;
  mp_m_axi_arready_converter_3 = NULL;
  mp_m_axi_rdata_converter_3 = NULL;
  mp_m_axi_rresp_converter_3 = NULL;
  mp_m_axi_rvalid_converter_3 = NULL;
  mp_m_axi_rready_converter_3 = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_4 = NULL;
  mp_m_axi_awprot_converter_4 = NULL;
  mp_m_axi_awvalid_converter_4 = NULL;
  mp_m_axi_awready_converter_4 = NULL;
  mp_m_axi_wdata_converter_4 = NULL;
  mp_m_axi_wstrb_converter_4 = NULL;
  mp_m_axi_wvalid_converter_4 = NULL;
  mp_m_axi_wready_converter_4 = NULL;
  mp_m_axi_bresp_converter_4 = NULL;
  mp_m_axi_bvalid_converter_4 = NULL;
  mp_m_axi_bready_converter_4 = NULL;
  mp_m_axi_araddr_converter_4 = NULL;
  mp_m_axi_arprot_converter_4 = NULL;
  mp_m_axi_arvalid_converter_4 = NULL;
  mp_m_axi_arready_converter_4 = NULL;
  mp_m_axi_rdata_converter_4 = NULL;
  mp_m_axi_rresp_converter_4 = NULL;
  mp_m_axi_rvalid_converter_4 = NULL;
  mp_m_axi_rready_converter_4 = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_5 = NULL;
  mp_m_axi_awprot_converter_5 = NULL;
  mp_m_axi_awvalid_converter_5 = NULL;
  mp_m_axi_awready_converter_5 = NULL;
  mp_m_axi_wdata_converter_5 = NULL;
  mp_m_axi_wstrb_converter_5 = NULL;
  mp_m_axi_wvalid_converter_5 = NULL;
  mp_m_axi_wready_converter_5 = NULL;
  mp_m_axi_bresp_converter_5 = NULL;
  mp_m_axi_bvalid_converter_5 = NULL;
  mp_m_axi_bready_converter_5 = NULL;
  mp_m_axi_araddr_converter_5 = NULL;
  mp_m_axi_arprot_converter_5 = NULL;
  mp_m_axi_arvalid_converter_5 = NULL;
  mp_m_axi_arready_converter_5 = NULL;
  mp_m_axi_rdata_converter_5 = NULL;
  mp_m_axi_rresp_converter_5 = NULL;
  mp_m_axi_rvalid_converter_5 = NULL;
  mp_m_axi_rready_converter_5 = NULL;
  mp_M06_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_6 = NULL;
  mp_m_axi_awprot_converter_6 = NULL;
  mp_m_axi_awvalid_converter_6 = NULL;
  mp_m_axi_awready_converter_6 = NULL;
  mp_m_axi_wdata_converter_6 = NULL;
  mp_m_axi_wstrb_converter_6 = NULL;
  mp_m_axi_wvalid_converter_6 = NULL;
  mp_m_axi_wready_converter_6 = NULL;
  mp_m_axi_bresp_converter_6 = NULL;
  mp_m_axi_bvalid_converter_6 = NULL;
  mp_m_axi_bready_converter_6 = NULL;
  mp_m_axi_araddr_converter_6 = NULL;
  mp_m_axi_arprot_converter_6 = NULL;
  mp_m_axi_arvalid_converter_6 = NULL;
  mp_m_axi_arready_converter_6 = NULL;
  mp_m_axi_rdata_converter_6 = NULL;
  mp_m_axi_rresp_converter_6 = NULL;
  mp_m_axi_rvalid_converter_6 = NULL;
  mp_m_axi_rready_converter_6 = NULL;
  mp_M07_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_7 = NULL;
  mp_m_axi_awprot_converter_7 = NULL;
  mp_m_axi_awvalid_converter_7 = NULL;
  mp_m_axi_awready_converter_7 = NULL;
  mp_m_axi_wdata_converter_7 = NULL;
  mp_m_axi_wstrb_converter_7 = NULL;
  mp_m_axi_wvalid_converter_7 = NULL;
  mp_m_axi_wready_converter_7 = NULL;
  mp_m_axi_bresp_converter_7 = NULL;
  mp_m_axi_bvalid_converter_7 = NULL;
  mp_m_axi_bready_converter_7 = NULL;
  mp_m_axi_araddr_converter_7 = NULL;
  mp_m_axi_arprot_converter_7 = NULL;
  mp_m_axi_arvalid_converter_7 = NULL;
  mp_m_axi_arready_converter_7 = NULL;
  mp_m_axi_rdata_converter_7 = NULL;
  mp_m_axi_rresp_converter_7 = NULL;
  mp_m_axi_rvalid_converter_7 = NULL;
  mp_m_axi_rready_converter_7 = NULL;
  mp_M08_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_8 = NULL;
  mp_m_axi_awprot_converter_8 = NULL;
  mp_m_axi_awvalid_converter_8 = NULL;
  mp_m_axi_awready_converter_8 = NULL;
  mp_m_axi_wdata_converter_8 = NULL;
  mp_m_axi_wstrb_converter_8 = NULL;
  mp_m_axi_wvalid_converter_8 = NULL;
  mp_m_axi_wready_converter_8 = NULL;
  mp_m_axi_bresp_converter_8 = NULL;
  mp_m_axi_bvalid_converter_8 = NULL;
  mp_m_axi_bready_converter_8 = NULL;
  mp_m_axi_araddr_converter_8 = NULL;
  mp_m_axi_arprot_converter_8 = NULL;
  mp_m_axi_arvalid_converter_8 = NULL;
  mp_m_axi_arready_converter_8 = NULL;
  mp_m_axi_rdata_converter_8 = NULL;
  mp_m_axi_rresp_converter_8 = NULL;
  mp_m_axi_rvalid_converter_8 = NULL;
  mp_m_axi_rready_converter_8 = NULL;
  mp_M09_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_9 = NULL;
  mp_m_axi_awprot_converter_9 = NULL;
  mp_m_axi_awvalid_converter_9 = NULL;
  mp_m_axi_awready_converter_9 = NULL;
  mp_m_axi_wdata_converter_9 = NULL;
  mp_m_axi_wstrb_converter_9 = NULL;
  mp_m_axi_wvalid_converter_9 = NULL;
  mp_m_axi_wready_converter_9 = NULL;
  mp_m_axi_bresp_converter_9 = NULL;
  mp_m_axi_bvalid_converter_9 = NULL;
  mp_m_axi_bready_converter_9 = NULL;
  mp_m_axi_araddr_converter_9 = NULL;
  mp_m_axi_arprot_converter_9 = NULL;
  mp_m_axi_arvalid_converter_9 = NULL;
  mp_m_axi_arready_converter_9 = NULL;
  mp_m_axi_rdata_converter_9 = NULL;
  mp_m_axi_rresp_converter_9 = NULL;
  mp_m_axi_rvalid_converter_9 = NULL;
  mp_m_axi_rready_converter_9 = NULL;
  mp_M10_AXI_transactor = NULL;
  mp_m_axi_awaddr_converter_10 = NULL;
  mp_m_axi_awprot_converter_10 = NULL;
  mp_m_axi_awvalid_converter_10 = NULL;
  mp_m_axi_awready_converter_10 = NULL;
  mp_m_axi_wdata_converter_10 = NULL;
  mp_m_axi_wstrb_converter_10 = NULL;
  mp_m_axi_wvalid_converter_10 = NULL;
  mp_m_axi_wready_converter_10 = NULL;
  mp_m_axi_bresp_converter_10 = NULL;
  mp_m_axi_bvalid_converter_10 = NULL;
  mp_m_axi_bready_converter_10 = NULL;
  mp_m_axi_araddr_converter_10 = NULL;
  mp_m_axi_arprot_converter_10 = NULL;
  mp_m_axi_arvalid_converter_10 = NULL;
  mp_m_axi_arready_converter_10 = NULL;
  mp_m_axi_rdata_converter_10 = NULL;
  mp_m_axi_rresp_converter_10 = NULL;
  mp_m_axi_rvalid_converter_10 = NULL;
  mp_m_axi_rready_converter_10 = NULL;

  // initialize port junctures
  mp_m_axi_concat_araddr = NULL;
  mp_m_axi_concat_arprot = NULL;
  mp_m_axi_concat_arvalid = NULL;
  mp_m_axi_concat_awaddr = NULL;
  mp_m_axi_concat_awprot = NULL;
  mp_m_axi_concat_awvalid = NULL;
  mp_m_axi_concat_bready = NULL;
  mp_m_axi_concat_rready = NULL;
  mp_m_axi_concat_wdata = NULL;
  mp_m_axi_concat_wstrb = NULL;
  mp_m_axi_concat_wvalid = NULL;
  mp_m_axi_split_arready = NULL;
  mp_m_axi_split_awready = NULL;
  mp_m_axi_split_bresp = NULL;
  mp_m_axi_split_bvalid = NULL;
  mp_m_axi_split_rdata = NULL;
  mp_m_axi_split_rresp = NULL;
  mp_m_axi_split_rvalid = NULL;
  mp_m_axi_split_wready = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,40,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWADDR(s_axi_awaddr);
  mp_S00_AXI_transactor->AWPROT(s_axi_awprot);
  mp_s_axi_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awvalid_converter");
  mp_s_axi_awvalid_converter->vector_in(s_axi_awvalid);
  mp_s_axi_awvalid_converter->scalar_out(m_s_axi_awvalid_converter_signal);
  mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_signal);
  mp_s_axi_awready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_awready_converter");
  mp_s_axi_awready_converter->scalar_in(m_s_axi_awready_converter_signal);
  mp_s_axi_awready_converter->vector_out(s_axi_awready);
  mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_signal);
  mp_S00_AXI_transactor->WDATA(s_axi_wdata);
  mp_S00_AXI_transactor->WSTRB(s_axi_wstrb);
  mp_s_axi_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_wvalid_converter");
  mp_s_axi_wvalid_converter->vector_in(s_axi_wvalid);
  mp_s_axi_wvalid_converter->scalar_out(m_s_axi_wvalid_converter_signal);
  mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_signal);
  mp_s_axi_wready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_wready_converter");
  mp_s_axi_wready_converter->scalar_in(m_s_axi_wready_converter_signal);
  mp_s_axi_wready_converter->vector_out(s_axi_wready);
  mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_signal);
  mp_S00_AXI_transactor->BRESP(s_axi_bresp);
  mp_s_axi_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_bvalid_converter");
  mp_s_axi_bvalid_converter->scalar_in(m_s_axi_bvalid_converter_signal);
  mp_s_axi_bvalid_converter->vector_out(s_axi_bvalid);
  mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_signal);
  mp_s_axi_bready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_bready_converter");
  mp_s_axi_bready_converter->vector_in(s_axi_bready);
  mp_s_axi_bready_converter->scalar_out(m_s_axi_bready_converter_signal);
  mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_signal);
  mp_S00_AXI_transactor->ARADDR(s_axi_araddr);
  mp_S00_AXI_transactor->ARPROT(s_axi_arprot);
  mp_s_axi_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arvalid_converter");
  mp_s_axi_arvalid_converter->vector_in(s_axi_arvalid);
  mp_s_axi_arvalid_converter->scalar_out(m_s_axi_arvalid_converter_signal);
  mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_signal);
  mp_s_axi_arready_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_arready_converter");
  mp_s_axi_arready_converter->scalar_in(m_s_axi_arready_converter_signal);
  mp_s_axi_arready_converter->vector_out(s_axi_arready);
  mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_signal);
  mp_S00_AXI_transactor->RDATA(s_axi_rdata);
  mp_S00_AXI_transactor->RRESP(s_axi_rresp);
  mp_s_axi_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("s_axi_rvalid_converter");
  mp_s_axi_rvalid_converter->scalar_in(m_s_axi_rvalid_converter_signal);
  mp_s_axi_rvalid_converter->vector_out(s_axi_rvalid);
  mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_signal);
  mp_s_axi_rready_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_rready_converter");
  mp_s_axi_rready_converter->vector_in(s_axi_rready);
  mp_s_axi_rready_converter->scalar_out(m_s_axi_rready_converter_signal);
  mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_signal);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);
  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_0");
  mp_m_axi_concat_awaddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_awaddr");
  mp_m_axi_concat_awaddr->in_port[0](m_axi_concat_awaddr_out_0);
  mp_m_axi_concat_awaddr->out_port(m_axi_awaddr);
    mp_m_axi_concat_awaddr->offset_port(0, 0);
  mp_m_axi_awaddr_converter_0->vector_in(m_m_axi_awaddr_converter_0_signal);
  mp_m_axi_awaddr_converter_0->vector_out(m_axi_concat_awaddr_out_0);
  mp_M00_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_0_signal);
  mp_m_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_0");
  mp_m_axi_concat_awprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_awprot");
  mp_m_axi_concat_awprot->in_port[0](m_axi_concat_awprot_out_0);
  mp_m_axi_concat_awprot->out_port(m_axi_awprot);
    mp_m_axi_concat_awprot->offset_port(0, 0);
  mp_m_axi_awprot_converter_0->vector_in(m_m_axi_awprot_converter_0_signal);
  mp_m_axi_awprot_converter_0->vector_out(m_axi_concat_awprot_out_0);
  mp_M00_AXI_transactor->AWPROT(m_m_axi_awprot_converter_0_signal);
  mp_m_axi_awvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_0");
  mp_m_axi_concat_awvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_awvalid");
  mp_m_axi_concat_awvalid->in_port[0](m_axi_concat_awvalid_out_0);
  mp_m_axi_concat_awvalid->out_port(m_axi_awvalid);
    mp_m_axi_concat_awvalid->offset_port(0, 0);
  mp_m_axi_awvalid_converter_0->scalar_in(m_m_axi_awvalid_converter_0_signal);
  mp_m_axi_awvalid_converter_0->vector_out(m_axi_concat_awvalid_out_0);
  mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_0_signal);
  mp_m_axi_awready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_0");
  mp_m_axi_split_awready = new xsc::xsc_split<11, 11>("m_axi_split_awready");
  mp_m_axi_split_awready->in_port(m_axi_awready);
  mp_m_axi_split_awready->out_port[0](m_axi_split_awready_out_0);
    mp_m_axi_split_awready->add_mask(0,1,0);
  mp_m_axi_awready_converter_0->vector_in(m_axi_split_awready_out_0);
  mp_m_axi_awready_converter_0->scalar_out(m_m_axi_awready_converter_0_signal);
  mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_0_signal);
  mp_m_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_0");
  mp_m_axi_concat_wdata = new xsc::xsc_concatenator<352, 11>("m_axi_concat_wdata");
  mp_m_axi_concat_wdata->in_port[0](m_axi_concat_wdata_out_0);
  mp_m_axi_concat_wdata->out_port(m_axi_wdata);
    mp_m_axi_concat_wdata->offset_port(0, 0);
  mp_m_axi_wdata_converter_0->vector_in(m_m_axi_wdata_converter_0_signal);
  mp_m_axi_wdata_converter_0->vector_out(m_axi_concat_wdata_out_0);
  mp_M00_AXI_transactor->WDATA(m_m_axi_wdata_converter_0_signal);
  mp_m_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_0");
  mp_m_axi_concat_wstrb = new xsc::xsc_concatenator<44, 11>("m_axi_concat_wstrb");
  mp_m_axi_concat_wstrb->in_port[0](m_axi_concat_wstrb_out_0);
  mp_m_axi_concat_wstrb->out_port(m_axi_wstrb);
    mp_m_axi_concat_wstrb->offset_port(0, 0);
  mp_m_axi_wstrb_converter_0->vector_in(m_m_axi_wstrb_converter_0_signal);
  mp_m_axi_wstrb_converter_0->vector_out(m_axi_concat_wstrb_out_0);
  mp_M00_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_0_signal);
  mp_m_axi_wvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_0");
  mp_m_axi_concat_wvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_wvalid");
  mp_m_axi_concat_wvalid->in_port[0](m_axi_concat_wvalid_out_0);
  mp_m_axi_concat_wvalid->out_port(m_axi_wvalid);
    mp_m_axi_concat_wvalid->offset_port(0, 0);
  mp_m_axi_wvalid_converter_0->scalar_in(m_m_axi_wvalid_converter_0_signal);
  mp_m_axi_wvalid_converter_0->vector_out(m_axi_concat_wvalid_out_0);
  mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_0_signal);
  mp_m_axi_wready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_0");
  mp_m_axi_split_wready = new xsc::xsc_split<11, 11>("m_axi_split_wready");
  mp_m_axi_split_wready->in_port(m_axi_wready);
  mp_m_axi_split_wready->out_port[0](m_axi_split_wready_out_0);
    mp_m_axi_split_wready->add_mask(0,1,0);
  mp_m_axi_wready_converter_0->vector_in(m_axi_split_wready_out_0);
  mp_m_axi_wready_converter_0->scalar_out(m_m_axi_wready_converter_0_signal);
  mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_0_signal);
  mp_m_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_0");
  mp_m_axi_split_bresp = new xsc::xsc_split<22, 11>("m_axi_split_bresp");
  mp_m_axi_split_bresp->in_port(m_axi_bresp);
  mp_m_axi_split_bresp->out_port[0](m_axi_split_bresp_out_0);
    mp_m_axi_split_bresp->add_mask(0,2,0);
  mp_m_axi_bresp_converter_0->vector_in(m_axi_split_bresp_out_0);
  mp_m_axi_bresp_converter_0->vector_out(m_m_axi_bresp_converter_0_signal);
  mp_M00_AXI_transactor->BRESP(m_m_axi_bresp_converter_0_signal);
  mp_m_axi_bvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_0");
  mp_m_axi_split_bvalid = new xsc::xsc_split<11, 11>("m_axi_split_bvalid");
  mp_m_axi_split_bvalid->in_port(m_axi_bvalid);
  mp_m_axi_split_bvalid->out_port[0](m_axi_split_bvalid_out_0);
    mp_m_axi_split_bvalid->add_mask(0,1,0);
  mp_m_axi_bvalid_converter_0->vector_in(m_axi_split_bvalid_out_0);
  mp_m_axi_bvalid_converter_0->scalar_out(m_m_axi_bvalid_converter_0_signal);
  mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_0_signal);
  mp_m_axi_bready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_0");
  mp_m_axi_concat_bready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_bready");
  mp_m_axi_concat_bready->in_port[0](m_axi_concat_bready_out_0);
  mp_m_axi_concat_bready->out_port(m_axi_bready);
    mp_m_axi_concat_bready->offset_port(0, 0);
  mp_m_axi_bready_converter_0->scalar_in(m_m_axi_bready_converter_0_signal);
  mp_m_axi_bready_converter_0->vector_out(m_axi_concat_bready_out_0);
  mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_0_signal);
  mp_m_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_0");
  mp_m_axi_concat_araddr = new xsc::xsc_concatenator<440, 11>("m_axi_concat_araddr");
  mp_m_axi_concat_araddr->in_port[0](m_axi_concat_araddr_out_0);
  mp_m_axi_concat_araddr->out_port(m_axi_araddr);
    mp_m_axi_concat_araddr->offset_port(0, 0);
  mp_m_axi_araddr_converter_0->vector_in(m_m_axi_araddr_converter_0_signal);
  mp_m_axi_araddr_converter_0->vector_out(m_axi_concat_araddr_out_0);
  mp_M00_AXI_transactor->ARADDR(m_m_axi_araddr_converter_0_signal);
  mp_m_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_0");
  mp_m_axi_concat_arprot = new xsc::xsc_concatenator<33, 11>("m_axi_concat_arprot");
  mp_m_axi_concat_arprot->in_port[0](m_axi_concat_arprot_out_0);
  mp_m_axi_concat_arprot->out_port(m_axi_arprot);
    mp_m_axi_concat_arprot->offset_port(0, 0);
  mp_m_axi_arprot_converter_0->vector_in(m_m_axi_arprot_converter_0_signal);
  mp_m_axi_arprot_converter_0->vector_out(m_axi_concat_arprot_out_0);
  mp_M00_AXI_transactor->ARPROT(m_m_axi_arprot_converter_0_signal);
  mp_m_axi_arvalid_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_0");
  mp_m_axi_concat_arvalid = new xsc::xsc_concatenator<11, 11>("m_axi_concat_arvalid");
  mp_m_axi_concat_arvalid->in_port[0](m_axi_concat_arvalid_out_0);
  mp_m_axi_concat_arvalid->out_port(m_axi_arvalid);
    mp_m_axi_concat_arvalid->offset_port(0, 0);
  mp_m_axi_arvalid_converter_0->scalar_in(m_m_axi_arvalid_converter_0_signal);
  mp_m_axi_arvalid_converter_0->vector_out(m_axi_concat_arvalid_out_0);
  mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_0_signal);
  mp_m_axi_arready_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_0");
  mp_m_axi_split_arready = new xsc::xsc_split<11, 11>("m_axi_split_arready");
  mp_m_axi_split_arready->in_port(m_axi_arready);
  mp_m_axi_split_arready->out_port[0](m_axi_split_arready_out_0);
    mp_m_axi_split_arready->add_mask(0,1,0);
  mp_m_axi_arready_converter_0->vector_in(m_axi_split_arready_out_0);
  mp_m_axi_arready_converter_0->scalar_out(m_m_axi_arready_converter_0_signal);
  mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_0_signal);
  mp_m_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_0");
  mp_m_axi_split_rdata = new xsc::xsc_split<352, 11>("m_axi_split_rdata");
  mp_m_axi_split_rdata->in_port(m_axi_rdata);
  mp_m_axi_split_rdata->out_port[0](m_axi_split_rdata_out_0);
    mp_m_axi_split_rdata->add_mask(0,32,0);
  mp_m_axi_rdata_converter_0->vector_in(m_axi_split_rdata_out_0);
  mp_m_axi_rdata_converter_0->vector_out(m_m_axi_rdata_converter_0_signal);
  mp_M00_AXI_transactor->RDATA(m_m_axi_rdata_converter_0_signal);
  mp_m_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_0");
  mp_m_axi_split_rresp = new xsc::xsc_split<22, 11>("m_axi_split_rresp");
  mp_m_axi_split_rresp->in_port(m_axi_rresp);
  mp_m_axi_split_rresp->out_port[0](m_axi_split_rresp_out_0);
    mp_m_axi_split_rresp->add_mask(0,2,0);
  mp_m_axi_rresp_converter_0->vector_in(m_axi_split_rresp_out_0);
  mp_m_axi_rresp_converter_0->vector_out(m_m_axi_rresp_converter_0_signal);
  mp_M00_AXI_transactor->RRESP(m_m_axi_rresp_converter_0_signal);
  mp_m_axi_rvalid_converter_0 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_0");
  mp_m_axi_split_rvalid = new xsc::xsc_split<11, 11>("m_axi_split_rvalid");
  mp_m_axi_split_rvalid->in_port(m_axi_rvalid);
  mp_m_axi_split_rvalid->out_port[0](m_axi_split_rvalid_out_0);
    mp_m_axi_split_rvalid->add_mask(0,1,0);
  mp_m_axi_rvalid_converter_0->vector_in(m_axi_split_rvalid_out_0);
  mp_m_axi_rvalid_converter_0->scalar_out(m_m_axi_rvalid_converter_0_signal);
  mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_0_signal);
  mp_m_axi_rready_converter_0 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_0");
  mp_m_axi_concat_rready = new xsc::xsc_concatenator<11, 11>("m_axi_concat_rready");
  mp_m_axi_concat_rready->in_port[0](m_axi_concat_rready_out_0);
  mp_m_axi_concat_rready->out_port(m_axi_rready);
    mp_m_axi_concat_rready->offset_port(0, 0);
  mp_m_axi_rready_converter_0->scalar_in(m_m_axi_rready_converter_0_signal);
  mp_m_axi_rready_converter_0->vector_out(m_axi_concat_rready_out_0);
  mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_0_signal);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);
  // configure M01_AXI_transactor
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_1");
  mp_m_axi_concat_awaddr->in_port[1](m_axi_concat_awaddr_out_1);
  mp_m_axi_concat_awaddr->offset_port(1, 40);
  mp_m_axi_awaddr_converter_1->vector_in(m_m_axi_awaddr_converter_1_signal);
  mp_m_axi_awaddr_converter_1->vector_out(m_axi_concat_awaddr_out_1);
  mp_M01_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_1_signal);
  mp_m_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_1");
  mp_m_axi_concat_awprot->in_port[1](m_axi_concat_awprot_out_1);
  mp_m_axi_concat_awprot->offset_port(1, 3);
  mp_m_axi_awprot_converter_1->vector_in(m_m_axi_awprot_converter_1_signal);
  mp_m_axi_awprot_converter_1->vector_out(m_axi_concat_awprot_out_1);
  mp_M01_AXI_transactor->AWPROT(m_m_axi_awprot_converter_1_signal);
  mp_m_axi_awvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_1");
  mp_m_axi_concat_awvalid->in_port[1](m_axi_concat_awvalid_out_1);
  mp_m_axi_concat_awvalid->offset_port(1, 1);
  mp_m_axi_awvalid_converter_1->scalar_in(m_m_axi_awvalid_converter_1_signal);
  mp_m_axi_awvalid_converter_1->vector_out(m_axi_concat_awvalid_out_1);
  mp_M01_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_1_signal);
  mp_m_axi_awready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_1");
  
  mp_m_axi_split_awready->out_port[1](m_axi_split_awready_out_1);
    mp_m_axi_split_awready->add_mask(1,2,1);
  mp_m_axi_awready_converter_1->vector_in(m_axi_split_awready_out_1);
  mp_m_axi_awready_converter_1->scalar_out(m_m_axi_awready_converter_1_signal);
  mp_M01_AXI_transactor->AWREADY(m_m_axi_awready_converter_1_signal);
  mp_m_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_1");
  mp_m_axi_concat_wdata->in_port[1](m_axi_concat_wdata_out_1);
  mp_m_axi_concat_wdata->offset_port(1, 32);
  mp_m_axi_wdata_converter_1->vector_in(m_m_axi_wdata_converter_1_signal);
  mp_m_axi_wdata_converter_1->vector_out(m_axi_concat_wdata_out_1);
  mp_M01_AXI_transactor->WDATA(m_m_axi_wdata_converter_1_signal);
  mp_m_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_1");
  mp_m_axi_concat_wstrb->in_port[1](m_axi_concat_wstrb_out_1);
  mp_m_axi_concat_wstrb->offset_port(1, 4);
  mp_m_axi_wstrb_converter_1->vector_in(m_m_axi_wstrb_converter_1_signal);
  mp_m_axi_wstrb_converter_1->vector_out(m_axi_concat_wstrb_out_1);
  mp_M01_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_1_signal);
  mp_m_axi_wvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_1");
  mp_m_axi_concat_wvalid->in_port[1](m_axi_concat_wvalid_out_1);
  mp_m_axi_concat_wvalid->offset_port(1, 1);
  mp_m_axi_wvalid_converter_1->scalar_in(m_m_axi_wvalid_converter_1_signal);
  mp_m_axi_wvalid_converter_1->vector_out(m_axi_concat_wvalid_out_1);
  mp_M01_AXI_transactor->WVALID(m_m_axi_wvalid_converter_1_signal);
  mp_m_axi_wready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_1");
  
  mp_m_axi_split_wready->out_port[1](m_axi_split_wready_out_1);
    mp_m_axi_split_wready->add_mask(1,2,1);
  mp_m_axi_wready_converter_1->vector_in(m_axi_split_wready_out_1);
  mp_m_axi_wready_converter_1->scalar_out(m_m_axi_wready_converter_1_signal);
  mp_M01_AXI_transactor->WREADY(m_m_axi_wready_converter_1_signal);
  mp_m_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_1");
  
  mp_m_axi_split_bresp->out_port[1](m_axi_split_bresp_out_1);
    mp_m_axi_split_bresp->add_mask(1,4,2);
  mp_m_axi_bresp_converter_1->vector_in(m_axi_split_bresp_out_1);
  mp_m_axi_bresp_converter_1->vector_out(m_m_axi_bresp_converter_1_signal);
  mp_M01_AXI_transactor->BRESP(m_m_axi_bresp_converter_1_signal);
  mp_m_axi_bvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_1");
  
  mp_m_axi_split_bvalid->out_port[1](m_axi_split_bvalid_out_1);
    mp_m_axi_split_bvalid->add_mask(1,2,1);
  mp_m_axi_bvalid_converter_1->vector_in(m_axi_split_bvalid_out_1);
  mp_m_axi_bvalid_converter_1->scalar_out(m_m_axi_bvalid_converter_1_signal);
  mp_M01_AXI_transactor->BVALID(m_m_axi_bvalid_converter_1_signal);
  mp_m_axi_bready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_1");
  mp_m_axi_concat_bready->in_port[1](m_axi_concat_bready_out_1);
  mp_m_axi_concat_bready->offset_port(1, 1);
  mp_m_axi_bready_converter_1->scalar_in(m_m_axi_bready_converter_1_signal);
  mp_m_axi_bready_converter_1->vector_out(m_axi_concat_bready_out_1);
  mp_M01_AXI_transactor->BREADY(m_m_axi_bready_converter_1_signal);
  mp_m_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_1");
  mp_m_axi_concat_araddr->in_port[1](m_axi_concat_araddr_out_1);
  mp_m_axi_concat_araddr->offset_port(1, 40);
  mp_m_axi_araddr_converter_1->vector_in(m_m_axi_araddr_converter_1_signal);
  mp_m_axi_araddr_converter_1->vector_out(m_axi_concat_araddr_out_1);
  mp_M01_AXI_transactor->ARADDR(m_m_axi_araddr_converter_1_signal);
  mp_m_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_1");
  mp_m_axi_concat_arprot->in_port[1](m_axi_concat_arprot_out_1);
  mp_m_axi_concat_arprot->offset_port(1, 3);
  mp_m_axi_arprot_converter_1->vector_in(m_m_axi_arprot_converter_1_signal);
  mp_m_axi_arprot_converter_1->vector_out(m_axi_concat_arprot_out_1);
  mp_M01_AXI_transactor->ARPROT(m_m_axi_arprot_converter_1_signal);
  mp_m_axi_arvalid_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_1");
  mp_m_axi_concat_arvalid->in_port[1](m_axi_concat_arvalid_out_1);
  mp_m_axi_concat_arvalid->offset_port(1, 1);
  mp_m_axi_arvalid_converter_1->scalar_in(m_m_axi_arvalid_converter_1_signal);
  mp_m_axi_arvalid_converter_1->vector_out(m_axi_concat_arvalid_out_1);
  mp_M01_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_1_signal);
  mp_m_axi_arready_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_1");
  
  mp_m_axi_split_arready->out_port[1](m_axi_split_arready_out_1);
    mp_m_axi_split_arready->add_mask(1,2,1);
  mp_m_axi_arready_converter_1->vector_in(m_axi_split_arready_out_1);
  mp_m_axi_arready_converter_1->scalar_out(m_m_axi_arready_converter_1_signal);
  mp_M01_AXI_transactor->ARREADY(m_m_axi_arready_converter_1_signal);
  mp_m_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_1");
  
  mp_m_axi_split_rdata->out_port[1](m_axi_split_rdata_out_1);
    mp_m_axi_split_rdata->add_mask(1,64,32);
  mp_m_axi_rdata_converter_1->vector_in(m_axi_split_rdata_out_1);
  mp_m_axi_rdata_converter_1->vector_out(m_m_axi_rdata_converter_1_signal);
  mp_M01_AXI_transactor->RDATA(m_m_axi_rdata_converter_1_signal);
  mp_m_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_1");
  
  mp_m_axi_split_rresp->out_port[1](m_axi_split_rresp_out_1);
    mp_m_axi_split_rresp->add_mask(1,4,2);
  mp_m_axi_rresp_converter_1->vector_in(m_axi_split_rresp_out_1);
  mp_m_axi_rresp_converter_1->vector_out(m_m_axi_rresp_converter_1_signal);
  mp_M01_AXI_transactor->RRESP(m_m_axi_rresp_converter_1_signal);
  mp_m_axi_rvalid_converter_1 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_1");
  
  mp_m_axi_split_rvalid->out_port[1](m_axi_split_rvalid_out_1);
    mp_m_axi_split_rvalid->add_mask(1,2,1);
  mp_m_axi_rvalid_converter_1->vector_in(m_axi_split_rvalid_out_1);
  mp_m_axi_rvalid_converter_1->scalar_out(m_m_axi_rvalid_converter_1_signal);
  mp_M01_AXI_transactor->RVALID(m_m_axi_rvalid_converter_1_signal);
  mp_m_axi_rready_converter_1 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_1");
  mp_m_axi_concat_rready->in_port[1](m_axi_concat_rready_out_1);
  mp_m_axi_concat_rready->offset_port(1, 1);
  mp_m_axi_rready_converter_1->scalar_in(m_m_axi_rready_converter_1_signal);
  mp_m_axi_rready_converter_1->vector_out(m_axi_concat_rready_out_1);
  mp_M01_AXI_transactor->RREADY(m_m_axi_rready_converter_1_signal);
  mp_M01_AXI_transactor->CLK(aclk);
  mp_M01_AXI_transactor->RST(aresetn);
  // configure M02_AXI_transactor
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_2");
  mp_m_axi_concat_awaddr->in_port[2](m_axi_concat_awaddr_out_2);
  mp_m_axi_concat_awaddr->offset_port(2, 80);
  mp_m_axi_awaddr_converter_2->vector_in(m_m_axi_awaddr_converter_2_signal);
  mp_m_axi_awaddr_converter_2->vector_out(m_axi_concat_awaddr_out_2);
  mp_M02_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_2_signal);
  mp_m_axi_awprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_2");
  mp_m_axi_concat_awprot->in_port[2](m_axi_concat_awprot_out_2);
  mp_m_axi_concat_awprot->offset_port(2, 6);
  mp_m_axi_awprot_converter_2->vector_in(m_m_axi_awprot_converter_2_signal);
  mp_m_axi_awprot_converter_2->vector_out(m_axi_concat_awprot_out_2);
  mp_M02_AXI_transactor->AWPROT(m_m_axi_awprot_converter_2_signal);
  mp_m_axi_awvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_2");
  mp_m_axi_concat_awvalid->in_port[2](m_axi_concat_awvalid_out_2);
  mp_m_axi_concat_awvalid->offset_port(2, 2);
  mp_m_axi_awvalid_converter_2->scalar_in(m_m_axi_awvalid_converter_2_signal);
  mp_m_axi_awvalid_converter_2->vector_out(m_axi_concat_awvalid_out_2);
  mp_M02_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_2_signal);
  mp_m_axi_awready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_2");
  
  mp_m_axi_split_awready->out_port[2](m_axi_split_awready_out_2);
    mp_m_axi_split_awready->add_mask(2,3,2);
  mp_m_axi_awready_converter_2->vector_in(m_axi_split_awready_out_2);
  mp_m_axi_awready_converter_2->scalar_out(m_m_axi_awready_converter_2_signal);
  mp_M02_AXI_transactor->AWREADY(m_m_axi_awready_converter_2_signal);
  mp_m_axi_wdata_converter_2 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_2");
  mp_m_axi_concat_wdata->in_port[2](m_axi_concat_wdata_out_2);
  mp_m_axi_concat_wdata->offset_port(2, 64);
  mp_m_axi_wdata_converter_2->vector_in(m_m_axi_wdata_converter_2_signal);
  mp_m_axi_wdata_converter_2->vector_out(m_axi_concat_wdata_out_2);
  mp_M02_AXI_transactor->WDATA(m_m_axi_wdata_converter_2_signal);
  mp_m_axi_wstrb_converter_2 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_2");
  mp_m_axi_concat_wstrb->in_port[2](m_axi_concat_wstrb_out_2);
  mp_m_axi_concat_wstrb->offset_port(2, 8);
  mp_m_axi_wstrb_converter_2->vector_in(m_m_axi_wstrb_converter_2_signal);
  mp_m_axi_wstrb_converter_2->vector_out(m_axi_concat_wstrb_out_2);
  mp_M02_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_2_signal);
  mp_m_axi_wvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_2");
  mp_m_axi_concat_wvalid->in_port[2](m_axi_concat_wvalid_out_2);
  mp_m_axi_concat_wvalid->offset_port(2, 2);
  mp_m_axi_wvalid_converter_2->scalar_in(m_m_axi_wvalid_converter_2_signal);
  mp_m_axi_wvalid_converter_2->vector_out(m_axi_concat_wvalid_out_2);
  mp_M02_AXI_transactor->WVALID(m_m_axi_wvalid_converter_2_signal);
  mp_m_axi_wready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_2");
  
  mp_m_axi_split_wready->out_port[2](m_axi_split_wready_out_2);
    mp_m_axi_split_wready->add_mask(2,3,2);
  mp_m_axi_wready_converter_2->vector_in(m_axi_split_wready_out_2);
  mp_m_axi_wready_converter_2->scalar_out(m_m_axi_wready_converter_2_signal);
  mp_M02_AXI_transactor->WREADY(m_m_axi_wready_converter_2_signal);
  mp_m_axi_bresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_2");
  
  mp_m_axi_split_bresp->out_port[2](m_axi_split_bresp_out_2);
    mp_m_axi_split_bresp->add_mask(2,6,4);
  mp_m_axi_bresp_converter_2->vector_in(m_axi_split_bresp_out_2);
  mp_m_axi_bresp_converter_2->vector_out(m_m_axi_bresp_converter_2_signal);
  mp_M02_AXI_transactor->BRESP(m_m_axi_bresp_converter_2_signal);
  mp_m_axi_bvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_2");
  
  mp_m_axi_split_bvalid->out_port[2](m_axi_split_bvalid_out_2);
    mp_m_axi_split_bvalid->add_mask(2,3,2);
  mp_m_axi_bvalid_converter_2->vector_in(m_axi_split_bvalid_out_2);
  mp_m_axi_bvalid_converter_2->scalar_out(m_m_axi_bvalid_converter_2_signal);
  mp_M02_AXI_transactor->BVALID(m_m_axi_bvalid_converter_2_signal);
  mp_m_axi_bready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_2");
  mp_m_axi_concat_bready->in_port[2](m_axi_concat_bready_out_2);
  mp_m_axi_concat_bready->offset_port(2, 2);
  mp_m_axi_bready_converter_2->scalar_in(m_m_axi_bready_converter_2_signal);
  mp_m_axi_bready_converter_2->vector_out(m_axi_concat_bready_out_2);
  mp_M02_AXI_transactor->BREADY(m_m_axi_bready_converter_2_signal);
  mp_m_axi_araddr_converter_2 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_2");
  mp_m_axi_concat_araddr->in_port[2](m_axi_concat_araddr_out_2);
  mp_m_axi_concat_araddr->offset_port(2, 80);
  mp_m_axi_araddr_converter_2->vector_in(m_m_axi_araddr_converter_2_signal);
  mp_m_axi_araddr_converter_2->vector_out(m_axi_concat_araddr_out_2);
  mp_M02_AXI_transactor->ARADDR(m_m_axi_araddr_converter_2_signal);
  mp_m_axi_arprot_converter_2 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_2");
  mp_m_axi_concat_arprot->in_port[2](m_axi_concat_arprot_out_2);
  mp_m_axi_concat_arprot->offset_port(2, 6);
  mp_m_axi_arprot_converter_2->vector_in(m_m_axi_arprot_converter_2_signal);
  mp_m_axi_arprot_converter_2->vector_out(m_axi_concat_arprot_out_2);
  mp_M02_AXI_transactor->ARPROT(m_m_axi_arprot_converter_2_signal);
  mp_m_axi_arvalid_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_2");
  mp_m_axi_concat_arvalid->in_port[2](m_axi_concat_arvalid_out_2);
  mp_m_axi_concat_arvalid->offset_port(2, 2);
  mp_m_axi_arvalid_converter_2->scalar_in(m_m_axi_arvalid_converter_2_signal);
  mp_m_axi_arvalid_converter_2->vector_out(m_axi_concat_arvalid_out_2);
  mp_M02_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_2_signal);
  mp_m_axi_arready_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_2");
  
  mp_m_axi_split_arready->out_port[2](m_axi_split_arready_out_2);
    mp_m_axi_split_arready->add_mask(2,3,2);
  mp_m_axi_arready_converter_2->vector_in(m_axi_split_arready_out_2);
  mp_m_axi_arready_converter_2->scalar_out(m_m_axi_arready_converter_2_signal);
  mp_M02_AXI_transactor->ARREADY(m_m_axi_arready_converter_2_signal);
  mp_m_axi_rdata_converter_2 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_2");
  
  mp_m_axi_split_rdata->out_port[2](m_axi_split_rdata_out_2);
    mp_m_axi_split_rdata->add_mask(2,96,64);
  mp_m_axi_rdata_converter_2->vector_in(m_axi_split_rdata_out_2);
  mp_m_axi_rdata_converter_2->vector_out(m_m_axi_rdata_converter_2_signal);
  mp_M02_AXI_transactor->RDATA(m_m_axi_rdata_converter_2_signal);
  mp_m_axi_rresp_converter_2 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_2");
  
  mp_m_axi_split_rresp->out_port[2](m_axi_split_rresp_out_2);
    mp_m_axi_split_rresp->add_mask(2,6,4);
  mp_m_axi_rresp_converter_2->vector_in(m_axi_split_rresp_out_2);
  mp_m_axi_rresp_converter_2->vector_out(m_m_axi_rresp_converter_2_signal);
  mp_M02_AXI_transactor->RRESP(m_m_axi_rresp_converter_2_signal);
  mp_m_axi_rvalid_converter_2 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_2");
  
  mp_m_axi_split_rvalid->out_port[2](m_axi_split_rvalid_out_2);
    mp_m_axi_split_rvalid->add_mask(2,3,2);
  mp_m_axi_rvalid_converter_2->vector_in(m_axi_split_rvalid_out_2);
  mp_m_axi_rvalid_converter_2->scalar_out(m_m_axi_rvalid_converter_2_signal);
  mp_M02_AXI_transactor->RVALID(m_m_axi_rvalid_converter_2_signal);
  mp_m_axi_rready_converter_2 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_2");
  mp_m_axi_concat_rready->in_port[2](m_axi_concat_rready_out_2);
  mp_m_axi_concat_rready->offset_port(2, 2);
  mp_m_axi_rready_converter_2->scalar_in(m_m_axi_rready_converter_2_signal);
  mp_m_axi_rready_converter_2->vector_out(m_axi_concat_rready_out_2);
  mp_M02_AXI_transactor->RREADY(m_m_axi_rready_converter_2_signal);
  mp_M02_AXI_transactor->CLK(aclk);
  mp_M02_AXI_transactor->RST(aresetn);
  // configure M03_AXI_transactor
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_3");
  mp_m_axi_concat_awaddr->in_port[3](m_axi_concat_awaddr_out_3);
  mp_m_axi_concat_awaddr->offset_port(3, 120);
  mp_m_axi_awaddr_converter_3->vector_in(m_m_axi_awaddr_converter_3_signal);
  mp_m_axi_awaddr_converter_3->vector_out(m_axi_concat_awaddr_out_3);
  mp_M03_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_3_signal);
  mp_m_axi_awprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_3");
  mp_m_axi_concat_awprot->in_port[3](m_axi_concat_awprot_out_3);
  mp_m_axi_concat_awprot->offset_port(3, 9);
  mp_m_axi_awprot_converter_3->vector_in(m_m_axi_awprot_converter_3_signal);
  mp_m_axi_awprot_converter_3->vector_out(m_axi_concat_awprot_out_3);
  mp_M03_AXI_transactor->AWPROT(m_m_axi_awprot_converter_3_signal);
  mp_m_axi_awvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_3");
  mp_m_axi_concat_awvalid->in_port[3](m_axi_concat_awvalid_out_3);
  mp_m_axi_concat_awvalid->offset_port(3, 3);
  mp_m_axi_awvalid_converter_3->scalar_in(m_m_axi_awvalid_converter_3_signal);
  mp_m_axi_awvalid_converter_3->vector_out(m_axi_concat_awvalid_out_3);
  mp_M03_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_3_signal);
  mp_m_axi_awready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_3");
  
  mp_m_axi_split_awready->out_port[3](m_axi_split_awready_out_3);
    mp_m_axi_split_awready->add_mask(3,4,3);
  mp_m_axi_awready_converter_3->vector_in(m_axi_split_awready_out_3);
  mp_m_axi_awready_converter_3->scalar_out(m_m_axi_awready_converter_3_signal);
  mp_M03_AXI_transactor->AWREADY(m_m_axi_awready_converter_3_signal);
  mp_m_axi_wdata_converter_3 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_3");
  mp_m_axi_concat_wdata->in_port[3](m_axi_concat_wdata_out_3);
  mp_m_axi_concat_wdata->offset_port(3, 96);
  mp_m_axi_wdata_converter_3->vector_in(m_m_axi_wdata_converter_3_signal);
  mp_m_axi_wdata_converter_3->vector_out(m_axi_concat_wdata_out_3);
  mp_M03_AXI_transactor->WDATA(m_m_axi_wdata_converter_3_signal);
  mp_m_axi_wstrb_converter_3 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_3");
  mp_m_axi_concat_wstrb->in_port[3](m_axi_concat_wstrb_out_3);
  mp_m_axi_concat_wstrb->offset_port(3, 12);
  mp_m_axi_wstrb_converter_3->vector_in(m_m_axi_wstrb_converter_3_signal);
  mp_m_axi_wstrb_converter_3->vector_out(m_axi_concat_wstrb_out_3);
  mp_M03_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_3_signal);
  mp_m_axi_wvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_3");
  mp_m_axi_concat_wvalid->in_port[3](m_axi_concat_wvalid_out_3);
  mp_m_axi_concat_wvalid->offset_port(3, 3);
  mp_m_axi_wvalid_converter_3->scalar_in(m_m_axi_wvalid_converter_3_signal);
  mp_m_axi_wvalid_converter_3->vector_out(m_axi_concat_wvalid_out_3);
  mp_M03_AXI_transactor->WVALID(m_m_axi_wvalid_converter_3_signal);
  mp_m_axi_wready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_3");
  
  mp_m_axi_split_wready->out_port[3](m_axi_split_wready_out_3);
    mp_m_axi_split_wready->add_mask(3,4,3);
  mp_m_axi_wready_converter_3->vector_in(m_axi_split_wready_out_3);
  mp_m_axi_wready_converter_3->scalar_out(m_m_axi_wready_converter_3_signal);
  mp_M03_AXI_transactor->WREADY(m_m_axi_wready_converter_3_signal);
  mp_m_axi_bresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_3");
  
  mp_m_axi_split_bresp->out_port[3](m_axi_split_bresp_out_3);
    mp_m_axi_split_bresp->add_mask(3,8,6);
  mp_m_axi_bresp_converter_3->vector_in(m_axi_split_bresp_out_3);
  mp_m_axi_bresp_converter_3->vector_out(m_m_axi_bresp_converter_3_signal);
  mp_M03_AXI_transactor->BRESP(m_m_axi_bresp_converter_3_signal);
  mp_m_axi_bvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_3");
  
  mp_m_axi_split_bvalid->out_port[3](m_axi_split_bvalid_out_3);
    mp_m_axi_split_bvalid->add_mask(3,4,3);
  mp_m_axi_bvalid_converter_3->vector_in(m_axi_split_bvalid_out_3);
  mp_m_axi_bvalid_converter_3->scalar_out(m_m_axi_bvalid_converter_3_signal);
  mp_M03_AXI_transactor->BVALID(m_m_axi_bvalid_converter_3_signal);
  mp_m_axi_bready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_3");
  mp_m_axi_concat_bready->in_port[3](m_axi_concat_bready_out_3);
  mp_m_axi_concat_bready->offset_port(3, 3);
  mp_m_axi_bready_converter_3->scalar_in(m_m_axi_bready_converter_3_signal);
  mp_m_axi_bready_converter_3->vector_out(m_axi_concat_bready_out_3);
  mp_M03_AXI_transactor->BREADY(m_m_axi_bready_converter_3_signal);
  mp_m_axi_araddr_converter_3 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_3");
  mp_m_axi_concat_araddr->in_port[3](m_axi_concat_araddr_out_3);
  mp_m_axi_concat_araddr->offset_port(3, 120);
  mp_m_axi_araddr_converter_3->vector_in(m_m_axi_araddr_converter_3_signal);
  mp_m_axi_araddr_converter_3->vector_out(m_axi_concat_araddr_out_3);
  mp_M03_AXI_transactor->ARADDR(m_m_axi_araddr_converter_3_signal);
  mp_m_axi_arprot_converter_3 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_3");
  mp_m_axi_concat_arprot->in_port[3](m_axi_concat_arprot_out_3);
  mp_m_axi_concat_arprot->offset_port(3, 9);
  mp_m_axi_arprot_converter_3->vector_in(m_m_axi_arprot_converter_3_signal);
  mp_m_axi_arprot_converter_3->vector_out(m_axi_concat_arprot_out_3);
  mp_M03_AXI_transactor->ARPROT(m_m_axi_arprot_converter_3_signal);
  mp_m_axi_arvalid_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_3");
  mp_m_axi_concat_arvalid->in_port[3](m_axi_concat_arvalid_out_3);
  mp_m_axi_concat_arvalid->offset_port(3, 3);
  mp_m_axi_arvalid_converter_3->scalar_in(m_m_axi_arvalid_converter_3_signal);
  mp_m_axi_arvalid_converter_3->vector_out(m_axi_concat_arvalid_out_3);
  mp_M03_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_3_signal);
  mp_m_axi_arready_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_3");
  
  mp_m_axi_split_arready->out_port[3](m_axi_split_arready_out_3);
    mp_m_axi_split_arready->add_mask(3,4,3);
  mp_m_axi_arready_converter_3->vector_in(m_axi_split_arready_out_3);
  mp_m_axi_arready_converter_3->scalar_out(m_m_axi_arready_converter_3_signal);
  mp_M03_AXI_transactor->ARREADY(m_m_axi_arready_converter_3_signal);
  mp_m_axi_rdata_converter_3 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_3");
  
  mp_m_axi_split_rdata->out_port[3](m_axi_split_rdata_out_3);
    mp_m_axi_split_rdata->add_mask(3,128,96);
  mp_m_axi_rdata_converter_3->vector_in(m_axi_split_rdata_out_3);
  mp_m_axi_rdata_converter_3->vector_out(m_m_axi_rdata_converter_3_signal);
  mp_M03_AXI_transactor->RDATA(m_m_axi_rdata_converter_3_signal);
  mp_m_axi_rresp_converter_3 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_3");
  
  mp_m_axi_split_rresp->out_port[3](m_axi_split_rresp_out_3);
    mp_m_axi_split_rresp->add_mask(3,8,6);
  mp_m_axi_rresp_converter_3->vector_in(m_axi_split_rresp_out_3);
  mp_m_axi_rresp_converter_3->vector_out(m_m_axi_rresp_converter_3_signal);
  mp_M03_AXI_transactor->RRESP(m_m_axi_rresp_converter_3_signal);
  mp_m_axi_rvalid_converter_3 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_3");
  
  mp_m_axi_split_rvalid->out_port[3](m_axi_split_rvalid_out_3);
    mp_m_axi_split_rvalid->add_mask(3,4,3);
  mp_m_axi_rvalid_converter_3->vector_in(m_axi_split_rvalid_out_3);
  mp_m_axi_rvalid_converter_3->scalar_out(m_m_axi_rvalid_converter_3_signal);
  mp_M03_AXI_transactor->RVALID(m_m_axi_rvalid_converter_3_signal);
  mp_m_axi_rready_converter_3 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_3");
  mp_m_axi_concat_rready->in_port[3](m_axi_concat_rready_out_3);
  mp_m_axi_concat_rready->offset_port(3, 3);
  mp_m_axi_rready_converter_3->scalar_in(m_m_axi_rready_converter_3_signal);
  mp_m_axi_rready_converter_3->vector_out(m_axi_concat_rready_out_3);
  mp_M03_AXI_transactor->RREADY(m_m_axi_rready_converter_3_signal);
  mp_M03_AXI_transactor->CLK(aclk);
  mp_M03_AXI_transactor->RST(aresetn);
  // configure M04_AXI_transactor
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_4");
  mp_m_axi_concat_awaddr->in_port[4](m_axi_concat_awaddr_out_4);
  mp_m_axi_concat_awaddr->offset_port(4, 160);
  mp_m_axi_awaddr_converter_4->vector_in(m_m_axi_awaddr_converter_4_signal);
  mp_m_axi_awaddr_converter_4->vector_out(m_axi_concat_awaddr_out_4);
  mp_M04_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_4_signal);
  mp_m_axi_awprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_4");
  mp_m_axi_concat_awprot->in_port[4](m_axi_concat_awprot_out_4);
  mp_m_axi_concat_awprot->offset_port(4, 12);
  mp_m_axi_awprot_converter_4->vector_in(m_m_axi_awprot_converter_4_signal);
  mp_m_axi_awprot_converter_4->vector_out(m_axi_concat_awprot_out_4);
  mp_M04_AXI_transactor->AWPROT(m_m_axi_awprot_converter_4_signal);
  mp_m_axi_awvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_4");
  mp_m_axi_concat_awvalid->in_port[4](m_axi_concat_awvalid_out_4);
  mp_m_axi_concat_awvalid->offset_port(4, 4);
  mp_m_axi_awvalid_converter_4->scalar_in(m_m_axi_awvalid_converter_4_signal);
  mp_m_axi_awvalid_converter_4->vector_out(m_axi_concat_awvalid_out_4);
  mp_M04_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_4_signal);
  mp_m_axi_awready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_4");
  
  mp_m_axi_split_awready->out_port[4](m_axi_split_awready_out_4);
    mp_m_axi_split_awready->add_mask(4,5,4);
  mp_m_axi_awready_converter_4->vector_in(m_axi_split_awready_out_4);
  mp_m_axi_awready_converter_4->scalar_out(m_m_axi_awready_converter_4_signal);
  mp_M04_AXI_transactor->AWREADY(m_m_axi_awready_converter_4_signal);
  mp_m_axi_wdata_converter_4 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_4");
  mp_m_axi_concat_wdata->in_port[4](m_axi_concat_wdata_out_4);
  mp_m_axi_concat_wdata->offset_port(4, 128);
  mp_m_axi_wdata_converter_4->vector_in(m_m_axi_wdata_converter_4_signal);
  mp_m_axi_wdata_converter_4->vector_out(m_axi_concat_wdata_out_4);
  mp_M04_AXI_transactor->WDATA(m_m_axi_wdata_converter_4_signal);
  mp_m_axi_wstrb_converter_4 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_4");
  mp_m_axi_concat_wstrb->in_port[4](m_axi_concat_wstrb_out_4);
  mp_m_axi_concat_wstrb->offset_port(4, 16);
  mp_m_axi_wstrb_converter_4->vector_in(m_m_axi_wstrb_converter_4_signal);
  mp_m_axi_wstrb_converter_4->vector_out(m_axi_concat_wstrb_out_4);
  mp_M04_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_4_signal);
  mp_m_axi_wvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_4");
  mp_m_axi_concat_wvalid->in_port[4](m_axi_concat_wvalid_out_4);
  mp_m_axi_concat_wvalid->offset_port(4, 4);
  mp_m_axi_wvalid_converter_4->scalar_in(m_m_axi_wvalid_converter_4_signal);
  mp_m_axi_wvalid_converter_4->vector_out(m_axi_concat_wvalid_out_4);
  mp_M04_AXI_transactor->WVALID(m_m_axi_wvalid_converter_4_signal);
  mp_m_axi_wready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_4");
  
  mp_m_axi_split_wready->out_port[4](m_axi_split_wready_out_4);
    mp_m_axi_split_wready->add_mask(4,5,4);
  mp_m_axi_wready_converter_4->vector_in(m_axi_split_wready_out_4);
  mp_m_axi_wready_converter_4->scalar_out(m_m_axi_wready_converter_4_signal);
  mp_M04_AXI_transactor->WREADY(m_m_axi_wready_converter_4_signal);
  mp_m_axi_bresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_4");
  
  mp_m_axi_split_bresp->out_port[4](m_axi_split_bresp_out_4);
    mp_m_axi_split_bresp->add_mask(4,10,8);
  mp_m_axi_bresp_converter_4->vector_in(m_axi_split_bresp_out_4);
  mp_m_axi_bresp_converter_4->vector_out(m_m_axi_bresp_converter_4_signal);
  mp_M04_AXI_transactor->BRESP(m_m_axi_bresp_converter_4_signal);
  mp_m_axi_bvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_4");
  
  mp_m_axi_split_bvalid->out_port[4](m_axi_split_bvalid_out_4);
    mp_m_axi_split_bvalid->add_mask(4,5,4);
  mp_m_axi_bvalid_converter_4->vector_in(m_axi_split_bvalid_out_4);
  mp_m_axi_bvalid_converter_4->scalar_out(m_m_axi_bvalid_converter_4_signal);
  mp_M04_AXI_transactor->BVALID(m_m_axi_bvalid_converter_4_signal);
  mp_m_axi_bready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_4");
  mp_m_axi_concat_bready->in_port[4](m_axi_concat_bready_out_4);
  mp_m_axi_concat_bready->offset_port(4, 4);
  mp_m_axi_bready_converter_4->scalar_in(m_m_axi_bready_converter_4_signal);
  mp_m_axi_bready_converter_4->vector_out(m_axi_concat_bready_out_4);
  mp_M04_AXI_transactor->BREADY(m_m_axi_bready_converter_4_signal);
  mp_m_axi_araddr_converter_4 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_4");
  mp_m_axi_concat_araddr->in_port[4](m_axi_concat_araddr_out_4);
  mp_m_axi_concat_araddr->offset_port(4, 160);
  mp_m_axi_araddr_converter_4->vector_in(m_m_axi_araddr_converter_4_signal);
  mp_m_axi_araddr_converter_4->vector_out(m_axi_concat_araddr_out_4);
  mp_M04_AXI_transactor->ARADDR(m_m_axi_araddr_converter_4_signal);
  mp_m_axi_arprot_converter_4 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_4");
  mp_m_axi_concat_arprot->in_port[4](m_axi_concat_arprot_out_4);
  mp_m_axi_concat_arprot->offset_port(4, 12);
  mp_m_axi_arprot_converter_4->vector_in(m_m_axi_arprot_converter_4_signal);
  mp_m_axi_arprot_converter_4->vector_out(m_axi_concat_arprot_out_4);
  mp_M04_AXI_transactor->ARPROT(m_m_axi_arprot_converter_4_signal);
  mp_m_axi_arvalid_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_4");
  mp_m_axi_concat_arvalid->in_port[4](m_axi_concat_arvalid_out_4);
  mp_m_axi_concat_arvalid->offset_port(4, 4);
  mp_m_axi_arvalid_converter_4->scalar_in(m_m_axi_arvalid_converter_4_signal);
  mp_m_axi_arvalid_converter_4->vector_out(m_axi_concat_arvalid_out_4);
  mp_M04_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_4_signal);
  mp_m_axi_arready_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_4");
  
  mp_m_axi_split_arready->out_port[4](m_axi_split_arready_out_4);
    mp_m_axi_split_arready->add_mask(4,5,4);
  mp_m_axi_arready_converter_4->vector_in(m_axi_split_arready_out_4);
  mp_m_axi_arready_converter_4->scalar_out(m_m_axi_arready_converter_4_signal);
  mp_M04_AXI_transactor->ARREADY(m_m_axi_arready_converter_4_signal);
  mp_m_axi_rdata_converter_4 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_4");
  
  mp_m_axi_split_rdata->out_port[4](m_axi_split_rdata_out_4);
    mp_m_axi_split_rdata->add_mask(4,160,128);
  mp_m_axi_rdata_converter_4->vector_in(m_axi_split_rdata_out_4);
  mp_m_axi_rdata_converter_4->vector_out(m_m_axi_rdata_converter_4_signal);
  mp_M04_AXI_transactor->RDATA(m_m_axi_rdata_converter_4_signal);
  mp_m_axi_rresp_converter_4 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_4");
  
  mp_m_axi_split_rresp->out_port[4](m_axi_split_rresp_out_4);
    mp_m_axi_split_rresp->add_mask(4,10,8);
  mp_m_axi_rresp_converter_4->vector_in(m_axi_split_rresp_out_4);
  mp_m_axi_rresp_converter_4->vector_out(m_m_axi_rresp_converter_4_signal);
  mp_M04_AXI_transactor->RRESP(m_m_axi_rresp_converter_4_signal);
  mp_m_axi_rvalid_converter_4 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_4");
  
  mp_m_axi_split_rvalid->out_port[4](m_axi_split_rvalid_out_4);
    mp_m_axi_split_rvalid->add_mask(4,5,4);
  mp_m_axi_rvalid_converter_4->vector_in(m_axi_split_rvalid_out_4);
  mp_m_axi_rvalid_converter_4->scalar_out(m_m_axi_rvalid_converter_4_signal);
  mp_M04_AXI_transactor->RVALID(m_m_axi_rvalid_converter_4_signal);
  mp_m_axi_rready_converter_4 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_4");
  mp_m_axi_concat_rready->in_port[4](m_axi_concat_rready_out_4);
  mp_m_axi_concat_rready->offset_port(4, 4);
  mp_m_axi_rready_converter_4->scalar_in(m_m_axi_rready_converter_4_signal);
  mp_m_axi_rready_converter_4->vector_out(m_axi_concat_rready_out_4);
  mp_M04_AXI_transactor->RREADY(m_m_axi_rready_converter_4_signal);
  mp_M04_AXI_transactor->CLK(aclk);
  mp_M04_AXI_transactor->RST(aresetn);
  // configure M05_AXI_transactor
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_5");
  mp_m_axi_concat_awaddr->in_port[5](m_axi_concat_awaddr_out_5);
  mp_m_axi_concat_awaddr->offset_port(5, 200);
  mp_m_axi_awaddr_converter_5->vector_in(m_m_axi_awaddr_converter_5_signal);
  mp_m_axi_awaddr_converter_5->vector_out(m_axi_concat_awaddr_out_5);
  mp_M05_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_5_signal);
  mp_m_axi_awprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_5");
  mp_m_axi_concat_awprot->in_port[5](m_axi_concat_awprot_out_5);
  mp_m_axi_concat_awprot->offset_port(5, 15);
  mp_m_axi_awprot_converter_5->vector_in(m_m_axi_awprot_converter_5_signal);
  mp_m_axi_awprot_converter_5->vector_out(m_axi_concat_awprot_out_5);
  mp_M05_AXI_transactor->AWPROT(m_m_axi_awprot_converter_5_signal);
  mp_m_axi_awvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_5");
  mp_m_axi_concat_awvalid->in_port[5](m_axi_concat_awvalid_out_5);
  mp_m_axi_concat_awvalid->offset_port(5, 5);
  mp_m_axi_awvalid_converter_5->scalar_in(m_m_axi_awvalid_converter_5_signal);
  mp_m_axi_awvalid_converter_5->vector_out(m_axi_concat_awvalid_out_5);
  mp_M05_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_5_signal);
  mp_m_axi_awready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_5");
  
  mp_m_axi_split_awready->out_port[5](m_axi_split_awready_out_5);
    mp_m_axi_split_awready->add_mask(5,6,5);
  mp_m_axi_awready_converter_5->vector_in(m_axi_split_awready_out_5);
  mp_m_axi_awready_converter_5->scalar_out(m_m_axi_awready_converter_5_signal);
  mp_M05_AXI_transactor->AWREADY(m_m_axi_awready_converter_5_signal);
  mp_m_axi_wdata_converter_5 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_5");
  mp_m_axi_concat_wdata->in_port[5](m_axi_concat_wdata_out_5);
  mp_m_axi_concat_wdata->offset_port(5, 160);
  mp_m_axi_wdata_converter_5->vector_in(m_m_axi_wdata_converter_5_signal);
  mp_m_axi_wdata_converter_5->vector_out(m_axi_concat_wdata_out_5);
  mp_M05_AXI_transactor->WDATA(m_m_axi_wdata_converter_5_signal);
  mp_m_axi_wstrb_converter_5 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_5");
  mp_m_axi_concat_wstrb->in_port[5](m_axi_concat_wstrb_out_5);
  mp_m_axi_concat_wstrb->offset_port(5, 20);
  mp_m_axi_wstrb_converter_5->vector_in(m_m_axi_wstrb_converter_5_signal);
  mp_m_axi_wstrb_converter_5->vector_out(m_axi_concat_wstrb_out_5);
  mp_M05_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_5_signal);
  mp_m_axi_wvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_5");
  mp_m_axi_concat_wvalid->in_port[5](m_axi_concat_wvalid_out_5);
  mp_m_axi_concat_wvalid->offset_port(5, 5);
  mp_m_axi_wvalid_converter_5->scalar_in(m_m_axi_wvalid_converter_5_signal);
  mp_m_axi_wvalid_converter_5->vector_out(m_axi_concat_wvalid_out_5);
  mp_M05_AXI_transactor->WVALID(m_m_axi_wvalid_converter_5_signal);
  mp_m_axi_wready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_5");
  
  mp_m_axi_split_wready->out_port[5](m_axi_split_wready_out_5);
    mp_m_axi_split_wready->add_mask(5,6,5);
  mp_m_axi_wready_converter_5->vector_in(m_axi_split_wready_out_5);
  mp_m_axi_wready_converter_5->scalar_out(m_m_axi_wready_converter_5_signal);
  mp_M05_AXI_transactor->WREADY(m_m_axi_wready_converter_5_signal);
  mp_m_axi_bresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_5");
  
  mp_m_axi_split_bresp->out_port[5](m_axi_split_bresp_out_5);
    mp_m_axi_split_bresp->add_mask(5,12,10);
  mp_m_axi_bresp_converter_5->vector_in(m_axi_split_bresp_out_5);
  mp_m_axi_bresp_converter_5->vector_out(m_m_axi_bresp_converter_5_signal);
  mp_M05_AXI_transactor->BRESP(m_m_axi_bresp_converter_5_signal);
  mp_m_axi_bvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_5");
  
  mp_m_axi_split_bvalid->out_port[5](m_axi_split_bvalid_out_5);
    mp_m_axi_split_bvalid->add_mask(5,6,5);
  mp_m_axi_bvalid_converter_5->vector_in(m_axi_split_bvalid_out_5);
  mp_m_axi_bvalid_converter_5->scalar_out(m_m_axi_bvalid_converter_5_signal);
  mp_M05_AXI_transactor->BVALID(m_m_axi_bvalid_converter_5_signal);
  mp_m_axi_bready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_5");
  mp_m_axi_concat_bready->in_port[5](m_axi_concat_bready_out_5);
  mp_m_axi_concat_bready->offset_port(5, 5);
  mp_m_axi_bready_converter_5->scalar_in(m_m_axi_bready_converter_5_signal);
  mp_m_axi_bready_converter_5->vector_out(m_axi_concat_bready_out_5);
  mp_M05_AXI_transactor->BREADY(m_m_axi_bready_converter_5_signal);
  mp_m_axi_araddr_converter_5 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_5");
  mp_m_axi_concat_araddr->in_port[5](m_axi_concat_araddr_out_5);
  mp_m_axi_concat_araddr->offset_port(5, 200);
  mp_m_axi_araddr_converter_5->vector_in(m_m_axi_araddr_converter_5_signal);
  mp_m_axi_araddr_converter_5->vector_out(m_axi_concat_araddr_out_5);
  mp_M05_AXI_transactor->ARADDR(m_m_axi_araddr_converter_5_signal);
  mp_m_axi_arprot_converter_5 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_5");
  mp_m_axi_concat_arprot->in_port[5](m_axi_concat_arprot_out_5);
  mp_m_axi_concat_arprot->offset_port(5, 15);
  mp_m_axi_arprot_converter_5->vector_in(m_m_axi_arprot_converter_5_signal);
  mp_m_axi_arprot_converter_5->vector_out(m_axi_concat_arprot_out_5);
  mp_M05_AXI_transactor->ARPROT(m_m_axi_arprot_converter_5_signal);
  mp_m_axi_arvalid_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_5");
  mp_m_axi_concat_arvalid->in_port[5](m_axi_concat_arvalid_out_5);
  mp_m_axi_concat_arvalid->offset_port(5, 5);
  mp_m_axi_arvalid_converter_5->scalar_in(m_m_axi_arvalid_converter_5_signal);
  mp_m_axi_arvalid_converter_5->vector_out(m_axi_concat_arvalid_out_5);
  mp_M05_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_5_signal);
  mp_m_axi_arready_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_5");
  
  mp_m_axi_split_arready->out_port[5](m_axi_split_arready_out_5);
    mp_m_axi_split_arready->add_mask(5,6,5);
  mp_m_axi_arready_converter_5->vector_in(m_axi_split_arready_out_5);
  mp_m_axi_arready_converter_5->scalar_out(m_m_axi_arready_converter_5_signal);
  mp_M05_AXI_transactor->ARREADY(m_m_axi_arready_converter_5_signal);
  mp_m_axi_rdata_converter_5 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_5");
  
  mp_m_axi_split_rdata->out_port[5](m_axi_split_rdata_out_5);
    mp_m_axi_split_rdata->add_mask(5,192,160);
  mp_m_axi_rdata_converter_5->vector_in(m_axi_split_rdata_out_5);
  mp_m_axi_rdata_converter_5->vector_out(m_m_axi_rdata_converter_5_signal);
  mp_M05_AXI_transactor->RDATA(m_m_axi_rdata_converter_5_signal);
  mp_m_axi_rresp_converter_5 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_5");
  
  mp_m_axi_split_rresp->out_port[5](m_axi_split_rresp_out_5);
    mp_m_axi_split_rresp->add_mask(5,12,10);
  mp_m_axi_rresp_converter_5->vector_in(m_axi_split_rresp_out_5);
  mp_m_axi_rresp_converter_5->vector_out(m_m_axi_rresp_converter_5_signal);
  mp_M05_AXI_transactor->RRESP(m_m_axi_rresp_converter_5_signal);
  mp_m_axi_rvalid_converter_5 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_5");
  
  mp_m_axi_split_rvalid->out_port[5](m_axi_split_rvalid_out_5);
    mp_m_axi_split_rvalid->add_mask(5,6,5);
  mp_m_axi_rvalid_converter_5->vector_in(m_axi_split_rvalid_out_5);
  mp_m_axi_rvalid_converter_5->scalar_out(m_m_axi_rvalid_converter_5_signal);
  mp_M05_AXI_transactor->RVALID(m_m_axi_rvalid_converter_5_signal);
  mp_m_axi_rready_converter_5 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_5");
  mp_m_axi_concat_rready->in_port[5](m_axi_concat_rready_out_5);
  mp_m_axi_concat_rready->offset_port(5, 5);
  mp_m_axi_rready_converter_5->scalar_in(m_m_axi_rready_converter_5_signal);
  mp_m_axi_rready_converter_5->vector_out(m_axi_concat_rready_out_5);
  mp_M05_AXI_transactor->RREADY(m_m_axi_rready_converter_5_signal);
  mp_M05_AXI_transactor->CLK(aclk);
  mp_M05_AXI_transactor->RST(aresetn);
  // configure M06_AXI_transactor
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_6");
  mp_m_axi_concat_awaddr->in_port[6](m_axi_concat_awaddr_out_6);
  mp_m_axi_concat_awaddr->offset_port(6, 240);
  mp_m_axi_awaddr_converter_6->vector_in(m_m_axi_awaddr_converter_6_signal);
  mp_m_axi_awaddr_converter_6->vector_out(m_axi_concat_awaddr_out_6);
  mp_M06_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_6_signal);
  mp_m_axi_awprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_6");
  mp_m_axi_concat_awprot->in_port[6](m_axi_concat_awprot_out_6);
  mp_m_axi_concat_awprot->offset_port(6, 18);
  mp_m_axi_awprot_converter_6->vector_in(m_m_axi_awprot_converter_6_signal);
  mp_m_axi_awprot_converter_6->vector_out(m_axi_concat_awprot_out_6);
  mp_M06_AXI_transactor->AWPROT(m_m_axi_awprot_converter_6_signal);
  mp_m_axi_awvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_6");
  mp_m_axi_concat_awvalid->in_port[6](m_axi_concat_awvalid_out_6);
  mp_m_axi_concat_awvalid->offset_port(6, 6);
  mp_m_axi_awvalid_converter_6->scalar_in(m_m_axi_awvalid_converter_6_signal);
  mp_m_axi_awvalid_converter_6->vector_out(m_axi_concat_awvalid_out_6);
  mp_M06_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_6_signal);
  mp_m_axi_awready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_6");
  
  mp_m_axi_split_awready->out_port[6](m_axi_split_awready_out_6);
    mp_m_axi_split_awready->add_mask(6,7,6);
  mp_m_axi_awready_converter_6->vector_in(m_axi_split_awready_out_6);
  mp_m_axi_awready_converter_6->scalar_out(m_m_axi_awready_converter_6_signal);
  mp_M06_AXI_transactor->AWREADY(m_m_axi_awready_converter_6_signal);
  mp_m_axi_wdata_converter_6 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_6");
  mp_m_axi_concat_wdata->in_port[6](m_axi_concat_wdata_out_6);
  mp_m_axi_concat_wdata->offset_port(6, 192);
  mp_m_axi_wdata_converter_6->vector_in(m_m_axi_wdata_converter_6_signal);
  mp_m_axi_wdata_converter_6->vector_out(m_axi_concat_wdata_out_6);
  mp_M06_AXI_transactor->WDATA(m_m_axi_wdata_converter_6_signal);
  mp_m_axi_wstrb_converter_6 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_6");
  mp_m_axi_concat_wstrb->in_port[6](m_axi_concat_wstrb_out_6);
  mp_m_axi_concat_wstrb->offset_port(6, 24);
  mp_m_axi_wstrb_converter_6->vector_in(m_m_axi_wstrb_converter_6_signal);
  mp_m_axi_wstrb_converter_6->vector_out(m_axi_concat_wstrb_out_6);
  mp_M06_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_6_signal);
  mp_m_axi_wvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_6");
  mp_m_axi_concat_wvalid->in_port[6](m_axi_concat_wvalid_out_6);
  mp_m_axi_concat_wvalid->offset_port(6, 6);
  mp_m_axi_wvalid_converter_6->scalar_in(m_m_axi_wvalid_converter_6_signal);
  mp_m_axi_wvalid_converter_6->vector_out(m_axi_concat_wvalid_out_6);
  mp_M06_AXI_transactor->WVALID(m_m_axi_wvalid_converter_6_signal);
  mp_m_axi_wready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_6");
  
  mp_m_axi_split_wready->out_port[6](m_axi_split_wready_out_6);
    mp_m_axi_split_wready->add_mask(6,7,6);
  mp_m_axi_wready_converter_6->vector_in(m_axi_split_wready_out_6);
  mp_m_axi_wready_converter_6->scalar_out(m_m_axi_wready_converter_6_signal);
  mp_M06_AXI_transactor->WREADY(m_m_axi_wready_converter_6_signal);
  mp_m_axi_bresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_6");
  
  mp_m_axi_split_bresp->out_port[6](m_axi_split_bresp_out_6);
    mp_m_axi_split_bresp->add_mask(6,14,12);
  mp_m_axi_bresp_converter_6->vector_in(m_axi_split_bresp_out_6);
  mp_m_axi_bresp_converter_6->vector_out(m_m_axi_bresp_converter_6_signal);
  mp_M06_AXI_transactor->BRESP(m_m_axi_bresp_converter_6_signal);
  mp_m_axi_bvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_6");
  
  mp_m_axi_split_bvalid->out_port[6](m_axi_split_bvalid_out_6);
    mp_m_axi_split_bvalid->add_mask(6,7,6);
  mp_m_axi_bvalid_converter_6->vector_in(m_axi_split_bvalid_out_6);
  mp_m_axi_bvalid_converter_6->scalar_out(m_m_axi_bvalid_converter_6_signal);
  mp_M06_AXI_transactor->BVALID(m_m_axi_bvalid_converter_6_signal);
  mp_m_axi_bready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_6");
  mp_m_axi_concat_bready->in_port[6](m_axi_concat_bready_out_6);
  mp_m_axi_concat_bready->offset_port(6, 6);
  mp_m_axi_bready_converter_6->scalar_in(m_m_axi_bready_converter_6_signal);
  mp_m_axi_bready_converter_6->vector_out(m_axi_concat_bready_out_6);
  mp_M06_AXI_transactor->BREADY(m_m_axi_bready_converter_6_signal);
  mp_m_axi_araddr_converter_6 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_6");
  mp_m_axi_concat_araddr->in_port[6](m_axi_concat_araddr_out_6);
  mp_m_axi_concat_araddr->offset_port(6, 240);
  mp_m_axi_araddr_converter_6->vector_in(m_m_axi_araddr_converter_6_signal);
  mp_m_axi_araddr_converter_6->vector_out(m_axi_concat_araddr_out_6);
  mp_M06_AXI_transactor->ARADDR(m_m_axi_araddr_converter_6_signal);
  mp_m_axi_arprot_converter_6 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_6");
  mp_m_axi_concat_arprot->in_port[6](m_axi_concat_arprot_out_6);
  mp_m_axi_concat_arprot->offset_port(6, 18);
  mp_m_axi_arprot_converter_6->vector_in(m_m_axi_arprot_converter_6_signal);
  mp_m_axi_arprot_converter_6->vector_out(m_axi_concat_arprot_out_6);
  mp_M06_AXI_transactor->ARPROT(m_m_axi_arprot_converter_6_signal);
  mp_m_axi_arvalid_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_6");
  mp_m_axi_concat_arvalid->in_port[6](m_axi_concat_arvalid_out_6);
  mp_m_axi_concat_arvalid->offset_port(6, 6);
  mp_m_axi_arvalid_converter_6->scalar_in(m_m_axi_arvalid_converter_6_signal);
  mp_m_axi_arvalid_converter_6->vector_out(m_axi_concat_arvalid_out_6);
  mp_M06_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_6_signal);
  mp_m_axi_arready_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_6");
  
  mp_m_axi_split_arready->out_port[6](m_axi_split_arready_out_6);
    mp_m_axi_split_arready->add_mask(6,7,6);
  mp_m_axi_arready_converter_6->vector_in(m_axi_split_arready_out_6);
  mp_m_axi_arready_converter_6->scalar_out(m_m_axi_arready_converter_6_signal);
  mp_M06_AXI_transactor->ARREADY(m_m_axi_arready_converter_6_signal);
  mp_m_axi_rdata_converter_6 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_6");
  
  mp_m_axi_split_rdata->out_port[6](m_axi_split_rdata_out_6);
    mp_m_axi_split_rdata->add_mask(6,224,192);
  mp_m_axi_rdata_converter_6->vector_in(m_axi_split_rdata_out_6);
  mp_m_axi_rdata_converter_6->vector_out(m_m_axi_rdata_converter_6_signal);
  mp_M06_AXI_transactor->RDATA(m_m_axi_rdata_converter_6_signal);
  mp_m_axi_rresp_converter_6 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_6");
  
  mp_m_axi_split_rresp->out_port[6](m_axi_split_rresp_out_6);
    mp_m_axi_split_rresp->add_mask(6,14,12);
  mp_m_axi_rresp_converter_6->vector_in(m_axi_split_rresp_out_6);
  mp_m_axi_rresp_converter_6->vector_out(m_m_axi_rresp_converter_6_signal);
  mp_M06_AXI_transactor->RRESP(m_m_axi_rresp_converter_6_signal);
  mp_m_axi_rvalid_converter_6 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_6");
  
  mp_m_axi_split_rvalid->out_port[6](m_axi_split_rvalid_out_6);
    mp_m_axi_split_rvalid->add_mask(6,7,6);
  mp_m_axi_rvalid_converter_6->vector_in(m_axi_split_rvalid_out_6);
  mp_m_axi_rvalid_converter_6->scalar_out(m_m_axi_rvalid_converter_6_signal);
  mp_M06_AXI_transactor->RVALID(m_m_axi_rvalid_converter_6_signal);
  mp_m_axi_rready_converter_6 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_6");
  mp_m_axi_concat_rready->in_port[6](m_axi_concat_rready_out_6);
  mp_m_axi_concat_rready->offset_port(6, 6);
  mp_m_axi_rready_converter_6->scalar_in(m_m_axi_rready_converter_6_signal);
  mp_m_axi_rready_converter_6->vector_out(m_axi_concat_rready_out_6);
  mp_M06_AXI_transactor->RREADY(m_m_axi_rready_converter_6_signal);
  mp_M06_AXI_transactor->CLK(aclk);
  mp_M06_AXI_transactor->RST(aresetn);
  // configure M07_AXI_transactor
    xsc::common_cpp::properties M07_AXI_transactor_param_props;
    M07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M07_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M07_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M07_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M07_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M07_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M07_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M07_AXI_transactor", M07_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_7");
  mp_m_axi_concat_awaddr->in_port[7](m_axi_concat_awaddr_out_7);
  mp_m_axi_concat_awaddr->offset_port(7, 280);
  mp_m_axi_awaddr_converter_7->vector_in(m_m_axi_awaddr_converter_7_signal);
  mp_m_axi_awaddr_converter_7->vector_out(m_axi_concat_awaddr_out_7);
  mp_M07_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_7_signal);
  mp_m_axi_awprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_7");
  mp_m_axi_concat_awprot->in_port[7](m_axi_concat_awprot_out_7);
  mp_m_axi_concat_awprot->offset_port(7, 21);
  mp_m_axi_awprot_converter_7->vector_in(m_m_axi_awprot_converter_7_signal);
  mp_m_axi_awprot_converter_7->vector_out(m_axi_concat_awprot_out_7);
  mp_M07_AXI_transactor->AWPROT(m_m_axi_awprot_converter_7_signal);
  mp_m_axi_awvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_7");
  mp_m_axi_concat_awvalid->in_port[7](m_axi_concat_awvalid_out_7);
  mp_m_axi_concat_awvalid->offset_port(7, 7);
  mp_m_axi_awvalid_converter_7->scalar_in(m_m_axi_awvalid_converter_7_signal);
  mp_m_axi_awvalid_converter_7->vector_out(m_axi_concat_awvalid_out_7);
  mp_M07_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_7_signal);
  mp_m_axi_awready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_7");
  
  mp_m_axi_split_awready->out_port[7](m_axi_split_awready_out_7);
    mp_m_axi_split_awready->add_mask(7,8,7);
  mp_m_axi_awready_converter_7->vector_in(m_axi_split_awready_out_7);
  mp_m_axi_awready_converter_7->scalar_out(m_m_axi_awready_converter_7_signal);
  mp_M07_AXI_transactor->AWREADY(m_m_axi_awready_converter_7_signal);
  mp_m_axi_wdata_converter_7 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_7");
  mp_m_axi_concat_wdata->in_port[7](m_axi_concat_wdata_out_7);
  mp_m_axi_concat_wdata->offset_port(7, 224);
  mp_m_axi_wdata_converter_7->vector_in(m_m_axi_wdata_converter_7_signal);
  mp_m_axi_wdata_converter_7->vector_out(m_axi_concat_wdata_out_7);
  mp_M07_AXI_transactor->WDATA(m_m_axi_wdata_converter_7_signal);
  mp_m_axi_wstrb_converter_7 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_7");
  mp_m_axi_concat_wstrb->in_port[7](m_axi_concat_wstrb_out_7);
  mp_m_axi_concat_wstrb->offset_port(7, 28);
  mp_m_axi_wstrb_converter_7->vector_in(m_m_axi_wstrb_converter_7_signal);
  mp_m_axi_wstrb_converter_7->vector_out(m_axi_concat_wstrb_out_7);
  mp_M07_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_7_signal);
  mp_m_axi_wvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_7");
  mp_m_axi_concat_wvalid->in_port[7](m_axi_concat_wvalid_out_7);
  mp_m_axi_concat_wvalid->offset_port(7, 7);
  mp_m_axi_wvalid_converter_7->scalar_in(m_m_axi_wvalid_converter_7_signal);
  mp_m_axi_wvalid_converter_7->vector_out(m_axi_concat_wvalid_out_7);
  mp_M07_AXI_transactor->WVALID(m_m_axi_wvalid_converter_7_signal);
  mp_m_axi_wready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_7");
  
  mp_m_axi_split_wready->out_port[7](m_axi_split_wready_out_7);
    mp_m_axi_split_wready->add_mask(7,8,7);
  mp_m_axi_wready_converter_7->vector_in(m_axi_split_wready_out_7);
  mp_m_axi_wready_converter_7->scalar_out(m_m_axi_wready_converter_7_signal);
  mp_M07_AXI_transactor->WREADY(m_m_axi_wready_converter_7_signal);
  mp_m_axi_bresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_7");
  
  mp_m_axi_split_bresp->out_port[7](m_axi_split_bresp_out_7);
    mp_m_axi_split_bresp->add_mask(7,16,14);
  mp_m_axi_bresp_converter_7->vector_in(m_axi_split_bresp_out_7);
  mp_m_axi_bresp_converter_7->vector_out(m_m_axi_bresp_converter_7_signal);
  mp_M07_AXI_transactor->BRESP(m_m_axi_bresp_converter_7_signal);
  mp_m_axi_bvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_7");
  
  mp_m_axi_split_bvalid->out_port[7](m_axi_split_bvalid_out_7);
    mp_m_axi_split_bvalid->add_mask(7,8,7);
  mp_m_axi_bvalid_converter_7->vector_in(m_axi_split_bvalid_out_7);
  mp_m_axi_bvalid_converter_7->scalar_out(m_m_axi_bvalid_converter_7_signal);
  mp_M07_AXI_transactor->BVALID(m_m_axi_bvalid_converter_7_signal);
  mp_m_axi_bready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_7");
  mp_m_axi_concat_bready->in_port[7](m_axi_concat_bready_out_7);
  mp_m_axi_concat_bready->offset_port(7, 7);
  mp_m_axi_bready_converter_7->scalar_in(m_m_axi_bready_converter_7_signal);
  mp_m_axi_bready_converter_7->vector_out(m_axi_concat_bready_out_7);
  mp_M07_AXI_transactor->BREADY(m_m_axi_bready_converter_7_signal);
  mp_m_axi_araddr_converter_7 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_7");
  mp_m_axi_concat_araddr->in_port[7](m_axi_concat_araddr_out_7);
  mp_m_axi_concat_araddr->offset_port(7, 280);
  mp_m_axi_araddr_converter_7->vector_in(m_m_axi_araddr_converter_7_signal);
  mp_m_axi_araddr_converter_7->vector_out(m_axi_concat_araddr_out_7);
  mp_M07_AXI_transactor->ARADDR(m_m_axi_araddr_converter_7_signal);
  mp_m_axi_arprot_converter_7 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_7");
  mp_m_axi_concat_arprot->in_port[7](m_axi_concat_arprot_out_7);
  mp_m_axi_concat_arprot->offset_port(7, 21);
  mp_m_axi_arprot_converter_7->vector_in(m_m_axi_arprot_converter_7_signal);
  mp_m_axi_arprot_converter_7->vector_out(m_axi_concat_arprot_out_7);
  mp_M07_AXI_transactor->ARPROT(m_m_axi_arprot_converter_7_signal);
  mp_m_axi_arvalid_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_7");
  mp_m_axi_concat_arvalid->in_port[7](m_axi_concat_arvalid_out_7);
  mp_m_axi_concat_arvalid->offset_port(7, 7);
  mp_m_axi_arvalid_converter_7->scalar_in(m_m_axi_arvalid_converter_7_signal);
  mp_m_axi_arvalid_converter_7->vector_out(m_axi_concat_arvalid_out_7);
  mp_M07_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_7_signal);
  mp_m_axi_arready_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_7");
  
  mp_m_axi_split_arready->out_port[7](m_axi_split_arready_out_7);
    mp_m_axi_split_arready->add_mask(7,8,7);
  mp_m_axi_arready_converter_7->vector_in(m_axi_split_arready_out_7);
  mp_m_axi_arready_converter_7->scalar_out(m_m_axi_arready_converter_7_signal);
  mp_M07_AXI_transactor->ARREADY(m_m_axi_arready_converter_7_signal);
  mp_m_axi_rdata_converter_7 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_7");
  
  mp_m_axi_split_rdata->out_port[7](m_axi_split_rdata_out_7);
    mp_m_axi_split_rdata->add_mask(7,256,224);
  mp_m_axi_rdata_converter_7->vector_in(m_axi_split_rdata_out_7);
  mp_m_axi_rdata_converter_7->vector_out(m_m_axi_rdata_converter_7_signal);
  mp_M07_AXI_transactor->RDATA(m_m_axi_rdata_converter_7_signal);
  mp_m_axi_rresp_converter_7 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_7");
  
  mp_m_axi_split_rresp->out_port[7](m_axi_split_rresp_out_7);
    mp_m_axi_split_rresp->add_mask(7,16,14);
  mp_m_axi_rresp_converter_7->vector_in(m_axi_split_rresp_out_7);
  mp_m_axi_rresp_converter_7->vector_out(m_m_axi_rresp_converter_7_signal);
  mp_M07_AXI_transactor->RRESP(m_m_axi_rresp_converter_7_signal);
  mp_m_axi_rvalid_converter_7 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_7");
  
  mp_m_axi_split_rvalid->out_port[7](m_axi_split_rvalid_out_7);
    mp_m_axi_split_rvalid->add_mask(7,8,7);
  mp_m_axi_rvalid_converter_7->vector_in(m_axi_split_rvalid_out_7);
  mp_m_axi_rvalid_converter_7->scalar_out(m_m_axi_rvalid_converter_7_signal);
  mp_M07_AXI_transactor->RVALID(m_m_axi_rvalid_converter_7_signal);
  mp_m_axi_rready_converter_7 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_7");
  mp_m_axi_concat_rready->in_port[7](m_axi_concat_rready_out_7);
  mp_m_axi_concat_rready->offset_port(7, 7);
  mp_m_axi_rready_converter_7->scalar_in(m_m_axi_rready_converter_7_signal);
  mp_m_axi_rready_converter_7->vector_out(m_axi_concat_rready_out_7);
  mp_M07_AXI_transactor->RREADY(m_m_axi_rready_converter_7_signal);
  mp_M07_AXI_transactor->CLK(aclk);
  mp_M07_AXI_transactor->RST(aresetn);
  // configure M08_AXI_transactor
    xsc::common_cpp::properties M08_AXI_transactor_param_props;
    M08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M08_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M08_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M08_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M08_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M08_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M08_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M08_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M08_AXI_transactor", M08_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_8");
  mp_m_axi_concat_awaddr->in_port[8](m_axi_concat_awaddr_out_8);
  mp_m_axi_concat_awaddr->offset_port(8, 320);
  mp_m_axi_awaddr_converter_8->vector_in(m_m_axi_awaddr_converter_8_signal);
  mp_m_axi_awaddr_converter_8->vector_out(m_axi_concat_awaddr_out_8);
  mp_M08_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_8_signal);
  mp_m_axi_awprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_8");
  mp_m_axi_concat_awprot->in_port[8](m_axi_concat_awprot_out_8);
  mp_m_axi_concat_awprot->offset_port(8, 24);
  mp_m_axi_awprot_converter_8->vector_in(m_m_axi_awprot_converter_8_signal);
  mp_m_axi_awprot_converter_8->vector_out(m_axi_concat_awprot_out_8);
  mp_M08_AXI_transactor->AWPROT(m_m_axi_awprot_converter_8_signal);
  mp_m_axi_awvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_8");
  mp_m_axi_concat_awvalid->in_port[8](m_axi_concat_awvalid_out_8);
  mp_m_axi_concat_awvalid->offset_port(8, 8);
  mp_m_axi_awvalid_converter_8->scalar_in(m_m_axi_awvalid_converter_8_signal);
  mp_m_axi_awvalid_converter_8->vector_out(m_axi_concat_awvalid_out_8);
  mp_M08_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_8_signal);
  mp_m_axi_awready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_8");
  
  mp_m_axi_split_awready->out_port[8](m_axi_split_awready_out_8);
    mp_m_axi_split_awready->add_mask(8,9,8);
  mp_m_axi_awready_converter_8->vector_in(m_axi_split_awready_out_8);
  mp_m_axi_awready_converter_8->scalar_out(m_m_axi_awready_converter_8_signal);
  mp_M08_AXI_transactor->AWREADY(m_m_axi_awready_converter_8_signal);
  mp_m_axi_wdata_converter_8 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_8");
  mp_m_axi_concat_wdata->in_port[8](m_axi_concat_wdata_out_8);
  mp_m_axi_concat_wdata->offset_port(8, 256);
  mp_m_axi_wdata_converter_8->vector_in(m_m_axi_wdata_converter_8_signal);
  mp_m_axi_wdata_converter_8->vector_out(m_axi_concat_wdata_out_8);
  mp_M08_AXI_transactor->WDATA(m_m_axi_wdata_converter_8_signal);
  mp_m_axi_wstrb_converter_8 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_8");
  mp_m_axi_concat_wstrb->in_port[8](m_axi_concat_wstrb_out_8);
  mp_m_axi_concat_wstrb->offset_port(8, 32);
  mp_m_axi_wstrb_converter_8->vector_in(m_m_axi_wstrb_converter_8_signal);
  mp_m_axi_wstrb_converter_8->vector_out(m_axi_concat_wstrb_out_8);
  mp_M08_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_8_signal);
  mp_m_axi_wvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_8");
  mp_m_axi_concat_wvalid->in_port[8](m_axi_concat_wvalid_out_8);
  mp_m_axi_concat_wvalid->offset_port(8, 8);
  mp_m_axi_wvalid_converter_8->scalar_in(m_m_axi_wvalid_converter_8_signal);
  mp_m_axi_wvalid_converter_8->vector_out(m_axi_concat_wvalid_out_8);
  mp_M08_AXI_transactor->WVALID(m_m_axi_wvalid_converter_8_signal);
  mp_m_axi_wready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_8");
  
  mp_m_axi_split_wready->out_port[8](m_axi_split_wready_out_8);
    mp_m_axi_split_wready->add_mask(8,9,8);
  mp_m_axi_wready_converter_8->vector_in(m_axi_split_wready_out_8);
  mp_m_axi_wready_converter_8->scalar_out(m_m_axi_wready_converter_8_signal);
  mp_M08_AXI_transactor->WREADY(m_m_axi_wready_converter_8_signal);
  mp_m_axi_bresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_8");
  
  mp_m_axi_split_bresp->out_port[8](m_axi_split_bresp_out_8);
    mp_m_axi_split_bresp->add_mask(8,18,16);
  mp_m_axi_bresp_converter_8->vector_in(m_axi_split_bresp_out_8);
  mp_m_axi_bresp_converter_8->vector_out(m_m_axi_bresp_converter_8_signal);
  mp_M08_AXI_transactor->BRESP(m_m_axi_bresp_converter_8_signal);
  mp_m_axi_bvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_8");
  
  mp_m_axi_split_bvalid->out_port[8](m_axi_split_bvalid_out_8);
    mp_m_axi_split_bvalid->add_mask(8,9,8);
  mp_m_axi_bvalid_converter_8->vector_in(m_axi_split_bvalid_out_8);
  mp_m_axi_bvalid_converter_8->scalar_out(m_m_axi_bvalid_converter_8_signal);
  mp_M08_AXI_transactor->BVALID(m_m_axi_bvalid_converter_8_signal);
  mp_m_axi_bready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_8");
  mp_m_axi_concat_bready->in_port[8](m_axi_concat_bready_out_8);
  mp_m_axi_concat_bready->offset_port(8, 8);
  mp_m_axi_bready_converter_8->scalar_in(m_m_axi_bready_converter_8_signal);
  mp_m_axi_bready_converter_8->vector_out(m_axi_concat_bready_out_8);
  mp_M08_AXI_transactor->BREADY(m_m_axi_bready_converter_8_signal);
  mp_m_axi_araddr_converter_8 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_8");
  mp_m_axi_concat_araddr->in_port[8](m_axi_concat_araddr_out_8);
  mp_m_axi_concat_araddr->offset_port(8, 320);
  mp_m_axi_araddr_converter_8->vector_in(m_m_axi_araddr_converter_8_signal);
  mp_m_axi_araddr_converter_8->vector_out(m_axi_concat_araddr_out_8);
  mp_M08_AXI_transactor->ARADDR(m_m_axi_araddr_converter_8_signal);
  mp_m_axi_arprot_converter_8 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_8");
  mp_m_axi_concat_arprot->in_port[8](m_axi_concat_arprot_out_8);
  mp_m_axi_concat_arprot->offset_port(8, 24);
  mp_m_axi_arprot_converter_8->vector_in(m_m_axi_arprot_converter_8_signal);
  mp_m_axi_arprot_converter_8->vector_out(m_axi_concat_arprot_out_8);
  mp_M08_AXI_transactor->ARPROT(m_m_axi_arprot_converter_8_signal);
  mp_m_axi_arvalid_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_8");
  mp_m_axi_concat_arvalid->in_port[8](m_axi_concat_arvalid_out_8);
  mp_m_axi_concat_arvalid->offset_port(8, 8);
  mp_m_axi_arvalid_converter_8->scalar_in(m_m_axi_arvalid_converter_8_signal);
  mp_m_axi_arvalid_converter_8->vector_out(m_axi_concat_arvalid_out_8);
  mp_M08_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_8_signal);
  mp_m_axi_arready_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_8");
  
  mp_m_axi_split_arready->out_port[8](m_axi_split_arready_out_8);
    mp_m_axi_split_arready->add_mask(8,9,8);
  mp_m_axi_arready_converter_8->vector_in(m_axi_split_arready_out_8);
  mp_m_axi_arready_converter_8->scalar_out(m_m_axi_arready_converter_8_signal);
  mp_M08_AXI_transactor->ARREADY(m_m_axi_arready_converter_8_signal);
  mp_m_axi_rdata_converter_8 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_8");
  
  mp_m_axi_split_rdata->out_port[8](m_axi_split_rdata_out_8);
    mp_m_axi_split_rdata->add_mask(8,288,256);
  mp_m_axi_rdata_converter_8->vector_in(m_axi_split_rdata_out_8);
  mp_m_axi_rdata_converter_8->vector_out(m_m_axi_rdata_converter_8_signal);
  mp_M08_AXI_transactor->RDATA(m_m_axi_rdata_converter_8_signal);
  mp_m_axi_rresp_converter_8 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_8");
  
  mp_m_axi_split_rresp->out_port[8](m_axi_split_rresp_out_8);
    mp_m_axi_split_rresp->add_mask(8,18,16);
  mp_m_axi_rresp_converter_8->vector_in(m_axi_split_rresp_out_8);
  mp_m_axi_rresp_converter_8->vector_out(m_m_axi_rresp_converter_8_signal);
  mp_M08_AXI_transactor->RRESP(m_m_axi_rresp_converter_8_signal);
  mp_m_axi_rvalid_converter_8 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_8");
  
  mp_m_axi_split_rvalid->out_port[8](m_axi_split_rvalid_out_8);
    mp_m_axi_split_rvalid->add_mask(8,9,8);
  mp_m_axi_rvalid_converter_8->vector_in(m_axi_split_rvalid_out_8);
  mp_m_axi_rvalid_converter_8->scalar_out(m_m_axi_rvalid_converter_8_signal);
  mp_M08_AXI_transactor->RVALID(m_m_axi_rvalid_converter_8_signal);
  mp_m_axi_rready_converter_8 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_8");
  mp_m_axi_concat_rready->in_port[8](m_axi_concat_rready_out_8);
  mp_m_axi_concat_rready->offset_port(8, 8);
  mp_m_axi_rready_converter_8->scalar_in(m_m_axi_rready_converter_8_signal);
  mp_m_axi_rready_converter_8->vector_out(m_axi_concat_rready_out_8);
  mp_M08_AXI_transactor->RREADY(m_m_axi_rready_converter_8_signal);
  mp_M08_AXI_transactor->CLK(aclk);
  mp_M08_AXI_transactor->RST(aresetn);
  // configure M09_AXI_transactor
    xsc::common_cpp::properties M09_AXI_transactor_param_props;
    M09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M09_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M09_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M09_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M09_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M09_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M09_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M09_AXI_transactor", M09_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_9");
  mp_m_axi_concat_awaddr->in_port[9](m_axi_concat_awaddr_out_9);
  mp_m_axi_concat_awaddr->offset_port(9, 360);
  mp_m_axi_awaddr_converter_9->vector_in(m_m_axi_awaddr_converter_9_signal);
  mp_m_axi_awaddr_converter_9->vector_out(m_axi_concat_awaddr_out_9);
  mp_M09_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_9_signal);
  mp_m_axi_awprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_9");
  mp_m_axi_concat_awprot->in_port[9](m_axi_concat_awprot_out_9);
  mp_m_axi_concat_awprot->offset_port(9, 27);
  mp_m_axi_awprot_converter_9->vector_in(m_m_axi_awprot_converter_9_signal);
  mp_m_axi_awprot_converter_9->vector_out(m_axi_concat_awprot_out_9);
  mp_M09_AXI_transactor->AWPROT(m_m_axi_awprot_converter_9_signal);
  mp_m_axi_awvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_9");
  mp_m_axi_concat_awvalid->in_port[9](m_axi_concat_awvalid_out_9);
  mp_m_axi_concat_awvalid->offset_port(9, 9);
  mp_m_axi_awvalid_converter_9->scalar_in(m_m_axi_awvalid_converter_9_signal);
  mp_m_axi_awvalid_converter_9->vector_out(m_axi_concat_awvalid_out_9);
  mp_M09_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_9_signal);
  mp_m_axi_awready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_9");
  
  mp_m_axi_split_awready->out_port[9](m_axi_split_awready_out_9);
    mp_m_axi_split_awready->add_mask(9,10,9);
  mp_m_axi_awready_converter_9->vector_in(m_axi_split_awready_out_9);
  mp_m_axi_awready_converter_9->scalar_out(m_m_axi_awready_converter_9_signal);
  mp_M09_AXI_transactor->AWREADY(m_m_axi_awready_converter_9_signal);
  mp_m_axi_wdata_converter_9 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_9");
  mp_m_axi_concat_wdata->in_port[9](m_axi_concat_wdata_out_9);
  mp_m_axi_concat_wdata->offset_port(9, 288);
  mp_m_axi_wdata_converter_9->vector_in(m_m_axi_wdata_converter_9_signal);
  mp_m_axi_wdata_converter_9->vector_out(m_axi_concat_wdata_out_9);
  mp_M09_AXI_transactor->WDATA(m_m_axi_wdata_converter_9_signal);
  mp_m_axi_wstrb_converter_9 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_9");
  mp_m_axi_concat_wstrb->in_port[9](m_axi_concat_wstrb_out_9);
  mp_m_axi_concat_wstrb->offset_port(9, 36);
  mp_m_axi_wstrb_converter_9->vector_in(m_m_axi_wstrb_converter_9_signal);
  mp_m_axi_wstrb_converter_9->vector_out(m_axi_concat_wstrb_out_9);
  mp_M09_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_9_signal);
  mp_m_axi_wvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_9");
  mp_m_axi_concat_wvalid->in_port[9](m_axi_concat_wvalid_out_9);
  mp_m_axi_concat_wvalid->offset_port(9, 9);
  mp_m_axi_wvalid_converter_9->scalar_in(m_m_axi_wvalid_converter_9_signal);
  mp_m_axi_wvalid_converter_9->vector_out(m_axi_concat_wvalid_out_9);
  mp_M09_AXI_transactor->WVALID(m_m_axi_wvalid_converter_9_signal);
  mp_m_axi_wready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_9");
  
  mp_m_axi_split_wready->out_port[9](m_axi_split_wready_out_9);
    mp_m_axi_split_wready->add_mask(9,10,9);
  mp_m_axi_wready_converter_9->vector_in(m_axi_split_wready_out_9);
  mp_m_axi_wready_converter_9->scalar_out(m_m_axi_wready_converter_9_signal);
  mp_M09_AXI_transactor->WREADY(m_m_axi_wready_converter_9_signal);
  mp_m_axi_bresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_9");
  
  mp_m_axi_split_bresp->out_port[9](m_axi_split_bresp_out_9);
    mp_m_axi_split_bresp->add_mask(9,20,18);
  mp_m_axi_bresp_converter_9->vector_in(m_axi_split_bresp_out_9);
  mp_m_axi_bresp_converter_9->vector_out(m_m_axi_bresp_converter_9_signal);
  mp_M09_AXI_transactor->BRESP(m_m_axi_bresp_converter_9_signal);
  mp_m_axi_bvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_9");
  
  mp_m_axi_split_bvalid->out_port[9](m_axi_split_bvalid_out_9);
    mp_m_axi_split_bvalid->add_mask(9,10,9);
  mp_m_axi_bvalid_converter_9->vector_in(m_axi_split_bvalid_out_9);
  mp_m_axi_bvalid_converter_9->scalar_out(m_m_axi_bvalid_converter_9_signal);
  mp_M09_AXI_transactor->BVALID(m_m_axi_bvalid_converter_9_signal);
  mp_m_axi_bready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_9");
  mp_m_axi_concat_bready->in_port[9](m_axi_concat_bready_out_9);
  mp_m_axi_concat_bready->offset_port(9, 9);
  mp_m_axi_bready_converter_9->scalar_in(m_m_axi_bready_converter_9_signal);
  mp_m_axi_bready_converter_9->vector_out(m_axi_concat_bready_out_9);
  mp_M09_AXI_transactor->BREADY(m_m_axi_bready_converter_9_signal);
  mp_m_axi_araddr_converter_9 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_9");
  mp_m_axi_concat_araddr->in_port[9](m_axi_concat_araddr_out_9);
  mp_m_axi_concat_araddr->offset_port(9, 360);
  mp_m_axi_araddr_converter_9->vector_in(m_m_axi_araddr_converter_9_signal);
  mp_m_axi_araddr_converter_9->vector_out(m_axi_concat_araddr_out_9);
  mp_M09_AXI_transactor->ARADDR(m_m_axi_araddr_converter_9_signal);
  mp_m_axi_arprot_converter_9 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_9");
  mp_m_axi_concat_arprot->in_port[9](m_axi_concat_arprot_out_9);
  mp_m_axi_concat_arprot->offset_port(9, 27);
  mp_m_axi_arprot_converter_9->vector_in(m_m_axi_arprot_converter_9_signal);
  mp_m_axi_arprot_converter_9->vector_out(m_axi_concat_arprot_out_9);
  mp_M09_AXI_transactor->ARPROT(m_m_axi_arprot_converter_9_signal);
  mp_m_axi_arvalid_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_9");
  mp_m_axi_concat_arvalid->in_port[9](m_axi_concat_arvalid_out_9);
  mp_m_axi_concat_arvalid->offset_port(9, 9);
  mp_m_axi_arvalid_converter_9->scalar_in(m_m_axi_arvalid_converter_9_signal);
  mp_m_axi_arvalid_converter_9->vector_out(m_axi_concat_arvalid_out_9);
  mp_M09_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_9_signal);
  mp_m_axi_arready_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_9");
  
  mp_m_axi_split_arready->out_port[9](m_axi_split_arready_out_9);
    mp_m_axi_split_arready->add_mask(9,10,9);
  mp_m_axi_arready_converter_9->vector_in(m_axi_split_arready_out_9);
  mp_m_axi_arready_converter_9->scalar_out(m_m_axi_arready_converter_9_signal);
  mp_M09_AXI_transactor->ARREADY(m_m_axi_arready_converter_9_signal);
  mp_m_axi_rdata_converter_9 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_9");
  
  mp_m_axi_split_rdata->out_port[9](m_axi_split_rdata_out_9);
    mp_m_axi_split_rdata->add_mask(9,320,288);
  mp_m_axi_rdata_converter_9->vector_in(m_axi_split_rdata_out_9);
  mp_m_axi_rdata_converter_9->vector_out(m_m_axi_rdata_converter_9_signal);
  mp_M09_AXI_transactor->RDATA(m_m_axi_rdata_converter_9_signal);
  mp_m_axi_rresp_converter_9 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_9");
  
  mp_m_axi_split_rresp->out_port[9](m_axi_split_rresp_out_9);
    mp_m_axi_split_rresp->add_mask(9,20,18);
  mp_m_axi_rresp_converter_9->vector_in(m_axi_split_rresp_out_9);
  mp_m_axi_rresp_converter_9->vector_out(m_m_axi_rresp_converter_9_signal);
  mp_M09_AXI_transactor->RRESP(m_m_axi_rresp_converter_9_signal);
  mp_m_axi_rvalid_converter_9 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_9");
  
  mp_m_axi_split_rvalid->out_port[9](m_axi_split_rvalid_out_9);
    mp_m_axi_split_rvalid->add_mask(9,10,9);
  mp_m_axi_rvalid_converter_9->vector_in(m_axi_split_rvalid_out_9);
  mp_m_axi_rvalid_converter_9->scalar_out(m_m_axi_rvalid_converter_9_signal);
  mp_M09_AXI_transactor->RVALID(m_m_axi_rvalid_converter_9_signal);
  mp_m_axi_rready_converter_9 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_9");
  mp_m_axi_concat_rready->in_port[9](m_axi_concat_rready_out_9);
  mp_m_axi_concat_rready->offset_port(9, 9);
  mp_m_axi_rready_converter_9->scalar_in(m_m_axi_rready_converter_9_signal);
  mp_m_axi_rready_converter_9->vector_out(m_axi_concat_rready_out_9);
  mp_M09_AXI_transactor->RREADY(m_m_axi_rready_converter_9_signal);
  mp_M09_AXI_transactor->CLK(aclk);
  mp_M09_AXI_transactor->RST(aresetn);
  // configure M10_AXI_transactor
    xsc::common_cpp::properties M10_AXI_transactor_param_props;
    M10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M10_AXI_transactor_param_props.addLong("FREQ_HZ", "150074602");
    M10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "40");
    M10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M10_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M10_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M10_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M10_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M10_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_clk_wiz_0_0_clk_sys");

    mp_M10_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,40,1,1,1,1,1,1>("M10_AXI_transactor", M10_AXI_transactor_param_props);
  mp_m_axi_awaddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_awaddr_converter_10");
  mp_m_axi_concat_awaddr->in_port[10](m_axi_concat_awaddr_out_10);
  mp_m_axi_concat_awaddr->offset_port(10, 400);
  mp_m_axi_awaddr_converter_10->vector_in(m_m_axi_awaddr_converter_10_signal);
  mp_m_axi_awaddr_converter_10->vector_out(m_axi_concat_awaddr_out_10);
  mp_M10_AXI_transactor->AWADDR(m_m_axi_awaddr_converter_10_signal);
  mp_m_axi_awprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_awprot_converter_10");
  mp_m_axi_concat_awprot->in_port[10](m_axi_concat_awprot_out_10);
  mp_m_axi_concat_awprot->offset_port(10, 30);
  mp_m_axi_awprot_converter_10->vector_in(m_m_axi_awprot_converter_10_signal);
  mp_m_axi_awprot_converter_10->vector_out(m_axi_concat_awprot_out_10);
  mp_M10_AXI_transactor->AWPROT(m_m_axi_awprot_converter_10_signal);
  mp_m_axi_awvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_awvalid_converter_10");
  mp_m_axi_concat_awvalid->in_port[10](m_axi_concat_awvalid_out_10);
  mp_m_axi_concat_awvalid->offset_port(10, 10);
  mp_m_axi_awvalid_converter_10->scalar_in(m_m_axi_awvalid_converter_10_signal);
  mp_m_axi_awvalid_converter_10->vector_out(m_axi_concat_awvalid_out_10);
  mp_M10_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_10_signal);
  mp_m_axi_awready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_awready_converter_10");
  
  mp_m_axi_split_awready->out_port[10](m_axi_split_awready_out_10);
    mp_m_axi_split_awready->add_mask(10,11,10);
  mp_m_axi_awready_converter_10->vector_in(m_axi_split_awready_out_10);
  mp_m_axi_awready_converter_10->scalar_out(m_m_axi_awready_converter_10_signal);
  mp_M10_AXI_transactor->AWREADY(m_m_axi_awready_converter_10_signal);
  mp_m_axi_wdata_converter_10 = new xsc::common::vector2vector_converter<32,352>("m_axi_wdata_converter_10");
  mp_m_axi_concat_wdata->in_port[10](m_axi_concat_wdata_out_10);
  mp_m_axi_concat_wdata->offset_port(10, 320);
  mp_m_axi_wdata_converter_10->vector_in(m_m_axi_wdata_converter_10_signal);
  mp_m_axi_wdata_converter_10->vector_out(m_axi_concat_wdata_out_10);
  mp_M10_AXI_transactor->WDATA(m_m_axi_wdata_converter_10_signal);
  mp_m_axi_wstrb_converter_10 = new xsc::common::vector2vector_converter<4,44>("m_axi_wstrb_converter_10");
  mp_m_axi_concat_wstrb->in_port[10](m_axi_concat_wstrb_out_10);
  mp_m_axi_concat_wstrb->offset_port(10, 40);
  mp_m_axi_wstrb_converter_10->vector_in(m_m_axi_wstrb_converter_10_signal);
  mp_m_axi_wstrb_converter_10->vector_out(m_axi_concat_wstrb_out_10);
  mp_M10_AXI_transactor->WSTRB(m_m_axi_wstrb_converter_10_signal);
  mp_m_axi_wvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_wvalid_converter_10");
  mp_m_axi_concat_wvalid->in_port[10](m_axi_concat_wvalid_out_10);
  mp_m_axi_concat_wvalid->offset_port(10, 10);
  mp_m_axi_wvalid_converter_10->scalar_in(m_m_axi_wvalid_converter_10_signal);
  mp_m_axi_wvalid_converter_10->vector_out(m_axi_concat_wvalid_out_10);
  mp_M10_AXI_transactor->WVALID(m_m_axi_wvalid_converter_10_signal);
  mp_m_axi_wready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_wready_converter_10");
  
  mp_m_axi_split_wready->out_port[10](m_axi_split_wready_out_10);
    mp_m_axi_split_wready->add_mask(10,11,10);
  mp_m_axi_wready_converter_10->vector_in(m_axi_split_wready_out_10);
  mp_m_axi_wready_converter_10->scalar_out(m_m_axi_wready_converter_10_signal);
  mp_M10_AXI_transactor->WREADY(m_m_axi_wready_converter_10_signal);
  mp_m_axi_bresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_bresp_converter_10");
  
  mp_m_axi_split_bresp->out_port[10](m_axi_split_bresp_out_10);
    mp_m_axi_split_bresp->add_mask(10,22,20);
  mp_m_axi_bresp_converter_10->vector_in(m_axi_split_bresp_out_10);
  mp_m_axi_bresp_converter_10->vector_out(m_m_axi_bresp_converter_10_signal);
  mp_M10_AXI_transactor->BRESP(m_m_axi_bresp_converter_10_signal);
  mp_m_axi_bvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_bvalid_converter_10");
  
  mp_m_axi_split_bvalid->out_port[10](m_axi_split_bvalid_out_10);
    mp_m_axi_split_bvalid->add_mask(10,11,10);
  mp_m_axi_bvalid_converter_10->vector_in(m_axi_split_bvalid_out_10);
  mp_m_axi_bvalid_converter_10->scalar_out(m_m_axi_bvalid_converter_10_signal);
  mp_M10_AXI_transactor->BVALID(m_m_axi_bvalid_converter_10_signal);
  mp_m_axi_bready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_bready_converter_10");
  mp_m_axi_concat_bready->in_port[10](m_axi_concat_bready_out_10);
  mp_m_axi_concat_bready->offset_port(10, 10);
  mp_m_axi_bready_converter_10->scalar_in(m_m_axi_bready_converter_10_signal);
  mp_m_axi_bready_converter_10->vector_out(m_axi_concat_bready_out_10);
  mp_M10_AXI_transactor->BREADY(m_m_axi_bready_converter_10_signal);
  mp_m_axi_araddr_converter_10 = new xsc::common::vector2vector_converter<40,440>("m_axi_araddr_converter_10");
  mp_m_axi_concat_araddr->in_port[10](m_axi_concat_araddr_out_10);
  mp_m_axi_concat_araddr->offset_port(10, 400);
  mp_m_axi_araddr_converter_10->vector_in(m_m_axi_araddr_converter_10_signal);
  mp_m_axi_araddr_converter_10->vector_out(m_axi_concat_araddr_out_10);
  mp_M10_AXI_transactor->ARADDR(m_m_axi_araddr_converter_10_signal);
  mp_m_axi_arprot_converter_10 = new xsc::common::vector2vector_converter<3,33>("m_axi_arprot_converter_10");
  mp_m_axi_concat_arprot->in_port[10](m_axi_concat_arprot_out_10);
  mp_m_axi_concat_arprot->offset_port(10, 30);
  mp_m_axi_arprot_converter_10->vector_in(m_m_axi_arprot_converter_10_signal);
  mp_m_axi_arprot_converter_10->vector_out(m_axi_concat_arprot_out_10);
  mp_M10_AXI_transactor->ARPROT(m_m_axi_arprot_converter_10_signal);
  mp_m_axi_arvalid_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_arvalid_converter_10");
  mp_m_axi_concat_arvalid->in_port[10](m_axi_concat_arvalid_out_10);
  mp_m_axi_concat_arvalid->offset_port(10, 10);
  mp_m_axi_arvalid_converter_10->scalar_in(m_m_axi_arvalid_converter_10_signal);
  mp_m_axi_arvalid_converter_10->vector_out(m_axi_concat_arvalid_out_10);
  mp_M10_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_10_signal);
  mp_m_axi_arready_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_arready_converter_10");
  
  mp_m_axi_split_arready->out_port[10](m_axi_split_arready_out_10);
    mp_m_axi_split_arready->add_mask(10,11,10);
  mp_m_axi_arready_converter_10->vector_in(m_axi_split_arready_out_10);
  mp_m_axi_arready_converter_10->scalar_out(m_m_axi_arready_converter_10_signal);
  mp_M10_AXI_transactor->ARREADY(m_m_axi_arready_converter_10_signal);
  mp_m_axi_rdata_converter_10 = new xsc::common::vector2vector_converter<352,32>("m_axi_rdata_converter_10");
  
  mp_m_axi_split_rdata->out_port[10](m_axi_split_rdata_out_10);
    mp_m_axi_split_rdata->add_mask(10,352,320);
  mp_m_axi_rdata_converter_10->vector_in(m_axi_split_rdata_out_10);
  mp_m_axi_rdata_converter_10->vector_out(m_m_axi_rdata_converter_10_signal);
  mp_M10_AXI_transactor->RDATA(m_m_axi_rdata_converter_10_signal);
  mp_m_axi_rresp_converter_10 = new xsc::common::vector2vector_converter<22,2>("m_axi_rresp_converter_10");
  
  mp_m_axi_split_rresp->out_port[10](m_axi_split_rresp_out_10);
    mp_m_axi_split_rresp->add_mask(10,22,20);
  mp_m_axi_rresp_converter_10->vector_in(m_axi_split_rresp_out_10);
  mp_m_axi_rresp_converter_10->vector_out(m_m_axi_rresp_converter_10_signal);
  mp_M10_AXI_transactor->RRESP(m_m_axi_rresp_converter_10_signal);
  mp_m_axi_rvalid_converter_10 = new xsc::common::vectorN2scalar_converter<11>("m_axi_rvalid_converter_10");
  
  mp_m_axi_split_rvalid->out_port[10](m_axi_split_rvalid_out_10);
    mp_m_axi_split_rvalid->add_mask(10,11,10);
  mp_m_axi_rvalid_converter_10->vector_in(m_axi_split_rvalid_out_10);
  mp_m_axi_rvalid_converter_10->scalar_out(m_m_axi_rvalid_converter_10_signal);
  mp_M10_AXI_transactor->RVALID(m_m_axi_rvalid_converter_10_signal);
  mp_m_axi_rready_converter_10 = new xsc::common::scalar2vectorN_converter<11>("m_axi_rready_converter_10");
  mp_m_axi_concat_rready->in_port[10](m_axi_concat_rready_out_10);
  mp_m_axi_concat_rready->offset_port(10, 10);
  mp_m_axi_rready_converter_10->scalar_in(m_m_axi_rready_converter_10_signal);
  mp_m_axi_rready_converter_10->vector_out(m_axi_concat_rready_out_10);
  mp_M10_AXI_transactor->RREADY(m_m_axi_rready_converter_10_signal);
  mp_M10_AXI_transactor->CLK(aclk);
  mp_M10_AXI_transactor->RST(aresetn);

  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M01_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M01_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M02_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M02_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M03_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M03_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M04_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M04_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M05_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M05_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M06_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M06_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M07_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M07_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M08_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M08_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M09_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M09_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M10_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M10_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void design_1_xbar_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

  // configure 'M01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M01_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  
  }
  else
  {
    M01_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M01_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M01_AXI_transactor->wr_socket));
    M01_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M01_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_M01_AXI_transactor->disable_transactor();
  }

  // configure 'M02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M02_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  
  }
  else
  {
    M02_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M02_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M02_AXI_transactor->wr_socket));
    M02_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M02_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_M02_AXI_transactor->disable_transactor();
  }

  // configure 'M03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M03_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  
  }
  else
  {
    M03_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M03_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M03_AXI_transactor->wr_socket));
    M03_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M03_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_M03_AXI_transactor->disable_transactor();
  }

  // configure 'M04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M04_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  
  }
  else
  {
    M04_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M04_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M04_AXI_transactor->wr_socket));
    M04_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M04_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_M04_AXI_transactor->disable_transactor();
  }

  // configure 'M05_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M05_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  
  }
  else
  {
    M05_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M05_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M05_AXI_transactor->wr_socket));
    M05_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M05_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_M05_AXI_transactor->disable_transactor();
  }

  // configure 'M06_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M06_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  
  }
  else
  {
    M06_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M06_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M06_AXI_transactor->wr_socket));
    M06_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M06_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_M06_AXI_transactor->disable_transactor();
  }

  // configure 'M07_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M07_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_7_rd_socket->bind(*(mp_M07_AXI_transactor->rd_socket));
    mp_impl->initiator_7_wr_socket->bind(*(mp_M07_AXI_transactor->wr_socket));
  
  }
  else
  {
    M07_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M07_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M07_AXI_transactor->wr_socket));
    M07_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M07_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M07_AXI_transactor->rd_socket));
    mp_M07_AXI_transactor->disable_transactor();
  }

  // configure 'M08_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M08_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_8_rd_socket->bind(*(mp_M08_AXI_transactor->rd_socket));
    mp_impl->initiator_8_wr_socket->bind(*(mp_M08_AXI_transactor->wr_socket));
  
  }
  else
  {
    M08_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M08_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M08_AXI_transactor->wr_socket));
    M08_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M08_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M08_AXI_transactor->rd_socket));
    mp_M08_AXI_transactor->disable_transactor();
  }

  // configure 'M09_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M09_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_9_rd_socket->bind(*(mp_M09_AXI_transactor->rd_socket));
    mp_impl->initiator_9_wr_socket->bind(*(mp_M09_AXI_transactor->wr_socket));
  
  }
  else
  {
    M09_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M09_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M09_AXI_transactor->wr_socket));
    M09_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M09_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M09_AXI_transactor->rd_socket));
    mp_M09_AXI_transactor->disable_transactor();
  }

  // configure 'M10_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_xbar_0", "M10_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_10_rd_socket->bind(*(mp_M10_AXI_transactor->rd_socket));
    mp_impl->initiator_10_wr_socket->bind(*(mp_M10_AXI_transactor->wr_socket));
  
  }
  else
  {
    M10_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M10_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M10_AXI_transactor->wr_socket));
    M10_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M10_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M10_AXI_transactor->rd_socket));
    mp_M10_AXI_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




design_1_xbar_0::~design_1_xbar_0()
{
  delete mp_S00_AXI_transactor;
  delete mp_s_axi_awvalid_converter;
  delete mp_s_axi_awready_converter;
  delete mp_s_axi_wvalid_converter;
  delete mp_s_axi_wready_converter;
  delete mp_s_axi_bvalid_converter;
  delete mp_s_axi_bready_converter;
  delete mp_s_axi_arvalid_converter;
  delete mp_s_axi_arready_converter;
  delete mp_s_axi_rvalid_converter;
  delete mp_s_axi_rready_converter;

  delete mp_M00_AXI_transactor;
  delete mp_m_axi_awaddr_converter_0;
  delete mp_m_axi_awprot_converter_0;
  delete mp_m_axi_awvalid_converter_0;
  delete mp_m_axi_awready_converter_0;
  delete mp_m_axi_wdata_converter_0;
  delete mp_m_axi_wstrb_converter_0;
  delete mp_m_axi_wvalid_converter_0;
  delete mp_m_axi_wready_converter_0;
  delete mp_m_axi_bresp_converter_0;
  delete mp_m_axi_bvalid_converter_0;
  delete mp_m_axi_bready_converter_0;
  delete mp_m_axi_araddr_converter_0;
  delete mp_m_axi_arprot_converter_0;
  delete mp_m_axi_arvalid_converter_0;
  delete mp_m_axi_arready_converter_0;
  delete mp_m_axi_rdata_converter_0;
  delete mp_m_axi_rresp_converter_0;
  delete mp_m_axi_rvalid_converter_0;
  delete mp_m_axi_rready_converter_0;

  delete mp_M01_AXI_transactor;
  delete mp_m_axi_awaddr_converter_1;
  delete mp_m_axi_awprot_converter_1;
  delete mp_m_axi_awvalid_converter_1;
  delete mp_m_axi_awready_converter_1;
  delete mp_m_axi_wdata_converter_1;
  delete mp_m_axi_wstrb_converter_1;
  delete mp_m_axi_wvalid_converter_1;
  delete mp_m_axi_wready_converter_1;
  delete mp_m_axi_bresp_converter_1;
  delete mp_m_axi_bvalid_converter_1;
  delete mp_m_axi_bready_converter_1;
  delete mp_m_axi_araddr_converter_1;
  delete mp_m_axi_arprot_converter_1;
  delete mp_m_axi_arvalid_converter_1;
  delete mp_m_axi_arready_converter_1;
  delete mp_m_axi_rdata_converter_1;
  delete mp_m_axi_rresp_converter_1;
  delete mp_m_axi_rvalid_converter_1;
  delete mp_m_axi_rready_converter_1;

  delete mp_M02_AXI_transactor;
  delete mp_m_axi_awaddr_converter_2;
  delete mp_m_axi_awprot_converter_2;
  delete mp_m_axi_awvalid_converter_2;
  delete mp_m_axi_awready_converter_2;
  delete mp_m_axi_wdata_converter_2;
  delete mp_m_axi_wstrb_converter_2;
  delete mp_m_axi_wvalid_converter_2;
  delete mp_m_axi_wready_converter_2;
  delete mp_m_axi_bresp_converter_2;
  delete mp_m_axi_bvalid_converter_2;
  delete mp_m_axi_bready_converter_2;
  delete mp_m_axi_araddr_converter_2;
  delete mp_m_axi_arprot_converter_2;
  delete mp_m_axi_arvalid_converter_2;
  delete mp_m_axi_arready_converter_2;
  delete mp_m_axi_rdata_converter_2;
  delete mp_m_axi_rresp_converter_2;
  delete mp_m_axi_rvalid_converter_2;
  delete mp_m_axi_rready_converter_2;

  delete mp_M03_AXI_transactor;
  delete mp_m_axi_awaddr_converter_3;
  delete mp_m_axi_awprot_converter_3;
  delete mp_m_axi_awvalid_converter_3;
  delete mp_m_axi_awready_converter_3;
  delete mp_m_axi_wdata_converter_3;
  delete mp_m_axi_wstrb_converter_3;
  delete mp_m_axi_wvalid_converter_3;
  delete mp_m_axi_wready_converter_3;
  delete mp_m_axi_bresp_converter_3;
  delete mp_m_axi_bvalid_converter_3;
  delete mp_m_axi_bready_converter_3;
  delete mp_m_axi_araddr_converter_3;
  delete mp_m_axi_arprot_converter_3;
  delete mp_m_axi_arvalid_converter_3;
  delete mp_m_axi_arready_converter_3;
  delete mp_m_axi_rdata_converter_3;
  delete mp_m_axi_rresp_converter_3;
  delete mp_m_axi_rvalid_converter_3;
  delete mp_m_axi_rready_converter_3;

  delete mp_M04_AXI_transactor;
  delete mp_m_axi_awaddr_converter_4;
  delete mp_m_axi_awprot_converter_4;
  delete mp_m_axi_awvalid_converter_4;
  delete mp_m_axi_awready_converter_4;
  delete mp_m_axi_wdata_converter_4;
  delete mp_m_axi_wstrb_converter_4;
  delete mp_m_axi_wvalid_converter_4;
  delete mp_m_axi_wready_converter_4;
  delete mp_m_axi_bresp_converter_4;
  delete mp_m_axi_bvalid_converter_4;
  delete mp_m_axi_bready_converter_4;
  delete mp_m_axi_araddr_converter_4;
  delete mp_m_axi_arprot_converter_4;
  delete mp_m_axi_arvalid_converter_4;
  delete mp_m_axi_arready_converter_4;
  delete mp_m_axi_rdata_converter_4;
  delete mp_m_axi_rresp_converter_4;
  delete mp_m_axi_rvalid_converter_4;
  delete mp_m_axi_rready_converter_4;

  delete mp_M05_AXI_transactor;
  delete mp_m_axi_awaddr_converter_5;
  delete mp_m_axi_awprot_converter_5;
  delete mp_m_axi_awvalid_converter_5;
  delete mp_m_axi_awready_converter_5;
  delete mp_m_axi_wdata_converter_5;
  delete mp_m_axi_wstrb_converter_5;
  delete mp_m_axi_wvalid_converter_5;
  delete mp_m_axi_wready_converter_5;
  delete mp_m_axi_bresp_converter_5;
  delete mp_m_axi_bvalid_converter_5;
  delete mp_m_axi_bready_converter_5;
  delete mp_m_axi_araddr_converter_5;
  delete mp_m_axi_arprot_converter_5;
  delete mp_m_axi_arvalid_converter_5;
  delete mp_m_axi_arready_converter_5;
  delete mp_m_axi_rdata_converter_5;
  delete mp_m_axi_rresp_converter_5;
  delete mp_m_axi_rvalid_converter_5;
  delete mp_m_axi_rready_converter_5;

  delete mp_M06_AXI_transactor;
  delete mp_m_axi_awaddr_converter_6;
  delete mp_m_axi_awprot_converter_6;
  delete mp_m_axi_awvalid_converter_6;
  delete mp_m_axi_awready_converter_6;
  delete mp_m_axi_wdata_converter_6;
  delete mp_m_axi_wstrb_converter_6;
  delete mp_m_axi_wvalid_converter_6;
  delete mp_m_axi_wready_converter_6;
  delete mp_m_axi_bresp_converter_6;
  delete mp_m_axi_bvalid_converter_6;
  delete mp_m_axi_bready_converter_6;
  delete mp_m_axi_araddr_converter_6;
  delete mp_m_axi_arprot_converter_6;
  delete mp_m_axi_arvalid_converter_6;
  delete mp_m_axi_arready_converter_6;
  delete mp_m_axi_rdata_converter_6;
  delete mp_m_axi_rresp_converter_6;
  delete mp_m_axi_rvalid_converter_6;
  delete mp_m_axi_rready_converter_6;

  delete mp_M07_AXI_transactor;
  delete mp_m_axi_awaddr_converter_7;
  delete mp_m_axi_awprot_converter_7;
  delete mp_m_axi_awvalid_converter_7;
  delete mp_m_axi_awready_converter_7;
  delete mp_m_axi_wdata_converter_7;
  delete mp_m_axi_wstrb_converter_7;
  delete mp_m_axi_wvalid_converter_7;
  delete mp_m_axi_wready_converter_7;
  delete mp_m_axi_bresp_converter_7;
  delete mp_m_axi_bvalid_converter_7;
  delete mp_m_axi_bready_converter_7;
  delete mp_m_axi_araddr_converter_7;
  delete mp_m_axi_arprot_converter_7;
  delete mp_m_axi_arvalid_converter_7;
  delete mp_m_axi_arready_converter_7;
  delete mp_m_axi_rdata_converter_7;
  delete mp_m_axi_rresp_converter_7;
  delete mp_m_axi_rvalid_converter_7;
  delete mp_m_axi_rready_converter_7;

  delete mp_M08_AXI_transactor;
  delete mp_m_axi_awaddr_converter_8;
  delete mp_m_axi_awprot_converter_8;
  delete mp_m_axi_awvalid_converter_8;
  delete mp_m_axi_awready_converter_8;
  delete mp_m_axi_wdata_converter_8;
  delete mp_m_axi_wstrb_converter_8;
  delete mp_m_axi_wvalid_converter_8;
  delete mp_m_axi_wready_converter_8;
  delete mp_m_axi_bresp_converter_8;
  delete mp_m_axi_bvalid_converter_8;
  delete mp_m_axi_bready_converter_8;
  delete mp_m_axi_araddr_converter_8;
  delete mp_m_axi_arprot_converter_8;
  delete mp_m_axi_arvalid_converter_8;
  delete mp_m_axi_arready_converter_8;
  delete mp_m_axi_rdata_converter_8;
  delete mp_m_axi_rresp_converter_8;
  delete mp_m_axi_rvalid_converter_8;
  delete mp_m_axi_rready_converter_8;

  delete mp_M09_AXI_transactor;
  delete mp_m_axi_awaddr_converter_9;
  delete mp_m_axi_awprot_converter_9;
  delete mp_m_axi_awvalid_converter_9;
  delete mp_m_axi_awready_converter_9;
  delete mp_m_axi_wdata_converter_9;
  delete mp_m_axi_wstrb_converter_9;
  delete mp_m_axi_wvalid_converter_9;
  delete mp_m_axi_wready_converter_9;
  delete mp_m_axi_bresp_converter_9;
  delete mp_m_axi_bvalid_converter_9;
  delete mp_m_axi_bready_converter_9;
  delete mp_m_axi_araddr_converter_9;
  delete mp_m_axi_arprot_converter_9;
  delete mp_m_axi_arvalid_converter_9;
  delete mp_m_axi_arready_converter_9;
  delete mp_m_axi_rdata_converter_9;
  delete mp_m_axi_rresp_converter_9;
  delete mp_m_axi_rvalid_converter_9;
  delete mp_m_axi_rready_converter_9;

  delete mp_M10_AXI_transactor;
  delete mp_m_axi_awaddr_converter_10;
  delete mp_m_axi_awprot_converter_10;
  delete mp_m_axi_awvalid_converter_10;
  delete mp_m_axi_awready_converter_10;
  delete mp_m_axi_wdata_converter_10;
  delete mp_m_axi_wstrb_converter_10;
  delete mp_m_axi_wvalid_converter_10;
  delete mp_m_axi_wready_converter_10;
  delete mp_m_axi_bresp_converter_10;
  delete mp_m_axi_bvalid_converter_10;
  delete mp_m_axi_bready_converter_10;
  delete mp_m_axi_araddr_converter_10;
  delete mp_m_axi_arprot_converter_10;
  delete mp_m_axi_arvalid_converter_10;
  delete mp_m_axi_arready_converter_10;
  delete mp_m_axi_rdata_converter_10;
  delete mp_m_axi_rresp_converter_10;
  delete mp_m_axi_rvalid_converter_10;
  delete mp_m_axi_rready_converter_10;

  delete mp_m_axi_concat_araddr;
  delete mp_m_axi_concat_arprot;
  delete mp_m_axi_concat_arvalid;
  delete mp_m_axi_concat_awaddr;
  delete mp_m_axi_concat_awprot;
  delete mp_m_axi_concat_awvalid;
  delete mp_m_axi_concat_bready;
  delete mp_m_axi_concat_rready;
  delete mp_m_axi_concat_wdata;
  delete mp_m_axi_concat_wstrb;
  delete mp_m_axi_concat_wvalid;
  delete mp_m_axi_split_arready;
  delete mp_m_axi_split_awready;
  delete mp_m_axi_split_bresp;
  delete mp_m_axi_split_bvalid;
  delete mp_m_axi_split_rdata;
  delete mp_m_axi_split_rresp;
  delete mp_m_axi_split_rvalid;
  delete mp_m_axi_split_wready;
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(design_1_xbar_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(design_1_xbar_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(design_1_xbar_0);
SC_REGISTER_BV(440);
#endif

