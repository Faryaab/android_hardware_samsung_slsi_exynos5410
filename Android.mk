#
# Copyright (C) 2012 The Android Open Source Project
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

ifeq ($(TARGET_SOC),exynos5410)
common_exynos5410_dirs := \
	libhwjpeg \
	mobicore

ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),odroidxu)
exynos5410_dirs := $(common_exynos5410_dirs)
else
camera_dirs := libcamera
exynos5410_dirs := $(common_exynos5410_dirs) $(camera_dirs)
endif

include $(call all-named-subdir-makefiles,$(exynos5410_dirs))

endif
