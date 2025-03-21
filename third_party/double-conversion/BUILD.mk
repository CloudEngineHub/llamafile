#-*-mode:makefile-gmake;indent-tabs-mode:t;tab-width:8;coding:utf-8-*-┐
#── vi: set noet ft=make ts=8 sw=8 fenc=utf-8 :vi ────────────────────┘

PKGS += DOUBLE_CONVERSION

DOUBLE_CONVERSION_FILES := $(wildcard third_party/double-conversion/*)
DOUBLE_CONVERSION_HDRS = $(filter %.h,$(DOUBLE_CONVERSION_FILES))
DOUBLE_CONVERSION_SRCS = $(filter %.cc,$(DOUBLE_CONVERSION_FILES))
DOUBLE_CONVERSION_OBJS = $(DOUBLE_CONVERSION_SRCS:%.cc=o/$(MODE)/%.o)

o/$(MODE)/third_party/double-conversion/double-conversion.a: $(DOUBLE_CONVERSION_OBJS)

$(DOUBLE_CONVERSION_OBJS): third_party/double-conversion/BUILD.mk

.PHONY: o/$(MODE)/third_party/double-conversion
o/$(MODE)/third_party/double-conversion:			\
		o/$(MODE)/third_party/double-conversion/double-conversion.a
