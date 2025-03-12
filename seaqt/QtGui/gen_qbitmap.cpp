#include <QBitmap>
#include <QImage>
#include <QMatrix>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPixmap>
#include <QPoint>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTransform>
#include <QVariant>
#include <qbitmap.h>
#include "gen_qbitmap.h"
class VirtualQBitmap final : public QBitmap {
	const QBitmap_VTable* vtbl;
	void* vdata;
public:
	friend const QBitmap_VTable* QBitmap_vtbl(const VirtualQBitmap* self);
	friend void* QBitmap_vdata(const VirtualQBitmap* self);
	friend void QBitmap_setVdata(VirtualQBitmap* self, void* vdata);

	VirtualQBitmap(const QBitmap_VTable* vtbl, void* vdata): QBitmap(), vtbl(vtbl), vdata(vdata) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, void* vdata, const QPixmap& param1): QBitmap(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, void* vdata, int w, int h): QBitmap(w, h), vtbl(vtbl), vdata(vdata) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, void* vdata, const QSize& param1): QBitmap(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, void* vdata, const QString& fileName): QBitmap(fileName), vtbl(vtbl), vdata(vdata) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, void* vdata, const QBitmap& other): QBitmap(other), vtbl(vtbl), vdata(vdata) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, void* vdata, const QString& fileName, const char* format): QBitmap(fileName, format), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQBitmap() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QBitmap::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QBitmap_virtualbase_devType(const VirtualQBitmap* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QBitmap::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QBitmap_virtualbase_paintEngine(const VirtualQBitmap* self);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QBitmap::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QBitmap_virtualbase_metric(const VirtualQBitmap* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QBitmap::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QBitmap_virtualbase_initPainter(const VirtualQBitmap* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QBitmap::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QBitmap_virtualbase_redirected(const VirtualQBitmap* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QBitmap::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QBitmap_virtualbase_sharedPainter(const VirtualQBitmap* self);

};

VirtualQBitmap* QBitmap_new(const QBitmap_VTable* vtbl, void* vdata) {
	return new VirtualQBitmap(vtbl, vdata);
}

VirtualQBitmap* QBitmap_new2(const QBitmap_VTable* vtbl, void* vdata, QPixmap* param1) {
	return new VirtualQBitmap(vtbl, vdata, *param1);
}

VirtualQBitmap* QBitmap_new3(const QBitmap_VTable* vtbl, void* vdata, int w, int h) {
	return new VirtualQBitmap(vtbl, vdata, static_cast<int>(w), static_cast<int>(h));
}

VirtualQBitmap* QBitmap_new4(const QBitmap_VTable* vtbl, void* vdata, QSize* param1) {
	return new VirtualQBitmap(vtbl, vdata, *param1);
}

VirtualQBitmap* QBitmap_new5(const QBitmap_VTable* vtbl, void* vdata, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQBitmap(vtbl, vdata, fileName_QString);
}

VirtualQBitmap* QBitmap_new6(const QBitmap_VTable* vtbl, void* vdata, QBitmap* other) {
	return new VirtualQBitmap(vtbl, vdata, *other);
}

VirtualQBitmap* QBitmap_new7(const QBitmap_VTable* vtbl, void* vdata, struct miqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQBitmap(vtbl, vdata, fileName_QString, format);
}

void QBitmap_virtbase(QBitmap* src, QPixmap** outptr_QPixmap) {
	*outptr_QPixmap = static_cast<QPixmap*>(src);
}

void QBitmap_operatorAssign(QBitmap* self, QBitmap* other) {
	self->operator=(*other);
}

void QBitmap_operatorAssignWithQPixmap(QBitmap* self, QPixmap* param1) {
	self->operator=(*param1);
}

void QBitmap_swap(QBitmap* self, QBitmap* other) {
	self->swap(*other);
}

QVariant* QBitmap_ToQVariant(const QBitmap* self) {
	return new QVariant(self->operator QVariant());
}

void QBitmap_clear(QBitmap* self) {
	self->clear();
}

QBitmap* QBitmap_fromImage(QImage* image) {
	return new QBitmap(QBitmap::fromImage(*image));
}

QBitmap* QBitmap_fromData(QSize* size, const unsigned char* bits) {
	return new QBitmap(QBitmap::fromData(*size, static_cast<const uchar*>(bits)));
}

QBitmap* QBitmap_transformed(const QBitmap* self, QMatrix* param1) {
	return new QBitmap(self->transformed(*param1));
}

QBitmap* QBitmap_transformedWithMatrix(const QBitmap* self, QTransform* matrix) {
	return new QBitmap(self->transformed(*matrix));
}

QBitmap* QBitmap_fromImage2(QImage* image, int flags) {
	return new QBitmap(QBitmap::fromImage(*image, static_cast<Qt::ImageConversionFlags>(flags)));
}

QBitmap* QBitmap_fromData3(QSize* size, const unsigned char* bits, int monoFormat) {
	return new QBitmap(QBitmap::fromData(*size, static_cast<const uchar*>(bits), static_cast<QImage::Format>(monoFormat)));
}

int QBitmap_virtualbase_devType(const VirtualQBitmap* self) {

	return self->QBitmap::devType();
}

QPaintEngine* QBitmap_virtualbase_paintEngine(const VirtualQBitmap* self) {

	return self->QBitmap::paintEngine();
}

int QBitmap_virtualbase_metric(const VirtualQBitmap* self, int param1) {

	return self->QBitmap::metric(static_cast<VirtualQBitmap::PaintDeviceMetric>(param1));
}

void QBitmap_virtualbase_initPainter(const VirtualQBitmap* self, QPainter* painter) {

	self->QBitmap::initPainter(painter);
}

QPaintDevice* QBitmap_virtualbase_redirected(const VirtualQBitmap* self, QPoint* offset) {

	return self->QBitmap::redirected(offset);
}

QPainter* QBitmap_virtualbase_sharedPainter(const VirtualQBitmap* self) {

	return self->QBitmap::sharedPainter();
}

const QBitmap_VTable* QBitmap_vtbl(const VirtualQBitmap* self) { return self->vtbl; }
void* QBitmap_vdata(const VirtualQBitmap* self) { return self->vdata; }
void QBitmap_setVdata(VirtualQBitmap* self, void* vdata) { self->vdata = vdata; }

void QBitmap_delete(QBitmap* self) {
	delete self;
}

