# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bluetooth.disableabsvol=true

# Dynamic RR
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.set_display_power_timer_ms=1000 \
    ro.surface_flinger.set_idle_timer_ms=80 \
    ro.surface_flinger.set_touch_timer_ms=200 \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.use_content_detection_for_refresh_rate=true

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
	debug.hwui.renderer=skiavk \
	debug.sf.disable_backpressure=1 \
	debug.sf.enable_hwc_vds=1 \
	debug.sf.latch_unsignaled=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.media_vol_default=10 \
	ro.config.media_vol_steps=15 \
	ro.config.vc_call_vol_default=7 \
	ro.config.vc_call_vol_steps=11

