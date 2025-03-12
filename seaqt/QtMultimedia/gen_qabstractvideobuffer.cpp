#include <QAbstractPlanarVideoBuffer>
#include <QAbstractVideoBuffer>
#include <QVariant>
#include <qabstractvideobuffer.h>
#include "gen_qabstractvideobuffer.h"
class VirtualQAbstractVideoBuffer final : public QAbstractVideoBuffer {
	const QAbstractVideoBuffer_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractVideoBuffer_VTable* QAbstractVideoBuffer_vtbl(const VirtualQAbstractVideoBuffer* self);
	friend void* QAbstractVideoBuffer_vdata(const VirtualQAbstractVideoBuffer* self);
	friend void QAbstractVideoBuffer_setVdata(VirtualQAbstractVideoBuffer* self, void* vdata);

	VirtualQAbstractVideoBuffer(const QAbstractVideoBuffer_VTable* vtbl, void* vdata, QAbstractVideoBuffer::HandleType type): QAbstractVideoBuffer(type), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractVideoBuffer() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void release() override {
		if (vtbl->release == 0) {
			QAbstractVideoBuffer::release();
			return;
		}


		vtbl->release(this);

	}

	friend void QAbstractVideoBuffer_virtualbase_release(VirtualQAbstractVideoBuffer* self);

