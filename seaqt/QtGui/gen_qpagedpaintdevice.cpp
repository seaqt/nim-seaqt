#include <QMarginsF>
#include <QPageLayout>
#include <QPageSize>
#include <QPagedPaintDevice>
#define WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPoint>
#include <QSizeF>
#include <qpagedpaintdevice.h>
#include "gen_qpagedpaintdevice.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQPagedPaintDevice final : public QPagedPaintDevice {
	struct QPagedPaintDevice_VTable* vtbl;
public:

	VirtualQPagedPaintDevice(struct QPagedPaintDevice_VTable* vtbl): QPagedPaintDevice(), vtbl(vtbl) {};

	virtual ~VirtualQPagedPaintDevice() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool newPage() override {
		if (vtbl->newPage == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->newPage(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual void setPageSize(QPagedPaintDevice::PageSize size) override {
		if (vtbl->setPageSizeWithSize == 0) {
			QPagedPaintDevice::setPageSize(size);
			return;
		}

		QPagedPaintDevice::PageSize size_ret = size;
		int sigval1 = static_cast<int>(size_ret);

		vtbl->setPageSizeWithSize(vtbl, this, sigval1);

	}

	friend void QPagedPaintDevice_virtualbase_setPageSizeWithSize(void* self, int size);

	// Subclass to allow providing a Go implementation
	virtual void setPageSizeMM(const QSizeF& size) override {
		if (vtbl->setPageSizeMM == 0) {
			QPagedPaintDevice::setPageSizeMM(size);
			return;
		}

		const QSizeF& size_ret = size;
		// Cast returned reference into pointer
		QSizeF* sigval1 = const_cast<QSizeF*>(&size_ret);

		vtbl->setPageSizeMM(vtbl, this, sigval1);

	}

	friend void QPagedPaintDevice_virtualbase_setPageSizeMM(void* self, QSizeF* size);

	// Subclass to allow providing a Go implementation
	virtual void setMargins(const QPagedPaintDevice::Margins& margins) override {
		if (vtbl->setMargins == 0) {
			QPagedPaintDevice::setMargins(margins);
			return;
		}

		const QPagedPaintDevice::Margins& margins_ret = margins;
		// Cast returned reference into pointer
		QPagedPaintDevice__Margins* sigval1 = const_cast<QPagedPaintDevice::Margins*>(&margins_ret);

		vtbl->setMargins(vtbl, this, sigval1);

	}

	friend void QPagedPaintDevice_virtualbase_setMargins(void* self, QPagedPaintDevice__Margins* margins);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPagedPaintDevice::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPagedPaintDevice_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric metric) const override {
		if (vtbl->metric == 0) {
			return QPagedPaintDevice::metric(metric);
		}

		QPaintDevice::PaintDeviceMetric metric_ret = metric;
		int sigval1 = static_cast<int>(metric_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPagedPaintDevice_virtualbase_metric(const void* self, int metric);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPagedPaintDevice::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QPagedPaintDevice_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPagedPaintDevice::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPagedPaintDevice_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPagedPaintDevice::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QPagedPaintDevice_virtualbase_sharedPainter(const void* self);

	// Wrappers to allow calling protected methods:
	friend QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout(const void* self);
	friend QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout2(void* self);
};

QPagedPaintDevice* QPagedPaintDevice_new(struct QPagedPaintDevice_VTable* vtbl) {
	return new VirtualQPagedPaintDevice(vtbl);
}

void QPagedPaintDevice_virtbase(QPagedPaintDevice* src, QPaintDevice** outptr_QPaintDevice) {
	*outptr_QPaintDevice = static_cast<QPaintDevice*>(src);
}

bool QPagedPaintDevice_newPage(QPagedPaintDevice* self) {
	return self->newPage();
}

bool QPagedPaintDevice_setPageLayout(QPagedPaintDevice* self, QPageLayout* pageLayout) {
	return self->setPageLayout(*pageLayout);
}

bool QPagedPaintDevice_setPageSize(QPagedPaintDevice* self, QPageSize* pageSize) {
	return self->setPageSize(*pageSize);
}

bool QPagedPaintDevice_setPageOrientation(QPagedPaintDevice* self, int orientation) {
	return self->setPageOrientation(static_cast<QPageLayout::Orientation>(orientation));
}

bool QPagedPaintDevice_setPageMargins(QPagedPaintDevice* self, QMarginsF* margins) {
	return self->setPageMargins(*margins);
}

bool QPagedPaintDevice_setPageMargins2(QPagedPaintDevice* self, QMarginsF* margins, int units) {
	return self->setPageMargins(*margins, static_cast<QPageLayout::Unit>(units));
}

QPageLayout* QPagedPaintDevice_pageLayout(const QPagedPaintDevice* self) {
	return new QPageLayout(self->pageLayout());
}

void QPagedPaintDevice_setPageSizeWithSize(QPagedPaintDevice* self, int size) {
	self->setPageSize(static_cast<QPagedPaintDevice::PageSize>(size));
}

int QPagedPaintDevice_pageSize(const QPagedPaintDevice* self) {
	QPagedPaintDevice::PageSize _ret = self->pageSize();
	return static_cast<int>(_ret);
}

void QPagedPaintDevice_setPageSizeMM(QPagedPaintDevice* self, QSizeF* size) {
	self->setPageSizeMM(*size);
}

QSizeF* QPagedPaintDevice_pageSizeMM(const QPagedPaintDevice* self) {
	return new QSizeF(self->pageSizeMM());
}

void QPagedPaintDevice_setMargins(QPagedPaintDevice* self, QPagedPaintDevice__Margins* margins) {
	self->setMargins(*margins);
}

QPagedPaintDevice__Margins* QPagedPaintDevice_margins(const QPagedPaintDevice* self) {
	return new QPagedPaintDevice::Margins(self->margins());
}

void QPagedPaintDevice_virtualbase_setPageSizeWithSize(void* self, int size) {

	( (VirtualQPagedPaintDevice*)(self) )->QPagedPaintDevice::setPageSize(static_cast<VirtualQPagedPaintDevice::PageSize>(size));

}

void QPagedPaintDevice_virtualbase_setPageSizeMM(void* self, QSizeF* size) {

	( (VirtualQPagedPaintDevice*)(self) )->QPagedPaintDevice::setPageSizeMM(*size);

}

void QPagedPaintDevice_virtualbase_setMargins(void* self, QPagedPaintDevice__Margins* margins) {

	( (VirtualQPagedPaintDevice*)(self) )->QPagedPaintDevice::setMargins(*margins);

}

int QPagedPaintDevice_virtualbase_devType(const void* self) {

	return ( (const VirtualQPagedPaintDevice*)(self) )->QPagedPaintDevice::devType();

}

int QPagedPaintDevice_virtualbase_metric(const void* self, int metric) {

	return ( (const VirtualQPagedPaintDevice*)(self) )->QPagedPaintDevice::metric(static_cast<VirtualQPagedPaintDevice::PaintDeviceMetric>(metric));

}

void QPagedPaintDevice_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQPagedPaintDevice*)(self) )->QPagedPaintDevice::initPainter(painter);

}

QPaintDevice* QPagedPaintDevice_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQPagedPaintDevice*)(self) )->QPagedPaintDevice::redirected(offset);

}

QPainter* QPagedPaintDevice_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQPagedPaintDevice*)(self) )->QPagedPaintDevice::sharedPainter();

}

QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout(const void* self) {
	VirtualQPagedPaintDevice* self_cast = static_cast<VirtualQPagedPaintDevice*>( (QPagedPaintDevice*)(self) );
	
	return new QPageLayout(self_cast->devicePageLayout());

}

QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout2(void* self) {
	VirtualQPagedPaintDevice* self_cast = static_cast<VirtualQPagedPaintDevice*>( (QPagedPaintDevice*)(self) );
	
	QPageLayout& _ret = self_cast->devicePageLayout();
	// Cast returned reference into pointer
	return &_ret;

}

void QPagedPaintDevice_delete(QPagedPaintDevice* self) {
	delete self;
}

void QPagedPaintDevice__Margins_delete(QPagedPaintDevice__Margins* self) {
	delete self;
}

