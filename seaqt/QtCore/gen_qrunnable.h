#pragma once
#ifndef SEAQT_QTCORE_GEN_QRUNNABLE_H
#define SEAQT_QTCORE_GEN_QRUNNABLE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QRunnable;
#else
typedef struct QRunnable QRunnable;
#endif

typedef struct VirtualQRunnable VirtualQRunnable;
typedef struct QRunnable_VTable{
	void (*destructor)(VirtualQRunnable* self);
	void (*run)(VirtualQRunnable* self);
}QRunnable_VTable;

void* QRunnable_vdata(VirtualQRunnable* self);
VirtualQRunnable* vdata_QRunnable(void* vdata);

VirtualQRunnable* QRunnable_new(const QRunnable_VTable* vtbl, size_t vdata);

void QRunnable_run(QRunnable* self);
bool QRunnable_autoDelete(const QRunnable* self);
void QRunnable_setAutoDelete(QRunnable* self, bool autoDelete);

void QRunnable_virtualbase_run(VirtualQRunnable* self);

void QRunnable_delete(QRunnable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
