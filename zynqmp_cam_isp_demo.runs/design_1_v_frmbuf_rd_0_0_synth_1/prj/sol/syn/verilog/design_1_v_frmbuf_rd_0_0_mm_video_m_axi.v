// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

`timescale 1ns/1ps
`default_nettype none

module design_1_v_frmbuf_rd_0_0_mm_video_m_axi
#(parameter
    CONSERVATIVE            = 0,
    NUM_READ_OUTSTANDING    = 2,
    NUM_WRITE_OUTSTANDING   = 2,
    MAX_READ_BURST_LENGTH   = 16,
    MAX_WRITE_BURST_LENGTH  = 16,
    C_M_AXI_ID_WIDTH        = 1,
    C_M_AXI_ADDR_WIDTH      = 32,
    C_M_AXI_DATA_WIDTH      = 32, // power of 2 & range: 2 to 1024
    C_M_AXI_AWUSER_WIDTH    = 1,
    C_M_AXI_ARUSER_WIDTH    = 1,
    C_M_AXI_WUSER_WIDTH     = 1,
    C_M_AXI_RUSER_WIDTH     = 1,
    C_M_AXI_BUSER_WIDTH     = 1,
    C_TARGET_ADDR           = 32'h00000000,
    C_USER_VALUE            = 1'b0,
    C_PROT_VALUE            = 3'b000,
    C_CACHE_VALUE           = 4'b0011,
    USER_DW                 = 32, // multiple of 8
    USER_AW                 = 32,
    USER_MAXREQS            = 16,
    USER_RFIFONUM_WIDTH     = 6,
    MAXI_BUFFER_IMPL        = "block"
)(
    
    // flush related
    input wire flush,
    output wire flush_done,
    // system signal
    input  wire                               ACLK,
    input  wire                               ARESET,
    input  wire                               ACLK_EN,
    // write address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        AWID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      AWADDR,
    output wire [7:0]                         AWLEN,
    output wire [2:0]                         AWSIZE,
    output wire [1:0]                         AWBURST,
    output wire [1:0]                         AWLOCK,
    output wire [3:0]                         AWCACHE,
    output wire [2:0]                         AWPROT,
    output wire [3:0]                         AWQOS,
    output wire [3:0]                         AWREGION,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0]    AWUSER,
    output wire                               AWVALID,
    input  wire                               AWREADY,
    // write data channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        WID,
    output wire [C_M_AXI_DATA_WIDTH-1:0]      WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1:0]    WSTRB,
    output wire                               WLAST,
    output wire [C_M_AXI_WUSER_WIDTH-1:0]     WUSER,
    output wire                               WVALID,
    input  wire                               WREADY,
    // write response channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        BID,
    input  wire [1:0]                         BRESP,
    input  wire [C_M_AXI_BUSER_WIDTH-1:0]     BUSER,
    input  wire                               BVALID,
    output wire                               BREADY,
    // read address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]        ARID,
    output wire [C_M_AXI_ADDR_WIDTH-1:0]      ARADDR,
    output wire [7:0]                         ARLEN,
    output wire [2:0]                         ARSIZE,
    output wire [1:0]                         ARBURST,
    output wire [1:0]                         ARLOCK,
    output wire [3:0]                         ARCACHE,
    output wire [2:0]                         ARPROT,
    output wire [3:0]                         ARQOS,
    output wire [3:0]                         ARREGION,
    output wire [C_M_AXI_ARUSER_WIDTH-1:0]    ARUSER,
    output wire                               ARVALID,
    input  wire                               ARREADY,
    // read data channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]        RID,
    input  wire [C_M_AXI_DATA_WIDTH-1:0]      RDATA,
    input  wire [1:0]                         RRESP,
    input  wire                               RLAST,
    input  wire [C_M_AXI_RUSER_WIDTH-1:0]     RUSER,
    input  wire                               RVALID,
    output wire                               RREADY,

    // internal bus ports
    // write address
    input  wire [USER_AW-1:0]                 I_AWADDR,
    input  wire [31:0]                        I_AWLEN,
    input  wire                               I_AWVALID,
    output wire                               I_AWREADY,
    // write data
    input  wire [USER_DW-1:0]                 I_WDATA,
    input  wire [USER_DW/8-1:0]               I_WSTRB,
    input  wire                               I_WVALID,
    output wire                               I_WREADY,
    // write response
    output wire                               I_BVALID,
    input  wire                               I_BREADY,
    // read address
    input  wire [USER_AW-1:0]                 I_ARADDR,
    input  wire [31:0]                        I_ARLEN,
    input  wire                               I_ARVALID,
    output wire                               I_ARREADY,
    // read data
    output wire [USER_DW-1:0]                 I_RDATA,
    output wire                               I_RVALID,
    input  wire                               I_RREADY,
    output wire [USER_RFIFONUM_WIDTH-1:0]     I_RFIFONUM);
//------------------------Local signal-------------------

    wire [C_M_AXI_ADDR_WIDTH-1:0]   AWADDR_Dummy;
    wire [31:0]                     AWLEN_Dummy;
    wire                            AWVALID_Dummy;
    wire                            AWREADY_Dummy;
    wire [C_M_AXI_DATA_WIDTH-1:0]   WDATA_Dummy;
    wire [C_M_AXI_DATA_WIDTH/8-1:0] WSTRB_Dummy;
    wire                            WVALID_Dummy;
    wire                            WREADY_Dummy;
    wire                            BVALID_Dummy;
    wire                            BREADY_Dummy;
    wire [C_M_AXI_ADDR_WIDTH-1:0]   ARADDR_Dummy;
    wire [31:0]                     ARLEN_Dummy;
    wire                            ARVALID_Dummy;
    wire                            ARREADY_Dummy;
    wire [C_M_AXI_DATA_WIDTH-1:0]   RDATA_Dummy;
    wire [1:0]                      RLAST_Dummy;
    wire                            RVALID_Dummy;
    wire                            RREADY_Dummy;
    wire                            RBURST_READY_Dummy;
    
    wire AWVALIDFromWriteUnit;
    wire AWREADYToWriteUnit;
    wire WVALIDFromWriteUnit;
    wire BREADYFromWriteUnit;
    wire ARVALIDFromReadUnit;
    wire RREADYFromReadUnit;
//------------------------Instantiation------------------
    // design_1_v_frmbuf_rd_0_0_mm_video_m_axi_store
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_store #(
        .C_TARGET_ADDR           ( C_TARGET_ADDR ),
        .NUM_WRITE_OUTSTANDING   ( NUM_WRITE_OUTSTANDING ),
        .MAX_WRITE_BURST_LENGTH  ( MAX_WRITE_BURST_LENGTH ),
        .BUS_ADDR_WIDTH          ( C_M_AXI_ADDR_WIDTH ),
        .BUS_DATA_WIDTH          ( C_M_AXI_DATA_WIDTH ),
        .USER_DW                 ( USER_DW ),
        .USER_AW                 ( USER_AW ),
        .USER_MAXREQS            ( USER_MAXREQS ),
        .BUFFER_IMPL             ( MAXI_BUFFER_IMPL )
    ) store_unit (
        .ACLK                    ( ACLK ),
        .ARESET                  ( ARESET ),
        .ACLK_EN                 ( ACLK_EN ),
        .out_AXI_AWADDR          ( AWADDR_Dummy ),
        .out_AXI_AWLEN           ( AWLEN_Dummy ),
        .out_AXI_AWVALID         ( AWVALID_Dummy ),
        .in_AXI_AWREADY          ( AWREADY_Dummy ),
        .out_AXI_WDATA           ( WDATA_Dummy ),
        .out_AXI_WSTRB           ( WSTRB_Dummy ),
        .out_AXI_WVALID          ( WVALID_Dummy ),
        .in_AXI_WREADY           ( WREADY_Dummy ),
        .in_AXI_BVALID           ( BVALID_Dummy ),
        .out_AXI_BREADY          ( BREADY_Dummy ),
        .in_HLS_AWADDR           ( I_AWADDR ),
        .in_HLS_AWLEN            ( I_AWLEN ),
        .in_HLS_AWVALID          ( I_AWVALID ),
        .out_HLS_AWREADY         ( I_AWREADY ),
        .in_HLS_WDATA            ( I_WDATA ),
        .in_HLS_WSTRB            ( I_WSTRB ),
        .in_HLS_WVALID           ( I_WVALID ),
        .out_HLS_WREADY          ( I_WREADY ),
        .out_HLS_BVALID          ( I_BVALID ),
        .in_HLS_BREADY           ( I_BREADY ));

    // design_1_v_frmbuf_rd_0_0_mm_video_m_axi_load
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_load #(
        .C_TARGET_ADDR           ( C_TARGET_ADDR ),
        .NUM_READ_OUTSTANDING    ( NUM_READ_OUTSTANDING ),
        .MAX_READ_BURST_LENGTH   ( MAX_READ_BURST_LENGTH ),
        .BUS_ADDR_WIDTH          ( C_M_AXI_ADDR_WIDTH ),
        .BUS_DATA_WIDTH          ( C_M_AXI_DATA_WIDTH ),
        .USER_DW                 ( USER_DW ),
        .USER_AW                 ( USER_AW ),
        .USER_MAXREQS            ( USER_MAXREQS ),
        .USER_RFIFONUM_WIDTH     ( USER_RFIFONUM_WIDTH ),
        .BUFFER_IMPL             ( MAXI_BUFFER_IMPL )
    ) load_unit (
        .ACLK                    ( ACLK ),
        .ARESET                  ( ARESET ),
        .ACLK_EN                 ( ACLK_EN ),
        .out_AXI_ARADDR          ( ARADDR_Dummy ),
        .out_AXI_ARLEN           ( ARLEN_Dummy ),
        .out_AXI_ARVALID         ( ARVALID_Dummy ),
        .in_AXI_ARREADY          ( ARREADY_Dummy ),
        .in_AXI_RDATA            ( RDATA_Dummy ),
        .in_AXI_RLAST            ( RLAST_Dummy ),
        .in_AXI_RVALID           ( RVALID_Dummy ),
        .out_AXI_RREADY          ( RREADY_Dummy ),
        .out_AXI_RBURST_READY    ( RBURST_READY_Dummy),
        .in_HLS_ARADDR           ( I_ARADDR ),
        .in_HLS_ARLEN            ( I_ARLEN ),
        .in_HLS_ARVALID          ( I_ARVALID ),
        .out_HLS_ARREADY         ( I_ARREADY ),
        .out_HLS_RDATA           ( I_RDATA ),
        .out_HLS_RVALID          ( I_RVALID ),
        .in_HLS_RREADY           ( I_RREADY ),
        .out_HLS_RFIFONUM        ( I_RFIFONUM ));

    // design_1_v_frmbuf_rd_0_0_mm_video_m_axi_write
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_write #(
        .CONSERVATIVE            ( CONSERVATIVE),
        .C_M_AXI_ID_WIDTH        ( C_M_AXI_ID_WIDTH ),
        .C_M_AXI_AWUSER_WIDTH    ( C_M_AXI_AWUSER_WIDTH ),
        .C_M_AXI_WUSER_WIDTH     ( C_M_AXI_WUSER_WIDTH ),
        .C_M_AXI_BUSER_WIDTH     ( C_M_AXI_BUSER_WIDTH ),
        .C_USER_VALUE            ( C_USER_VALUE ),
        .C_PROT_VALUE            ( C_PROT_VALUE ),
        .C_CACHE_VALUE           ( C_CACHE_VALUE ),
        .BUS_ADDR_WIDTH          ( C_M_AXI_ADDR_WIDTH ),
        .BUS_DATA_WIDTH          ( C_M_AXI_DATA_WIDTH ),
        .NUM_WRITE_OUTSTANDING   ( NUM_WRITE_OUTSTANDING ),
        .MAX_WRITE_BURST_LENGTH  ( MAX_WRITE_BURST_LENGTH )
    ) bus_write (
        .ACLK                    ( ACLK ),
        .ARESET                  ( ARESET ),
        .ACLK_EN                 ( ACLK_EN ),
        .out_BUS_AWID            ( AWID ),
        .out_BUS_AWSIZE          ( AWSIZE ),
        .out_BUS_AWBURST         ( AWBURST ),
        .out_BUS_AWLOCK          ( AWLOCK ),
        .out_BUS_AWCACHE         ( AWCACHE ),
        .out_BUS_AWPROT          ( AWPROT ),
        .out_BUS_AWQOS           ( AWQOS ),
        .out_BUS_AWREGION        ( AWREGION ),
        .out_BUS_AWUSER          ( AWUSER ),
        .out_BUS_AWADDR          ( AWADDR ),
        .out_BUS_AWLEN           ( AWLEN ),
        
        .out_BUS_AWVALID         ( AWVALIDFromWriteUnit ),
        .in_BUS_AWREADY          ( AWREADYToWriteUnit ),
        
        .out_BUS_WID             ( WID),
        .out_BUS_WUSER           ( WUSER),
        .out_BUS_WDATA           ( WDATA ),
        .out_BUS_WSTRB           ( WSTRB ),
        .out_BUS_WLAST           ( WLAST ),
        
        .out_BUS_WVALID          ( WVALIDFromWriteUnit ),
        
        .in_BUS_WREADY           ( WREADY ),
        .in_BUS_BID              ( BID ),
        .in_BUS_BRESP            ( BRESP ),
        .in_BUS_BUSER            ( BUSER ),
        .in_BUS_BVALID           ( BVALID ),
        
        .out_BUS_BREADY          ( BREADYFromWriteUnit ),
        
        .in_HLS_AWVALID          ( AWVALID_Dummy ),
        .out_HLS_AWREADY         ( AWREADY_Dummy ),
        .in_HLS_AWADDR           ( AWADDR_Dummy ),
        .in_HLS_AWLEN            ( AWLEN_Dummy ),
        .in_HLS_WVALID           ( WVALID_Dummy ),
        .out_HLS_WREADY          ( WREADY_Dummy ),
        .in_HLS_WSTRB            ( WSTRB_Dummy ),
        .in_HLS_WDATA            ( WDATA_Dummy ),
        .out_HLS_BVALID          ( BVALID_Dummy ),
        .in_HLS_BREADY           ( BREADY_Dummy ));

    // design_1_v_frmbuf_rd_0_0_mm_video_m_axi_read
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_read #(
        .C_M_AXI_ID_WIDTH         ( C_M_AXI_ID_WIDTH ),
        .C_M_AXI_ARUSER_WIDTH     ( C_M_AXI_ARUSER_WIDTH ),
        .C_M_AXI_RUSER_WIDTH      ( C_M_AXI_RUSER_WIDTH ),
        .C_USER_VALUE             ( C_USER_VALUE ),
        .C_PROT_VALUE             ( C_PROT_VALUE ),
        .C_CACHE_VALUE            ( C_CACHE_VALUE ),
        .BUS_ADDR_WIDTH           ( C_M_AXI_ADDR_WIDTH ),
        .BUS_DATA_WIDTH           ( C_M_AXI_DATA_WIDTH ),
        .NUM_READ_OUTSTANDING     ( NUM_READ_OUTSTANDING ),
        .MAX_READ_BURST_LENGTH    ( MAX_READ_BURST_LENGTH )
    ) bus_read (
        .ACLK                     ( ACLK ),
        .ARESET                   ( ARESET ),
        .ACLK_EN                  ( ACLK_EN ),
        .out_BUS_ARID             ( ARID ),
        .out_BUS_ARADDR           ( ARADDR ),
        .out_BUS_ARLEN            ( ARLEN ),
        .out_BUS_ARSIZE           ( ARSIZE ),
        .out_BUS_ARBURST          ( ARBURST ),
        .out_BUS_ARLOCK           ( ARLOCK ),
        .out_BUS_ARCACHE          ( ARCACHE ),
        .out_BUS_ARPROT           ( ARPROT ),
        .out_BUS_ARQOS            ( ARQOS ),
        .out_BUS_ARREGION         ( ARREGION ),
        .out_BUS_ARUSER           ( ARUSER ),
        
        .out_BUS_ARVALID          ( ARVALIDFromReadUnit ),
        
        .in_BUS_ARREADY           ( ARREADY ),
        .in_BUS_RID               ( RID ),
        .in_BUS_RDATA             ( RDATA ),
        .in_BUS_RRESP             ( RRESP ),
        .in_BUS_RLAST             ( RLAST ),
        .in_BUS_RUSER             ( RUSER ),
        .in_BUS_RVALID            ( RVALID ),
        
        .out_BUS_RREADY           ( RREADYFromReadUnit ),
        
        .in_HLS_ARVALID           ( ARVALID_Dummy ),
        .out_HLS_ARREADY          ( ARREADY_Dummy ),
        .in_HLS_ARADDR            ( ARADDR_Dummy ),
        .in_HLS_ARLEN             ( ARLEN_Dummy ),
        .out_HLS_RVALID           ( RVALID_Dummy ),
        .in_HLS_RREADY            ( RREADY_Dummy ),
        .in_HLS_RBUST_READY       ( RBURST_READY_Dummy),
        .out_HLS_RDATA            ( RDATA_Dummy ),
        .out_HLS_RLAST            ( RLAST_Dummy ));

    
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_flushManager #(
        .NUM_READ_OUTSTANDING     ( NUM_READ_OUTSTANDING ),
        .NUM_WRITE_OUTSTANDING    ( NUM_WRITE_OUTSTANDING )
    ) flushManager (
        .clk(ACLK),
        .reset(ARESET),
        .clk_en(ACLK_EN),
        .flush(flush),
        .flush_done(flush_done),
        .in_AWVALID(AWVALIDFromWriteUnit),
        .out_AWVALID(AWVALID),
        .in_AWREADY(AWREADY),
        .out_AWREADY(AWREADYToWriteUnit),
        .in_WVALID(WVALIDFromWriteUnit),
        .out_WVALID(WVALID),
        .in_BREADY(BREADYFromWriteUnit),
        .out_BREADY(BREADY),
        .in_BVALID(BVALID),
        .in_ARVALID(ARVALIDFromReadUnit),
        .out_ARVALID(ARVALID),
        .in_ARREADY(ARREADY),
        .in_RREADY(RREADYFromReadUnit),
        .out_RREADY(RREADY),
        .in_RVALID(RVALID),
        .in_RLAST(RLAST));
