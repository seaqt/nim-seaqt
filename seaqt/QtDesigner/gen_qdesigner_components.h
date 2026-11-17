#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_QDESIGNER_COMPONENTS_H
#define SEAQT_QTDESIGNER_GEN_QDESIGNER_COMPONENTS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerComponents;
#else
typedef struct QDesignerComponents QDesignerComponents;
#endif

void QDesignerComponents_initializeResources();

void QDesignerComponents_delete(QDesignerComponents* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
