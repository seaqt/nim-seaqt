#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTFORMEDITORPLUGIN_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTFORMEDITORPLUGIN_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
class QDesignerFormEditorPluginInterface;
#else
typedef struct QAction QAction;
typedef struct QDesignerFormEditorPluginInterface QDesignerFormEditorPluginInterface;
#endif

bool QDesignerFormEditorPluginInterface_isInitialized(const QDesignerFormEditorPluginInterface* self);
QAction* QDesignerFormEditorPluginInterface_action(const QDesignerFormEditorPluginInterface* self);

void QDesignerFormEditorPluginInterface_delete(QDesignerFormEditorPluginInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
