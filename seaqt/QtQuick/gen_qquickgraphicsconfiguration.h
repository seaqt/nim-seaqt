#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKGRAPHICSCONFIGURATION_H
#define SEAQT_QTQUICK_GEN_QQUICKGRAPHICSCONFIGURATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQuickGraphicsConfiguration;
#else
typedef struct QQuickGraphicsConfiguration QQuickGraphicsConfiguration;
#endif

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new();
QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new2(QQuickGraphicsConfiguration* other);
void QQuickGraphicsConfiguration_operatorAssign(QQuickGraphicsConfiguration* self, QQuickGraphicsConfiguration* other);
void QQuickGraphicsConfiguration_setDepthBufferFor2D(QQuickGraphicsConfiguration* self, bool enable);
bool QQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_delete(QQuickGraphicsConfiguration* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
