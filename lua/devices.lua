for _, name in ipairs({ "compx-vxe-nordicmouse-1k-dongle-2", "compx-vxe-nordicmouse-1k-dongle-3" }) do
    hl.device({
        name = name,
        accel_profile = "flat",
        sensitivity = 0,
    })
end
