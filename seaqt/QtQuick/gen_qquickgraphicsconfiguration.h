#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKGRAPHICSCONFIGURATION_H
#define SEAQT_QTQUICK_GEN_QQUICKGRAPHICSCONFIGURATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQuickGraphicsConfiguration;
#else
typedef struct QQuickGraphicsConfiguration QQuickGraphicsConfiguration;
#endif

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new();
QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new_from(QQuickGraphicsConfiguration* from);

void QQuickGraphicsConfiguration_operatorAssign(QQuickGraphicsConfiguration* self, QQuickGraphicsConfiguration* from);
struct seaqt_array /* of struct seaqt_string */  QQuickGraphicsConfiguration_preferredInstanceExtensions();
void QQuickGraphicsConfiguration_setDeviceExtensions(QQuickGraphicsConfiguration* self, struct seaqt_array /* of struct seaqt_string */  extensions);
struct seaqt_array /* of struct seaqt_string */  QQuickGraphicsConfiguration_deviceExtensions(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_setDepthBufferFor2D(QQuickGraphicsConfiguration* self, bool enable);
bool QQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_setDebugLayer(QQuickGraphicsConfiguration* self, bool enable);
bool QQuickGraphicsConfiguration_isDebugLayerEnabled(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_setDebugMarkers(QQuickGraphicsConfiguration* self, bool enable);
bool QQuickGraphicsConfiguration_isDebugMarkersEnabled(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_setPreferSoftwareDevice(QQuickGraphicsConfiguration* self, bool enable);
bool QQuickGraphicsConfiguration_prefersSoftwareDevice(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_setAutomaticPipelineCache(QQuickGraphicsConfiguration* self, bool enable);
bool QQuickGraphicsConfiguration_isAutomaticPipelineCacheEnabled(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_setPipelineCacheSaveFile(QQuickGraphicsConfiguration* self, struct seaqt_string filename);
struct seaqt_string QQuickGraphicsConfiguration_pipelineCacheSaveFile(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_setPipelineCacheLoadFile(QQuickGraphicsConfiguration* self, struct seaqt_string filename);
struct seaqt_string QQuickGraphicsConfiguration_pipelineCacheLoadFile(const QQuickGraphicsConfiguration* self);

void QQuickGraphicsConfiguration_delete(QQuickGraphicsConfiguration* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
