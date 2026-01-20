#pragma once
#ifndef SEAQT_QTCORE_GEN_QFACTORYINTERFACE_H
#define SEAQT_QTCORE_GEN_QFACTORYINTERFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QFactoryInterface;
#else
typedef struct QFactoryInterface QFactoryInterface;
#endif

struct seaqt_array /* of struct seaqt_string */  QFactoryInterface_keys(const QFactoryInterface* self);

void QFactoryInterface_delete(QFactoryInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
