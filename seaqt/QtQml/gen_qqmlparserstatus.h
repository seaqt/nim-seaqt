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

typedef struct VirtualQQmlParserStatus VirtualQQmlParserStatus;
typedef struct QQmlParserStatus_VTable{
	void (*destructor)(VirtualQQmlParserStatus* self);
	void (*classBegin)(VirtualQQmlParserStatus* self);
	void (*componentComplete)(VirtualQQmlParserStatus* self);
}QQmlParserStatus_VTable;

const QQmlParserStatus_VTable* QQmlParserStatus_vtbl(const VirtualQQmlParserStatus* self);
void* QQmlParserStatus_vdata(const VirtualQQmlParserStatus* self);
void QQmlParserStatus_setVdata(VirtualQQmlParserStatus* self, void* vdata);

VirtualQQmlParserStatus* QQmlParserStatus_new(const QQmlParserStatus_VTable* vtbl, void* vdata);

void QQmlParserStatus_classBegin(QQmlParserStatus* self);
void QQmlParserStatus_componentComplete(QQmlParserStatus* self);

void QQmlParserStatus_virtualbase_classBegin(VirtualQQmlParserStatus* self);
void QQmlParserStatus_virtualbase_componentComplete(VirtualQQmlParserStatus* self);

void QQmlParserStatus_delete(QQmlParserStatus* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
