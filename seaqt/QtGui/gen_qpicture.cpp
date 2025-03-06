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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQPicture final : public QPicture {
	struct QPicture_VTable* vtbl;
public:

	VirtualQPicture(struct QPicture_VTable* vtbl): QPicture(), vtbl(vtbl) {};
	VirtualQPicture(struct QPicture_VTable* vtbl, const QPicture& param1): QPicture(param1), vtbl(vtbl) {};
	VirtualQPicture(struct QPicture_VTable* vtbl, int formatVersion): QPicture(formatVersion), vtbl(vtbl) {};

	virtual ~VirtualQPicture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPicture::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPicture_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setData(const char* data, uint size) override {
		if (vtbl->setData == 0) {
			QPicture::setData(data, size);
			return;
		}

		const char* sigval1 = (const char*) data;
		uint size_ret = size;
		unsigned int sigval2 = static_cast<unsigned int>(size_ret);

		vtbl->setData(vtbl, this, sigval1, sigval2);

	}

	friend void QPicture_virtualbase_setData(void* self, const char* data, unsigned int size);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPicture::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QPicture_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric m) const override {
		if (vtbl->metric == 0) {
			return QPicture::metric(m);
		}

		QPaintDevice::PaintDeviceMetric m_ret = m;
		int sigval1 = static_cast<int>(m_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPicture_virtualbase_metric(const void* self, int m);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPicture::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QPicture_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPicture::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPicture_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPicture::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QPicture_virtualbase_sharedPainter(const void* self);

};

QPicture* QPicture_new(struct QPicture_VTable* vtbl) {
	return new VirtualQPicture(vtbl);
}

QPicture* QPicture_new2(struct QPicture_VTable* vtbl, QPicture* param1) {
	return new VirtualQPicture(vtbl, *param1);
}

QPicture* QPicture_new3(struct QPicture_VTable* vtbl, int formatVersion) {
	return new VirtualQPicture(vtbl, static_cast<int>(formatVersion));
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

bool QPicture_load(QPicture* self, QIODevice* dev) {
	return self->load(dev);
}

bool QPicture_loadWithFileName(QPicture* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->load(fileName_QString);
}

bool QPicture_save(QPicture* self, QIODevice* dev) {
	return self->save(dev);
}

bool QPicture_saveWithFileName(QPicture* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->save(fileName_QString);
}

QRect* QPicture_boundingRect(const QPicture* self) {
	return new QRect(self->boundingRect());
}

void QPicture_setBoundingRect(QPicture* self, QRect* r) {
	self->setBoundingRect(*r);
}

void QPicture_operatorAssign(QPicture* self, QPicture* p) {
	self->operator=(*p);
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

int QPicture_virtualbase_devType(const void* self) {

	return ( (const VirtualQPicture*)(self) )->QPicture::devType();

}

void QPicture_virtualbase_setData(void* self, const char* data, unsigned int size) {

	( (VirtualQPicture*)(self) )->QPicture::setData(data, static_cast<uint>(size));

}

QPaintEngine* QPicture_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQPicture*)(self) )->QPicture::paintEngine();

}

int QPicture_virtualbase_metric(const void* self, int m) {

	return ( (const VirtualQPicture*)(self) )->QPicture::metric(static_cast<VirtualQPicture::PaintDeviceMetric>(m));

}

void QPicture_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQPicture*)(self) )->QPicture::initPainter(painter);

}

QPaintDevice* QPicture_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQPicture*)(self) )->QPicture::redirected(offset);

}

QPainter* QPicture_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQPicture*)(self) )->QPicture::sharedPainter();

}

void QPicture_delete(QPicture* self) {
	delete self;
}

