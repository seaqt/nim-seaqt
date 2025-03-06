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

struct QAbstractFileIconProvider_VTable {
	void (*destructor)(struct QAbstractFileIconProvider_VTable* vtbl, QAbstractFileIconProvider* self);
	QIcon* (*icon)(struct QAbstractFileIconProvider_VTable* vtbl, const QAbstractFileIconProvider* self, int param1);
	QIcon* (*iconWithQFileInfo)(struct QAbstractFileIconProvider_VTable* vtbl, const QAbstractFileIconProvider* self, QFileInfo* param1);
	struct miqt_string (*type)(struct QAbstractFileIconProvider_VTable* vtbl, const QAbstractFileIconProvider* self, QFileInfo* param1);
	void (*setOptions)(struct QAbstractFileIconProvider_VTable* vtbl, QAbstractFileIconProvider* self, int options);
	int (*options)(struct QAbstractFileIconProvider_VTable* vtbl, const QAbstractFileIconProvider* self);
};
QAbstractFileIconProvider* QAbstractFileIconProvider_new(struct QAbstractFileIconProvider_VTable* vtbl);
QIcon* QAbstractFileIconProvider_icon(const QAbstractFileIconProvider* self, int param1);
QIcon* QAbstractFileIconProvider_iconWithQFileInfo(const QAbstractFileIconProvider* self, QFileInfo* param1);
struct miqt_string QAbstractFileIconProvider_type(const QAbstractFileIconProvider* self, QFileInfo* param1);
void QAbstractFileIconProvider_setOptions(QAbstractFileIconProvider* self, int options);
int QAbstractFileIconProvider_options(const QAbstractFileIconProvider* self);
QIcon* QAbstractFileIconProvider_virtualbase_icon(const void* self, int param1);
QIcon* QAbstractFileIconProvider_virtualbase_iconWithQFileInfo(const void* self, QFileInfo* param1);
struct miqt_string QAbstractFileIconProvider_virtualbase_type(const void* self, QFileInfo* param1);
void QAbstractFileIconProvider_virtualbase_setOptions(void* self, int options);
int QAbstractFileIconProvider_virtualbase_options(const void* self);
void QAbstractFileIconProvider_delete(QAbstractFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
