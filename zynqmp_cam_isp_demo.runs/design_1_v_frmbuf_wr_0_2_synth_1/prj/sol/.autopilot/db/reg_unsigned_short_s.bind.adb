<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>reg_unsigned_short_s</name>
		<module_structure>Pipeline</module_structure>
		<ret_bitwidth>12</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>d</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>d</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1953394531</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>12</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_2">
				<Value>
					<Obj>
						<type>0</type>
						<id>4</id>
						<name>d_read</name>
						<fileName>D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\utils/x_hls_utils.h</fileName>
						<fileDirectory>D:\zynqmp_cam_isp_demo\zynqmp_cam_isp_demo.runs\design_1_v_frmbuf_wr_0_2_synth_1</fileDirectory>
						<lineNumber>248</lineNumber>
						<contextFuncName>reg&amp;lt;unsigned short&amp;gt;</contextFuncName>
						<contextNormFuncName>reg_unsigned_short_s</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>D:\zynqmp_cam_isp_demo\zynqmp_cam_isp_demo.runs\design_1_v_frmbuf_wr_0_2_synth_1</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\utils/x_hls_utils.h</first>
											<second>reg&amp;lt;unsigned short&amp;gt;</second>
										</first>
										<second>248</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>d</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1767590170</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>12</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>8</item>
					<item>9</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>5</id>
						<name>_ln253</name>
						<fileName>D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\utils/x_hls_utils.h</fileName>
						<fileDirectory>D:\zynqmp_cam_isp_demo\zynqmp_cam_isp_demo.runs\design_1_v_frmbuf_wr_0_2_synth_1</fileDirectory>
						<lineNumber>253</lineNumber>
						<contextFuncName>reg&amp;lt;unsigned short&amp;gt;</contextFuncName>
						<contextNormFuncName>reg_unsigned_short_s</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>D:\zynqmp_cam_isp_demo\zynqmp_cam_isp_demo.runs\design_1_v_frmbuf_wr_0_2_synth_1</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>D:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\utils/x_hls_utils.h</first>
											<second>reg&amp;lt;unsigned short&amp;gt;</second>
										</first>
										<second>253</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1770940026</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>10</item>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</consts>
		<blocks class_id="16" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="17" tracking_level="1" version="0" object_id="_4">
				<Obj>
					<type>3</type>
					<id>6</id>
					<name>reg&lt;unsigned short&gt;</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<isStorage>0</isStorage>
					<storageDepth>0</storageDepth>
					<coreId>0</coreId>
					<rtlModuleName></rtlModuleName>
				</Obj>
				<node_objs>
					<count>2</count>
					<item_version>0</item_version>
					<item>4</item>
					<item>5</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="18" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="19" tracking_level="1" version="0" object_id="_5">
				<id>9</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>4</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_6">
				<id>10</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>5</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="20" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="21" tracking_level="1" version="0" object_id="_7">
			<mId>1</mId>
			<mTag>reg&lt;unsigned short&gt;</mTag>
			<mNormTag>reg_unsigned_short_s</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</basic_blocks>
			<mII>1</mII>
			<mDepth>2</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>1</mMinLatency>
			<mMaxLatency>1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="23" tracking_level="1" version="0" object_id="_8">
		<states class_id="24" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="25" tracking_level="1" version="0" object_id="_9">
				<id>1</id>
				<operations class_id="26" tracking_level="0" version="0">
					<count>1</count>
					<item_version>0</item_version>
					<item class_id="27" tracking_level="1" version="0" object_id="_10">
						<id>4</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="25" object_id="_11">
				<id>2</id>
				<operations>
					<count>3</count>
					<item_version>0</item_version>
					<item class_id_reference="27" object_id="_12">
						<id>2</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_13">
						<id>3</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_14">
						<id>5</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="28" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="29" tracking_level="1" version="0" object_id="_15">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="30" tracking_level="0" version="0">
					<id>-1</id>
					<sop class_id="31" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="32" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="34" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="35" tracking_level="0" version="0">
			<first>4</first>
			<second class_id="36" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>5</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="37" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="38" tracking_level="0" version="0">
			<first>6</first>
			<second class_id="39" tracking_level="0" version="0">
				<first>0</first>
				<second>1</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="40" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="41" tracking_level="1" version="0" object_id="_16">
			<region_name>reg&lt;unsigned short&gt;</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</basic_blocks>
			<nodes>
				<count>4</count>
				<item_version>0</item_version>
				<item>2</item>
				<item>3</item>
				<item>4</item>
				<item>5</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>2</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
			<mDBIIViolationVec class_id="42" tracking_level="0" version="0">
				<count>0</count>
				<item_version>0</item_version>
			</mDBIIViolationVec>
		</item>
		<item class_id_reference="41" object_id="_17">
			<region_name>reg&lt;unsigned short&gt;</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</basic_blocks>
			<nodes>
				<count>0</count>
				<item_version>0</item_version>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>8</region_type>
			<interval>1</interval>
			<pipe_depth>2</pipe_depth>
			<mDBIIViolationVec>
				<count>0</count>
				<item_version>0</item_version>
			</mDBIIViolationVec>
		</item>
	</regions>
	<dp_fu_nodes class_id="43" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="44" tracking_level="0" version="0">
			<first>16</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="47" tracking_level="0" version="0">
			<first>d_read_read_fu_16</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>1</count>
		<item_version>0</item_version>
		<item>
			<first>22</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>1</count>
		<item_version>0</item_version>
		<item>
			<first>d_read_reg_22</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="49" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="50" tracking_level="0" version="0">
			<first>d</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>4</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

