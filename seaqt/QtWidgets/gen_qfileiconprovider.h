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
class QAbstractFileIconProvider;
class QFileIconProvider;
class QFileInfo;
class QIcon;
#else
typedef struct QAbstractFileIconProvider QAbstractFileIconProvider;
typedef struct QFileIconProvider QFileIconProvider;
typedef struct QFileInfo QFileInfo;
typedef struct QIcon QIcon;
#endif

typedef struct VirtualQFileIconProvider VirtualQFileIconProvider;
typedef struct QFileIconProvider_VTable{
	void (*destructor)(VirtualQFileIconProvider* self);
	QIcon* (*icon)(const VirtualQFileIconProvider* self, int type);
	QIcon* (*iconWithInfo)(const VirtualQFileIconProvider* self, QFileInfo* info);
	struct miqt_string (*type)(const VirtualQFileIconProvider* self, QFileInfo* param1);
	void (*setOptions)(VirtualQFileIconProvider* self, int options);
	int (*options)(const VirtualQFileIconProvider* self);
}QFileIconProvider_VTable;

const QFileIconProvider_VTable* QFileIconProvider_vtbl(const VirtualQFileIconProvider* self);
void* QFileIconProvider_vdata(const VirtualQFileIconProvider* self);
void QFileIconProvider_setVdata(VirtualQFileIconProvider* self, void* vdata);

VirtualQFileIconProvider* QFileIconProvider_new(const QFileIconProvider_VTable* vtbl, void* vdata);

void QFileIconProvider_virtbase(QFileIconProvider* src, QAbstractFileIconProvider** outptr_QAbstractFileIconProvider);
QIcon* QFileIconProvider_icon(const QFileIconProvider* self, int type);
QIcon* QFileIconProvider_iconWithInfo(const QFileIconProvider* self, QFileInfo* info);

QIcon* QFileIconProvider_virtualbase_icon(const VirtualQFileIconProvider* self, int type);
QIcon* QFileIconProvider_virtualbase_iconWithInfo(const VirtualQFileIconProvider* self, QFileInfo* info);
struct miqt_string QFileIconProvider_virtualbase_type(const VirtualQFileIconProvider* self, QFileInfo* param1);
void QFileIconProvider_virtualbase_setOptions(VirtualQFileIconProvider* self, int options);
int QFileIconProvider_virtualbase_options(const VirtualQFileIconProvider* self);

void QFileIconProvider_delete(QFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
