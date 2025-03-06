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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQBitmap final : public QBitmap {
	struct QBitmap_VTable* vtbl;
public:

	VirtualQBitmap(struct QBitmap_VTable* vtbl): QBitmap(), vtbl(vtbl) {};
	VirtualQBitmap(struct QBitmap_VTable* vtbl, const QPixmap& param1): QBitmap(param1), vtbl(vtbl) {};
	VirtualQBitmap(struct QBitmap_VTable* vtbl, int w, int h): QBitmap(w, h), vtbl(vtbl) {};
	VirtualQBitmap(struct QBitmap_VTable* vtbl, const QSize& param1): QBitmap(param1), vtbl(vtbl) {};
	VirtualQBitmap(struct QBitmap_VTable* vtbl, const QString& fileName): QBitmap(fileName), vtbl(vtbl) {};
	VirtualQBitmap(struct QBitmap_VTable* vtbl, const QBitmap& other): QBitmap(other), vtbl(vtbl) {};
	VirtualQBitmap(struct QBitmap_VTable* vtbl, const QString& fileName, const char* format): QBitmap(fileName, format), vtbl(vtbl) {};

	virtual ~VirtualQBitmap() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QBitmap::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QBitmap_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QBitmap::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QBitmap_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QBitmap::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QBitmap_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QBitmap::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QBitmap_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QBitmap::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QBitmap_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QBitmap::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QBitmap_virtualbase_sharedPainter(const void* self);

};

QBitmap* QBitmap_new(struct QBitmap_VTable* vtbl) {
	return new VirtualQBitmap(vtbl);
}

QBitmap* QBitmap_new2(struct QBitmap_VTable* vtbl, QPixmap* param1) {
	return new VirtualQBitmap(vtbl, *param1);
}

QBitmap* QBitmap_new3(struct QBitmap_VTable* vtbl, int w, int h) {
	return new VirtualQBitmap(vtbl, static_cast<int>(w), static_cast<int>(h));
}

QBitmap* QBitmap_new4(struct QBitmap_VTable* vtbl, QSize* param1) {
	return new VirtualQBitmap(vtbl, *param1);
}

QBitmap* QBitmap_new5(struct QBitmap_VTable* vtbl, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQBitmap(vtbl, fileName_QString);
}

QBitmap* QBitmap_new6(struct QBitmap_VTable* vtbl, QBitmap* other) {
	return new VirtualQBitmap(vtbl, *other);
}

QBitmap* QBitmap_new7(struct QBitmap_VTable* vtbl, struct miqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQBitmap(vtbl, fileName_QString, format);
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

int QBitmap_virtualbase_devType(const void* self) {

	return ( (const VirtualQBitmap*)(self) )->QBitmap::devType();

}

QPaintEngine* QBitmap_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQBitmap*)(self) )->QBitmap::paintEngine();

}

int QBitmap_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQBitmap*)(self) )->QBitmap::metric(static_cast<VirtualQBitmap::PaintDeviceMetric>(param1));

}

void QBitmap_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQBitmap*)(self) )->QBitmap::initPainter(painter);

}

QPaintDevice* QBitmap_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQBitmap*)(self) )->QBitmap::redirected(offset);

}

QPainter* QBitmap_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQBitmap*)(self) )->QBitmap::sharedPainter();

}

void QBitmap_delete(QBitmap* self) {
	delete self;
}

