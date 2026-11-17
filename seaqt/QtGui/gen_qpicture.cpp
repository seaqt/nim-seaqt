#include <QIODevice>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPicture>
#include <QPoint>
#include <QRect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qpicture.h>
#include "gen_qpicture.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPicture final : public QPicture {
	const QPicture_VTable* vtbl;
public:
	friend void* QPicture_vdata(VirtualQPicture* self);
	friend VirtualQPicture* vdata_QPicture(void* vdata);

	VirtualQPicture(const QPicture_VTable* vtbl): QPicture(), vtbl(vtbl) {}
	VirtualQPicture(const QPicture_VTable* vtbl, const QPicture& from): QPicture(from), vtbl(vtbl) {}
	VirtualQPicture(const QPicture_VTable* vtbl, int formatVersion): QPicture(formatVersion), vtbl(vtbl) {}

	virtual ~VirtualQPicture() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPicture::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QPicture_virtualbase_devType(const VirtualQPicture* self);

	virtual void setData(const char* data, uint size) override {
		if (vtbl->setData == 0) {
			QPicture::setData(data, size);
			return;
		}

		const char* sigval1 = (const char*) data;
		uint size_ret = size;
		unsigned int sigval2 = static_cast<unsigned int>(size_ret);
		vtbl->setData(this, sigval1, sigval2);
	}

	friend void QPicture_virtualbase_setData(VirtualQPicture* self, const char* data, unsigned int size);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPicture::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QPicture_virtualbase_paintEngine(const VirtualQPicture* self);

	virtual int metric(QPaintDevice::PaintDeviceMetric m) const override {
		if (vtbl->metric == 0) {
			return QPicture::metric(m);
		}

		QPaintDevice::PaintDeviceMetric m_ret = m;
		int sigval1 = static_cast<int>(m_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPicture_virtualbase_metric(const VirtualQPicture* self, int m);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPicture::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QPicture_virtualbase_initPainter(const VirtualQPicture* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPicture::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QPicture_virtualbase_redirected(const VirtualQPicture* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPicture::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QPicture_virtualbase_sharedPainter(const VirtualQPicture* self);

};

VirtualQPicture* QPicture_new(const QPicture_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPicture>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPicture(vtbl) : nullptr;
}

VirtualQPicture* QPicture_new_from(const QPicture_VTable* vtbl, size_t vdata, QPicture* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPicture>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPicture(vtbl, *from) : nullptr;
}

VirtualQPicture* QPicture_new_formatVersion(const QPicture_VTable* vtbl, size_t vdata, int formatVersion) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPicture>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPicture(vtbl, static_cast<int>(formatVersion)) : nullptr;
}

void QPicture_virtbase(QPicture* src, QPaintDevice** outptr_QPaintDevice) {
	*outptr_QPaintDevice = static_cast<QPaintDevice*>(src);
}

bool QPicture_isNull(const QPicture* self) {
	return self->isNull();
}

int QPicture_devType(const QPicture* self) {
	return self->devType();
}

unsigned int QPicture_size(const QPicture* self) {
	uint _ret = self->size();
	return static_cast<unsigned int>(_ret);
}

const char* QPicture_data(const QPicture* self) {
	return (const char*) self->data();
}

void QPicture_setData(QPicture* self, const char* data, unsigned int size) {
	self->setData(data, static_cast<uint>(size));
}

bool QPicture_play(QPicture* self, QPainter* p) {
	return self->play(p);
}

bool QPicture_load_dev(QPicture* self, QIODevice* dev) {
	return self->load(dev);
}

bool QPicture_load_fileName(QPicture* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->load(fileName_QString);
}

bool QPicture_save_dev(QPicture* self, QIODevice* dev) {
	return self->save(dev);
}

bool QPicture_save_fileName(QPicture* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->save(fileName_QString);
}

QRect* QPicture_boundingRect(const QPicture* self) {
	return new QRect(self->boundingRect());
}

void QPicture_setBoundingRect(QPicture* self, QRect* r) {
	self->setBoundingRect(*r);
}

void QPicture_operatorAssign(QPicture* self, QPicture* from) {
	self->operator=(*from);
}

void QPicture_swap(QPicture* self, QPicture* other) {
	self->swap(*other);
}

void QPicture_detach(QPicture* self) {
	self->detach();
}

bool QPicture_isDetached(const QPicture* self) {
	return self->isDetached();
}

QPaintEngine* QPicture_paintEngine(const QPicture* self) {
	return self->paintEngine();
}

void* QPicture_vdata(VirtualQPicture* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPicture>()); }
VirtualQPicture* vdata_QPicture(void* vdata) { return reinterpret_cast<VirtualQPicture*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPicture>()); }

int QPicture_virtualbase_devType(const VirtualQPicture* self) {

	return self->QPicture::devType();
}

void QPicture_virtualbase_setData(VirtualQPicture* self, const char* data, unsigned int size) {

	self->QPicture::setData(data, static_cast<uint>(size));
}

QPaintEngine* QPicture_virtualbase_paintEngine(const VirtualQPicture* self) {

	return self->QPicture::paintEngine();
}

int QPicture_virtualbase_metric(const VirtualQPicture* self, int m) {

	return self->QPicture::metric(static_cast<VirtualQPicture::PaintDeviceMetric>(m));
}

void QPicture_virtualbase_initPainter(const VirtualQPicture* self, QPainter* painter) {

	self->QPicture::initPainter(painter);
}

QPaintDevice* QPicture_virtualbase_redirected(const VirtualQPicture* self, QPoint* offset) {

	return self->QPicture::redirected(offset);
}

QPainter* QPicture_virtualbase_sharedPainter(const VirtualQPicture* self) {

	return self->QPicture::sharedPainter();
}

void QPicture_delete(QPicture* self) {
	delete self;
}

