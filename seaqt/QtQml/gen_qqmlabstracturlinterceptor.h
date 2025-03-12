#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLABSTRACTURLINTERCEPTOR_H
#define SEAQT_QTQML_GEN_QQMLABSTRACTURLINTERCEPTOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQmlAbstractUrlInterceptor;
class QUrl;
#else
typedef struct QQmlAbstractUrlInterceptor QQmlAbstractUrlInterceptor;
typedef struct QUrl QUrl;
#endif

typedef struct VirtualQQmlAbstractUrlInterceptor VirtualQQmlAbstractUrlInterceptor;
typedef struct QQmlAbstractUrlInterceptor_VTable{
	void (*destructor)(VirtualQQmlAbstractUrlInterceptor* self);
	QUrl* (*intercept)(VirtualQQmlAbstractUrlInterceptor* self, QUrl* path, int type);
}QQmlAbstractUrlInterceptor_VTable;

const QQmlAbstractUrlInterceptor_VTable* QQmlAbstractUrlInterceptor_vtbl(const VirtualQQmlAbstractUrlInterceptor* self);
void* QQmlAbstractUrlInterceptor_vdata(const VirtualQQmlAbstractUrlInterceptor* self);
void QQmlAbstractUrlInterceptor_setVdata(VirtualQQmlAbstractUrlInterceptor* self, void* vdata);

VirtualQQmlAbstractUrlInterceptor* QQmlAbstractUrlInterceptor_new(const QQmlAbstractUrlInterceptor_VTable* vtbl, void* vdata);

QUrl* QQmlAbstractUrlInterceptor_intercept(QQmlAbstractUrlInterceptor* self, QUrl* path, int type);
void QQmlAbstractUrlInterceptor_operatorAssign(QQmlAbstractUrlInterceptor* self, QQmlAbstractUrlInterceptor* param1);

QUrl* QQmlAbstractUrlInterceptor_virtualbase_intercept(VirtualQQmlAbstractUrlInterceptor* self, QUrl* path, int type);

void QQmlAbstractUrlInterceptor_delete(QQmlAbstractUrlInterceptor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
