#include <QBitmap>
#include <QImage>
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

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQBitmap final : public QBitmap {
	const QBitmap_VTable* vtbl;
public:
	friend void* QBitmap_vdata(VirtualQBitmap* self);
	friend VirtualQBitmap* vdata_QBitmap(void* vdata);

	VirtualQBitmap(const QBitmap_VTable* vtbl): QBitmap(), vtbl(vtbl) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, const QPixmap& param1): QBitmap(param1), vtbl(vtbl) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, int w, int h): QBitmap(w, h), vtbl(vtbl) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, const QSize& param1): QBitmap(param1), vtbl(vtbl) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, const QString& fileName): QBitmap(fileName), vtbl(vtbl) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, const QBitmap& from): QBitmap(from), vtbl(vtbl) {}
	VirtualQBitmap(const QBitmap_VTable* vtbl, const QString& fileName, const char* format): QBitmap(fileName, format), vtbl(vtbl) {}

	virtual ~VirtualQBitmap() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQBitmap* QBitmap_new(const QBitmap_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQBitmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQBitmap(vtbl) : nullptr;
}

VirtualQBitmap* QBitmap_new_QPixmap(const QBitmap_VTable* vtbl, size_t vdata, QPixmap* param1) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQBitmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQBitmap(vtbl, *param1) : nullptr;
}

VirtualQBitmap* QBitmap_new_int_int(const QBitmap_VTable* vtbl, size_t vdata, int w, int h) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQBitmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQBitmap(vtbl, static_cast<int>(w), static_cast<int>(h)) : nullptr;
}

VirtualQBitmap* QBitmap_new_QSize(const QBitmap_VTable* vtbl, size_t vdata, QSize* param1) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQBitmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQBitmap(vtbl, *param1) : nullptr;
}

VirtualQBitmap* QBitmap_new_QString(const QBitmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQBitmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQBitmap(vtbl, fileName_QString) : nullptr;
}

VirtualQBitmap* QBitmap_new_QBitmap(const QBitmap_VTable* vtbl, size_t vdata, QBitmap* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQBitmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQBitmap(vtbl, *from) : nullptr;
}

VirtualQBitmap* QBitmap_new_QString_char(const QBitmap_VTable* vtbl, size_t vdata, struct seaqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQBitmap>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQBitmap(vtbl, fileName_QString, format) : nullptr;
}

void QBitmap_virtbase(QBitmap* src, QPixmap** outptr_QPixmap) {
	*outptr_QPixmap = static_cast<QPixmap*>(src);
}

void QBitmap_operatorAssign_QPixmap(QBitmap* self, QPixmap* param1) {
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

QBitmap* QBitmap_fromImage_image(QImage* image) {
	return new QBitmap(QBitmap::fromImage(*image));
}

QBitmap* QBitmap_fromData_size_bits(QSize* size, const unsigned char* bits) {
	return new QBitmap(QBitmap::fromData(*size, static_cast<const uchar*>(bits)));
}

QBitmap* QBitmap_fromPixmap(QPixmap* pixmap) {
	return new QBitmap(QBitmap::fromPixmap(*pixmap));
}

QBitmap* QBitmap_transformed(const QBitmap* self, QTransform* matrix) {
	return new QBitmap(self->transformed(*matrix));
}

void QBitmap_operatorAssign_QBitmap(QBitmap* self, QBitmap* from) {
	self->operator=(*from);
}

QBitmap* QBitmap_fromImage_image_flags(QImage* image, int flags) {
	return new QBitmap(QBitmap::fromImage(*image, static_cast<Qt::ImageConversionFlags>(flags)));
}

QBitmap* QBitmap_fromData_size_bits_monoFormat(QSize* size, const unsigned char* bits, int monoFormat) {
	return new QBitmap(QBitmap::fromData(*size, static_cast<const uchar*>(bits), static_cast<QImage::Format>(monoFormat)));
}

void* QBitmap_vdata(VirtualQBitmap* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQBitmap>()); }
VirtualQBitmap* vdata_QBitmap(void* vdata) { return reinterpret_cast<VirtualQBitmap*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQBitmap>()); }

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

void QBitmap_delete(QBitmap* self) {
	delete self;
}

