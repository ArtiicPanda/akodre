#!/bin/bash
export TAG=LA.UM.9.16.r2-03100-MANNAR.0
for REPO in "fw-api" "qca-wifi-host-cmn" "qcacld-3.0"; do
    rm -rf drivers/staging/${REPO}
    git clone -b ${TAG} https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/${REPO} drivers/staging/${REPO}
    rm -rf drivers/staging/${REPO}/.git
done