endmodule
`default_nettype wire
`timescale 1ns/1ps

module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_load
#(parameter
    C_TARGET_ADDR                         = 32'h00000000,
    NUM_READ_OUTSTANDING                  = 2,
    MAX_READ_BURST_LENGTH                 = 16,
    BUS_ADDR_WIDTH                        = 32,
    BUS_DATA_WIDTH                        = 32,
    USER_DW                               = 16,
    USER_AW                               = 32,
    USER_MAXREQS                          = 16,
    USER_RFIFONUM_WIDTH                   = 6,
    BUFFER_IMPL                           = "auto"
)(
    // system signal
    input  wire                           ACLK,
    input  wire                           ARESET,
    input  wire                           ACLK_EN,

    // read address channel
    output wire [BUS_ADDR_WIDTH-1:0]      out_AXI_ARADDR,
    output wire [31:0]                    out_AXI_ARLEN,
    output wire                           out_AXI_ARVALID,
    input  wire                           in_AXI_ARREADY,
    // read data channel
    input  wire [BUS_DATA_WIDTH-1:0]      in_AXI_RDATA,
    input  wire [1:0]                     in_AXI_RLAST,
    input  wire                           in_AXI_RVALID,
    output wire                           out_AXI_RREADY,
    output wire                           out_AXI_RBURST_READY,

    // internal bus ports
    // read address
    input  wire [USER_AW-1:0]             in_HLS_ARADDR,
    input  wire [31:0]                    in_HLS_ARLEN,
    input  wire                           in_HLS_ARVALID,
    output wire                           out_HLS_ARREADY,
    // read data
    output wire [USER_DW-1:0]             out_HLS_RDATA,
    output wire                           out_HLS_RVALID,
    input  wire                           in_HLS_RREADY,
    output wire [USER_RFIFONUM_WIDTH-1:0] out_HLS_RFIFONUM);

//------------------------Parameter----------------------
    localparam
        USER_DATA_WIDTH = calc_data_width(USER_DW),
        USER_DATA_BYTES = USER_DATA_WIDTH / 8,
        USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
        BUS_ADDR_ALIGN  = log2(BUS_DATA_WIDTH/8),
        RBUFF_DEPTH     = NUM_READ_OUTSTANDING * MAX_READ_BURST_LENGTH,
        TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN);

//------------------------Task and function--------------
    function integer calc_data_width;
        input integer x;
        integer y;
    begin
        y = 8;
        while (y < x) y = y * 2;
        calc_data_width = y;
    end
    endfunction

    function integer log2;
        input integer x;
        integer n, m;
    begin
        n = 0;
        m = 1;
        while (m < x) begin
            n = n + 1;
            m = m * 2;
        end
        log2 = n;
    end
    endfunction

//------------------------Local signal-------------------

    wire                           next_rreq;
    wire                           ready_for_rreq;
    wire                           rreq_ready;

    wire [USER_AW-1 : 0]           rreq_addr;
    wire [31:0]                    rreq_len;
    wire                           rreq_valid;

    wire                           valid_length;

    reg  [BUS_ADDR_WIDTH-1 : 0]    tmp_addr;
    reg  [31:0]                    tmp_len;
    reg                            tmp_valid;

    wire                           burst_ready;
    wire                           beat_valid;
    wire                           next_beat;
    wire                           last_beat;
    wire [BUS_DATA_WIDTH-1 : 0]    beat_data;
    wire [log2(RBUFF_DEPTH) : 0]   beat_nvalid;

    reg                            ready_for_outstanding;

