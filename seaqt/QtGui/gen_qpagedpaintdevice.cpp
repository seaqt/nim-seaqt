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
class VirtualQPagedPaintDevice final : public QPagedPaintDevice {
	const QPagedPaintDevice_VTable* vtbl;
	void* vdata;
public:
	friend const QPagedPaintDevice_VTable* QPagedPaintDevice_vtbl(const VirtualQPagedPaintDevice* self);
	friend void* QPagedPaintDevice_vdata(const VirtualQPagedPaintDevice* self);
	friend void QPagedPaintDevice_setVdata(VirtualQPagedPaintDevice* self, void* vdata);

	VirtualQPagedPaintDevice(const QPagedPaintDevice_VTable* vtbl, void* vdata): QPagedPaintDevice(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPagedPaintDevice() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool newPage() override {
		if (vtbl->newPage == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->newPage(this);

		return callback_return_value;
	}

	virtual void setPageSize(QPagedPaintDevice::PageSize size) override {
		if (vtbl->setPageSizeWithSize == 0) {
			QPagedPaintDevice::setPageSize(size);
			return;
		}

		QPagedPaintDevice::PageSize size_ret = size;
		int sigval1 = static_cast<int>(size_ret);

		vtbl->setPageSizeWithSize(this, sigval1);

	}

	friend void QPagedPaintDevice_virtualbase_setPageSizeWithSize(VirtualQPagedPaintDevice* self, int size);

	virtual void setPageSizeMM(const QSizeF& size) override {
		if (vtbl->setPageSizeMM == 0) {
			QPagedPaintDevice::setPageSizeMM(size);
			return;
		}

		const QSizeF& size_ret = size;
		// Cast returned reference into pointer
		QSizeF* sigval1 = const_cast<QSizeF*>(&size_ret);

		vtbl->setPageSizeMM(this, sigval1);

	}

	friend void QPagedPaintDevice_virtualbase_setPageSizeMM(VirtualQPagedPaintDevice* self, QSizeF* size);

	virtual void setMargins(const QPagedPaintDevice::Margins& margins) override {
		if (vtbl->setMargins == 0) {
			QPagedPaintDevice::setMargins(margins);
			return;
		}

		const QPagedPaintDevice::Margins& margins_ret = margins;
		// Cast returned reference into pointer
		QPagedPaintDevice__Margins* sigval1 = const_cast<QPagedPaintDevice::Margins*>(&margins_ret);

		vtbl->setMargins(this, sigval1);

	}

	friend void QPagedPaintDevice_virtualbase_setMargins(VirtualQPagedPaintDevice* self, QPagedPaintDevice__Margins* margins);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPagedPaintDevice::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPagedPaintDevice_virtualbase_devType(const VirtualQPagedPaintDevice* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	virtual int metric(QPaintDevice::PaintDeviceMetric metric) const override {
		if (vtbl->metric == 0) {
			return QPagedPaintDevice::metric(metric);
		}

		QPaintDevice::PaintDeviceMetric metric_ret = metric;
		int sigval1 = static_cast<int>(metric_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPagedPaintDevice_virtualbase_metric(const VirtualQPagedPaintDevice* self, int metric);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPagedPaintDevice::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPagedPaintDevice_virtualbase_initPainter(const VirtualQPagedPaintDevice* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPagedPaintDevice::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPagedPaintDevice_virtualbase_redirected(const VirtualQPagedPaintDevice* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPagedPaintDevice::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPagedPaintDevice_virtualbase_sharedPainter(const VirtualQPagedPaintDevice* self);

	// Wrappers to allow calling protected methods:
	friend QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout(const VirtualQPagedPaintDevice* self);
	friend QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout2(VirtualQPagedPaintDevice* self);
};

VirtualQPagedPaintDevice* QPagedPaintDevice_new(const QPagedPaintDevice_VTable* vtbl, void* vdata) {
	return new VirtualQPagedPaintDevice(vtbl, vdata);
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

void QPagedPaintDevice_virtualbase_setPageSizeWithSize(VirtualQPagedPaintDevice* self, int size) {

	self->QPagedPaintDevice::setPageSize(static_cast<VirtualQPagedPaintDevice::PageSize>(size));
}

void QPagedPaintDevice_virtualbase_setPageSizeMM(VirtualQPagedPaintDevice* self, QSizeF* size) {

	self->QPagedPaintDevice::setPageSizeMM(*size);
}

void QPagedPaintDevice_virtualbase_setMargins(VirtualQPagedPaintDevice* self, QPagedPaintDevice__Margins* margins) {

	self->QPagedPaintDevice::setMargins(*margins);
}

int QPagedPaintDevice_virtualbase_devType(const VirtualQPagedPaintDevice* self) {

	return self->QPagedPaintDevice::devType();
}

int QPagedPaintDevice_virtualbase_metric(const VirtualQPagedPaintDevice* self, int metric) {

	return self->QPagedPaintDevice::metric(static_cast<VirtualQPagedPaintDevice::PaintDeviceMetric>(metric));
}

void QPagedPaintDevice_virtualbase_initPainter(const VirtualQPagedPaintDevice* self, QPainter* painter) {

	self->QPagedPaintDevice::initPainter(painter);
}

QPaintDevice* QPagedPaintDevice_virtualbase_redirected(const VirtualQPagedPaintDevice* self, QPoint* offset) {

	return self->QPagedPaintDevice::redirected(offset);
}

QPainter* QPagedPaintDevice_virtualbase_sharedPainter(const VirtualQPagedPaintDevice* self) {

	return self->QPagedPaintDevice::sharedPainter();
}

const QPagedPaintDevice_VTable* QPagedPaintDevice_vtbl(const VirtualQPagedPaintDevice* self) { return self->vtbl; }
void* QPagedPaintDevice_vdata(const VirtualQPagedPaintDevice* self) { return self->vdata; }
void QPagedPaintDevice_setVdata(VirtualQPagedPaintDevice* self, void* vdata) { self->vdata = vdata; }

QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout(const VirtualQPagedPaintDevice* self) {
	return new QPageLayout(self->devicePageLayout());
}

QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout2(VirtualQPagedPaintDevice* self) {
	QPageLayout& _ret = self->devicePageLayout();
	// Cast returned reference into pointer
	return &_ret;
}

void QPagedPaintDevice_delete(QPagedPaintDevice* self) {
	delete self;
}

void QPagedPaintDevice__Margins_delete(QPagedPaintDevice__Margins* self) {
	delete self;
}

