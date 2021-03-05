################################################################################
# \file PMG1-CY7110.mk
#
# \brief
# Define the PMG1-CY7110 target.
#
################################################################################
# \copyright
# Copyright 2019-2021 Cypress Semiconductor Corporation
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

# Set the default build recipe for this board if not set by the user
include $(dir $(lastword $(MAKEFILE_LIST)))/locate_recipe.mk

# MCU device selection
DEVICE:=CYPM1011-24LQXI

# Additional components supported by the target
COMPONENTS+=BSP_DESIGN_MODUS CAT2 CCG

# Use CyHAL
DEFINES+=CY_USING_HAL
