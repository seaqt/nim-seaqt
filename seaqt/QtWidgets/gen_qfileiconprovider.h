#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFILEICONPROVIDER_H
#define SEAQT_QTWIDGETS_GEN_QFILEICONPROVIDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QFileIconProvider;
class QFileInfo;
class QIcon;
#else
typedef struct QFileIconProvider QFileIconProvider;
typedef struct QFileInfo QFileInfo;
typedef struct QIcon QIcon;
#endif

typedef struct VirtualQFileIconProvider VirtualQFileIconProvider;
typedef struct QFileIconProvider_VTable{
	void (*destructor)(VirtualQFileIconProvider* self);
	QIcon* (*icon_type)(const VirtualQFileIconProvider* self, int type);
	QIcon* (*icon_info)(const VirtualQFileIconProvider* self, QFileInfo* info);
	struct seaqt_string (*type)(const VirtualQFileIconProvider* self, QFileInfo* info);
}QFileIconProvider_VTable;

void* QFileIconProvider_vdata(VirtualQFileIconProvider* self);
VirtualQFileIconProvider* vdata_QFileIconProvider(void* vdata);

VirtualQFileIconProvider* QFileIconProvider_new(const QFileIconProvider_VTable* vtbl, size_t vdata);

QIcon* QFileIconProvider_icon_type(const QFileIconProvider* self, int type);
QIcon* QFileIconProvider_icon_info(const QFileIconProvider* self, QFileInfo* info);
struct seaqt_string QFileIconProvider_type(const QFileIconProvider* self, QFileInfo* info);
void QFileIconProvider_setOptions(QFileIconProvider* self, int options);
int QFileIconProvider_options(const QFileIconProvider* self);

QIcon* QFileIconProvider_virtualbase_icon_type(const VirtualQFileIconProvider* self, int type);
QIcon* QFileIconProvider_virtualbase_icon_info(const VirtualQFileIconProvider* self, QFileInfo* info);
struct seaqt_string QFileIconProvider_virtualbase_type(const VirtualQFileIconProvider* self, QFileInfo* info);

void QFileIconProvider_delete(QFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
