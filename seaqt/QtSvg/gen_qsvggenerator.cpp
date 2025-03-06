#include <QIODevice>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPoint>
#include <QRect>
#include <QRectF>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSvgGenerator>
#include <qsvggenerator.h>
#include "gen_qsvggenerator.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSvgGenerator final : public QSvgGenerator {
	struct QSvgGenerator_VTable* vtbl;
public:

	VirtualQSvgGenerator(struct QSvgGenerator_VTable* vtbl): QSvgGenerator(), vtbl(vtbl) {};

	virtual ~VirtualQSvgGenerator() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSvgGenerator::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QSvgGenerator_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric metric) const override {
		if (vtbl->metric == 0) {
			return QSvgGenerator::metric(metric);
		}

		QPaintDevice::PaintDeviceMetric metric_ret = metric;
		int sigval1 = static_cast<int>(metric_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgGenerator_virtualbase_metric(const void* self, int metric);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSvgGenerator::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgGenerator_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSvgGenerator::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QSvgGenerator_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSvgGenerator::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSvgGenerator_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSvgGenerator::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QSvgGenerator_virtualbase_sharedPainter(const void* self);

};

QSvgGenerator* QSvgGenerator_new(struct QSvgGenerator_VTable* vtbl) {
	return new VirtualQSvgGenerator(vtbl);
}

void QSvgGenerator_virtbase(QSvgGenerator* src, QPaintDevice** outptr_QPaintDevice) {
	*outptr_QPaintDevice = static_cast<QPaintDevice*>(src);
}

struct miqt_string QSvgGenerator_title(const QSvgGenerator* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSvgGenerator_setTitle(QSvgGenerator* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setTitle(title_QString);
}

struct miqt_string QSvgGenerator_description(const QSvgGenerator* self) {
	QString _ret = self->description();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSvgGenerator_setDescription(QSvgGenerator* self, struct miqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->setDescription(description_QString);
}

QSize* QSvgGenerator_size(const QSvgGenerator* self) {
	return new QSize(self->size());
}

void QSvgGenerator_setSize(QSvgGenerator* self, QSize* size) {
	self->setSize(*size);
}

QRect* QSvgGenerator_viewBox(const QSvgGenerator* self) {
	return new QRect(self->viewBox());
}

QRectF* QSvgGenerator_viewBoxF(const QSvgGenerator* self) {
	return new QRectF(self->viewBoxF());
}

void QSvgGenerator_setViewBox(QSvgGenerator* self, QRect* viewBox) {
	self->setViewBox(*viewBox);
}

void QSvgGenerator_setViewBoxWithViewBox(QSvgGenerator* self, QRectF* viewBox) {
	self->setViewBox(*viewBox);
}

struct miqt_string QSvgGenerator_fileName(const QSvgGenerator* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSvgGenerator_setFileName(QSvgGenerator* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setFileName(fileName_QString);
}

QIODevice* QSvgGenerator_outputDevice(const QSvgGenerator* self) {
	return self->outputDevice();
}

void QSvgGenerator_setOutputDevice(QSvgGenerator* self, QIODevice* outputDevice) {
	self->setOutputDevice(outputDevice);
}

void QSvgGenerator_setResolution(QSvgGenerator* self, int dpi) {
	self->setResolution(static_cast<int>(dpi));
}

int QSvgGenerator_resolution(const QSvgGenerator* self) {
	return self->resolution();
}

QPaintEngine* QSvgGenerator_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQSvgGenerator*)(self) )->QSvgGenerator::paintEngine();

}

int QSvgGenerator_virtualbase_metric(const void* self, int metric) {

	return ( (const VirtualQSvgGenerator*)(self) )->QSvgGenerator::metric(static_cast<VirtualQSvgGenerator::PaintDeviceMetric>(metric));

}

int QSvgGenerator_virtualbase_devType(const void* self) {

	return ( (const VirtualQSvgGenerator*)(self) )->QSvgGenerator::devType();

}

void QSvgGenerator_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQSvgGenerator*)(self) )->QSvgGenerator::initPainter(painter);

}

QPaintDevice* QSvgGenerator_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQSvgGenerator*)(self) )->QSvgGenerator::redirected(offset);

}

QPainter* QSvgGenerator_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQSvgGenerator*)(self) )->QSvgGenerator::sharedPainter();

}

void QSvgGenerator_delete(QSvgGenerator* self) {
	delete self;
}

