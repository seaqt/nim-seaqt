#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLPARSERSTATUS_H
#define SEAQT_QTQML_GEN_QQMLPARSERSTATUS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQmlParserStatus;
#else
typedef struct QQmlParserStatus QQmlParserStatus;
#endif

struct QQmlParserStatus_VTable {
	void (*destructor)(struct QQmlParserStatus_VTable* vtbl, QQmlParserStatus* self);
	void (*classBegin)(struct QQmlParserStatus_VTable* vtbl, QQmlParserStatus* self);
	void (*componentComplete)(struct QQmlParserStatus_VTable* vtbl, QQmlParserStatus* self);
};
QQmlParserStatus* QQmlParserStatus_new(struct QQmlParserStatus_VTable* vtbl);
void QQmlParserStatus_classBegin(QQmlParserStatus* self);
void QQmlParserStatus_componentComplete(QQmlParserStatus* self);
void QQmlParserStatus_virtualbase_classBegin(void* self);
void QQmlParserStatus_virtualbase_componentComplete(void* self);
void QQmlParserStatus_delete(QQmlParserStatus* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