//------------------------Instantiation------------------
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH        (USER_AW + 32),
        .ADDR_WIDTH        (log2(USER_MAXREQS)),
        .DEPTH             (USER_MAXREQS)
    ) fifo_rreq (
        .clk               (ACLK),
        .reset             (ARESET),
        .clk_en            (ACLK_EN),
        .if_full_n         (out_HLS_ARREADY),
        .if_write          (in_HLS_ARVALID),
        .if_din            ({in_HLS_ARLEN, in_HLS_ARADDR}),
        .if_empty_n        (rreq_valid),
        .if_read           (next_rreq),
        .if_dout           ({rreq_len, rreq_addr}),
        .if_num_data_valid ());

    // ===================================================================
    // start of ARADDR PREPROCESSOR
    
    assign next_rreq       = rreq_valid && ready_for_rreq;
    assign ready_for_rreq  = ~tmp_valid || (in_AXI_ARREADY && rreq_ready);

    assign valid_length    = (rreq_len != 32'b0) && !rreq_len[31];

    assign out_AXI_ARLEN   = tmp_len;   // Byte length
    assign out_AXI_ARADDR  = tmp_addr;  // Byte address
    assign out_AXI_ARVALID = tmp_valid && rreq_ready;

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            tmp_len  <= 0;
            tmp_addr <= 0;
        end
        else if (ACLK_EN) begin
            if(next_rreq) begin
                tmp_len  <= (rreq_len << USER_ADDR_ALIGN) - 1;            // byte length
                tmp_addr <= TARGET_ADDR + (rreq_addr << USER_ADDR_ALIGN); // byte address
            end
        end
    end
 
    always @(posedge ACLK) 
    begin
        if (ARESET)
            tmp_valid <= 1'b0;
        else if (ACLK_EN) begin
            if (next_rreq && valid_length)
                tmp_valid <= 1'b1;
            else if (in_AXI_ARREADY && rreq_ready)
                tmp_valid <= 1'b0;
        end
    end

    // end of ARADDR PREPROCESSOR
    // ===================================================================

    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .MEM_STYLE         (BUFFER_IMPL),
        .DATA_WIDTH        (BUS_DATA_WIDTH + 2),
        .ADDR_WIDTH        (log2(RBUFF_DEPTH)),
        .DEPTH             (RBUFF_DEPTH)
    ) buff_rdata (
        .clk               (ACLK),
        .reset             (ARESET),
        .clk_en            (ACLK_EN),
        .if_full_n         (out_AXI_RREADY),
        .if_write          (in_AXI_RVALID),
        .if_din            ({in_AXI_RLAST, in_AXI_RDATA}),
        .if_empty_n        (beat_valid),
        .if_read           (next_beat),
        .if_dout           ({burst_ready, last_beat, beat_data}),
        .if_num_data_valid (beat_nvalid));

    assign out_AXI_RBURST_READY = ready_for_outstanding;

    always @(posedge ACLK) 
    begin
        if (ARESET)
            ready_for_outstanding <= 1'b0;
        else if (ACLK_EN) begin
            if (next_beat)
                ready_for_outstanding <= burst_ready;
            else
                ready_for_outstanding <= 1'b0;
        end
    end
    // ===================================================================
    // start of RDATA PREPROCESSOR
    generate
    if (USER_DATA_WIDTH == BUS_DATA_WIDTH) begin : bus_equal_gen

        assign rreq_ready       = 1'b1;
        assign next_beat        = in_HLS_RREADY;

        assign out_HLS_RDATA    = beat_data[USER_DW-1 : 0];
        assign out_HLS_RVALID   = beat_valid;
        assign out_HLS_RFIFONUM = beat_nvalid;

    end
    else if (USER_DATA_WIDTH < BUS_DATA_WIDTH) begin : bus_wide_gen
        localparam
            TOTAL_SPLIT  = BUS_DATA_WIDTH / USER_DATA_WIDTH,
            SPLIT_ALIGN  = log2(TOTAL_SPLIT);

        wire [USER_AW - 1:0]        tmp_addr_end;

        wire                        offset_full_n;
        wire                        offset_write;
        wire [SPLIT_ALIGN-1 : 0]    start_offset;
        wire [SPLIT_ALIGN-1 : 0]    end_offset;

        wire                        offset_valid;
        wire                        next_offset;
        wire [SPLIT_ALIGN-1 : 0]    head_offset;
        wire [SPLIT_ALIGN-1 : 0]    tail_offset;

        reg                         first_beat;

        wire                        first_data;
        wire                        last_data;
        wire                        ready_for_data;

        reg  [BUS_DATA_WIDTH-1 : 0] data_buf;
        reg                         data_valid;

        reg  [USER_RFIFONUM_WIDTH-1:0] rdata_nvalid; 
        reg  [SPLIT_ALIGN : 0]      data_nvalid;
        wire [SPLIT_ALIGN : 0]      split_nvalid;
        
        wire [SPLIT_ALIGN-1 : 0]    split_cnt;
        reg  [SPLIT_ALIGN-1 : 0]    split_cnt_buf;

        wire                        first_split;
        wire                        next_split;
        wire                        last_split;

        // Recording the offset of start & end address to extract the expect data from beats when USER_DW < BUS_DW.
        design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
            .DATA_WIDTH         (2*SPLIT_ALIGN),
            .ADDR_WIDTH         (log2(NUM_READ_OUTSTANDING)),
            .DEPTH              (NUM_READ_OUTSTANDING)
        ) rreq_offset (
            .clk                (ACLK),
            .reset              (ARESET),
            .clk_en             (ACLK_EN),
            .if_full_n          (offset_full_n),
            .if_write           (offset_write),
            .if_din             ({start_offset, end_offset}),
            .if_empty_n         (offset_valid),
            .if_read            (next_offset),
            .if_dout            ({head_offset, tail_offset}),
            .if_num_data_valid  ());

        assign rreq_ready       = offset_full_n | ~offset_write;
        assign tmp_addr_end     = tmp_addr + tmp_len;

        assign start_offset     = tmp_addr[BUS_ADDR_ALIGN - 1 : 0] >> USER_ADDR_ALIGN;
        assign end_offset       = tmp_addr_end[BUS_ADDR_ALIGN - 1 : 0] >> USER_ADDR_ALIGN;
        assign offset_write     = tmp_valid & in_AXI_ARREADY;

        assign next_offset      = (last_beat & beat_valid) & last_split;
        assign next_beat        = last_split;

        assign out_HLS_RDATA    = data_buf[USER_DW-1 : 0];
        assign out_HLS_RVALID   = data_valid;
        assign out_HLS_RFIFONUM = rdata_nvalid + data_nvalid;

        assign ready_for_data   = ~data_valid | in_HLS_RREADY;
        assign first_data       = first_beat && beat_valid && offset_valid;
        assign last_data        = last_beat && beat_valid && offset_valid;

        assign first_split      = (~first_data) ? (split_cnt == 0 && beat_valid && ready_for_data) : ((split_cnt == head_offset) && ready_for_data);
        assign last_split       = (~last_data)  ? (split_cnt == (TOTAL_SPLIT-1) && ready_for_data) : ((split_cnt == tail_offset) && ready_for_data);
        assign next_split       = (~first_data) ? (split_cnt != 0 && ready_for_data)               : ((split_cnt != head_offset) && ready_for_data);

        assign split_cnt        = (first_data && (split_cnt_buf == 0)) ? head_offset : split_cnt_buf;

        assign split_nvalid     = (first_data && last_data)  ? tail_offset - head_offset + 1 :
                                   first_data                ? TOTAL_SPLIT - head_offset     :
                                   last_data                 ? tail_offset + 1               :
                                   TOTAL_SPLIT;
        always @(posedge ACLK)
        begin
            if (ARESET)
                split_cnt_buf <= 0;
            else if (ACLK_EN) begin 
                if (last_split)
                    split_cnt_buf <= 0;
                else if (first_split || next_split)
                    split_cnt_buf <= split_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                first_beat <= 1'b1;
            else if (ACLK_EN) begin
                if (last_beat && last_split)
                    first_beat <= 1'b1;
                else if (first_beat && last_split)
                    first_beat <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (first_split & first_data)
                    data_buf <= beat_data >> (head_offset * USER_DATA_WIDTH);
                else if (first_split)
                    data_buf <= beat_data;
                else if (next_split)
                    data_buf <= data_buf >> USER_DATA_WIDTH;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                data_valid <= 1'b0;
            else if (ACLK_EN) begin
                if (first_split)
                    data_valid <= 1'b1;
                else if (~(first_split || next_split) && ready_for_data)
                    data_valid <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                data_nvalid <= 0;
            else if (ACLK_EN) begin
                if (first_split)
                    data_nvalid <= split_nvalid;
                else if (next_split)
                    data_nvalid <= data_nvalid - 1;
                else if (~(first_split || next_split) && ready_for_data)
                    data_nvalid <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                rdata_nvalid <= 0;
            else if (ACLK_EN) begin
                if (!beat_valid)
                    rdata_nvalid <= 0;
                else
                    rdata_nvalid <= ((beat_nvalid - 1) << SPLIT_ALIGN);
            end
        end
        
    end
    else begin : bus_narrow_gen
        localparam
            TOTAL_PADS      = USER_DATA_WIDTH / BUS_DATA_WIDTH,
            PAD_ALIGN       = log2(TOTAL_PADS);

        reg [USER_DATA_WIDTH-1 : 0] data_buf;
        reg                         data_valid;
        reg [PAD_ALIGN:0]           data_nvalid;
        wire                        ready_for_data;

        wire [TOTAL_PADS - 1:0]     pad_oh;
        reg  [TOTAL_PADS - 1:0]     pad_oh_reg;

        reg                         first_pad;
        wire                        last_pad;
        wire                        next_pad;

        assign rreq_ready       = 1'b1; 
        assign next_beat        = next_pad;
        
        assign out_HLS_RDATA    = data_buf[USER_DW-1 : 0];
        assign out_HLS_RVALID   = data_valid;
        assign out_HLS_RFIFONUM = beat_nvalid[log2(RBUFF_DEPTH) : PAD_ALIGN] + (beat_nvalid[PAD_ALIGN-1:0] + data_nvalid) >> PAD_ALIGN;
        assign ready_for_data   = ~data_valid | in_HLS_RREADY;

        assign next_pad         = beat_valid && ready_for_data;
        assign last_pad         = pad_oh[TOTAL_PADS - 1];

        always @(posedge ACLK)
        begin
            if (ARESET)
                first_pad <= 1'b1;
            else if (ACLK_EN) begin
                if (next_pad && ~last_pad)
                    first_pad <= 1'b0;
                else if (next_pad && last_pad)
                    first_pad <= 1'b1;
            end
        end

        assign pad_oh = (beat_valid == 0)  ?  0 :
                        (first_pad)        ?  1 :
                        pad_oh_reg;
 
        always @(posedge ACLK)
        begin
            if (ARESET)
                pad_oh_reg <= 0;
            else if (ACLK_EN) begin
                if (next_pad)
                    pad_oh_reg <= {pad_oh[TOTAL_PADS - 2:0], 1'b0};
            end
        end

        genvar  i;
        for (i = 0; i < TOTAL_PADS; i = i + 1) begin : data_gen
            always @(posedge ACLK)
            begin
                if (ACLK_EN) begin
                    if (pad_oh[i] == 1'b1 && ready_for_data)
                        data_buf[i*BUS_DATA_WIDTH +: BUS_DATA_WIDTH] <= beat_data;
                end
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                data_valid <= 1'b0;
            else if (ACLK_EN) begin
                if (next_beat)
                    data_valid <= 1'b1;
                else if (ready_for_data)
                    data_valid <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                data_nvalid <= 0;
            else if (ACLK_EN) begin
                if (first_pad)
                    data_nvalid <= 1;
                else if (next_pad)
                    data_nvalid <= data_nvalid + 1;
            end
        end

    end
    endgenerate
    // end of RDATA PREPROCESSOR
    // ===================================================================

endmodule


module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_store
#(parameter
    C_TARGET_ADDR           = 32'h00000000,
    NUM_WRITE_OUTSTANDING   = 2,
    MAX_WRITE_BURST_LENGTH  = 16,
    BUS_ADDR_WIDTH          = 32,
    BUS_DATA_WIDTH          = 32,
    USER_DW                 = 16,
    USER_AW                 = 32,
    USER_MAXREQS            = 16,
    BUFFER_IMPL             = "auto"
)(
    // system signal
    input  wire                        ACLK,
    input  wire                        ARESET,
    input  wire                        ACLK_EN,
    // write address channel
    output wire [BUS_ADDR_WIDTH-1:0]   out_AXI_AWADDR,
    output wire [31:0]                 out_AXI_AWLEN,
    output wire                        out_AXI_AWVALID,
    input  wire                        in_AXI_AWREADY,
    // write data channel
    output wire [BUS_DATA_WIDTH-1:0]   out_AXI_WDATA,
    output wire [BUS_DATA_WIDTH/8-1:0] out_AXI_WSTRB,
    output wire                        out_AXI_WVALID,
    input  wire                        in_AXI_WREADY,
    // write response channel
    input  wire                        in_AXI_BVALID,
    output wire                        out_AXI_BREADY,

    // internal bus ports
    // write address
    input  wire [USER_AW-1:0]          in_HLS_AWADDR,
    input  wire [31:0]                 in_HLS_AWLEN,
    input  wire                        in_HLS_AWVALID,
    output wire                        out_HLS_AWREADY,
    // write data
    input  wire [USER_DW-1:0]          in_HLS_WDATA,
    input  wire [USER_DW/8-1:0]        in_HLS_WSTRB,
    input  wire                        in_HLS_WVALID,
    output wire                        out_HLS_WREADY,
    // write response
    output wire                        out_HLS_BVALID,
    input  wire                        in_HLS_BREADY);

//------------------------Parameter----------------------
    localparam
        USER_DATA_WIDTH = calc_data_width(USER_DW),
        USER_DATA_BYTES = USER_DATA_WIDTH / 8,
        USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
        BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
        BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
        WBUFF_DEPTH     = max(MAX_WRITE_BURST_LENGTH * BUS_DATA_WIDTH / USER_DATA_WIDTH, 1),
        TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN); 

//------------------------Task and function--------------

    function integer max;
        input integer x;
        input integer y;
    begin
        max = (x > y) ? x : y;
    end
    endfunction

    function integer calc_data_width;
        input integer x;
        integer y;
    begin
        y = 8;
        while (y < x) y = y * 2;
        calc_data_width = y;
    end
    endfunction

    function integer log2;
        input integer x;
        integer n, m;
    begin
        n = 0;
        m = 1;
        while (m < x) begin
            n = n + 1;
            m = m * 2;
        end
        log2 = n;
    end
    endfunction

//------------------------Local signal-------------------

    wire                                next_wreq;
    wire                                ready_for_wreq;
    wire                                wreq_ready;

    wire [USER_AW-1 : 0]                wreq_addr;
    wire [31:0]                         wreq_len;
    wire                                wreq_valid;

    wire                                valid_length;

    reg  [USER_AW-1 : 0]                tmp_addr;
    reg  [31:0]                         tmp_len;
    reg                                 tmp_valid;

    wire                                next_wdata;
    wire                                wdata_valid;
    wire [USER_DW-1 : 0]                tmp_wdata;
    wire [USER_DW/8-1 : 0]              tmp_wstrb;

    wire                                wrsp_ready;
    wire                                wrsp_valid;
    wire                                wrsp_read;
    wire                                wrsp_type;

    wire                                ursp_ready;
    wire                                ursp_write;

