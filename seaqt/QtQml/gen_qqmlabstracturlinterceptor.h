#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLABSTRACTURLINTERCEPTOR_H
#define SEAQT_QTQML_GEN_QQMLABSTRACTURLINTERCEPTOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

void* QQmlAbstractUrlInterceptor_vdata(VirtualQQmlAbstractUrlInterceptor* self);
VirtualQQmlAbstractUrlInterceptor* vdata_QQmlAbstractUrlInterceptor(void* vdata);

VirtualQQmlAbstractUrlInterceptor* QQmlAbstractUrlInterceptor_new(const QQmlAbstractUrlInterceptor_VTable* vtbl, size_t vdata);

QUrl* QQmlAbstractUrlInterceptor_intercept(QQmlAbstractUrlInterceptor* self, QUrl* path, int type);
void QQmlAbstractUrlInterceptor_operatorAssign(QQmlAbstractUrlInterceptor* self, QQmlAbstractUrlInterceptor* from);

QUrl* QQmlAbstractUrlInterceptor_virtualbase_intercept(VirtualQQmlAbstractUrlInterceptor* self, QUrl* path, int type);

void QQmlAbstractUrlInterceptor_delete(QQmlAbstractUrlInterceptor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
