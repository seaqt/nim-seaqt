#include <QGraphicsItem>
#include <QGraphicsLayoutItem>
#include <QRectF>
#include <QSizeF>
#include <QSizePolicy>
#include <qgraphicslayoutitem.h>
#include "gen_qgraphicslayoutitem.h"
class VirtualQGraphicsLayoutItem final : public QGraphicsLayoutItem {
	const QGraphicsLayoutItem_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsLayoutItem_VTable* QGraphicsLayoutItem_vtbl(const VirtualQGraphicsLayoutItem* self);
	friend void* QGraphicsLayoutItem_vdata(const VirtualQGraphicsLayoutItem* self);
	friend void QGraphicsLayoutItem_setVdata(VirtualQGraphicsLayoutItem* self, void* vdata);

	VirtualQGraphicsLayoutItem(const QGraphicsLayoutItem_VTable* vtbl, void* vdata): QGraphicsLayoutItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLayoutItem(const QGraphicsLayoutItem_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent): QGraphicsLayoutItem(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLayoutItem(const QGraphicsLayoutItem_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent, bool isLayout): QGraphicsLayoutItem(parent, isLayout), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsLayoutItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsLayoutItem::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QGraphicsLayoutItem_virtualbase_setGeometry(VirtualQGraphicsLayoutItem* self, QRectF* rect);

	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsLayoutItem::getContentsMargins(left, top, right, bottom);
			return;
		}

		qreal* left_ret = left;
		double* sigval1 = static_cast<double*>(left_ret);
		qreal* top_ret = top;
		double* sigval2 = static_cast<double*>(top_ret);
		qreal* right_ret = right;
		double* sigval3 = static_cast<double*>(right_ret);
		qreal* bottom_ret = bottom;
		double* sigval4 = static_cast<double*>(bottom_ret);

		vtbl->getContentsMargins(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QGraphicsLayoutItem_virtualbase_getContentsMargins(const VirtualQGraphicsLayoutItem* self, double* left, double* top, double* right, double* bottom);

	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsLayoutItem::updateGeometry();
			return;
		}


		vtbl->updateGeometry(this);

	}

	friend void QGraphicsLayoutItem_virtualbase_updateGeometry(VirtualQGraphicsLayoutItem* self);

	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QSizeF(); // Pure virtual, there is no base we can call
		}

		Qt::SizeHint which_ret = which;
		int sigval1 = static_cast<int>(which_ret);
		const QSizeF& constraint_ret = constraint;
		// Cast returned reference into pointer
		QSizeF* sigval2 = const_cast<QSizeF*>(&constraint_ret);

		QSizeF* callback_return_value = vtbl->sizeHint(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsLayoutItem_protectedbase_setGraphicsItem(VirtualQGraphicsLayoutItem* self, QGraphicsItem* item);
	friend void QGraphicsLayoutItem_protectedbase_setOwnedByLayout(VirtualQGraphicsLayoutItem* self, bool ownedByLayout);
};

VirtualQGraphicsLayoutItem* QGraphicsLayoutItem_new(const QGraphicsLayoutItem_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsLayoutItem(vtbl, vdata);
}

VirtualQGraphicsLayoutItem* QGraphicsLayoutItem_new2(const QGraphicsLayoutItem_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent) {
	return new VirtualQGraphicsLayoutItem(vtbl, vdata, parent);
}

VirtualQGraphicsLayoutItem* QGraphicsLayoutItem_new3(const QGraphicsLayoutItem_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent, bool isLayout) {
	return new VirtualQGraphicsLayoutItem(vtbl, vdata, parent, isLayout);
}

void QGraphicsLayoutItem_setSizePolicy(QGraphicsLayoutItem* self, QSizePolicy* policy) {
	self->setSizePolicy(*policy);
}

void QGraphicsLayoutItem_setSizePolicy2(QGraphicsLayoutItem* self, int hPolicy, int vPolicy) {
	self->setSizePolicy(static_cast<QSizePolicy::Policy>(hPolicy), static_cast<QSizePolicy::Policy>(vPolicy));
}

