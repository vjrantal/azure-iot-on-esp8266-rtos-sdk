
#############################################################
# Required variables for each makefile
# Discard this section from all parent makefiles
# Expected variables (with automatic defaults):
#   CSRCS (all "C" files in the dir)
#   SUBDIRS (all subdirs with a Makefile)
#   GEN_LIBS - list of libs to be generated ()
#   GEN_IMAGES - list of images to be generated ()
#   COMPONENTS_xxx - a list of libs/objs in the form
#     subdir/lib to be extracted and rolled up into
#     a generated lib/image xxx.a ()
#
ifndef PDIR
GEN_LIBS = libuser.a
endif

LDFLAGS += \
	-L$(AZURE_IOT_SDK_C)/cmake/iotsdk_esp8266/c-utility \
	-laziotsharedutil \
	-L$(AZURE_IOT_SDK_C)/cmake/iotsdk_esp8266/umqtt \
	-lumqtt \
	-L$(AZURE_IOT_SDK_C)/cmake/iotsdk_esp8266/iothub_client \
	-liothub_client \
	-liothub_client_mqtt_transport

#############################################################
# Configuration i.e. compile options etc.
# Target specific stuff (defines etc.) goes in here!
# Generally values applying to a tree are captured in the
#   makefile at its root level - these are then overridden
#   for a subtree within the makefile rooted therein
#
#DEFINES += 

#############################################################
# Recursion Magic - Don't touch this!!
#
# Each subtree potentially has an include directory
#   corresponding to the common APIs applicable to modules
#   rooted at that subtree. Accordingly, the INCLUDE PATH
#   of a module can only contain the include directories up
#   its parent path, and not its siblings
#
# Required for each makefile to inherit from the parent
#

INCLUDES := $(INCLUDES) -I $(PDIR)include
INCLUDES += -I ./
INCLUDES += -I $(AZURE_IOT_SDK_C)/c-utility/inc
INCLUDES += -I $(AZURE_IOT_SDK_C)/azure-umqtt-c/inc
INCLUDES += -I $(AZURE_IOT_SDK_C)/iothub_client/inc
INCLUDES += -I $(SDK_PATH)/include/espressif/esp8266
INCLUDES += -I $(SDK_PATH)/include
PDIR := ../$(PDIR)
sinclude $(PDIR)Makefile