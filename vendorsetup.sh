#!/bin/bash

export OF_DISABLE_OTA_MENU=1
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_DEFAULT_KEYMASTER_VERSION=4.1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_MAINTAINER="Andreii_0514"
export FOX_VARIANT="R11.2-A12_andreii0514"
export OF_FLASHLIGHT_ENABLE=0

export BUILD_USERNAME=XTENSEI_Andreii0514
export BUILD_HOSTNAME=At-Your-Service

export FOX_USE_BASH_SHELL=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_ASH_IS_BASH=1
export OF_ENABLE_LPTOOLS=1
export FOX_DELETE_MAGISK_ADDON=1
export FOX_DELETE_AROMAFM=1
export FOX_ENABLE_APP_MANAGER=1
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1

export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1

export OF_LOOP_DEVICE_ERRORS_TO_LOG=1

export OF_USE_LZ4_COMPRESSION=true

export OF_SCREEN_H=2400
export OF_STATUS_H=95
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=1

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_MAXSIZE="5G"
export CCACHE_DIR=".ccache"

if [ ! -d ${CCACHE_DIR} ]; then
  mkdir $CCACHE_DIR
fi

export LC_ALL="C"

# Clone to fix build on minimal manifest
git clone https://android.googlesource.com/platform/external/gflags/ -b android-12.1.0_r4 external/gflags

# Patches
RET=0
cd bootable/recovery
git apply ../../device/transsion/mt6789-common/patches/0001-Change-haptics-activation-file-path.patch > /dev/null 2>&1 || RET=$?
cd ../../
if [ $RET -ne 0 ];then
    echo "ERROR: Patch is not applied! Maybe it's already patched?"
else
    echo "OK: All patched"
fi

echo "Andriana has touched your build"


# --- COLOR PALETTE ---
RED='\033[1;31m'       # Bold Crimson
CYAN='\033[1;36m'      # Electric Cyan
WHITE='\033[1;37m'     # Stark White
GRAY='\033[0;90m'      # Dark Slate
NC='\033[0m'           # Reset

clear

# --- GRAYRAVENS HEADER (RED) ---
echo -e "${RED}"
echo " ██████╗ ██████╗  █████╗ ██╗   ██╗██████╗  █████╗ ██╗   ██╗███████╗███╗   ██╗"
echo "██╔════╝ ██╔══██╗██╔══██╗╚██╗ ██╔╝██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║"
echo "██║  ███╗██████╔╝███████║ ╚████╔╝ ██████╔╝███████║██║   ██║█████╗  ██╔██╗ ██║"
echo "██║   ██║██╔══██╗██╔══██║  ╚██╔╝  ██╔══██╗██╔══██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║"
echo "╚██████╔╝██║  ██║██║  ██║   ██║   ██║  ██║██║  ██║ ╚████╔╝ ███████╗██║ ╚████║"
echo " ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝"

# --- SHADOWBYTEPRJKT HEADER (CYAN) ---
echo -e "${CYAN}"
echo "███████╗██╗  ██╗ █████╗ ██████╗  ██████╗ ██╗    ██╗██████╗ ██╗   ██╗████████╗███████╗"
echo "██╔════╝██║  ██║██╔══██╗██╔══██╗██╔═══██╗██║    ██║██╔══██╗╚██╗ ██╔╝╚══██╔══╝██╔════╝"
echo "███████╗███████║███████║██║  ██║██║   ██║██║ █╗ ██║██████╔╝ ╚████╔╝    ██║   █████╗  "
echo "╚════██║██╔══██║██╔══██║██║  ██║██║   ██║██║███╗██║██╔══██╗  ╚██╔╝     ██║   ██╔══╝  "
echo "███████║██║  ██║██║  ██║██████╔╝╚██████╔╝╚███╔███╔╝██████╔╝   ██║      ██║   ███████╗"
echo "╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚═════╝    ╚═╝      ╚═╝   ╚══════╝"
echo -e "${NC}"

# --- SYSTEM TELEMETRY ---
echo -e "${GRAY}─────────────────────────────────────────────────────────────────────────────────────────${NC}"
printf "${RED}» OPERATOR:${NC} %-18s ${CYAN}» NODE:${NC} %-18s ${WHITE}» STATUS:${NC} ONLINE\n" "XTENSEI" "ShadowbytePjkt"
printf "${RED}» TARGET:${NC}   %-18s ${CYAN}» BRANCH:${NC} %-18s ${WHITE}» ARCH:${NC}   ARM64\n" "INFINIX-X6855" "pbrp-12.1"
echo -e "${GRAY}─────────────────────────────────────────────────────────────────────────────────────────${NC}"

# --- ADDITIONAL INFO ---
echo -e "\n${WHITE}[ ADDITIONAL INFORMATION ]${NC}"
echo -e "${GRAY}┌───────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "  ${RED}■${NC} ${WHITE}REPOSITORY:${NC}  https://github.com/XTENSEI/twrp_device_infinix_X6855.git"
echo -e "  ${RED}■${NC} ${WHITE}TEAM:${NC}        #GRAYRAVENSTEAM x ShadowBytePrjkt"
echo -e "  ${CYAN}■${NC} ${WHITE}NOTICE:${NC}      ROZEN DOES NOT REPRESENT ME"
echo -e "${GRAY}└───────────────────────────────────────────────────────────────────────────────────────┘${NC}"

# --- QUOTE SECTION (MEDIUM FONT) ---
echo -e "\n${WHITE}      \"Compiled In Silence, Released Among the Stars\"${NC}\n"
