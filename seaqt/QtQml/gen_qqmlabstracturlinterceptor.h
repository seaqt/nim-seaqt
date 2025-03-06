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

struct QQmlAbstractUrlInterceptor_VTable {
	void (*destructor)(struct QQmlAbstractUrlInterceptor_VTable* vtbl, QQmlAbstractUrlInterceptor* self);
	QUrl* (*intercept)(struct QQmlAbstractUrlInterceptor_VTable* vtbl, QQmlAbstractUrlInterceptor* self, QUrl* path, int type);
};
QQmlAbstractUrlInterceptor* QQmlAbstractUrlInterceptor_new(struct QQmlAbstractUrlInterceptor_VTable* vtbl);
QUrl* QQmlAbstractUrlInterceptor_intercept(QQmlAbstractUrlInterceptor* self, QUrl* path, int type);
void QQmlAbstractUrlInterceptor_operatorAssign(QQmlAbstractUrlInterceptor* self, QQmlAbstractUrlInterceptor* param1);
QUrl* QQmlAbstractUrlInterceptor_virtualbase_intercept(void* self, QUrl* path, int type);
void QQmlAbstractUrlInterceptor_delete(QQmlAbstractUrlInterceptor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