//------------------------Instantiation------------------
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH     (USER_AW + 32),
        .ADDR_WIDTH     (log2(USER_MAXREQS)),
        .DEPTH          (USER_MAXREQS)
    ) fifo_wreq (
        .clk            (ACLK),
        .reset          (ARESET),
        .clk_en         (ACLK_EN),
        .if_full_n      (out_HLS_AWREADY),
        .if_write       (in_HLS_AWVALID),
        .if_din         ({in_HLS_AWLEN, in_HLS_AWADDR}),
        .if_empty_n     (wreq_valid),
        .if_read        (next_wreq),
        .if_dout        ({wreq_len, wreq_addr}),
        .if_num_data_valid());

    assign next_wreq = wreq_valid && ready_for_wreq && wrsp_ready;
    assign ready_for_wreq  = ~tmp_valid || (in_AXI_AWREADY && wreq_ready);

    assign valid_length    = (wreq_len != 32'b0) && !wreq_len[31];

    assign out_AXI_AWLEN   = tmp_len;   // Byte length
    assign out_AXI_AWADDR  = tmp_addr;  // Byte address
    assign out_AXI_AWVALID = tmp_valid && wreq_ready;

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            tmp_len  <= 0;
            tmp_addr <= 0;
        end
        else if (ACLK_EN) begin
            if(next_wreq) begin
                tmp_len  <= (wreq_len << USER_ADDR_ALIGN) - 1;
                tmp_addr <= TARGET_ADDR + (wreq_addr << USER_ADDR_ALIGN);
            end
        end
    end
 
    always @(posedge ACLK) 
    begin
        if (ARESET)
            tmp_valid <= 1'b0;
        else if (next_wreq && valid_length)
            tmp_valid <= 1'b1;
        else if (in_AXI_AWREADY && wreq_ready)
            tmp_valid <= 1'b0;
    end

    // ===================================================================

    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .MEM_STYLE         (BUFFER_IMPL),
        .DATA_WIDTH        (USER_DW + USER_DW/8),
        .ADDR_WIDTH        (log2(WBUFF_DEPTH)),
        .DEPTH             (WBUFF_DEPTH)
    ) buff_wdata (
        .clk               (ACLK),
        .reset             (ARESET),
        .clk_en            (ACLK_EN),
        .if_full_n         (out_HLS_WREADY),
        .if_write          (in_HLS_WVALID),
        .if_din            ({in_HLS_WSTRB , in_HLS_WDATA}),
        .if_empty_n        (wdata_valid),
        .if_read           (next_wdata),
        .if_dout           ({tmp_wstrb, tmp_wdata}),
        .if_num_data_valid ());

    generate
    if (USER_DATA_WIDTH == BUS_DATA_WIDTH) begin : bus_equal_gen
        assign next_wdata       = in_AXI_WREADY;
        assign out_AXI_WVALID   = wdata_valid;
        assign out_AXI_WDATA    = tmp_wdata;
        assign out_AXI_WSTRB    = tmp_wstrb;

        assign wreq_ready   = 1'b1;

    end
    else if (USER_DATA_WIDTH < BUS_DATA_WIDTH) begin : bus_wide_gen
        localparam
            TOTAL_PADS      = BUS_DATA_WIDTH / USER_DATA_WIDTH,
            PAD_ALIGN       = log2(TOTAL_PADS),
            BEAT_LEN_WIDTH  = 32 - BUS_ADDR_ALIGN;

        function [TOTAL_PADS-1 : 0] decoder;
            input [PAD_ALIGN-1 : 0] din;
            reg  [TOTAL_PADS-1 : 0] dout;
            integer i;
        begin
            dout = {TOTAL_PADS{1'b0}};
            for (i = 0; i < din; i = i + 1)
                dout[i] = 1'b1;
            decoder = dout;
        end
        endfunction

        wire [USER_AW - 1:0]        tmp_addr_end;

        wire                        offset_full_n;
        wire                        offset_write;
        wire [PAD_ALIGN-1 : 0]      start_offset;
        wire [PAD_ALIGN-1 : 0]      end_offset;
        wire [BEAT_LEN_WIDTH-1 : 0] beat_total;

        wire                        offset_valid;
        wire                        next_offset;
        wire [PAD_ALIGN-1 : 0]      head_offset;
        wire [PAD_ALIGN-1 : 0]      tail_offset;

        wire [BEAT_LEN_WIDTH-1 : 0] beat_len;
        reg  [BEAT_LEN_WIDTH-1:0]   len_cnt;

        wire [TOTAL_PADS - 1:0]     add_head;
        wire [TOTAL_PADS - 1:0]     add_tail;
        wire [TOTAL_PADS - 1:0]     pad_oh;
        reg  [TOTAL_PADS - 1:0]     pad_oh_reg;

        wire [TOTAL_PADS-1 : 0]     head_pad_sel;
        wire [0 : TOTAL_PADS-1]     tail_pad_sel; // reverse
        wire                        ready_for_data;
        wire                        next_pad;
        reg                         first_pad;
        wire                        last_pad;
        wire                        first_beat;
        wire                        last_beat;
        wire                        next_beat;

        reg  [BUS_DATA_WIDTH - 1:0] data_buf;
        reg  [BUS_DATA_BYTES - 1:0] strb_buf;
        reg                         data_valid;

        // Recording the offset of start & end address to align beats from data USER_DW < BUS_DW.
        design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
            .DATA_WIDTH             (2*PAD_ALIGN + BEAT_LEN_WIDTH),
            .ADDR_WIDTH             (log2(NUM_WRITE_OUTSTANDING)),
            .DEPTH                  (NUM_WRITE_OUTSTANDING)
        ) wreq_offset (
            .clk                    (ACLK),
            .reset                  (ARESET),
            .clk_en                 (ACLK_EN),
            .if_full_n              (offset_full_n),
            .if_write               (offset_write),
            .if_din                 ({start_offset, end_offset, beat_total}),
            .if_empty_n             (offset_valid),
            .if_read                (next_offset),
            .if_dout                ({head_offset, tail_offset, beat_len}),
            .if_num_data_valid      ());

        assign wreq_ready   = offset_full_n | ~offset_write;
        assign tmp_addr_end = tmp_addr + tmp_len;

        assign start_offset   = tmp_addr[BUS_ADDR_ALIGN-1 : 0] >> USER_ADDR_ALIGN;
        assign end_offset     = ~tmp_addr_end[BUS_ADDR_ALIGN-1 : 0] >> USER_ADDR_ALIGN;
        assign beat_total     = (tmp_len + tmp_addr[BUS_ADDR_ALIGN-1 : 0]) >> BUS_ADDR_ALIGN;

        assign offset_write   = tmp_valid & in_AXI_AWREADY;

        assign out_AXI_WDATA  = data_buf;
        assign out_AXI_WSTRB  = strb_buf;
        assign out_AXI_WVALID = data_valid;

        assign next_wdata     = next_pad;
        assign next_offset    = last_beat && next_beat;
        assign ready_for_data = ~data_valid || in_AXI_WREADY;

        assign first_beat     = (len_cnt == 0) && offset_valid;
        assign last_beat      = (len_cnt == beat_len) && offset_valid;
        assign next_beat      = offset_valid && last_pad && ready_for_data;

        assign next_pad       = offset_valid && wdata_valid && ready_for_data;
        assign last_pad       = (last_beat) ? pad_oh[TOTAL_PADS-tail_offset-1] : pad_oh[TOTAL_PADS-1];

        assign head_pad_sel   = decoder(head_offset);
        assign tail_pad_sel   = decoder(tail_offset);

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_offset)
                    len_cnt <= 0;
                else if (next_beat)
                    len_cnt <= len_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                first_pad <= 1'b1;
            else if (ACLK_EN) begin
                if (next_pad && ~last_pad)
                    first_pad <= 1'b0;
                else if (next_pad && last_pad)
                    first_pad <= 1'b1;
            end
        end 
        
        assign pad_oh = (~wdata_valid)            ? 0                :
                        (first_pad && first_beat) ? 1 << head_offset :
                        (first_pad)?                1                :
                        pad_oh_reg;

        always @(posedge ACLK)
        begin
            if (ARESET)
                pad_oh_reg <= 0;
            else if (ACLK_EN) begin
                if (next_pad)
                    pad_oh_reg <= {pad_oh[TOTAL_PADS - 2:0], 1'b0};
            end
        end

        genvar  i;
        for (i = 0; i < TOTAL_PADS; i = i + 1) begin : data_gen
            assign add_head[i] = head_pad_sel[i] && first_beat;
            assign add_tail[i] = tail_pad_sel[i] && last_beat;

            always @(posedge ACLK)
            begin
                if (ARESET)
                    data_buf[i*USER_DATA_WIDTH +: USER_DATA_WIDTH] <= {USER_DATA_WIDTH{1'b0}};
                else if (ACLK_EN) begin
                    if ((add_head[i] || add_tail[i]) && ready_for_data)
                        data_buf[i*USER_DATA_WIDTH +: USER_DATA_WIDTH] <= {USER_DATA_WIDTH{1'b0}};
                    else if (pad_oh[i] == 1'b1 && ready_for_data)
                        data_buf[i*USER_DATA_WIDTH +: USER_DATA_WIDTH] <= tmp_wdata;
                end
            end

            always @(posedge ACLK)
            begin
                if (ARESET)
                    strb_buf[i*USER_DATA_BYTES +: USER_DATA_BYTES] <= {USER_DATA_BYTES{1'b0}};
                else if (ACLK_EN) begin
                    if ((add_head[i] || add_tail[i]) && ready_for_data)
                        strb_buf[i*USER_DATA_BYTES +: USER_DATA_BYTES] <= {USER_DATA_BYTES{1'b0}};
                    else if (pad_oh[i] == 1'b1 && ready_for_data)
                        strb_buf[i*USER_DATA_BYTES +: USER_DATA_BYTES] <= tmp_wstrb;
                end
            end

        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                data_valid <= 1'b0;
            else if (ACLK_EN) begin
                if (next_beat)
                    data_valid <= 1'b1;
                else if (ready_for_data)
                    data_valid <= 1'b0;
            end
        end

    end
    else begin : bus_narrow_gen
        localparam
            TOTAL_SPLIT       = USER_DATA_WIDTH / BUS_DATA_WIDTH,
            SPLIT_ALIGN       = log2(TOTAL_SPLIT),
            BEAT_LEN_WIDTH    = 32 - BUS_ADDR_ALIGN;


        wire [USER_AW - 1:0]        tmp_addr_end;

        wire                        offset_full_n;
        wire                        offset_write;
        wire  [BEAT_LEN_WIDTH-1 : 0] beat_total;

        wire                        offset_valid;
        wire                        next_offset;

        wire [BEAT_LEN_WIDTH-1 : 0] beat_len;
        reg  [BEAT_LEN_WIDTH-1 : 0] len_cnt;

        wire                        ready_for_data;
        reg  [BUS_DATA_WIDTH - 1:0] data_buf;
        reg  [BUS_DATA_BYTES - 1:0] strb_buf;
        reg                         data_valid;

        reg [SPLIT_ALIGN-1 : 0]     split_cnt;

        wire                        first_split;
        wire                        next_split;
        wire                        last_split;

        // Recording the offset of start & end address to align beats from data USER_DW < BUS_DW.
        design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
            .DATA_WIDTH        (BEAT_LEN_WIDTH),
            .ADDR_WIDTH        (log2(NUM_WRITE_OUTSTANDING)),
            .DEPTH             (NUM_WRITE_OUTSTANDING)
        ) wreq_offset (
            .clk               (ACLK),
            .reset             (ARESET),
            .clk_en            (ACLK_EN),
            .if_full_n         (offset_full_n),
            .if_write          (offset_write),
            .if_din            (beat_total),
            .if_empty_n        (offset_valid),
            .if_read           (next_offset),
            .if_dout           (beat_len),
            .if_num_data_valid ());

        assign wreq_ready     = offset_full_n | ~offset_write;
        assign beat_total     = (tmp_len + tmp_addr[BUS_ADDR_ALIGN-1 : 0]) >> BUS_ADDR_ALIGN;

        assign offset_write   = tmp_valid & in_AXI_AWREADY;

        assign out_AXI_WDATA  = data_buf[BUS_DATA_WIDTH - 1:0];
        assign out_AXI_WSTRB  = strb_buf[BUS_DATA_BYTES - 1:0];
        assign out_AXI_WVALID = data_valid;

        assign next_wdata     = first_split;
        assign next_offset    = (len_cnt == beat_len) && offset_valid && last_split;
        assign ready_for_data = ~data_valid | in_AXI_WREADY;

        assign first_split    = (split_cnt == 0) && wdata_valid && offset_valid && ready_for_data;
        assign last_split     = (split_cnt == (TOTAL_SPLIT - 1)) && ready_for_data;
        assign next_split     = (split_cnt != 0) && ready_for_data;
        
        always @(posedge ACLK)
        begin
            if (ARESET)
                split_cnt <= 0;
            else if (ACLK_EN) begin
                if (last_split)
                    split_cnt <= 0;
                else if (first_split || next_split)
                    split_cnt <= split_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                len_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_offset)
                    len_cnt <= 0;
                else if (next_wdata || next_split)
                    len_cnt <= len_cnt + 1;
            end
        end
 
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (next_wdata)
                    data_buf <= tmp_wdata;
                else if (next_split)
                    data_buf <= data_buf >> BUS_DATA_WIDTH;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                strb_buf <= 0;
            else if (ACLK_EN) begin
                if (next_wdata)
                    strb_buf <= tmp_wstrb;
                else if (next_split)
                    strb_buf <= strb_buf >> BUS_DATA_BYTES;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                data_valid <= 0;
            else if (ACLK_EN) begin
                if (next_wdata)
                    data_valid <= 1;
                else if (~(first_split || next_split) && ready_for_data)
                    data_valid <= 0;
            end
        end
    end
    endgenerate

    // ===================================================================

    // generate response for all request (including request with invalid length)
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH        (1),
        .ADDR_WIDTH        (log2(NUM_WRITE_OUTSTANDING)),
        .DEPTH             (NUM_WRITE_OUTSTANDING)
    ) fifo_wrsp (
        .clk               (ACLK),
        .reset             (ARESET),
        .clk_en            (ACLK_EN),
        .if_full_n         (wrsp_ready),
        .if_write          (next_wreq),
        .if_din            (valid_length),
        .if_empty_n        (wrsp_valid),
        .if_read           (wrsp_read),
        .if_dout           (wrsp_type), // 1 - valid length request, 0 - invalid length request
        .if_num_data_valid ());

    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH        (1),
        .ADDR_WIDTH        (log2(USER_MAXREQS)),
        .DEPTH             (USER_MAXREQS)
    ) user_resp (
        .clk               (ACLK),
        .reset             (ARESET),
        .clk_en            (ACLK_EN),
        .if_full_n         (ursp_ready),
        .if_write          (ursp_write),
        .if_din            (1'b1),
        .if_empty_n        (out_HLS_BVALID),
        .if_read           (in_HLS_BREADY),
        .if_dout           (),
        .if_num_data_valid ());

    assign ursp_write  = wrsp_valid && (!wrsp_type || in_AXI_BVALID);
    assign wrsp_read   = ursp_ready && ursp_write;

    assign out_AXI_BREADY = wrsp_type && ursp_ready;

endmodule


`timescale 1ns/1ps
module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_flushManager
#(parameter  
    NUM_READ_OUTSTANDING      = 2,
    NUM_WRITE_OUTSTANDING     = 2
)(
    input clk,
    input reset,
    input clk_en,

    input flush,
    output flush_done,

    input in_AWVALID,
    output out_AWVALID,
    input in_AWREADY,
    output out_AWREADY,

    input in_WVALID,
    output out_WVALID,

    input in_BREADY,
    output out_BREADY,
    input in_BVALID,
    
    input in_ARVALID,
    output out_ARVALID,
    input in_ARREADY,
    
    input in_RREADY,
    output out_RREADY,
    input in_RVALID,
    input in_RLAST);
//------------------------Task and function--------------
    function integer log2;
        input integer x;
        integer n, m;
    begin
        n = 0;
        m = 1;
        while (m < x) begin
            n = n + 1;
            m = m * 2;
        end
        log2 = n;
    end
    endfunction

//------------------------Local signal-------------------
    reg  flushStart;
    reg  flushReg;

    wire oneWBurstLaunch;
    wire oneWBurstFinish;
    wire flush_AWVALID;
    wire flush_BREADY;
    wire WBurstEmpty_n;
    wire wFlushDone;

    wire oneRBurstLaunch;
    wire oneRBurstFinish;
    wire flush_ARVALID;
    wire flush_RREADY;
    wire RBurstEmpty_n;
    wire rFlushDone;
//------------------------Instantiation------------------
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH     (1),
        .ADDR_WIDTH     (log2(NUM_WRITE_OUTSTANDING)),
        .DEPTH          (NUM_WRITE_OUTSTANDING)
    ) WFlushManager (
        .clk            (clk),
        .reset          (reset),
        .clk_en         (clk_en),
        .if_full_n      (),
        .if_write       (oneWBurstLaunch),
        .if_din         (1'b1),
        .if_empty_n     (WBurstEmpty_n),
        .if_read        (oneWBurstFinish),
        .if_dout        (),
        .if_num_data_valid());
    
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH     (1),
        .ADDR_WIDTH     (log2(NUM_READ_OUTSTANDING)),
        .DEPTH          (NUM_READ_OUTSTANDING)
    ) RFlushManager (
        .clk            (clk),
        .reset          (reset),
        .clk_en         (clk_en),
        .if_full_n      (),
        .if_write       (oneRBurstLaunch),
        .if_din         (1'b1),
        .if_empty_n     (RBurstEmpty_n),
        .if_read        (oneRBurstFinish),
        .if_dout        (),
        .if_num_data_valid());
//------------------------Body---------------------------
    assign oneWBurstLaunch = flush_AWVALID & in_AWREADY;
    assign oneWBurstFinish = flush_BREADY & in_BVALID;

    assign oneRBurstLaunch = flush_ARVALID & in_ARREADY;
    assign oneRBurstFinish = flush_RREADY & in_RLAST & in_RVALID;

    assign flush_AWVALID = flush ? 0 : in_AWVALID;
    assign out_AWVALID   = flush_AWVALID;

    assign out_AWREADY  = flush ? 0 : in_AWREADY;
    assign out_WVALID   = wFlushDone ? 0 : in_WVALID;

    assign flush_BREADY = flush ? 1 : in_BREADY;
    assign out_BREADY   = flush_BREADY;

    assign flush_ARVALID = flush ? 0 : in_ARVALID;
    assign out_ARVALID   = flush_ARVALID;

    assign flush_RREADY = flush ? 1 : in_RREADY;
    assign out_RREADY   = flush_RREADY;
    
    assign wFlushDone = flushStart & ~WBurstEmpty_n;
    assign rFlushDone = flushStart & ~RBurstEmpty_n;

    assign flush_done = wFlushDone & rFlushDone;

    always @ (posedge clk) begin
        if (reset)
            flushReg <= 1'b0;
        else if (clk_en)
            flushReg <= flush;
    end

    always @ (posedge clk) begin
        if (reset) 
            flushStart <= 1'b0;
        else if (clk_en) begin
            if (flush && ~flushReg)
                flushStart <= 1'b1;
            else if (~flush && flushReg)
                flushStart <= 1'b0;
        end
    end

endmodule

module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_read
#(parameter
    C_M_AXI_ID_WIDTH          = 1,
    C_M_AXI_ARUSER_WIDTH      = 1,
    C_M_AXI_RUSER_WIDTH       = 1,
    C_USER_VALUE              = 1'b0,
    C_PROT_VALUE              = 3'b000,
    C_CACHE_VALUE             = 4'b0011,
    BUS_ADDR_WIDTH            = 32,
    BUS_DATA_WIDTH            = 32,
    NUM_READ_OUTSTANDING      = 2,
    MAX_READ_BURST_LENGTH     = 16
)(
    // system signal
    input  wire                            ACLK,
    input  wire                            ARESET,
    input  wire                            ACLK_EN,
    // read address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]     out_BUS_ARID,
    output wire [BUS_ADDR_WIDTH-1:0]       out_BUS_ARADDR,
    output wire [7:0]                      out_BUS_ARLEN,
    output wire [2:0]                      out_BUS_ARSIZE,
    output wire [1:0]                      out_BUS_ARBURST,
    output wire [1:0]                      out_BUS_ARLOCK,
    output wire [3:0]                      out_BUS_ARCACHE,
    output wire [2:0]                      out_BUS_ARPROT,
    output wire [3:0]                      out_BUS_ARQOS,
    output wire [3:0]                      out_BUS_ARREGION,
    output wire [C_M_AXI_ARUSER_WIDTH-1:0] out_BUS_ARUSER,
    output wire                            out_BUS_ARVALID,
    input  wire                            in_BUS_ARREADY,
    // read data channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]     in_BUS_RID,
    input  wire [BUS_DATA_WIDTH-1:0]       in_BUS_RDATA,
    input  wire [1:0]                      in_BUS_RRESP,
    input  wire                            in_BUS_RLAST,
    input  wire [C_M_AXI_RUSER_WIDTH-1:0]  in_BUS_RUSER,
    input  wire                            in_BUS_RVALID,
    output wire                            out_BUS_RREADY,

    // HLS internal read request channel
    input  wire [BUS_ADDR_WIDTH-1:0]       in_HLS_ARADDR,
    input  wire [31:0]                     in_HLS_ARLEN,
    input  wire                            in_HLS_ARVALID,
    output wire                            out_HLS_ARREADY,
    output wire [BUS_DATA_WIDTH-1:0]       out_HLS_RDATA,
    output wire [1:0]                      out_HLS_RLAST,
    output wire                            out_HLS_RVALID,
    input  wire                            in_HLS_RREADY,
    input  wire                            in_HLS_RBUST_READY);

//------------------------Parameter----------------------
    localparam
        BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
        BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
        NUM_READ_WIDTH  = log2(MAX_READ_BURST_LENGTH),
        RBUFFER_AWIDTH  = log2(MAX_READ_BURST_LENGTH*NUM_READ_OUTSTANDING),
        BOUNDARY_BEATS  = {12-BUS_ADDR_ALIGN{1'b1}};

//------------------------Task and function--------------
    function integer calc_data_width;
        input integer x;
        integer y;
    begin
        y = 8;
        while (y < x) y = y * 2;
        calc_data_width = y;
    end
    endfunction

    function integer log2;
        input integer x;
        integer n, m;
    begin
        n = 0;
        m = 1;
        while (m < x) begin
            n = n + 1;
            m = m * 2;
        end
        log2 = n;
    end
    endfunction

//------------------------Local signal-------------------
    // AR channel
    wire                                rreq_valid;
    wire [BUS_ADDR_WIDTH - 1:0]         tmp_addr;
    wire [31:0]                         tmp_len;
    wire [7:0]                          arlen_tmp;
    wire [BUS_ADDR_WIDTH - 1:0]         araddr_tmp;
    reg  [BUS_ADDR_WIDTH - 1:0]         start_addr;
    reg  [BUS_ADDR_WIDTH - 1:0]         end_addr;
    wire [BUS_ADDR_WIDTH - 1:0]         sect_addr;
    reg  [BUS_ADDR_WIDTH - 1:0]         sect_addr_buf;
    wire [11 - BUS_ADDR_ALIGN:0]        start_to_4k;
    wire [11 - BUS_ADDR_ALIGN:0]        sect_len;
    reg  [11 - BUS_ADDR_ALIGN:0]        sect_len_buf;
    reg  [11 - BUS_ADDR_ALIGN:0]        beat_len;
    reg  [BUS_ADDR_WIDTH - 13:0]        sect_cnt;
    wire                                ar2r_info;
    wire                                fifo_rctl_r;
    wire                                fifo_burst_w;
    reg                                 ARVALID_Dummy;
    wire                                ready_for_sect;
    wire                                next_rreq;
    wire                                ready_for_rreq;
    reg                                 rreq_handling;
    wire                                first_sect;
    wire                                last_sect;
    reg                                 last_sect_buf;
    wire                                next_sect;
    // R channel
    wire [BUS_DATA_WIDTH-1:0]           tmp_data;
    wire                                tmp_last;
    wire                                data_valid;
    wire                                data_ready;
    wire                                next_ctrl;
    wire                                need_rlast;
    wire                                burst_valid;
    wire                                last_burst;
    wire                                fifo_rctl_ready;
    wire                                next_burst;
    wire                                burst_end;

//------------------------AR channel begin---------------
//------------------------Instantiation------------------
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice #(
        .DATA_WIDTH     (BUS_ADDR_WIDTH + 32)
    ) rs_rreq (
        .clk            (ACLK),
        .reset          (ARESET),
        .s_data         ({in_HLS_ARLEN, in_HLS_ARADDR}),
        .s_valid        (in_HLS_ARVALID),
        .s_ready        (out_HLS_ARREADY),
        .m_data         ({tmp_len, tmp_addr}),
        .m_valid        (rreq_valid),
        .m_ready        (next_rreq));

//------------------------Body---------------------------   
    assign ready_for_rreq = last_sect & next_sect | ~rreq_handling;
    assign next_rreq      = rreq_valid & ready_for_rreq;

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            start_addr <= 0;
            end_addr   <= 0;
            beat_len   <= 0;
        end
        else if (ACLK_EN) begin
            if(next_rreq) begin
                start_addr <= tmp_addr;
                end_addr   <= tmp_addr + tmp_len;
                beat_len   <= (tmp_len[11:0] + tmp_addr[BUS_ADDR_ALIGN-1:0]) >> BUS_ADDR_ALIGN;
            end
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            rreq_handling <= 1'b0;
        else if (ACLK_EN) begin
            if (rreq_valid && ~rreq_handling)
                rreq_handling <= 1'b1;
            else if (~rreq_valid && last_sect && next_sect)
                rreq_handling <= 1'b0;
        end
    end

    assign first_sect = (sect_cnt == start_addr[BUS_ADDR_WIDTH-1:12]);
    assign last_sect  = (sect_cnt == end_addr[BUS_ADDR_WIDTH-1:12]);
    assign next_sect  = rreq_handling & ready_for_sect;

    assign sect_addr  = (first_sect)? start_addr : {sect_cnt, {12{1'b0}}};
    assign start_to_4k = BOUNDARY_BEATS - start_addr[11:BUS_ADDR_ALIGN];
    assign sect_len    = ( first_sect &&  last_sect)? beat_len :
                         ( first_sect && ~last_sect)? start_to_4k:
                         (~first_sect &&  last_sect)? end_addr[11:BUS_ADDR_ALIGN] :
                                                      BOUNDARY_BEATS;

    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_cnt <= 0;
        else if (ACLK_EN) begin
            if (next_rreq)
                sect_cnt <= tmp_addr[BUS_ADDR_WIDTH-1:12];
            else if (next_sect)
                sect_cnt <= sect_cnt + 1;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            sect_addr_buf <= 0;
            sect_len_buf <= 0;
            last_sect_buf <= 1'b0;
        end
        else if (ACLK_EN) begin
            if (next_sect) begin
                sect_addr_buf <= sect_addr;
                sect_len_buf <= sect_len;
                last_sect_buf <= last_sect;
            end
        end
    end

    assign out_BUS_ARID     = 0;
    assign out_BUS_ARSIZE   = BUS_ADDR_ALIGN;
    assign out_BUS_ARBURST  = 2'b01;
    assign out_BUS_ARLOCK   = 2'b00;
    assign out_BUS_ARCACHE  = C_CACHE_VALUE;
    assign out_BUS_ARPROT   = C_PROT_VALUE;
    assign out_BUS_ARUSER   = C_USER_VALUE;
    assign out_BUS_ARQOS    = 4'b0000;
    assign out_BUS_ARREGION = 4'b0000;

    generate
    if (BUS_DATA_BYTES >= 4096/MAX_READ_BURST_LENGTH) begin : must_one_burst
        assign out_BUS_ARADDR  = {sect_addr_buf[BUS_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
        assign out_BUS_ARLEN   = sect_len_buf;
        assign out_BUS_ARVALID = ARVALID_Dummy;

        assign ready_for_sect = ~(ARVALID_Dummy && ~in_BUS_ARREADY) && fifo_rctl_ready;

        always @(posedge ACLK)
        begin
            if (ARESET)
                ARVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_sect)
                    ARVALID_Dummy <= 1'b1;
                else if (~next_sect && in_BUS_ARREADY)
                    ARVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_rctl_r  = next_sect;
        assign ar2r_info    = last_sect;

        assign fifo_burst_w = next_sect;
        assign araddr_tmp   = sect_addr[BUS_ADDR_WIDTH - 1:0];
        assign arlen_tmp    = sect_len;
    end
    else begin : could_multi_bursts
        reg  [BUS_ADDR_WIDTH - 1:0]                     araddr_buf;
        reg  [7:0]                                      arlen_buf;
        reg  [11 - NUM_READ_WIDTH - BUS_ADDR_ALIGN:0]   loop_cnt;
        reg                                             sect_handling;
        wire                                            last_loop;
        wire                                            next_loop;
        wire                                            ready_for_loop;

        assign out_BUS_ARADDR  = araddr_buf;
        assign out_BUS_ARLEN   = arlen_buf;
        assign out_BUS_ARVALID = ARVALID_Dummy;

        assign last_loop      = (loop_cnt == sect_len_buf[11 - BUS_ADDR_ALIGN : NUM_READ_WIDTH]);
        assign next_loop      = sect_handling && ready_for_loop;
        assign ready_for_loop = ~(ARVALID_Dummy && ~in_BUS_ARREADY) && fifo_rctl_ready;
        assign ready_for_sect = ~(sect_handling && ~(last_loop && next_loop));

        always @(posedge ACLK)
        begin
            if (ARESET)
                sect_handling <= 1'b0;
            else if (ACLK_EN) begin
                if (rreq_handling && ~sect_handling)
                    sect_handling <= 1'b1;
                else if (~rreq_handling && last_loop && next_loop)
                    sect_handling <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                loop_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_sect)
                    loop_cnt <= 0;
                else if (next_loop)
                    loop_cnt <= loop_cnt + 1;
            end
        end

        assign araddr_tmp = (loop_cnt == 0)? sect_addr_buf[BUS_ADDR_WIDTH - 1:0] : (araddr_buf + ((arlen_buf + 1) << BUS_ADDR_ALIGN));
        assign arlen_tmp  = (NUM_READ_WIDTH == 0) ? 0 :
                            (last_loop)? sect_len_buf[NUM_READ_WIDTH - 1:0] : { NUM_READ_WIDTH{1'b1} };
        always @(posedge ACLK)
        begin
            if (ARESET) begin
                araddr_buf <= 0;
                arlen_buf <= 0;
            end
            else if (ACLK_EN) begin
                if (next_loop) begin
                    araddr_buf <= {araddr_tmp[BUS_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
                    arlen_buf <= arlen_tmp;
                end
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                ARVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_loop)
                    ARVALID_Dummy <= 1'b1;
                else if (~next_loop && in_BUS_ARREADY)
                    ARVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_rctl_r  = next_loop;
        assign ar2r_info    = last_loop && last_sect_buf;

        assign fifo_burst_w = next_loop;
    end
    endgenerate
//------------------------AR channel end-----------------

//------------------------R channel begin----------------
//------------------------Instantiation------------------
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice #(
        .DATA_WIDTH     (BUS_DATA_WIDTH + 1)
    ) rs_rdata (
        .clk            (ACLK),
        .reset          (ARESET),
        .s_data         ({in_BUS_RLAST, in_BUS_RDATA}),
        .s_valid        (in_BUS_RVALID),
        .s_ready        (out_BUS_RREADY),
        .m_data         ({tmp_last, tmp_data}),
        .m_valid        (data_valid),
        .m_ready        (data_ready));

    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH     (1),
        .ADDR_WIDTH     (log2(NUM_READ_OUTSTANDING)),
        .DEPTH          (NUM_READ_OUTSTANDING)
    ) fifo_rctl (
        .clk            (ACLK),
        .reset          (ARESET),
        .clk_en         (ACLK_EN),
        .if_full_n      (fifo_rctl_ready),
        .if_write       (fifo_rctl_r),
        .if_din         (ar2r_info),
        .if_empty_n     (need_rlast),
        .if_read        (next_ctrl),
        .if_dout        (),
        .if_num_data_valid());

    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH     (1),
        .ADDR_WIDTH     (log2(NUM_READ_OUTSTANDING)),
        .DEPTH          (NUM_READ_OUTSTANDING)
    ) fifo_burst (
        .clk            (ACLK),
        .reset          (ARESET),
        .clk_en         (ACLK_EN),
        .if_full_n      (),
        .if_write       (fifo_rctl_r),
        .if_din         (ar2r_info),
        .if_empty_n     (burst_valid),
        .if_read        (next_burst),
        .if_dout        (last_burst),
        .if_num_data_valid());

//------------------------Body---------------------------
    assign next_ctrl      = in_HLS_RBUST_READY && need_rlast;
    assign next_burst     = burst_end && data_valid && data_ready;

    assign burst_end      = tmp_last === 1'b1;
    assign out_HLS_RLAST  = {burst_end, burst_end && last_burst && burst_valid};
    assign out_HLS_RDATA  = tmp_data;
    assign out_HLS_RVALID = data_valid;
    assign data_ready     = in_HLS_RREADY;
//------------------------R channel end------------------
endmodule

module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_write
#(parameter
    CONSERVATIVE              = 0,
    C_M_AXI_ID_WIDTH          = 1,
    C_M_AXI_AWUSER_WIDTH      = 1,
    C_M_AXI_WUSER_WIDTH       = 1,
    C_M_AXI_BUSER_WIDTH       = 1,
    C_USER_VALUE              = 1'b0,
    C_PROT_VALUE              = 3'b000,
    C_CACHE_VALUE             = 4'b0011,
    BUS_ADDR_WIDTH            = 32,
    BUS_DATA_WIDTH            = 32,
    NUM_WRITE_OUTSTANDING     = 2,
    MAX_WRITE_BURST_LENGTH    = 16
)(
    // system signal
    input  wire                             ACLK,
    input  wire                             ARESET,
    input  wire                             ACLK_EN,
    // write address channel
    output wire [C_M_AXI_ID_WIDTH-1:0]      out_BUS_AWID,
    output wire [2:0]                       out_BUS_AWSIZE,
    output wire [1:0]                       out_BUS_AWBURST,
    output wire [1:0]                       out_BUS_AWLOCK,
    output wire [3:0]                       out_BUS_AWCACHE,
    output wire [2:0]                       out_BUS_AWPROT,
    output wire [3:0]                       out_BUS_AWQOS,
    output wire [3:0]                       out_BUS_AWREGION,
    output wire [C_M_AXI_AWUSER_WIDTH-1:0]  out_BUS_AWUSER,
    output wire [BUS_ADDR_WIDTH-1:0]        out_BUS_AWADDR,
    output wire [7:0]                       out_BUS_AWLEN,
    output wire                             out_BUS_AWVALID,
    input  wire                             in_BUS_AWREADY,
    // write data channel
    output wire [C_M_AXI_ID_WIDTH-1:0]      out_BUS_WID,
    output wire [C_M_AXI_WUSER_WIDTH-1:0]   out_BUS_WUSER,
    output wire [BUS_DATA_WIDTH-1:0]        out_BUS_WDATA,
    output wire [BUS_DATA_WIDTH/8-1:0]      out_BUS_WSTRB,
    output wire                             out_BUS_WLAST,
    output wire                             out_BUS_WVALID,
    input  wire                             in_BUS_WREADY,
    // write response channel
    input  wire [C_M_AXI_ID_WIDTH-1:0]      in_BUS_BID,
    input  wire [1:0]                       in_BUS_BRESP,
    input  wire [C_M_AXI_BUSER_WIDTH-1:0]   in_BUS_BUSER,
    input  wire                             in_BUS_BVALID,
    output wire                             out_BUS_BREADY,
    // write request
    input  wire [BUS_ADDR_WIDTH-1:0]        in_HLS_AWADDR,
    input  wire [31:0]                      in_HLS_AWLEN,
    input  wire                             in_HLS_AWVALID,
    output wire                             out_HLS_AWREADY,

    input  wire [BUS_DATA_WIDTH-1:0]        in_HLS_WDATA,
    input  wire [BUS_DATA_WIDTH/8-1:0]      in_HLS_WSTRB,
    input  wire                             in_HLS_WVALID,
    output wire                             out_HLS_WREADY,
    output wire                             out_HLS_BVALID,
    input  wire                             in_HLS_BREADY);

//------------------------Parameter----------------------
    localparam
        BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
        BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
        NUM_WRITE_WIDTH = log2(MAX_WRITE_BURST_LENGTH),
        BOUNDARY_BEATS  = {12-BUS_ADDR_ALIGN{1'b1}};

//------------------------Task and function--------------
    function integer calc_data_width;
        input integer x;
        integer y;
    begin
        y = 8;
        while (y < x) y = y * 2;
        calc_data_width = y;
    end
    endfunction

    function integer log2;
        input integer x;
        integer n, m;
    begin
        n = 0;
        m = 1;
        while (m < x) begin
            n = n + 1;
            m = m * 2;
        end
        log2 = n;
    end
    endfunction

//------------------------Local signal-------------------
    // AW channel
    wire                                wreq_valid;
    wire [BUS_ADDR_WIDTH - 1:0]         tmp_addr;
    wire [31:0]                         tmp_len;
    wire [7:0]                          awlen_tmp;
    wire [BUS_ADDR_WIDTH - 1:0]         awaddr_tmp;
    reg  [BUS_ADDR_WIDTH - 1:0]         start_addr;
    reg  [BUS_ADDR_WIDTH - 1:0]         end_addr;
    wire [BUS_ADDR_WIDTH - 1:0]         sect_addr;
    reg  [BUS_ADDR_WIDTH - 1:0]         sect_addr_buf;
    wire [11 - BUS_ADDR_ALIGN:0]        start_to_4k;
    wire [11 - BUS_ADDR_ALIGN:0]        sect_len;
    reg  [11 - BUS_ADDR_ALIGN:0]        sect_len_buf;
    reg  [11 - BUS_ADDR_ALIGN:0]        beat_len;
    wire                                aw2b_info;
    reg  [BUS_ADDR_WIDTH - 13:0]        sect_cnt;
    wire                                fifo_burst_w;
    wire                                fifo_resp_w;

    wire [BUS_ADDR_WIDTH - 1:0]         AWADDR_Dummy;
    wire [7:0]                          AWLEN_Dummy;
    reg                                 AWVALID_Dummy;
    wire                                AWREADY_Dummy;
    wire                                ready_for_sect;
    wire                                next_wreq;
    wire                                ready_for_wreq;
    reg                                 wreq_handling;
    wire                                first_sect;
    reg                                 last_sect_buf;
    wire                                last_sect;
    wire                                next_sect;
    // W channel
    wire                                next_data;
    wire                                data_valid;
    wire                                data_ready;
    reg  [BUS_DATA_WIDTH - 1:0]         data_buf;
    reg  [BUS_DATA_BYTES - 1:0]         strb_buf;
    wire                                ready_for_data;

    reg  [7:0]                          len_cnt;
    wire [7:0]                          burst_len;
    wire                                fifo_burst_ready;
    wire                                next_burst;
    wire                                burst_valid;
    reg                                 WVALID_Dummy;
    wire                                WREADY_Dummy;
    reg                                 WLAST_Dummy;
    //B channel
    wire                                next_resp;
    wire                                last_resp;
    wire                                fifo_resp_ready;
    wire                                need_wrsp;
    wire                                resp_valid;
    wire                                resp_ready;

//------------------------AW channel begin---------------
//------------------------Instantiation------------------
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice #(
        .DATA_WIDTH     (BUS_ADDR_WIDTH + 32)
    ) rs_wreq (
        .clk            (ACLK),
        .reset          (ARESET),
        .s_data         ({in_HLS_AWLEN, in_HLS_AWADDR}),
        .s_valid        (in_HLS_AWVALID),
        .s_ready        (out_HLS_AWREADY),
        .m_data         ({tmp_len, tmp_addr}),
        .m_valid        (wreq_valid),
        .m_ready        (next_wreq));

//------------------------Body---------------------------
    assign ready_for_wreq = last_sect & next_sect | ~wreq_handling;
    assign next_wreq      = wreq_valid & ready_for_wreq;

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            start_addr <= 0;
            end_addr   <= 0;
            beat_len   <= 0;
        end
        else if (ACLK_EN) begin
            if (next_wreq) begin
                start_addr <= tmp_addr;
                end_addr   <= tmp_addr + tmp_len;
                beat_len   <= (tmp_len[11:0] + tmp_addr[BUS_ADDR_ALIGN-1:0]) >> BUS_ADDR_ALIGN;
            end
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            wreq_handling <= 1'b0;
        else if (ACLK_EN) begin
            if (wreq_valid && ~wreq_handling)
                wreq_handling <= 1'b1;
            else if (~wreq_valid && last_sect && next_sect)
                wreq_handling <= 1'b0;
        end
    end

    // 4k boundary
    assign first_sect = (sect_cnt == start_addr[BUS_ADDR_WIDTH-1:12]);
    assign last_sect  = (sect_cnt == end_addr[BUS_ADDR_WIDTH-1:12]);
    assign next_sect  = wreq_handling && ready_for_sect;

    assign sect_addr  = (first_sect)? start_addr : {sect_cnt, {12{1'b0}}};

    assign start_to_4k = BOUNDARY_BEATS - start_addr[11:BUS_ADDR_ALIGN];
    assign sect_len    = ( first_sect &&  last_sect)? beat_len :
                         ( first_sect && ~last_sect)? start_to_4k:
                         (~first_sect &&  last_sect)? end_addr[11:BUS_ADDR_ALIGN] :
                                                      BOUNDARY_BEATS;

    always @(posedge ACLK)
    begin
        if (ARESET)
            sect_cnt <= 0;
        else if (ACLK_EN) begin
            if (next_wreq)
                sect_cnt <= tmp_addr[BUS_ADDR_WIDTH-1:12];
            else if (next_sect)
                sect_cnt <= sect_cnt + 1;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            sect_addr_buf <= 0;
            sect_len_buf <= 0;
            last_sect_buf <= 1'b0;
        end
        else if (ACLK_EN) begin
            if (next_sect) begin
                sect_addr_buf <= sect_addr;
                sect_len_buf <= sect_len;
                last_sect_buf <= last_sect;
            end
        end
    end

    // burst converter
    assign out_BUS_AWID     = 0;
    assign out_BUS_AWSIZE   = BUS_ADDR_ALIGN;
    assign out_BUS_AWBURST  = 2'b01;
    assign out_BUS_AWLOCK   = 2'b00;
    assign out_BUS_AWCACHE  = C_CACHE_VALUE;
    assign out_BUS_AWPROT   = C_PROT_VALUE;
    assign out_BUS_AWUSER   = C_USER_VALUE;
    assign out_BUS_AWQOS    = 4'b0000;
    assign out_BUS_AWREGION = 4'b0000;

    generate
    if (BUS_DATA_BYTES >= 4096/MAX_WRITE_BURST_LENGTH) begin : must_one_burst
        assign AWADDR_Dummy   = {sect_addr_buf[BUS_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
        assign AWLEN_Dummy    = sect_len_buf;

        assign ready_for_sect = ~(AWVALID_Dummy && ~AWREADY_Dummy) && fifo_burst_ready && fifo_resp_ready;

        always @(posedge ACLK)
        begin
            if (ARESET)
                AWVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_sect)
                    AWVALID_Dummy <= 1'b1;
                else if (~next_sect && AWREADY_Dummy)
                    AWVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_resp_w = next_sect;
        assign aw2b_info   = last_sect;

        assign fifo_burst_w = next_sect;
        assign awaddr_tmp   = sect_addr[BUS_ADDR_WIDTH - 1:0];
        assign awlen_tmp    = sect_len;
    end
    else begin : could_multi_bursts
        reg  [BUS_ADDR_WIDTH - 1:0]                         awaddr_buf;
        reg  [7:0]                                          awlen_buf;
        reg  [11 - NUM_WRITE_WIDTH - BUS_ADDR_ALIGN : 0]    loop_cnt;
        reg                                                 sect_handling;
        wire                                                last_loop;
        wire                                                next_loop;
        wire                                                ready_for_loop;

        assign AWADDR_Dummy   = awaddr_buf;
        assign AWLEN_Dummy    = awlen_buf;

        assign last_loop      = (loop_cnt == sect_len_buf[11 - BUS_ADDR_ALIGN : NUM_WRITE_WIDTH]);
        assign next_loop      = sect_handling && ready_for_loop;
        assign ready_for_loop = ~(AWVALID_Dummy && ~AWREADY_Dummy) && fifo_burst_ready && fifo_resp_ready;
        assign ready_for_sect = ~(sect_handling && ~(last_loop && next_loop));

        always @(posedge ACLK)
        begin
            if (ARESET)
                sect_handling <= 1'b0;
            else if (ACLK_EN) begin
                if (wreq_handling && ~sect_handling)
                    sect_handling <= 1'b1;
                else if (~wreq_handling && last_loop && next_loop)
                    sect_handling <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                loop_cnt <= 0;
            else if (ACLK_EN) begin
                if (next_sect)
                    loop_cnt <= 0;
                else if (next_loop)
                    loop_cnt <= loop_cnt + 1;
            end
        end

        assign awaddr_tmp = (loop_cnt == 0)? sect_addr_buf[BUS_ADDR_WIDTH - 1:0] : (awaddr_buf + ((awlen_buf + 1) << BUS_ADDR_ALIGN));
        assign awlen_tmp  = (NUM_WRITE_WIDTH == 0)? 0 :
                    (last_loop)? sect_len_buf[NUM_WRITE_WIDTH - 1:0] : { NUM_WRITE_WIDTH{1'b1} };
        always @(posedge ACLK)
        begin
            if (ARESET) begin
                awaddr_buf <= 0;
                awlen_buf <= 0;
            end
            else if (ACLK_EN) begin
                if (next_loop) begin
                    awaddr_buf <= {awaddr_tmp[BUS_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
                    awlen_buf <= awlen_tmp;
                end
            end
        end

        always @(posedge ACLK)
        begin
            if (ARESET)
                AWVALID_Dummy <= 1'b0;
            else if (ACLK_EN) begin
                if (next_loop)
                    AWVALID_Dummy <= 1'b1;
                else if (~next_loop && AWREADY_Dummy)
                    AWVALID_Dummy <= 1'b0;
            end
        end

        assign fifo_resp_w = next_loop;
        assign fifo_burst_w = next_loop;
        assign aw2b_info = last_loop && last_sect_buf;
    end
    endgenerate
//------------------------AW channel end-----------------

//------------------------W channel begin----------------
//------------------------Instantiation------------------

    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH     (8),
        .ADDR_WIDTH     (log2(NUM_WRITE_OUTSTANDING)),
        .DEPTH          (NUM_WRITE_OUTSTANDING)
    ) fifo_burst (
        .clk            (ACLK),
        .reset          (ARESET),
        .clk_en         (ACLK_EN),
        .if_full_n      (fifo_burst_ready),
        .if_write       (fifo_burst_w),
        .if_din         (awlen_tmp),
        .if_empty_n     (burst_valid),
        .if_read        (next_burst),
        .if_dout        (burst_len),
        .if_num_data_valid());

//------------------------Body---------------------------

    assign out_BUS_WUSER    = C_USER_VALUE;
    assign out_BUS_WID      = 0;
    assign out_HLS_WREADY   = data_ready;

    assign data_valid       = in_HLS_WVALID;
    assign data_ready       = burst_valid && ready_for_data;
    assign next_data        = data_ready && data_valid;
    assign next_burst       = (len_cnt == burst_len) && next_data;
    assign ready_for_data   = ~WVALID_Dummy || WREADY_Dummy;

    always @(posedge ACLK)
    begin
        if (ARESET) begin
            strb_buf <= 0;
            data_buf <= 0;
        end
        if (ACLK_EN) begin
            if (next_data) begin
                data_buf <= in_HLS_WDATA;
                strb_buf <= in_HLS_WSTRB;
            end
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            WVALID_Dummy <= 1'b0;
        else if (ACLK_EN) begin
            if (next_data)
                WVALID_Dummy <= 1'b1;
            else if (ready_for_data)
                WVALID_Dummy <= 1'b0;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            WLAST_Dummy <= 0;
        else if (ACLK_EN) begin
            if (next_burst)
                WLAST_Dummy <= 1;
            else if (ready_for_data)
                WLAST_Dummy <= 0;
        end
    end

    always @(posedge ACLK)
    begin
        if (ARESET)
            len_cnt <= 0;
        else if (ACLK_EN) begin
            if (next_burst)
                len_cnt <= 0;
            else if (next_data)
                len_cnt <= len_cnt + 1;
        end
    end
//------------------------W channel end------------------

    // Write throttling unit
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_throttle #(
        .CONSERVATIVE(CONSERVATIVE),
        .USED_FIX(0),
        .ADDR_WIDTH(BUS_ADDR_WIDTH),
        .DATA_WIDTH(BUS_DATA_WIDTH),
        .DEPTH(MAX_WRITE_BURST_LENGTH),
        .MAXREQS(NUM_WRITE_OUTSTANDING),
        .AVERAGE_MODE(0)
    ) wreq_throttle (
        .clk(ACLK),
        .reset(ARESET),
        .clk_en(ACLK_EN),
        // internal 
        .in_TOP_AWADDR(AWADDR_Dummy),
        .in_TOP_AWLEN(AWLEN_Dummy),
        .in_TOP_AWVALID(AWVALID_Dummy),
        .out_TOP_AWREADY(AWREADY_Dummy),

        .in_TOP_WDATA(data_buf),
        .in_TOP_WSTRB(strb_buf),
        .in_TOP_WLAST(WLAST_Dummy),
        .in_TOP_WVALID(WVALID_Dummy),
        .out_TOP_WREADY(WREADY_Dummy),

        // AXI BUS
        .out_BUS_AWADDR(out_BUS_AWADDR),
        .out_BUS_AWLEN(out_BUS_AWLEN),
        .out_BUS_AWVALID(out_BUS_AWVALID),
        .in_BUS_AWREADY(in_BUS_AWREADY),

        .out_BUS_WDATA(out_BUS_WDATA),
        .out_BUS_WSTRB(out_BUS_WSTRB),
        .out_BUS_WLAST(out_BUS_WLAST),
        .out_BUS_WVALID(out_BUS_WVALID),
        .in_BUS_WREADY(in_BUS_WREADY)
    );
    
//------------------------B channel begin----------------
//------------------------Instantiation------------------
    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice #(
        .DATA_WIDTH     (1)
    ) rs_resp (
        .clk            (ACLK),
        .reset          (ARESET),
        .s_data         (1'b1),
        .s_valid        (in_BUS_BVALID),
        .s_ready        (out_BUS_BREADY),
        .m_data         (),
        .m_valid        (resp_valid),
        .m_ready        (resp_ready));

    design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
        .DATA_WIDTH     (1),
        .ADDR_WIDTH     (log2(NUM_WRITE_OUTSTANDING)),
        .DEPTH          (NUM_WRITE_OUTSTANDING)
    ) fifo_resp (
        .clk            (ACLK),
        .reset          (ARESET),
        .clk_en         (ACLK_EN),
        .if_full_n      (fifo_resp_ready),
        .if_write       (fifo_resp_w),
        .if_din         (aw2b_info),
        .if_empty_n     (need_wrsp),
        .if_read        (next_resp),
        .if_dout        (last_resp),
        .if_num_data_valid());
//------------------------Body---------------------------

    assign resp_ready = need_wrsp && (in_HLS_BREADY || (last_resp === 1'b0));
    assign next_resp  = resp_ready && resp_valid;

    assign out_HLS_BVALID = resp_valid && (last_resp === 1'b1 ) ;

//------------------------B channel end------------------
endmodule

module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_throttle
#(parameter
    CONSERVATIVE   = 0,
    USED_FIX       = 0,
    FIX_VALUE      = 4,
    ADDR_WIDTH     = 32,
    DATA_WIDTH     = 32,
    DEPTH          = 16,
    MAXREQS        = 16,
    AVERAGE_MODE   = 0 
)(
    input  wire                      clk,
    input  wire                      reset,
    input  wire                      clk_en,

    input  wire [ADDR_WIDTH-1:0]     in_TOP_AWADDR,
    input  wire [7:0]                in_TOP_AWLEN,
    input  wire                      in_TOP_AWVALID,
    output wire                      out_TOP_AWREADY,
    input  wire [DATA_WIDTH-1:0]     in_TOP_WDATA,
    input  wire [DATA_WIDTH/8-1:0]   in_TOP_WSTRB,
    input  wire                      in_TOP_WLAST,
    input  wire                      in_TOP_WVALID,
    output wire                      out_TOP_WREADY,

    output wire [ADDR_WIDTH-1:0]     out_BUS_AWADDR,
    output wire [7:0]                out_BUS_AWLEN,
    output wire                      out_BUS_AWVALID,
    input  wire                      in_BUS_AWREADY,
    output wire [DATA_WIDTH-1:0]     out_BUS_WDATA,
    output wire [DATA_WIDTH/8-1:0]   out_BUS_WSTRB,
    output wire                      out_BUS_WLAST,
    output wire                      out_BUS_WVALID,
    input  wire                      in_BUS_WREADY);

    function integer log2;
        input integer x;
        integer n, m;
    begin
        n = 0;
        m = 1;
        while (m < x) begin
            n = n + 1;
            m = m * 2;
        end
        log2 = n;
    end
    endfunction
// aggressive mode
    generate
    if (CONSERVATIVE == 0) begin
        localparam threshold = (USED_FIX)? FIX_VALUE-1 : 0;

        wire                req_en;
        wire                handshake;
        wire  [7:0]         load_init;
        reg   [8:0]         throttl_cnt;

        // AW Channel
        assign out_BUS_AWADDR = in_TOP_AWADDR;
        assign out_BUS_AWLEN  = in_TOP_AWLEN;

        // W Channel
        assign out_BUS_WDATA  = in_TOP_WDATA;
        assign out_BUS_WSTRB  = in_TOP_WSTRB;
        assign out_BUS_WLAST  = in_TOP_WLAST;
        assign out_BUS_WVALID = in_TOP_WVALID & (throttl_cnt > 0);
        assign out_TOP_WREADY = in_BUS_WREADY & (throttl_cnt > 0);

        if (USED_FIX) begin
            assign load_init = FIX_VALUE-1;
            assign handshake = 1'b1;
        end else if (AVERAGE_MODE) begin
            assign load_init = in_TOP_AWLEN;
            assign handshake = 1'b1;
        end else begin
            assign load_init = in_TOP_AWLEN;
            assign handshake = out_BUS_WVALID & in_BUS_WREADY;
        end

        assign out_BUS_AWVALID = in_TOP_AWVALID & req_en;
        assign out_TOP_AWREADY = in_BUS_AWREADY & req_en;
        assign req_en = (throttl_cnt == 0) | (throttl_cnt == 1 & handshake);

        always @(posedge clk)
        begin
            if (reset)
                throttl_cnt <= 0;
            else if (clk_en) begin
                if (in_TOP_AWLEN >= threshold && req_en && in_TOP_AWVALID && in_BUS_AWREADY)
                    throttl_cnt <= load_init + 1'b1; //load
                else if (throttl_cnt > 0 && handshake)
                    throttl_cnt <= throttl_cnt - 1'b1;
            end
        end

    end
// conservative mode
    else begin
        localparam CNT_WIDTH = ((DEPTH < 4)? 2 : log2(DEPTH)) + 1;

        // Instantiation for reg slice for AW channel
        wire                        rs_req_ready;
        wire                        rs_req_valid;
        wire [ADDR_WIDTH + 7 : 0]   rs_req_in;
        wire [ADDR_WIDTH + 7 : 0]   rs_req_out;

        design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice #(
            .DATA_WIDTH     (ADDR_WIDTH + 8)
        ) rs_req (
            .clk            (clk),
            .reset          (reset),
            .s_data         (rs_req_in),
            .s_valid        (rs_req_valid),
            .s_ready        (rs_req_ready),
            .m_data         (rs_req_out),
            .m_valid        (out_BUS_AWVALID),
            .m_ready        (in_BUS_AWREADY));

        wire  [DATA_WIDTH + DATA_WIDTH/8 : 0]   data_in;
        wire  [DATA_WIDTH + DATA_WIDTH/8 : 0]   data_out;
        wire  [ADDR_WIDTH + 7 : 0]              req_in;
        reg                                     req_en;
        wire                                    data_en;
        wire                                    fifo_valid;
        wire                                    read_fifo;
        wire                                    req_fifo_valid;
        wire                                    read_req;
        wire                                    data_push;
        wire                                    data_pop;
        reg                                     flying_req;
        reg   [CNT_WIDTH-1 : 0]                 last_cnt;

        //AW Channel
        assign req_in   = {in_TOP_AWLEN, in_TOP_AWADDR};
        assign out_BUS_AWADDR = rs_req_out[ADDR_WIDTH-1 : 0];
        assign out_BUS_AWLEN  = rs_req_out[ADDR_WIDTH+7 : ADDR_WIDTH];
        assign rs_req_valid = req_fifo_valid & req_en;

        assign read_req      = rs_req_ready & req_en;

        always @(*)
        begin
            if (~flying_req & data_en)
                req_en <= 1;
            else if (flying_req & (out_BUS_WLAST & data_pop) & (last_cnt[CNT_WIDTH-1:1] != 0))
                req_en <= 1;
            else
                req_en <= 0;
        end

        always @(posedge clk)
        begin
            if (reset)
                flying_req <= 0;
            else if (clk_en) begin
                if (rs_req_valid & rs_req_ready)
                    flying_req <= 1;
                else if (out_BUS_WLAST & data_pop)
                    flying_req <= 0;
            end
        end

        design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
            .DATA_WIDTH     (ADDR_WIDTH + 8),
            .ADDR_WIDTH     (log2(MAXREQS)),
            .DEPTH          (MAXREQS)
        ) req_fifo (
            .clk            (clk),
            .reset          (reset),
            .clk_en         (clk_en),
            .if_full_n      (out_TOP_AWREADY),
            .if_write       (in_TOP_AWVALID),
            .if_din         (req_in),
            .if_empty_n     (req_fifo_valid),
            .if_read        (read_req),
            .if_dout        (rs_req_in),
            .if_num_data_valid());

        //W Channel
        assign data_in  = {in_TOP_WLAST, in_TOP_WSTRB, in_TOP_WDATA};
        assign out_BUS_WDATA = data_out[DATA_WIDTH-1 : 0];
        assign out_BUS_WSTRB = data_out[DATA_WIDTH+DATA_WIDTH/8-1 : DATA_WIDTH];
        assign out_BUS_WLAST = data_out[DATA_WIDTH+DATA_WIDTH/8];
        assign out_BUS_WVALID = fifo_valid & data_en & flying_req;

        assign data_en   = last_cnt != 0;
        assign data_push = in_TOP_WVALID & out_TOP_WREADY;
        assign data_pop  = fifo_valid & read_fifo;
        assign read_fifo = in_BUS_WREADY & data_en & flying_req;

        always @(posedge clk)
        begin
            if (reset)
                last_cnt <= 0;
            else if (clk_en) begin
                if ((in_TOP_WLAST & data_push) && ~(out_BUS_WLAST & data_pop))
                    last_cnt <= last_cnt + 1;
                else if (~(in_TOP_WLAST & data_push) && (out_BUS_WLAST & data_pop))
                    last_cnt <= last_cnt - 1;
            end
        end
            
        design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo #(
            .DATA_WIDTH     (DATA_WIDTH + DATA_WIDTH/8 + 1),
            .ADDR_WIDTH     (log2(DEPTH)),
            .DEPTH          (DEPTH)
        ) data_fifo (
            .clk            (clk),
            .reset          (reset),
            .clk_en         (clk_en),
            .if_full_n      (out_TOP_WREADY),
            .if_write       (in_TOP_WVALID),
            .if_din         (data_in),
            .if_empty_n     (fifo_valid),
            .if_read        (read_fifo),
            .if_dout        (data_out),
            .if_num_data_valid());

        end
    endgenerate

endmodule

module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_reg_slice
#(parameter
    DATA_WIDTH = 8
) (
    // system signals
    input  wire                  clk,
    input  wire                  reset,
    // slave side
    input  wire [DATA_WIDTH-1:0] s_data,
    input  wire                  s_valid,
    output wire                  s_ready,
    // master side
    output wire [DATA_WIDTH-1:0] m_data,
    output wire                  m_valid,
    input  wire                  m_ready);
    //------------------------Parameter----------------------
    // state
    localparam [1:0]
        ZERO = 2'b10,
        ONE  = 2'b11,
        TWO  = 2'b01;
    //------------------------Local signal-------------------
    reg  [DATA_WIDTH-1:0] data_p1;
    reg  [DATA_WIDTH-1:0] data_p2;
    wire         load_p1;
    wire         load_p2;
    wire         load_p1_from_p2;
    reg          s_ready_t;
    reg  [1:0]   state;
    reg  [1:0]   next;
    //------------------------Body---------------------------
    assign s_ready = s_ready_t;
    assign m_data  = data_p1;
    assign m_valid = state[0];

    assign load_p1 = (state == ZERO && s_valid) ||
                    (state == ONE && s_valid && m_ready) ||
                    (state == TWO && m_ready);
    assign load_p2 = s_valid & s_ready;
    assign load_p1_from_p2 = (state == TWO);

    // data_p1
    always @(posedge clk) begin
        if (load_p1) begin
            if (load_p1_from_p2)
                data_p1 <= data_p2;
            else
                data_p1 <= s_data;
        end
    end

    // data_p2
    always @(posedge clk) begin
        if (load_p2) data_p2 <= s_data;
    end

    // s_ready_t
    always @(posedge clk) begin
        if (reset)
            s_ready_t <= 1'b0;
        else if (state == ZERO)
            s_ready_t <= 1'b1;
        else if (state == ONE && next == TWO)
            s_ready_t <= 1'b0;
        else if (state == TWO && next == ONE)
            s_ready_t <= 1'b1;
    end

    // state
    always @(posedge clk) begin
        if (reset)
            state <= ZERO;
        else
            state <= next;
    end

    // next
    always @(*) begin
        case (state)
            ZERO:
                if (s_valid & s_ready)
                    next = ONE;
                else
                    next = ZERO;
            ONE:
                if (~s_valid & m_ready)
                    next = ZERO;
                else if (s_valid & ~m_ready)
                    next = TWO;
                else
                    next = ONE;
            TWO:
                if (m_ready)
                    next = ONE;
                else
                    next = TWO;
            default:
                next = ZERO;
        endcase
    end
endmodule

module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_fifo
#(parameter
    MEM_STYLE   = "shiftreg",
    DATA_WIDTH = 32,
    ADDR_WIDTH = 5,
    DEPTH      = 32
) (
    // system signal
    input  wire                  clk,
    input  wire                  reset,
    input  wire                  clk_en,

    // write
    output wire                  if_full_n,
    input  wire                  if_write,
    input  wire [DATA_WIDTH-1:0] if_din,

    // read
    output wire                  if_empty_n,
    input  wire                  if_read,
    output wire [DATA_WIDTH-1:0] if_dout,
    output wire [ADDR_WIDTH:0]   if_num_data_valid);

//------------------------Local signal-------------------

    wire                  push;
    wire                  pop;
    reg                   full_n = 1'b1;
    reg                   empty_n = 1'b0;
    reg                   dout_vld = 1'b0;
    reg  [ADDR_WIDTH:0]   mOutPtr = 1'b0;

//------------------------Instantiation------------------
    generate 
    if ((MEM_STYLE == "shiftreg") || (DEPTH == 1)) begin
        reg  [ADDR_WIDTH-1:0] raddr = 1'b0;

        design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl
        #(  .DATA_WIDTH     (DATA_WIDTH),
            .ADDR_WIDTH     (ADDR_WIDTH),
            .DEPTH          (DEPTH))
        U_fifo_srl(
            .clk            (clk),
            .reset          (reset),
            .clk_en         (clk_en),
            .we             (push),
            .din            (if_din),
            .raddr          (raddr),
            .re             (pop),
            .dout           (if_dout)
        );

        // raddr
        always @(posedge clk) begin
            if (reset == 1'b1)
                raddr <= 1'b0;
            else if (clk_en) begin
                if (push & ~pop & empty_n)
                    raddr <= raddr + 1'b1;
                else if (~push & pop && raddr != 0)
                    raddr <= raddr - 1'b1;
            end
        end

    end else begin
        reg  [ADDR_WIDTH-1:0] waddr = 1'b0;
        reg  [ADDR_WIDTH-1:0] raddr = 1'b0;
        wire [ADDR_WIDTH-1:0] wnext;
        wire [ADDR_WIDTH-1:0] rnext;

        design_1_v_frmbuf_rd_0_0_mm_video_m_axi_mem
        #(  .MEM_STYLE      (MEM_STYLE),
            .DATA_WIDTH     (DATA_WIDTH),
            .ADDR_WIDTH     (ADDR_WIDTH),
            .DEPTH          (DEPTH))
        U_fifo_mem(
            .clk            (clk),
            .reset          (reset),
            .clk_en         (clk_en),
            .we             (push),
            .waddr          (waddr),
            .din            (if_din),
            .raddr          (rnext),
            .re             (pop),
            .dout           (if_dout)
        );

        assign wnext =  !push                ? waddr :
                        (waddr == DEPTH - 2) ? 1'b0  :
                        waddr + 1'b1;
        assign rnext =  !pop                 ? raddr :
                        (raddr == DEPTH - 2) ? 1'b0  :
                        raddr + 1'b1;

        // waddr
        always @(posedge clk) begin
            if (reset == 1'b1)
                waddr <= 1'b0;
            else if (clk_en)
                waddr <= wnext;
        end

        // raddr
        always @(posedge clk) begin
            if (reset == 1'b1)
                raddr <= 1'b0;
            else if (clk_en)
                raddr <= rnext;
        end
    end
    endgenerate

//------------------------Body---------------------------
    assign if_num_data_valid = dout_vld ? mOutPtr + 1'b1 : 'b0;

    generate if (DEPTH == 1) begin
        assign if_full_n  = !dout_vld;
        assign if_empty_n = dout_vld;
        assign push = !dout_vld & if_write;
        assign pop  = !dout_vld & if_write;
    
    end else begin

        assign if_full_n  = full_n;
        assign if_empty_n = dout_vld;
        assign push = full_n & if_write;
        assign pop  = empty_n & (if_read | ~dout_vld);

        // mOutPtr
        always @(posedge clk) begin
            if (reset == 1'b1)
                mOutPtr <= 'b0;
            else if (clk_en)
                if (push & ~pop)
                    mOutPtr <= mOutPtr + 1'b1;
                else if (~push & pop)
                    mOutPtr <= mOutPtr - 1'b1;
        end

        // full_n
        always @(posedge clk) begin
            if (reset == 1'b1)
                full_n <= 1'b1;
            else if (clk_en)
                if (push & ~pop)
                    full_n <= (mOutPtr != DEPTH - 2);
                else if (~push & pop)
                    full_n <= 1'b1;
        end

        // empty_n
        always @(posedge clk)
        begin
            if (reset)
                empty_n <= 1'b0;
            else if (clk_en) begin
                if (push & ~pop)
                    empty_n <= 1'b1;
                else if (~push & pop)
                    empty_n <= (mOutPtr != 1'b1);
            end
        end
    end
    endgenerate

    // dout_vld
    always @(posedge clk) begin
        if (reset == 1'b1)
            dout_vld <= 1'b0;
        else if (clk_en)
            if (pop)
                dout_vld <= 1'b1;
            else if (if_read)
                dout_vld <= 1'b0;
    end

endmodule

module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_srl
#(parameter
        DATA_WIDTH  = 32,
        ADDR_WIDTH  = 6,
        DEPTH       = 63
    )(
        input  wire                  clk,
        input  wire                  reset,
        input  wire                  clk_en,
        input  wire                  we,
        input  wire [DATA_WIDTH-1:0] din,
        input  wire [ADDR_WIDTH-1:0] raddr,
        input  wire                  re,
        output reg  [DATA_WIDTH-1:0] dout
    );

    generate
    if (DEPTH > 1) begin
        reg  [DATA_WIDTH-1:0] mem[0:DEPTH-2];

        integer i;
        always @(posedge clk)
        begin
            if (clk_en & we) begin
                for (i = 0; i < DEPTH - 2; i = i + 1) begin
                    mem[i+1] <= mem[i];
                end
                mem[0] <= din;
            end
        end

        always @(posedge clk)
        begin
            if (reset)
                dout <= 0;
            else if (clk_en & re) begin
                dout <= mem[raddr];
            end
        end
    end
    else begin
        always @(posedge clk)
        begin
            if (reset)
                dout <= 0;
            else if (clk_en & we) begin
                dout <= din;
            end
        end
    end
    endgenerate

endmodule

module design_1_v_frmbuf_rd_0_0_mm_video_m_axi_mem
#(parameter
    MEM_STYLE   = "auto",
    DATA_WIDTH  = 32,
    ADDR_WIDTH  = 6,
    DEPTH       = 63
)(
    input  wire                  clk,
    input  wire                  reset,
    input  wire                  clk_en,
    input  wire                  we,
    input  wire [ADDR_WIDTH-1:0] waddr,
    input  wire [DATA_WIDTH-1:0] din,
    input  wire [ADDR_WIDTH-1:0] raddr,
    input  wire                  re,
    output reg  [DATA_WIDTH-1:0] dout);

    (* ram_style = MEM_STYLE, rw_addr_collision = "yes" *)
    reg  [DATA_WIDTH-1:0] mem[0:DEPTH-2];
    reg  [ADDR_WIDTH-1:0] raddr_reg;

    //write to ram
    always @(posedge clk) begin
        if (clk_en & we)
            mem[waddr] <= din;
    end

    //buffer the raddr
    always @(posedge clk) begin
        if (clk_en)
            raddr_reg <= raddr;
    end

    //read from ram
    always @(posedge clk) begin
        if (reset)
            dout <= 0;
        else if (clk_en & re)
            dout <= mem[raddr_reg];
    end
endmodule
