#pragma once
#ifndef SEAQT_QTCORE_GEN_QFACTORYINTERFACE_H
#define SEAQT_QTCORE_GEN_QFACTORYINTERFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QFactoryInterface;
#else
typedef struct QFactoryInterface QFactoryInterface;
#endif

struct miqt_array /* of struct miqt_string */  QFactoryInterface_keys(const QFactoryInterface* self);
void QFactoryInterface_delete(QFactoryInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
