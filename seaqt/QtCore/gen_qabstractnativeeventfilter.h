#pragma once
#ifndef SEAQT_QTCORE_GEN_QABSTRACTNATIVEEVENTFILTER_H
#define SEAQT_QTCORE_GEN_QABSTRACTNATIVEEVENTFILTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractNativeEventFilter;
#else
typedef struct QAbstractNativeEventFilter QAbstractNativeEventFilter;
#endif

typedef struct VirtualQAbstractNativeEventFilter VirtualQAbstractNativeEventFilter;
typedef struct QAbstractNativeEventFilter_VTable{
	void (*destructor)(VirtualQAbstractNativeEventFilter* self);
	bool (*nativeEventFilter)(VirtualQAbstractNativeEventFilter* self, struct miqt_string eventType, void* message, intptr_t* result);
}QAbstractNativeEventFilter_VTable;

const QAbstractNativeEventFilter_VTable* QAbstractNativeEventFilter_vtbl(const VirtualQAbstractNativeEventFilter* self);
void* QAbstractNativeEventFilter_vdata(const VirtualQAbstractNativeEventFilter* self);
void QAbstractNativeEventFilter_setVdata(VirtualQAbstractNativeEventFilter* self, void* vdata);

VirtualQAbstractNativeEventFilter* QAbstractNativeEventFilter_new(const QAbstractNativeEventFilter_VTable* vtbl, void* vdata);

bool QAbstractNativeEventFilter_nativeEventFilter(QAbstractNativeEventFilter* self, struct miqt_string eventType, void* message, intptr_t* result);

bool QAbstractNativeEventFilter_virtualbase_nativeEventFilter(VirtualQAbstractNativeEventFilter* self, struct miqt_string eventType, void* message, intptr_t* result);

void QAbstractNativeEventFilter_delete(QAbstractNativeEventFilter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
