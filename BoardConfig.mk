# Copyright (C) 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common zara-common
-include device/htc/zara-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := zara,zaraul

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := zara

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1912601600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5100273664
BOARD_FLASH_BLOCK_SIZE := 131072

# RIL
BOARD_PROVIDES_LIBRIL := true

# cat /proc/emmc:
# dev:        size     erasesize name
#mmcblk0p21: 000ffa00 00000200 "misc"
#mmcblk0p32: 00fffe00 00000200 "recovery"
#mmcblk0p31: 01000000 00000200 "boot"
#mmcblk0p33: 71fffc00 00000200 "system"
#mmcblk0p28: 00140200 00000200 "local"
#mmcblk0p34: 0efffe00 00000200 "cache"
#mmcblk0p35: 130000000 00000200 "userdata"
#mmcblk0p24: 01400000 00000200 "devlog"
#mmcblk0p26: 00040000 00000200 "pdata"
#mmcblk0p29: 00010000 00000200 "extra"
#mmcblk0p16: 02d00000 00000200 "radio"
#mmcblk0p17: 00a00000 00000200 "adsp"
#mmcblk0p15: 00100000 00000200 "dsps"
#mmcblk0p18: 00500000 00000200 "wcnss"
#mmcblk0p19: 007ffa00 00000200 "radio_config"
#mmcblk0p22: 00400000 00000200 "modem_st1"
#mmcblk0p23: 00400000 00000200 "modem_st2"
#mmcblk0p30: 01fffc00 00000200 "reserve"

# inherit from the proprietary version
-include vendor/htc/zaraul/BoardConfigVendor.mk
