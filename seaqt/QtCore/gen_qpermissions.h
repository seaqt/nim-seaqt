#pragma once
#ifndef SEAQT_QTCORE_GEN_QPERMISSIONS_H
#define SEAQT_QTCORE_GEN_QPERMISSIONS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaType;
class QPermission;
#else
typedef struct QMetaType QMetaType;
typedef struct QPermission QPermission;
#endif

QPermission* QPermission_new();
QPermission* QPermission_new_from(QPermission* from);

int QPermission_status(const QPermission* self);
QMetaType* QPermission_type(const QPermission* self);
void QPermission_operatorAssign(QPermission* self, QPermission* from);

void QPermission_delete(QPermission* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
