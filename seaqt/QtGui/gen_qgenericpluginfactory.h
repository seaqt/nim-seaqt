#pragma once
#ifndef SEAQT_QTGUI_GEN_QGENERICPLUGINFACTORY_H
#define SEAQT_QTGUI_GEN_QGENERICPLUGINFACTORY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QGenericPluginFactory;
class QObject;
#else
typedef struct QGenericPluginFactory QGenericPluginFactory;
typedef struct QObject QObject;
#endif

struct seaqt_array /* of struct seaqt_string */  QGenericPluginFactory_keys();
QObject* QGenericPluginFactory_create(struct seaqt_string param1, struct seaqt_string param2);

void QGenericPluginFactory_delete(QGenericPluginFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