QSizePolicy* QGraphicsLayoutItem_sizePolicy(const QGraphicsLayoutItem* self) {
	return new QSizePolicy(self->sizePolicy());
}

void QGraphicsLayoutItem_setMinimumSize(QGraphicsLayoutItem* self, QSizeF* size) {
	self->setMinimumSize(*size);
}

void QGraphicsLayoutItem_setMinimumSize2(QGraphicsLayoutItem* self, double w, double h) {
	self->setMinimumSize(static_cast<qreal>(w), static_cast<qreal>(h));
}

QSizeF* QGraphicsLayoutItem_minimumSize(const QGraphicsLayoutItem* self) {
	return new QSizeF(self->minimumSize());
}

void QGraphicsLayoutItem_setMinimumWidth(QGraphicsLayoutItem* self, double width) {
	self->setMinimumWidth(static_cast<qreal>(width));
}

double QGraphicsLayoutItem_minimumWidth(const QGraphicsLayoutItem* self) {
	qreal _ret = self->minimumWidth();
	return static_cast<double>(_ret);
}

void QGraphicsLayoutItem_setMinimumHeight(QGraphicsLayoutItem* self, double height) {
	self->setMinimumHeight(static_cast<qreal>(height));
}

double QGraphicsLayoutItem_minimumHeight(const QGraphicsLayoutItem* self) {
	qreal _ret = self->minimumHeight();
	return static_cast<double>(_ret);
}

void QGraphicsLayoutItem_setPreferredSize(QGraphicsLayoutItem* self, QSizeF* size) {
	self->setPreferredSize(*size);
}

void QGraphicsLayoutItem_setPreferredSize2(QGraphicsLayoutItem* self, double w, double h) {
	self->setPreferredSize(static_cast<qreal>(w), static_cast<qreal>(h));
}

QSizeF* QGraphicsLayoutItem_preferredSize(const QGraphicsLayoutItem* self) {
	return new QSizeF(self->preferredSize());
}

void QGraphicsLayoutItem_setPreferredWidth(QGraphicsLayoutItem* self, double width) {
	self->setPreferredWidth(static_cast<qreal>(width));
}

double QGraphicsLayoutItem_preferredWidth(const QGraphicsLayoutItem* self) {
	qreal _ret = self->preferredWidth();
	return static_cast<double>(_ret);
}

void QGraphicsLayoutItem_setPreferredHeight(QGraphicsLayoutItem* self, double height) {
	self->setPreferredHeight(static_cast<qreal>(height));
}

double QGraphicsLayoutItem_preferredHeight(const QGraphicsLayoutItem* self) {
	qreal _ret = self->preferredHeight();
	return static_cast<double>(_ret);
}

void QGraphicsLayoutItem_setMaximumSize(QGraphicsLayoutItem* self, QSizeF* size) {
	self->setMaximumSize(*size);
}

void QGraphicsLayoutItem_setMaximumSize2(QGraphicsLayoutItem* self, double w, double h) {
	self->setMaximumSize(static_cast<qreal>(w), static_cast<qreal>(h));
}

QSizeF* QGraphicsLayoutItem_maximumSize(const QGraphicsLayoutItem* self) {
	return new QSizeF(self->maximumSize());
}

void QGraphicsLayoutItem_setMaximumWidth(QGraphicsLayoutItem* self, double width) {
	self->setMaximumWidth(static_cast<qreal>(width));
}

double QGraphicsLayoutItem_maximumWidth(const QGraphicsLayoutItem* self) {
	qreal _ret = self->maximumWidth();
	return static_cast<double>(_ret);
}

void QGraphicsLayoutItem_setMaximumHeight(QGraphicsLayoutItem* self, double height) {
	self->setMaximumHeight(static_cast<qreal>(height));
}

double QGraphicsLayoutItem_maximumHeight(const QGraphicsLayoutItem* self) {
	qreal _ret = self->maximumHeight();
	return static_cast<double>(_ret);
}

