#include <QQuickGraphicsDevice>
#include <qquickgraphicsdevice.h>
#include "gen_qquickgraphicsdevice.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QQuickGraphicsDevice* QQuickGraphicsDevice_new() {
	return new QQuickGraphicsDevice();
}

QQuickGraphicsDevice* QQuickGraphicsDevice_new2(QQuickGraphicsDevice* other) {
	return new QQuickGraphicsDevice(*other);
}

void QQuickGraphicsDevice_operatorAssign(QQuickGraphicsDevice* self, QQuickGraphicsDevice* other) {
	self->operator=(*other);
}

bool QQuickGraphicsDevice_isNull(const QQuickGraphicsDevice* self) {
	return self->isNull();
}

QQuickGraphicsDevice* QQuickGraphicsDevice_fromPhysicalDevice(VkPhysicalDevice physicalDevice) {
	return new QQuickGraphicsDevice(QQuickGraphicsDevice::fromPhysicalDevice(physicalDevice));
}

QQuickGraphicsDevice* QQuickGraphicsDevice_fromDeviceObjects(VkPhysicalDevice physicalDevice, VkDevice device, int queueFamilyIndex) {
	return new QQuickGraphicsDevice(QQuickGraphicsDevice::fromDeviceObjects(physicalDevice, device, static_cast<int>(queueFamilyIndex)));
}

QQuickGraphicsDevice* QQuickGraphicsDevice_fromDeviceObjects4(VkPhysicalDevice physicalDevice, VkDevice device, int queueFamilyIndex, int queueIndex) {
	return new QQuickGraphicsDevice(QQuickGraphicsDevice::fromDeviceObjects(physicalDevice, device, static_cast<int>(queueFamilyIndex), static_cast<int>(queueIndex)));
}

void QQuickGraphicsDevice_delete(QQuickGraphicsDevice* self) {
	delete self;
}

