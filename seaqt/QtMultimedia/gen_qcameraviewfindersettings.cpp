#include <QCameraViewfinderSettings>
#include <QSize>
#include <qcameraviewfindersettings.h>
#include "gen_qcameraviewfindersettings.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QCameraViewfinderSettings* QCameraViewfinderSettings_new() {
	return new (std::nothrow) QCameraViewfinderSettings();
}

QCameraViewfinderSettings* QCameraViewfinderSettings_new_from(QCameraViewfinderSettings* from) {
	return new (std::nothrow) QCameraViewfinderSettings(*from);
}

void QCameraViewfinderSettings_operatorAssign(QCameraViewfinderSettings* self, QCameraViewfinderSettings* from) {
	self->operator=(*from);
}

void QCameraViewfinderSettings_swap(QCameraViewfinderSettings* self, QCameraViewfinderSettings* other) {
	self->swap(*other);
}

bool QCameraViewfinderSettings_isNull(const QCameraViewfinderSettings* self) {
	return self->isNull();
}

QSize* QCameraViewfinderSettings_resolution(const QCameraViewfinderSettings* self) {
	return new QSize(self->resolution());
}

void QCameraViewfinderSettings_setResolution_resolution(QCameraViewfinderSettings* self, QSize* resolution) {
	self->setResolution(*resolution);
}

void QCameraViewfinderSettings_setResolution_width_height(QCameraViewfinderSettings* self, int width, int height) {
	self->setResolution(static_cast<int>(width), static_cast<int>(height));
}

double QCameraViewfinderSettings_minimumFrameRate(const QCameraViewfinderSettings* self) {
	qreal _ret = self->minimumFrameRate();
	return static_cast<double>(_ret);
}

void QCameraViewfinderSettings_setMinimumFrameRate(QCameraViewfinderSettings* self, double rate) {
	self->setMinimumFrameRate(static_cast<qreal>(rate));
}

double QCameraViewfinderSettings_maximumFrameRate(const QCameraViewfinderSettings* self) {
	qreal _ret = self->maximumFrameRate();
	return static_cast<double>(_ret);
}

void QCameraViewfinderSettings_setMaximumFrameRate(QCameraViewfinderSettings* self, double rate) {
	self->setMaximumFrameRate(static_cast<qreal>(rate));
}

int QCameraViewfinderSettings_pixelFormat(const QCameraViewfinderSettings* self) {
	QVideoFrame::PixelFormat _ret = self->pixelFormat();
	return static_cast<int>(_ret);
}

void QCameraViewfinderSettings_setPixelFormat(QCameraViewfinderSettings* self, int format) {
	self->setPixelFormat(static_cast<QVideoFrame::PixelFormat>(format));
}

QSize* QCameraViewfinderSettings_pixelAspectRatio(const QCameraViewfinderSettings* self) {
	return new QSize(self->pixelAspectRatio());
}

void QCameraViewfinderSettings_setPixelAspectRatio_ratio(QCameraViewfinderSettings* self, QSize* ratio) {
	self->setPixelAspectRatio(*ratio);
}

void QCameraViewfinderSettings_setPixelAspectRatio_horizontal_vertical(QCameraViewfinderSettings* self, int horizontal, int vertical) {
	self->setPixelAspectRatio(static_cast<int>(horizontal), static_cast<int>(vertical));
}

void QCameraViewfinderSettings_delete(QCameraViewfinderSettings* self) {
	delete self;
}

