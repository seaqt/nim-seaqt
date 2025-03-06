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

struct QAbstractNativeEventFilter_VTable {
	void (*destructor)(struct QAbstractNativeEventFilter_VTable* vtbl, QAbstractNativeEventFilter* self);
	bool (*nativeEventFilter)(struct QAbstractNativeEventFilter_VTable* vtbl, QAbstractNativeEventFilter* self, struct miqt_string eventType, void* message, intptr_t* result);
};
QAbstractNativeEventFilter* QAbstractNativeEventFilter_new(struct QAbstractNativeEventFilter_VTable* vtbl);
bool QAbstractNativeEventFilter_nativeEventFilter(QAbstractNativeEventFilter* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QAbstractNativeEventFilter_virtualbase_nativeEventFilter(void* self, struct miqt_string eventType, void* message, intptr_t* result);
void QAbstractNativeEventFilter_delete(QAbstractNativeEventFilter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
