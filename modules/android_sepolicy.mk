#
# Copyright 2021 Rockchip Limited
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
PRODUCT_SEPOLICY_SPLIT := true
BOARD_SEPOLICY_DIRS := \
    device/namtso/common/sepolicy/vendor \
    device/namtso/$(TARGET_BOARD_PLATFORM)/sepolicy_vendor

#SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS ?= device/namtso/common/sepolicy/public
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS ?= \
    device/namtso/common/sepolicy/private \
    device/namtso/$(TARGET_BOARD_PLATFORM)/sepolicy

ifeq ($(TARGET_BOARD_PLATFORM_PRODUCT),box)
    BOARD_SEPOLICY_DIRS += \
        device/namtso/common/box/sepolicy/vendor
endif
