# GNU Make project makefile autogenerated by Premake
ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifeq ($(config),release)
  OBJDIR     = ../../obj/gmake.linux/x86_64/ocgcore
  TARGETDIR  = ../../bin/gmake.linux/x86_64
  TARGET     = $(TARGETDIR)/libocgcore.so
  DEFINES   += -DLUA_COMPAT_5_2 -DLUA_USE_LINUX
  INCLUDES  += -I../../ocgcore/lua -I../../ocgcore/sqlite3
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -Os -fPIC -fno-strict-aliasing -Wno-multichar
  CXXFLAGS  += $(CFLAGS) -std=gnu++0x
  LDFLAGS   += -s -shared
  LIBS      += 
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = ../../obj/gmake.linux/x86/ocgcore
  TARGETDIR  = ../../bin/gmake.linux/x86
  TARGET     = $(TARGETDIR)/libocgcore.so
  DEFINES   += -DLUA_COMPAT_5_2 -DLUA_USE_LINUX
  INCLUDES  += -I../../ocgcore/lua -I../../ocgcore/sqlite3
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -Os -m32 -fPIC -fno-strict-aliasing -Wno-multichar
  CXXFLAGS  += $(CFLAGS) -std=gnu++0x
  LDFLAGS   += -s -shared -m32 -L/usr/lib32
  LIBS      += 
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/lapi.o \
	$(OBJDIR)/lauxlib.o \
	$(OBJDIR)/lbaselib.o \
	$(OBJDIR)/lbitlib.o \
	$(OBJDIR)/lcode.o \
	$(OBJDIR)/lcorolib.o \
	$(OBJDIR)/lctype.o \
	$(OBJDIR)/ldblib.o \
	$(OBJDIR)/ldebug.o \
	$(OBJDIR)/ldo.o \
	$(OBJDIR)/ldump.o \
	$(OBJDIR)/lfunc.o \
	$(OBJDIR)/lgc.o \
	$(OBJDIR)/linit.o \
	$(OBJDIR)/liolib.o \
	$(OBJDIR)/llex.o \
	$(OBJDIR)/lmathlib.o \
	$(OBJDIR)/lmem.o \
	$(OBJDIR)/loadlib.o \
	$(OBJDIR)/lobject.o \
	$(OBJDIR)/lopcodes.o \
	$(OBJDIR)/loslib.o \
	$(OBJDIR)/lparser.o \
	$(OBJDIR)/lstate.o \
	$(OBJDIR)/lstring.o \
	$(OBJDIR)/lstrlib.o \
	$(OBJDIR)/ltable.o \
	$(OBJDIR)/ltablib.o \
	$(OBJDIR)/ltm.o \
	$(OBJDIR)/lundump.o \
	$(OBJDIR)/lutf8lib.o \
	$(OBJDIR)/lvm.o \
	$(OBJDIR)/lzio.o \
	$(OBJDIR)/card.o \
	$(OBJDIR)/duel.o \
	$(OBJDIR)/effect.o \
	$(OBJDIR)/field.o \
	$(OBJDIR)/group.o \
	$(OBJDIR)/interpreter.o \
	$(OBJDIR)/libcard.o \
	$(OBJDIR)/libdebug.o \
	$(OBJDIR)/libduel.o \
	$(OBJDIR)/libeffect.o \
	$(OBJDIR)/libgroup.o \
	$(OBJDIR)/mem.o \
	$(OBJDIR)/ocgapi.o \
	$(OBJDIR)/operations.o \
	$(OBJDIR)/playerop.o \
	$(OBJDIR)/processor.o \
	$(OBJDIR)/scriptlib.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking ocgcore
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning ocgcore
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	-$(SILENT) cp $< $(OBJDIR)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
endif

$(OBJDIR)/lapi.o: ../../ocgcore/lua/lapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lauxlib.o: ../../ocgcore/lua/lauxlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lbaselib.o: ../../ocgcore/lua/lbaselib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lbitlib.o: ../../ocgcore/lua/lbitlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lcode.o: ../../ocgcore/lua/lcode.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lcorolib.o: ../../ocgcore/lua/lcorolib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lctype.o: ../../ocgcore/lua/lctype.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ldblib.o: ../../ocgcore/lua/ldblib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ldebug.o: ../../ocgcore/lua/ldebug.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ldo.o: ../../ocgcore/lua/ldo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ldump.o: ../../ocgcore/lua/ldump.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lfunc.o: ../../ocgcore/lua/lfunc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lgc.o: ../../ocgcore/lua/lgc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/linit.o: ../../ocgcore/lua/linit.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/liolib.o: ../../ocgcore/lua/liolib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/llex.o: ../../ocgcore/lua/llex.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lmathlib.o: ../../ocgcore/lua/lmathlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lmem.o: ../../ocgcore/lua/lmem.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/loadlib.o: ../../ocgcore/lua/loadlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lobject.o: ../../ocgcore/lua/lobject.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lopcodes.o: ../../ocgcore/lua/lopcodes.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/loslib.o: ../../ocgcore/lua/loslib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lparser.o: ../../ocgcore/lua/lparser.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lstate.o: ../../ocgcore/lua/lstate.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lstring.o: ../../ocgcore/lua/lstring.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lstrlib.o: ../../ocgcore/lua/lstrlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ltable.o: ../../ocgcore/lua/ltable.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ltablib.o: ../../ocgcore/lua/ltablib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ltm.o: ../../ocgcore/lua/ltm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lundump.o: ../../ocgcore/lua/lundump.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lutf8lib.o: ../../ocgcore/lua/lutf8lib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lvm.o: ../../ocgcore/lua/lvm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lzio.o: ../../ocgcore/lua/lzio.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/card.o: ../../ocgcore/card.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/duel.o: ../../ocgcore/duel.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/effect.o: ../../ocgcore/effect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/field.o: ../../ocgcore/field.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/group.o: ../../ocgcore/group.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/interpreter.o: ../../ocgcore/interpreter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/libcard.o: ../../ocgcore/libcard.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/libdebug.o: ../../ocgcore/libdebug.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/libduel.o: ../../ocgcore/libduel.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/libeffect.o: ../../ocgcore/libeffect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/libgroup.o: ../../ocgcore/libgroup.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/mem.o: ../../ocgcore/mem.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ocgapi.o: ../../ocgcore/ocgapi.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/operations.o: ../../ocgcore/operations.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/playerop.o: ../../ocgcore/playerop.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/processor.o: ../../ocgcore/processor.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/scriptlib.o: ../../ocgcore/scriptlib.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
