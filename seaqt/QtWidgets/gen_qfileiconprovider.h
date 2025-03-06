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

struct QFileIconProvider_VTable {
	void (*destructor)(struct QFileIconProvider_VTable* vtbl, QFileIconProvider* self);
	QIcon* (*icon)(struct QFileIconProvider_VTable* vtbl, const QFileIconProvider* self, int type);
	QIcon* (*iconWithInfo)(struct QFileIconProvider_VTable* vtbl, const QFileIconProvider* self, QFileInfo* info);
	struct miqt_string (*type)(struct QFileIconProvider_VTable* vtbl, const QFileIconProvider* self, QFileInfo* param1);
	void (*setOptions)(struct QFileIconProvider_VTable* vtbl, QFileIconProvider* self, int options);
	int (*options)(struct QFileIconProvider_VTable* vtbl, const QFileIconProvider* self);
};
QFileIconProvider* QFileIconProvider_new(struct QFileIconProvider_VTable* vtbl);
void QFileIconProvider_virtbase(QFileIconProvider* src, QAbstractFileIconProvider** outptr_QAbstractFileIconProvider);
QIcon* QFileIconProvider_icon(const QFileIconProvider* self, int type);
QIcon* QFileIconProvider_iconWithInfo(const QFileIconProvider* self, QFileInfo* info);
QIcon* QFileIconProvider_virtualbase_icon(const void* self, int type);
QIcon* QFileIconProvider_virtualbase_iconWithInfo(const void* self, QFileInfo* info);
struct miqt_string QFileIconProvider_virtualbase_type(const void* self, QFileInfo* param1);
void QFileIconProvider_virtualbase_setOptions(void* self, int options);
int QFileIconProvider_virtualbase_options(const void* self);
void QFileIconProvider_delete(QFileIconProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
