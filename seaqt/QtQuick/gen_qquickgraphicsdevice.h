#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKGRAPHICSDEVICE_H
#define SEAQT_QTQUICK_GEN_QQUICKGRAPHICSDEVICE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQuickGraphicsDevice;
#else
typedef struct QQuickGraphicsDevice QQuickGraphicsDevice;
#endif

QQuickGraphicsDevice* QQuickGraphicsDevice_new();
QQuickGraphicsDevice* QQuickGraphicsDevice_new2(QQuickGraphicsDevice* other);
void QQuickGraphicsDevice_operatorAssign(QQuickGraphicsDevice* self, QQuickGraphicsDevice* other);
bool QQuickGraphicsDevice_isNull(const QQuickGraphicsDevice* self);
QQuickGraphicsDevice* QQuickGraphicsDevice_fromPhysicalDevice(VkPhysicalDevice physicalDevice);
QQuickGraphicsDevice* QQuickGraphicsDevice_fromDeviceObjects(VkPhysicalDevice physicalDevice, VkDevice device, int queueFamilyIndex);
QQuickGraphicsDevice* QQuickGraphicsDevice_fromDeviceObjects4(VkPhysicalDevice physicalDevice, VkDevice device, int queueFamilyIndex, int queueIndex);
void QQuickGraphicsDevice_delete(QQuickGraphicsDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
