// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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

#include "smartconnect.h"
#include <fstream>
#include <iostream>
#include <vector>
#include <sstream>

using namespace std;
using namespace xtlm;

#define __socket_inst(var, role, idx, i) \
  if (var > i) { \
    idx##_AXI_tlm_aximm_read_socket = new xtlm::xtlm_aximm_##role##_socket(#idx "_AXI_tlm_aximm_read_socket", 32); \
    role##_rd_sockets.push_back(idx##_AXI_tlm_aximm_read_socket); \
    idx##_AXI_tlm_aximm_write_socket = new xtlm::xtlm_aximm_##role##_socket(#idx "_AXI_tlm_aximm_write_socket", 32); \
    role##_wr_sockets.push_back(idx##_AXI_tlm_aximm_write_socket); \
  }


smartconnect::smartconnect(sc_module_name nm, xsc::common_cpp::properties& properties) : 
aclk("aclk"), aclk1("aclk1"), aclk2("aclk2"), aclk3("aclk3"), aclk4("aclk4"), aclk5("aclk5"),
aclk6("aclk6"), aclk7("aclk7"), aclk8("aclk8"), aclk9("aclk9"), aclk10("aclk10"), aclk11("aclk11"),
aclk12("aclk12"), aclk13("alck13"), aclk14("aclk14"), aclk15("aclk15") { 
    
  m_report_handler = new xsc::common_cpp::report_handler("smartconnect");


  // TODO: need the component name of the IP instance

  // TODO: acquire SC config from file handoff (sc_xtlm.rtd file)
  filename = "";
  if (properties.hasParameter("TLM_COMPONENT_NAME")) {
	if (m_report_handler->get_verbosity_level()
			== xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss << this->name() << "TLM_COMPONENT_NAME is " << properties.getString("TLM_COMPONENT_NAME")<< "\n";
		XSC_REPORT_INFO_VERB((*m_report_handler), "1", m_ss.str().c_str(),
				DEBUG);
	}
   filename = "sc_xtlm_" + properties.getString("TLM_COMPONENT_NAME") + ".mem";
  }

  ifstream rtd_file(filename);
  if (rtd_file.is_open()) {
	if (m_report_handler->get_verbosity_level()
			== xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss << this->name() <<"Opened " << filename  << std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler), "1", m_ss.str().c_str(),
				DEBUG);
	}
  } else {
	    m_ss.str("");
	    m_ss << this->name()<<" Failed to open "<<std::endl;
	    XSC_REPORT_ERROR((*m_report_handler), "1", m_ss.str().c_str());
  }

//  ifstream rtd_file("sc_xtlm.mem");
//  if (rtd_file.is_open()) {
//    cout << "Opened sc_xtlm.mem\n";
//  } else {
//    cerr << "Failed to open sc_xtlm.mem";
//  }

  string line;
  while (getline(rtd_file,line)) {
    stringstream ss(line);
    string param_name;
    string param_value;
    ss >> param_name;
    ss >> param_value;
	if (m_report_handler->get_verbosity_level()
			== xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss << this->name() << "Loaded: " << param_name << " :: " << param_value << std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler), "1", m_ss.str().c_str(),
				DEBUG);
	}
    smartconnect_config[param_name] = param_value;
    properties.addString(param_name, param_value);
  }


  int num_si = stoi(smartconnect_config["NUM_SI"]);
  int num_mi = stoi(smartconnect_config["NUM_MI"]);

  __socket_inst(num_si, target, S00,  0)
  __socket_inst(num_si, target, S01,  1)
  __socket_inst(num_si, target, S02,  2)
  __socket_inst(num_si, target, S03,  3)
  __socket_inst(num_si, target, S04,  4)
  __socket_inst(num_si, target, S05,  5)
  __socket_inst(num_si, target, S06,  6)
  __socket_inst(num_si, target, S07,  7)
  __socket_inst(num_si, target, S08,  8)
  __socket_inst(num_si, target, S09,  9)
  __socket_inst(num_si, target, S10, 10)
  __socket_inst(num_si, target, S11, 11)
  __socket_inst(num_si, target, S12, 12)
  __socket_inst(num_si, target, S13, 13)
  __socket_inst(num_si, target, S14, 14)
  __socket_inst(num_si, target, S15, 15)

  __socket_inst(num_mi, initiator, M00,  0)
  __socket_inst(num_mi, initiator, M01,  1)
  __socket_inst(num_mi, initiator, M02,  2)
  __socket_inst(num_mi, initiator, M03,  3)
  __socket_inst(num_mi, initiator, M04,  4)
  __socket_inst(num_mi, initiator, M05,  5)
  __socket_inst(num_mi, initiator, M06,  6)
  __socket_inst(num_mi, initiator, M07,  7)
  __socket_inst(num_mi, initiator, M08,  8)
  __socket_inst(num_mi, initiator, M09,  9)
  __socket_inst(num_mi, initiator, M10, 10)
  __socket_inst(num_mi, initiator, M11, 11)
  __socket_inst(num_mi, initiator, M12, 12)
  __socket_inst(num_mi, initiator, M13, 13)
  __socket_inst(num_mi, initiator, M14, 14)
  __socket_inst(num_mi, initiator, M15, 15)

  core_model = new smartconnect_xtlm("smartconnect_xtlm", properties, smartconnect_config,m_report_handler);

  for (int i = 0; i < num_si; i++) {
    target_rd_sockets[i]->bind(*(core_model->saxi_rd_socket[i]));
    target_wr_sockets[i]->bind(*(core_model->saxi_wr_socket[i]));
  }

  for (int i = 0; i < num_mi; i++) {
    core_model->maxi_rd_socket[i]->bind(*(initiator_rd_sockets[i]));
    core_model->maxi_wr_socket[i]->bind(*(initiator_wr_sockets[i]));
  }

  //Stub Reset Signal if not connected
  if(properties.getLongLong("HAS_RESET") == 0)
  {
      aresetn.bind(aresetn_signal);
      aresetn_signal.write(1);
  }
}

#define __clk_tieoff(i) \
  if (num_clks < i+1) { \
      clk_tieoff = new sc_signal<bool>; \
      aclk##i(*clk_tieoff); \
  }

void smartconnect::before_end_of_elaboration() {

  int num_clks = stoi(smartconnect_config["NUM_CLKS"]);

  sc_signal<bool>* clk_tieoff; 

  __clk_tieoff(1)
  __clk_tieoff(2)
  __clk_tieoff(3)
  __clk_tieoff(4)
  __clk_tieoff(5)
  __clk_tieoff(6)
  __clk_tieoff(7)
  __clk_tieoff(8)
  __clk_tieoff(9)  
  __clk_tieoff(10)
  __clk_tieoff(11)
  __clk_tieoff(12)
  __clk_tieoff(13)
  __clk_tieoff(14)
  __clk_tieoff(15)

}
