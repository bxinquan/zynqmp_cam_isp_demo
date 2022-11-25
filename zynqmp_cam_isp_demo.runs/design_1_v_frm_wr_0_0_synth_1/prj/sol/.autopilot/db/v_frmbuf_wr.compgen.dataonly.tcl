# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
width { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
height { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
stride { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
video_format { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
frm_buffer { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
frm_buffer2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
frm_buffer3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 84
	offset_end 91
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


