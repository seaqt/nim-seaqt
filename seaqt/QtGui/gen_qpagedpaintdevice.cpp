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

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPagedPaintDevice final : public QPagedPaintDevice {
	const QPagedPaintDevice_VTable* vtbl;
public:
	friend void* QPagedPaintDevice_vdata(VirtualQPagedPaintDevice* self);
	friend VirtualQPagedPaintDevice* vdata_QPagedPaintDevice(void* vdata);

	VirtualQPagedPaintDevice(const QPagedPaintDevice_VTable* vtbl): QPagedPaintDevice(), vtbl(vtbl) {}

	virtual ~VirtualQPagedPaintDevice() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual bool newPage() override {
		if (vtbl->newPage == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->newPage(this);
		return callback_return_value;
	}

	virtual void setPageSize(QPagedPaintDevice::PageSize size) override {
		if (vtbl->setPageSize_size == 0) {
			QPagedPaintDevice::setPageSize(size);
			return;
		}

		QPagedPaintDevice::PageSize size_ret = size;
		int sigval1 = static_cast<int>(size_ret);
		vtbl->setPageSize_size(this, sigval1);
	}

	friend void QPagedPaintDevice_virtualbase_setPageSize_size(VirtualQPagedPaintDevice* self, int size);

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
	friend QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout_const(const VirtualQPagedPaintDevice* self);
	friend QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout(VirtualQPagedPaintDevice* self);
};

VirtualQPagedPaintDevice* QPagedPaintDevice_new(const QPagedPaintDevice_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPagedPaintDevice>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPagedPaintDevice(vtbl) : nullptr;
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

bool QPagedPaintDevice_setPageSize_pageSize(QPagedPaintDevice* self, QPageSize* pageSize) {
	return self->setPageSize(*pageSize);
}

bool QPagedPaintDevice_setPageOrientation(QPagedPaintDevice* self, int orientation) {
	return self->setPageOrientation(static_cast<QPageLayout::Orientation>(orientation));
}

bool QPagedPaintDevice_setPageMargins_margins(QPagedPaintDevice* self, QMarginsF* margins) {
	return self->setPageMargins(*margins);
}

bool QPagedPaintDevice_setPageMargins_margins_units(QPagedPaintDevice* self, QMarginsF* margins, int units) {
	return self->setPageMargins(*margins, static_cast<QPageLayout::Unit>(units));
}

QPageLayout* QPagedPaintDevice_pageLayout(const QPagedPaintDevice* self) {
	return new QPageLayout(self->pageLayout());
}

void QPagedPaintDevice_setPageSize_size(QPagedPaintDevice* self, int size) {
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

void* QPagedPaintDevice_vdata(VirtualQPagedPaintDevice* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPagedPaintDevice>()); }
VirtualQPagedPaintDevice* vdata_QPagedPaintDevice(void* vdata) { return reinterpret_cast<VirtualQPagedPaintDevice*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPagedPaintDevice>()); }

void QPagedPaintDevice_virtualbase_setPageSize_size(VirtualQPagedPaintDevice* self, int size) {

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

QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout_const(const VirtualQPagedPaintDevice* self) {
	return new QPageLayout(self->devicePageLayout());
}

QPageLayout* QPagedPaintDevice_protectedbase_devicePageLayout(VirtualQPagedPaintDevice* self) {
	QPageLayout& _ret = self->devicePageLayout();
	// Cast returned reference into pointer
	return &_ret;
}

void QPagedPaintDevice_delete(QPagedPaintDevice* self) {
	delete self;
}

double QPagedPaintDevice__Margins_left(const QPagedPaintDevice__Margins* self) {
	qreal left_ret = self->left;
	return static_cast<double>(left_ret);
}

void QPagedPaintDevice__Margins_setLeft(QPagedPaintDevice__Margins* self, double left) {
	self->left = static_cast<qreal>(left);
}

double QPagedPaintDevice__Margins_right(const QPagedPaintDevice__Margins* self) {
	qreal right_ret = self->right;
	return static_cast<double>(right_ret);
}

void QPagedPaintDevice__Margins_setRight(QPagedPaintDevice__Margins* self, double right) {
	self->right = static_cast<qreal>(right);
}

double QPagedPaintDevice__Margins_top(const QPagedPaintDevice__Margins* self) {
	qreal top_ret = self->top;
	return static_cast<double>(top_ret);
}

void QPagedPaintDevice__Margins_setTop(QPagedPaintDevice__Margins* self, double top) {
	self->top = static_cast<qreal>(top);
}

double QPagedPaintDevice__Margins_bottom(const QPagedPaintDevice__Margins* self) {
	qreal bottom_ret = self->bottom;
	return static_cast<double>(bottom_ret);
}

void QPagedPaintDevice__Margins_setBottom(QPagedPaintDevice__Margins* self, double bottom) {
	self->bottom = static_cast<qreal>(bottom);
}

void QPagedPaintDevice__Margins_delete(QPagedPaintDevice__Margins* self) {
	delete self;
}

