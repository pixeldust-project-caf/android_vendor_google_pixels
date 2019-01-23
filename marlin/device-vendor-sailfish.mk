$(call inherit-product, vendor/google_devices/sailfish/sailfish-vendor-blobs.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.control_privapp_permissions=enforce
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true \
    ro.setupwizard.rotation_locked=true \
    ro.facelock.black_timeout=700 \
    ro.facelock.det_timeout=2500 \
    ro.facelock.rec_timeout=3500 \
    ro.facelock.est_max_time=600 \
    ro.wallpapers_loc_request_suw=true \
    ro.opa.eligible_device=true \
    ro.storage_manager.enabled=true \
    ro.boot.vendor.overlay.theme=com.google.android.theme.pixel

PRODUCT_PACKAGE_OVERLAYS += vendor_overlay/google_devices/sailfish/overlay

# Prebuilt APKs/JARs from 'vendor/app'
PRODUCT_PACKAGES += \
    QAS_DVC_MSP \
    QtiTelephonyService \
    RCSBootstraputil \
    SecureExtAuthService \
    TimeService \
    atfwd \
    colorservice \
    datastatusnotification \
    embms \
    fastdormancy \
    imssettings \
    radioconfig \
    shutdownlistener \
    vzw_msdc_api

# Prebuilt APKs/JARs from 'vendor/framework'
PRODUCT_PACKAGES += \
    QtiTelephonyServicelibrary \
    embmslibrary \
    qti-vzw-ims-internal \
    rcsservice

# Prebuilt APKs/JARs from 'vendor/overlay'
PRODUCT_PACKAGES += \
    PixelThemeOverlay

# Prebuilt APKs/JARs from 'proprietary/app'
PRODUCT_PACKAGES += \
    VZWAPNLib \
    ims

# Prebuilt APKs libs symlinks from 'proprietary/app'
PRODUCT_PACKAGES += \
    libimsmedia_jni_64.so \
    libimscamera_jni_64.so

# Prebuilt APKs/JARs from 'proprietary/framework'
PRODUCT_PACKAGES += \
    PowerAnomalyDataModemInterface \
    PowerAnomalyStub \
    VerizonUnifiedSettings \
    com.google.android.camera.experimental2016 \
    qcrilhook

# Prebuilt APKs/JARs from 'proprietary/priv-app'
PRODUCT_PACKAGES += \
    AppDirectedSMSService \
    Asdiv \
    CNEService \
    CarrierSetup \
    ConnMO \
    DCMO \
    DMService \
    DiagMon \
    HotwordEnrollmentOKGoogleWCD9335 \
    HotwordEnrollmentTGoogleWCD9335 \
    HotwordEnrollmentXGoogleWCD9335 \
    LLKAgent \
    MyVerizonServices \
    OBDM_Permissions \
    OemDmTrigger \
    SprintDM \
    SprintHM \
    TetheringEntitlement \
    VerizonAuthDialog \
    VzwOmaTrigger \
    WfcActivation \
    obdm_stub \
    qcrilmsgtunnel

# Prebuilt APKs libs symlinks from 'proprietary/priv-app'
PRODUCT_PACKAGES += \
    libdmjavaplugin_32.so \
    libdmengine_32.so

# Standalone symbolic links
PRODUCT_PACKAGES += \
    wcd9320_anc.bin__wcd9320_anc.bin__0 \
    wcd9320_mad_audio.bin__wcd9320_mad_audio.bin__1 \
    mbhc.bin__wcd9320_mbhc.bin__2 \
    eglSubDriverAndroid_32.so__eglSubDriverAndroid.so \
    libEGL_adreno_32.so__libEGL_adreno.so \
    libGLESv1_CM_adreno_32.so__libGLESv1_CM_adreno.so \
    libGLESv2_adreno_32.so__libGLESv2_adreno.so \
    libq3dtools_adreno_32.so__libq3dtools_adreno.so \
    libq3dtools_esx_32.so__libq3dtools_esx.so \
    eglSubDriverAndroid_64.so__eglSubDriverAndroid.so \
    libEGL_adreno_64.so__libEGL_adreno.so \
    libGLESv1_CM_adreno_64.so__libGLESv1_CM_adreno.so \
    libGLESv2_adreno_64.so__libGLESv2_adreno.so \
    libq3dtools_adreno_64.so__libq3dtools_adreno.so \
    libq3dtools_esx_64.so__libq3dtools_esx.so

# Enforced modules from user configuration
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    libion \
    libminui \
    nanotool \
    PresencePolling \
    RcsService \
    bufferhubd \
    vr_hwc \
    performanced \
    virtual_touchpad

# Partitions to add in AB OTA images
AB_OTA_PARTITIONS += vendor