	virtual QAbstractVideoBuffer::MapMode mapMode() const override {
		if (vtbl->mapMode == 0) {
			return (QAbstractVideoBuffer::MapMode)(0); // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->mapMode(this);

		return static_cast<QAbstractVideoBuffer::MapMode>(callback_return_value);
	}

	virtual uchar* map(QAbstractVideoBuffer::MapMode mode, int* numBytes, int* bytesPerLine) override {
		if (vtbl->map == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QAbstractVideoBuffer::MapMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);
		int* sigval2 = numBytes;
		int* sigval3 = bytesPerLine;

		unsigned char* callback_return_value = vtbl->map(this, sigval1, sigval2, sigval3);

		return static_cast<uchar*>(callback_return_value);
	}

	virtual void unmap() override {
		if (vtbl->unmap == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->unmap(this);

	}

	virtual QVariant handle() const override {
		if (vtbl->handle == 0) {
			return QAbstractVideoBuffer::handle();
		}


		QVariant* callback_return_value = vtbl->handle(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractVideoBuffer_virtualbase_handle(const VirtualQAbstractVideoBuffer* self);

};

VirtualQAbstractVideoBuffer* QAbstractVideoBuffer_new(const QAbstractVideoBuffer_VTable* vtbl, void* vdata, int type) {
	return new VirtualQAbstractVideoBuffer(vtbl, vdata, static_cast<QAbstractVideoBuffer::HandleType>(type));
}

void QAbstractVideoBuffer_release(QAbstractVideoBuffer* self) {
	self->release();
}

int QAbstractVideoBuffer_handleType(const QAbstractVideoBuffer* self) {
	QAbstractVideoBuffer::HandleType _ret = self->handleType();
	return static_cast<int>(_ret);
}

int QAbstractVideoBuffer_mapMode(const QAbstractVideoBuffer* self) {
	QAbstractVideoBuffer::MapMode _ret = self->mapMode();
	return static_cast<int>(_ret);
}

unsigned char* QAbstractVideoBuffer_map(QAbstractVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine) {
	uchar* _ret = self->map(static_cast<QAbstractVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine));
	return static_cast<unsigned char*>(_ret);
}

void QAbstractVideoBuffer_unmap(QAbstractVideoBuffer* self) {
	self->unmap();
}

QVariant* QAbstractVideoBuffer_handle(const QAbstractVideoBuffer* self) {
	return new QVariant(self->handle());
}

void QAbstractVideoBuffer_virtualbase_release(VirtualQAbstractVideoBuffer* self) {

	self->QAbstractVideoBuffer::release();
}

QVariant* QAbstractVideoBuffer_virtualbase_handle(const VirtualQAbstractVideoBuffer* self) {

	return new QVariant(self->QAbstractVideoBuffer::handle());
}

const QAbstractVideoBuffer_VTable* QAbstractVideoBuffer_vtbl(const VirtualQAbstractVideoBuffer* self) { return self->vtbl; }
void* QAbstractVideoBuffer_vdata(const VirtualQAbstractVideoBuffer* self) { return self->vdata; }
void QAbstractVideoBuffer_setVdata(VirtualQAbstractVideoBuffer* self, void* vdata) { self->vdata = vdata; }

void QAbstractVideoBuffer_delete(QAbstractVideoBuffer* self) {
	delete self;
}

class VirtualQAbstractPlanarVideoBuffer final : public QAbstractPlanarVideoBuffer {
	const QAbstractPlanarVideoBuffer_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractPlanarVideoBuffer_VTable* QAbstractPlanarVideoBuffer_vtbl(const VirtualQAbstractPlanarVideoBuffer* self);
	friend void* QAbstractPlanarVideoBuffer_vdata(const VirtualQAbstractPlanarVideoBuffer* self);
	friend void QAbstractPlanarVideoBuffer_setVdata(VirtualQAbstractPlanarVideoBuffer* self, void* vdata);

	VirtualQAbstractPlanarVideoBuffer(const QAbstractPlanarVideoBuffer_VTable* vtbl, void* vdata, QAbstractVideoBuffer::HandleType type): QAbstractPlanarVideoBuffer(type), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractPlanarVideoBuffer() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual uchar* map(QAbstractVideoBuffer::MapMode mode, int* numBytes, int* bytesPerLine) override {
		if (vtbl->map == 0) {
			return QAbstractPlanarVideoBuffer::map(mode, numBytes, bytesPerLine);
		}

		QAbstractVideoBuffer::MapMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);
		int* sigval2 = numBytes;
		int* sigval3 = bytesPerLine;

		unsigned char* callback_return_value = vtbl->map(this, sigval1, sigval2, sigval3);

		return static_cast<uchar*>(callback_return_value);
	}

	friend unsigned char* QAbstractPlanarVideoBuffer_virtualbase_map(VirtualQAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine);

	virtual void release() override {
		if (vtbl->release == 0) {
			QAbstractPlanarVideoBuffer::release();
			return;
		}


		vtbl->release(this);

	}

	friend void QAbstractPlanarVideoBuffer_virtualbase_release(VirtualQAbstractPlanarVideoBuffer* self);

	virtual QAbstractVideoBuffer::MapMode mapMode() const override {
		if (vtbl->mapMode == 0) {
			return (QAbstractVideoBuffer::MapMode)(0); // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->mapMode(this);

		return static_cast<QAbstractVideoBuffer::MapMode>(callback_return_value);
	}

	virtual void unmap() override {
		if (vtbl->unmap == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->unmap(this);

	}

	virtual QVariant handle() const override {
		if (vtbl->handle == 0) {
			return QAbstractPlanarVideoBuffer::handle();
		}


		QVariant* callback_return_value = vtbl->handle(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractPlanarVideoBuffer_virtualbase_handle(const VirtualQAbstractPlanarVideoBuffer* self);

};

VirtualQAbstractPlanarVideoBuffer* QAbstractPlanarVideoBuffer_new(const QAbstractPlanarVideoBuffer_VTable* vtbl, void* vdata, int type) {
	return new VirtualQAbstractPlanarVideoBuffer(vtbl, vdata, static_cast<QAbstractVideoBuffer::HandleType>(type));
}

void QAbstractPlanarVideoBuffer_virtbase(QAbstractPlanarVideoBuffer* src, QAbstractVideoBuffer** outptr_QAbstractVideoBuffer) {
	*outptr_QAbstractVideoBuffer = static_cast<QAbstractVideoBuffer*>(src);
}

unsigned char* QAbstractPlanarVideoBuffer_map(QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine) {
	uchar* _ret = self->map(static_cast<QAbstractVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine));
	return static_cast<unsigned char*>(_ret);
}

unsigned char* QAbstractPlanarVideoBuffer_virtualbase_map(VirtualQAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine) {

	uchar* _ret = self->QAbstractPlanarVideoBuffer::map(static_cast<VirtualQAbstractPlanarVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine));
	return static_cast<unsigned char*>(_ret);
}

void QAbstractPlanarVideoBuffer_virtualbase_release(VirtualQAbstractPlanarVideoBuffer* self) {

	self->QAbstractPlanarVideoBuffer::release();
}

QVariant* QAbstractPlanarVideoBuffer_virtualbase_handle(const VirtualQAbstractPlanarVideoBuffer* self) {

	return new QVariant(self->QAbstractPlanarVideoBuffer::handle());
}

const QAbstractPlanarVideoBuffer_VTable* QAbstractPlanarVideoBuffer_vtbl(const VirtualQAbstractPlanarVideoBuffer* self) { return self->vtbl; }
void* QAbstractPlanarVideoBuffer_vdata(const VirtualQAbstractPlanarVideoBuffer* self) { return self->vdata; }
void QAbstractPlanarVideoBuffer_setVdata(VirtualQAbstractPlanarVideoBuffer* self, void* vdata) { self->vdata = vdata; }

void QAbstractPlanarVideoBuffer_delete(QAbstractPlanarVideoBuffer* self) {
	delete self;
}

