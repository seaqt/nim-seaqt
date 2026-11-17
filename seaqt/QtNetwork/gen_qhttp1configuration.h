#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QHTTP1CONFIGURATION_H
#define SEAQT_QTNETWORK_GEN_QHTTP1CONFIGURATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QHttp1Configuration;
#else
typedef struct QHttp1Configuration QHttp1Configuration;
#endif

QHttp1Configuration* QHttp1Configuration_new();
QHttp1Configuration* QHttp1Configuration_new_from(QHttp1Configuration* from);

void QHttp1Configuration_operatorAssign(QHttp1Configuration* self, QHttp1Configuration* from);
void QHttp1Configuration_setNumberOfConnectionsPerHost(QHttp1Configuration* self, ptrdiff_t amount);
ptrdiff_t QHttp1Configuration_numberOfConnectionsPerHost(const QHttp1Configuration* self);
void QHttp1Configuration_swap(QHttp1Configuration* self, QHttp1Configuration* other);

void QHttp1Configuration_delete(QHttp1Configuration* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
