PRODUCT_BRAND ?= caosp

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.opa.eligible_device=true
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/caosp/prebuilt/common/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/caosp/prebuilt/common/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Enable SIP and VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Additional packages
PRODUCT_PACKAGES += \
    audio_effects.conf \
    Basic \
    CellBroadcastReceiver \
    Launcher3

# Emoji
PRODUCT_PACKAGES += \
    libemoji

# Inherit common androidx stuff
$(call inherit-product, vendor/caosp/config/common.mk)
