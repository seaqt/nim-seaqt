#pragma once
#ifndef SEAQT_QTGUI_GEN_QABSTRACTFILEICONPROVIDER_H
#define SEAQT_QTGUI_GEN_QABSTRACTFILEICONPROVIDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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
	QIcon* (*icon_QAbstractFileIconProvider_IconType)(const VirtualQAbstractFileIconProvider* self, int param1);
	QIcon* (*icon_QFileInfo)(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);
	struct seaqt_string (*type)(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);
	void (*setOptions)(VirtualQAbstractFileIconProvider* self, int options);
	int (*options)(const VirtualQAbstractFileIconProvider* self);
}QAbstractFileIconProvider_VTable;

void* QAbstractFileIconProvider_vdata(VirtualQAbstractFileIconProvider* self);
VirtualQAbstractFileIconProvider* vdata_QAbstractFileIconProvider(void* vdata);

VirtualQAbstractFileIconProvider* QAbstractFileIconProvider_new(const QAbstractFileIconProvider_VTable* vtbl, size_t vdata);

QIcon* QAbstractFileIconProvider_icon_QAbstractFileIconProvider_IconType(const QAbstractFileIconProvider* self, int param1);
QIcon* QAbstractFileIconProvider_icon_QFileInfo(const QAbstractFileIconProvider* self, QFileInfo* param1);
struct seaqt_string QAbstractFileIconProvider_type(const QAbstractFileIconProvider* self, QFileInfo* param1);
void QAbstractFileIconProvider_setOptions(QAbstractFileIconProvider* self, int options);
int QAbstractFileIconProvider_options(const QAbstractFileIconProvider* self);

QIcon* QAbstractFileIconProvider_virtualbase_icon_QAbstractFileIconProvider_IconType(const VirtualQAbstractFileIconProvider* self, int param1);
QIcon* QAbstractFileIconProvider_virtualbase_icon_QFileInfo(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);
struct seaqt_string QAbstractFileIconProvider_virtualbase_type(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);
void QAbstractFileIconProvider_virtualbase_setOptions(VirtualQAbstractFileIconProvider* self, int options);
int QAbstractFileIconProvider_virtualbase_options(const VirtualQAbstractFileIconProvider* self);

void QAbstractFileIconProvider_delete(QAbstractFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