void QGraphicsLayoutItem_setGeometry(QGraphicsLayoutItem* self, QRectF* rect) {
	self->setGeometry(*rect);
}

QRectF* QGraphicsLayoutItem_geometry(const QGraphicsLayoutItem* self) {
	return new QRectF(self->geometry());
}

void QGraphicsLayoutItem_getContentsMargins(const QGraphicsLayoutItem* self, double* left, double* top, double* right, double* bottom) {
	self->getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

QRectF* QGraphicsLayoutItem_contentsRect(const QGraphicsLayoutItem* self) {
	return new QRectF(self->contentsRect());
}

QSizeF* QGraphicsLayoutItem_effectiveSizeHint(const QGraphicsLayoutItem* self, int which) {
	return new QSizeF(self->effectiveSizeHint(static_cast<Qt::SizeHint>(which)));
}

void QGraphicsLayoutItem_updateGeometry(QGraphicsLayoutItem* self) {
	self->updateGeometry();
}

QGraphicsLayoutItem* QGraphicsLayoutItem_parentLayoutItem(const QGraphicsLayoutItem* self) {
	return self->parentLayoutItem();
}

void QGraphicsLayoutItem_setParentLayoutItem(QGraphicsLayoutItem* self, QGraphicsLayoutItem* parent) {
	self->setParentLayoutItem(parent);
}

bool QGraphicsLayoutItem_isLayout(const QGraphicsLayoutItem* self) {
	return self->isLayout();
}

QGraphicsItem* QGraphicsLayoutItem_graphicsItem(const QGraphicsLayoutItem* self) {
	return self->graphicsItem();
}

bool QGraphicsLayoutItem_ownedByLayout(const QGraphicsLayoutItem* self) {
	return self->ownedByLayout();
}

void QGraphicsLayoutItem_setSizePolicy3(QGraphicsLayoutItem* self, int hPolicy, int vPolicy, int controlType) {
	self->setSizePolicy(static_cast<QSizePolicy::Policy>(hPolicy), static_cast<QSizePolicy::Policy>(vPolicy), static_cast<QSizePolicy::ControlType>(controlType));
}

QSizeF* QGraphicsLayoutItem_effectiveSizeHint2(const QGraphicsLayoutItem* self, int which, QSizeF* constraint) {
	return new QSizeF(self->effectiveSizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

void QGraphicsLayoutItem_virtualbase_setGeometry(VirtualQGraphicsLayoutItem* self, QRectF* rect) {

	self->QGraphicsLayoutItem::setGeometry(*rect);
}

void QGraphicsLayoutItem_virtualbase_getContentsMargins(const VirtualQGraphicsLayoutItem* self, double* left, double* top, double* right, double* bottom) {

	self->QGraphicsLayoutItem::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsLayoutItem_virtualbase_updateGeometry(VirtualQGraphicsLayoutItem* self) {

	self->QGraphicsLayoutItem::updateGeometry();
}

const QGraphicsLayoutItem_VTable* QGraphicsLayoutItem_vtbl(const VirtualQGraphicsLayoutItem* self) { return self->vtbl; }
void* QGraphicsLayoutItem_vdata(const VirtualQGraphicsLayoutItem* self) { return self->vdata; }
void QGraphicsLayoutItem_setVdata(VirtualQGraphicsLayoutItem* self, void* vdata) { self->vdata = vdata; }

void QGraphicsLayoutItem_protectedbase_setGraphicsItem(VirtualQGraphicsLayoutItem* self, QGraphicsItem* item) {
	self->setGraphicsItem(item);
}

void QGraphicsLayoutItem_protectedbase_setOwnedByLayout(VirtualQGraphicsLayoutItem* self, bool ownedByLayout) {
	self->setOwnedByLayout(ownedByLayout);
}

void QGraphicsLayoutItem_delete(QGraphicsLayoutItem* self) {
	delete self;
}

