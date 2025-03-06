#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGRENDERERINTERFACE_H
#define SEAQT_QTQUICK_GEN_QSGRENDERERINTERFACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQuickWindow;
class QSGRendererInterface;
#else
typedef struct QQuickWindow QQuickWindow;
typedef struct QSGRendererInterface QSGRendererInterface;
#endif

int QSGRendererInterface_graphicsApi(const QSGRendererInterface* self);
void* QSGRendererInterface_getResource(const QSGRendererInterface* self, QQuickWindow* window, int resource);
void* QSGRendererInterface_getResource2(const QSGRendererInterface* self, QQuickWindow* window, const char* resource);
int QSGRendererInterface_shaderType(const QSGRendererInterface* self);
int QSGRendererInterface_shaderCompilationType(const QSGRendererInterface* self);
int QSGRendererInterface_shaderSourceType(const QSGRendererInterface* self);
bool QSGRendererInterface_isApiRhiBased(int api);
void QSGRendererInterface_operatorAssign(QSGRendererInterface* self, QSGRendererInterface* param1);
void QSGRendererInterface_delete(QSGRendererInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
