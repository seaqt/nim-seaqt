#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFILEICONPROVIDER_H
#define SEAQT_QTWIDGETS_GEN_QFILEICONPROVIDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

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
	QIcon* (*icon)(const VirtualQFileIconProvider* self, int type);
	QIcon* (*iconWithInfo)(const VirtualQFileIconProvider* self, QFileInfo* info);
	struct miqt_string (*type)(const VirtualQFileIconProvider* self, QFileInfo* info);
}QFileIconProvider_VTable;

const QFileIconProvider_VTable* QFileIconProvider_vtbl(const VirtualQFileIconProvider* self);
void* QFileIconProvider_vdata(const VirtualQFileIconProvider* self);
void QFileIconProvider_setVdata(VirtualQFileIconProvider* self, void* vdata);

VirtualQFileIconProvider* QFileIconProvider_new(const QFileIconProvider_VTable* vtbl, void* vdata);

QIcon* QFileIconProvider_icon(const QFileIconProvider* self, int type);
QIcon* QFileIconProvider_iconWithInfo(const QFileIconProvider* self, QFileInfo* info);
struct miqt_string QFileIconProvider_type(const QFileIconProvider* self, QFileInfo* info);
void QFileIconProvider_setOptions(QFileIconProvider* self, int options);
int QFileIconProvider_options(const QFileIconProvider* self);

QIcon* QFileIconProvider_virtualbase_icon(const VirtualQFileIconProvider* self, int type);
QIcon* QFileIconProvider_virtualbase_iconWithInfo(const VirtualQFileIconProvider* self, QFileInfo* info);
struct miqt_string QFileIconProvider_virtualbase_type(const VirtualQFileIconProvider* self, QFileInfo* info);

void QFileIconProvider_delete(QFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
