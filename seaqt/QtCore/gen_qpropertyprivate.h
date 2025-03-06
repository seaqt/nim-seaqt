#pragma once
#ifndef SEAQT_QTCORE_GEN_QPROPERTYPRIVATE_H
#define SEAQT_QTCORE_GEN_QPROPERTYPRIVATE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QPropertyProxyBindingData;
class QUntypedPropertyData;
#else
typedef struct QPropertyProxyBindingData QPropertyProxyBindingData;
typedef struct QUntypedPropertyData QUntypedPropertyData;
#endif

void QUntypedPropertyData_delete(QUntypedPropertyData* self);

void QPropertyProxyBindingData_delete(QPropertyProxyBindingData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
