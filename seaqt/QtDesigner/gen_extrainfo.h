#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_EXTRAINFO_H
#define SEAQT_QTDESIGNER_GEN_EXTRAINFO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerExtraInfoExtension;
class QWidget;
#else
typedef struct QDesignerExtraInfoExtension QDesignerExtraInfoExtension;
typedef struct QWidget QWidget;
#endif

QWidget* QDesignerExtraInfoExtension_widget(const QDesignerExtraInfoExtension* self);
struct seaqt_string QDesignerExtraInfoExtension_workingDirectory(const QDesignerExtraInfoExtension* self);
void QDesignerExtraInfoExtension_setWorkingDirectory(QDesignerExtraInfoExtension* self, struct seaqt_string workingDirectory);

void QDesignerExtraInfoExtension_delete(QDesignerExtraInfoExtension* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
