# Display hal
rm -rf hardware/qcom-caf/sm8150/display
git clone https://github.com/ginkgo-dev/android_hardware_qcom_display -b lineage-18.1 hardware/qcom-caf/sm8150/display

# NFC stuff
cd frameworks/base
git fetch https://github.com/LineageOS/android_frameworks_base
git cherry-pick 161aad9b2950597dff061b817b9a9026adb25916 # frameworks/base: Support for third party NFC features and extensions
cd ../..

rm -rf hardware/broadcom/nfc hardware/nxp/nfc packages/apps/Nfc vendor/nxp/opensource/interfaces/nfc vendor/nxp/opensource/commonsys/external/libnfc-nci vendor/nxp/opensource/commonsys/frameworks vendor/nxp/opensource/commonsys/packages/apps/Nfc vendor/nxp/opensource/sn100x/halimpl vendor/nxp/opensource/sn100x/hidlimpl external/libnfc-nxp
git clone https://github.com/LineageOS/android_hardware_broadcom_nfc.git hardware/broadcom/nfc && git clone https://github.com/LineageOS/android_hardware_nxp_nfc.git hardware/nxp/nfc && git clone https://github.com/LineageOS/android_packages_apps_Nfc.git packages/apps/Nfc && git clone https://github.com/LineageOS/android_vendor_nxp_interfaces_opensource_nfc.git vendor/nxp/opensource/interfaces/nfc && git clone https://github.com/LineageOS/android_vendor_nxp_opensource_external_libnfc-nci.git vendor/nxp/opensource/commonsys/external/libnfc-nci && git clone https://github.com/LineageOS/android_vendor_nxp_opensource_frameworks.git vendor/nxp/opensource/commonsys/frameworks && git clone https://github.com/LineageOS/android_vendor_nxp_opensource_packages_apps_Nfc.git vendor/nxp/opensource/commonsys/packages/apps/Nfc && git clone https://github.com/LineageOS/android_vendor_nxp_opensource_halimpl.git -b lineage-18.1-sn100x vendor/nxp/opensource/sn100x/halimpl && git clone https://github.com/LineageOS/android_vendor_nxp_opensource_hidlimpl.git -b lineage-18.1-sn100x vendor/nxp/opensource/sn100x/hidlimpl && git clone https://github.com/LineageOS/android_external_libnfc-nxp external/libnfc-nxp
