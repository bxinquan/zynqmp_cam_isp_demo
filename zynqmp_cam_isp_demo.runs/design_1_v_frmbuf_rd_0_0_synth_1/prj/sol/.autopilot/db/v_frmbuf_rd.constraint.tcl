set clock_constraint { \
    name clk \
    module v_frmbuf_rd \
    port ap_clk \
    period 6.663 \
    uncertainty 1.79901 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module v_frmbuf_rd \
            instance CTRL_s_axi_U/int_width \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module v_frmbuf_rd \
            instance CTRL_s_axi_U/int_height \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

set one_path { \
    name conx_path_2 \
    type single_source \
    source { \
            module v_frmbuf_rd \
            instance CTRL_s_axi_U/int_stride \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_2

set one_path { \
    name conx_path_3 \
    type single_source \
    source { \
            module v_frmbuf_rd \
            instance CTRL_s_axi_U/int_video_format \
            bitWidth 16 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_3

