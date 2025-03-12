#pragma once
#ifndef SEAQT_QTGUI_GEN_QABSTRACTFILEICONPROVIDER_H
#define SEAQT_QTGUI_GEN_QABSTRACTFILEICONPROVIDER_H

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
class QFileInfo;
class QIcon;
#else
typedef struct QAbstractFileIconProvider QAbstractFileIconProvider;
typedef struct QFileInfo QFileInfo;
typedef struct QIcon QIcon;
#endif

typedef struct VirtualQAbstractFileIconProvider VirtualQAbstractFileIconProvider;
typedef struct QAbstractFileIconProvider_VTable{
	void (*destructor)(VirtualQAbstractFileIconProvider* self);
	QIcon* (*icon)(const VirtualQAbstractFileIconProvider* self, int param1);
	QIcon* (*iconWithQFileInfo)(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);
	struct miqt_string (*type)(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);
	void (*setOptions)(VirtualQAbstractFileIconProvider* self, int options);
	int (*options)(const VirtualQAbstractFileIconProvider* self);
}QAbstractFileIconProvider_VTable;

const QAbstractFileIconProvider_VTable* QAbstractFileIconProvider_vtbl(const VirtualQAbstractFileIconProvider* self);
void* QAbstractFileIconProvider_vdata(const VirtualQAbstractFileIconProvider* self);
void QAbstractFileIconProvider_setVdata(VirtualQAbstractFileIconProvider* self, void* vdata);

VirtualQAbstractFileIconProvider* QAbstractFileIconProvider_new(const QAbstractFileIconProvider_VTable* vtbl, void* vdata);

QIcon* QAbstractFileIconProvider_icon(const QAbstractFileIconProvider* self, int param1);
QIcon* QAbstractFileIconProvider_iconWithQFileInfo(const QAbstractFileIconProvider* self, QFileInfo* param1);
struct miqt_string QAbstractFileIconProvider_type(const QAbstractFileIconProvider* self, QFileInfo* param1);
void QAbstractFileIconProvider_setOptions(QAbstractFileIconProvider* self, int options);
int QAbstractFileIconProvider_options(const QAbstractFileIconProvider* self);

QIcon* QAbstractFileIconProvider_virtualbase_icon(const VirtualQAbstractFileIconProvider* self, int param1);
QIcon* QAbstractFileIconProvider_virtualbase_iconWithQFileInfo(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);
struct miqt_string QAbstractFileIconProvider_virtualbase_type(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);
void QAbstractFileIconProvider_virtualbase_setOptions(VirtualQAbstractFileIconProvider* self, int options);
int QAbstractFileIconProvider_virtualbase_options(const VirtualQAbstractFileIconProvider* self);

void QAbstractFileIconProvider_delete(QAbstractFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
