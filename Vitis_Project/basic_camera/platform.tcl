# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Admin\basic_camera\basic_camera\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Admin\basic_camera\basic_camera\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {basic_camera}\
-hw {C:\Users\Admin\basic_camera\design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Users/Admin/basic_camera}

platform write
platform generate -domains 
platform active {basic_camera}
bsp reload
bsp config stdin "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {basic_camera}
platform config -updatehw {C:/Users/Admin/basic_camera/design_1_wrapper.xsa}
platform generate -domains 
platform active {basic_camera}
platform active {basic_camera}
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform active {basic_camera}
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform active {basic_camera}
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform active {basic_camera}
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains standalone_domain 
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Admin/camera_vga/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Admin/ov7670_ultra96v2/design_1_wrapper.xsa}
platform generate -domains 
