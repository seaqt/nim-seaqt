#include <QEvent>
#include <QGraphicsItem>
#include <QGraphicsLayout>
#include <QGraphicsLayoutItem>
#include <QGraphicsLinearLayout>
#include <QRectF>
#include <QSizeF>
#include <qgraphicslinearlayout.h>
#include "gen_qgraphicslinearlayout.h"
class VirtualQGraphicsLinearLayout final : public QGraphicsLinearLayout {
	const QGraphicsLinearLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsLinearLayout_VTable* QGraphicsLinearLayout_vtbl(const VirtualQGraphicsLinearLayout* self);
	friend void* QGraphicsLinearLayout_vdata(const VirtualQGraphicsLinearLayout* self);
	friend void QGraphicsLinearLayout_setVdata(VirtualQGraphicsLinearLayout* self, void* vdata);

	VirtualQGraphicsLinearLayout(const QGraphicsLinearLayout_VTable* vtbl, void* vdata): QGraphicsLinearLayout(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLinearLayout(const QGraphicsLinearLayout_VTable* vtbl, void* vdata, Qt::Orientation orientation): QGraphicsLinearLayout(orientation), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLinearLayout(const QGraphicsLinearLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent): QGraphicsLinearLayout(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLinearLayout(const QGraphicsLinearLayout_VTable* vtbl, void* vdata, Qt::Orientation orientation, QGraphicsLayoutItem* parent): QGraphicsLinearLayout(orientation, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsLinearLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void removeAt(int index) override {
		if (vtbl->removeAt == 0) {
			QGraphicsLinearLayout::removeAt(index);
			return;
		}

		int sigval1 = index;

		vtbl->removeAt(this, sigval1);

	}

	friend void QGraphicsLinearLayout_virtualbase_removeAt(VirtualQGraphicsLinearLayout* self, int index);

	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsLinearLayout::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QGraphicsLinearLayout_virtualbase_setGeometry(VirtualQGraphicsLinearLayout* self, QRectF* rect);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return QGraphicsLinearLayout::count();
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsLinearLayout_virtualbase_count(const VirtualQGraphicsLinearLayout* self);

	virtual QGraphicsLayoutItem* itemAt(int index) const override {
		if (vtbl->itemAt == 0) {
			return QGraphicsLinearLayout::itemAt(index);
		}

		int sigval1 = index;

		QGraphicsLayoutItem* callback_return_value = vtbl->itemAt(this, sigval1);

		return callback_return_value;
	}

	friend QGraphicsLayoutItem* QGraphicsLinearLayout_virtualbase_itemAt(const VirtualQGraphicsLinearLayout* self, int index);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QGraphicsLinearLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QGraphicsLinearLayout_virtualbase_invalidate(VirtualQGraphicsLinearLayout* self);

	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsLinearLayout::sizeHint(which, constraint);
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

	friend QSizeF* QGraphicsLinearLayout_virtualbase_sizeHint(const VirtualQGraphicsLinearLayout* self, int which, QSizeF* constraint);

	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsLinearLayout::getContentsMargins(left, top, right, bottom);
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

	friend void QGraphicsLinearLayout_virtualbase_getContentsMargins(const VirtualQGraphicsLinearLayout* self, double* left, double* top, double* right, double* bottom);

	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsLinearLayout::updateGeometry();
			return;
		}


		vtbl->updateGeometry(this);

	}

	friend void QGraphicsLinearLayout_virtualbase_updateGeometry(VirtualQGraphicsLinearLayout* self);

	virtual void widgetEvent(QEvent* e) override {
		if (vtbl->widgetEvent == 0) {
			QGraphicsLinearLayout::widgetEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->widgetEvent(this, sigval1);

	}

	friend void QGraphicsLinearLayout_virtualbase_widgetEvent(VirtualQGraphicsLinearLayout* self, QEvent* e);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsLinearLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsLinearLayout* self, QGraphicsLayoutItem* layoutItem);
	friend void QGraphicsLinearLayout_protectedbase_setGraphicsItem(VirtualQGraphicsLinearLayout* self, QGraphicsItem* item);
	friend void QGraphicsLinearLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsLinearLayout* self, bool ownedByLayout);
};

VirtualQGraphicsLinearLayout* QGraphicsLinearLayout_new(const QGraphicsLinearLayout_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsLinearLayout(vtbl, vdata);
}

VirtualQGraphicsLinearLayout* QGraphicsLinearLayout_new2(const QGraphicsLinearLayout_VTable* vtbl, void* vdata, int orientation) {
	return new VirtualQGraphicsLinearLayout(vtbl, vdata, static_cast<Qt::Orientation>(orientation));
}

VirtualQGraphicsLinearLayout* QGraphicsLinearLayout_new3(const QGraphicsLinearLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent) {
	return new VirtualQGraphicsLinearLayout(vtbl, vdata, parent);
}

VirtualQGraphicsLinearLayout* QGraphicsLinearLayout_new4(const QGraphicsLinearLayout_VTable* vtbl, void* vdata, int orientation, QGraphicsLayoutItem* parent) {
	return new VirtualQGraphicsLinearLayout(vtbl, vdata, static_cast<Qt::Orientation>(orientation), parent);
}

void QGraphicsLinearLayout_virtbase(QGraphicsLinearLayout* src, QGraphicsLayout** outptr_QGraphicsLayout) {
	*outptr_QGraphicsLayout = static_cast<QGraphicsLayout*>(src);
}

void QGraphicsLinearLayout_setOrientation(QGraphicsLinearLayout* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QGraphicsLinearLayout_orientation(const QGraphicsLinearLayout* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QGraphicsLinearLayout_addItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item) {
	self->addItem(item);
}

void QGraphicsLinearLayout_addStretch(QGraphicsLinearLayout* self) {
	self->addStretch();
}

void QGraphicsLinearLayout_insertItem(QGraphicsLinearLayout* self, int index, QGraphicsLayoutItem* item) {
	self->insertItem(static_cast<int>(index), item);
}

void QGraphicsLinearLayout_insertStretch(QGraphicsLinearLayout* self, int index) {
	self->insertStretch(static_cast<int>(index));
}

void QGraphicsLinearLayout_removeItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item) {
	self->removeItem(item);
}

void QGraphicsLinearLayout_removeAt(QGraphicsLinearLayout* self, int index) {
	self->removeAt(static_cast<int>(index));
}

void QGraphicsLinearLayout_setSpacing(QGraphicsLinearLayout* self, double spacing) {
	self->setSpacing(static_cast<qreal>(spacing));
}

double QGraphicsLinearLayout_spacing(const QGraphicsLinearLayout* self) {
	qreal _ret = self->spacing();
	return static_cast<double>(_ret);
}

void QGraphicsLinearLayout_setItemSpacing(QGraphicsLinearLayout* self, int index, double spacing) {
	self->setItemSpacing(static_cast<int>(index), static_cast<qreal>(spacing));
}

double QGraphicsLinearLayout_itemSpacing(const QGraphicsLinearLayout* self, int index) {
	qreal _ret = self->itemSpacing(static_cast<int>(index));
	return static_cast<double>(_ret);
}

void QGraphicsLinearLayout_setStretchFactor(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item, int stretch) {
	self->setStretchFactor(item, static_cast<int>(stretch));
}

int QGraphicsLinearLayout_stretchFactor(const QGraphicsLinearLayout* self, QGraphicsLayoutItem* item) {
	return self->stretchFactor(item);
}

void QGraphicsLinearLayout_setAlignment(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item, int alignment) {
	self->setAlignment(item, static_cast<Qt::Alignment>(alignment));
}

int QGraphicsLinearLayout_alignment(const QGraphicsLinearLayout* self, QGraphicsLayoutItem* item) {
	Qt::Alignment _ret = self->alignment(item);
	return static_cast<int>(_ret);
}

void QGraphicsLinearLayout_setGeometry(QGraphicsLinearLayout* self, QRectF* rect) {
	self->setGeometry(*rect);
}

int QGraphicsLinearLayout_count(const QGraphicsLinearLayout* self) {
	return self->count();
}

QGraphicsLayoutItem* QGraphicsLinearLayout_itemAt(const QGraphicsLinearLayout* self, int index) {
	return self->itemAt(static_cast<int>(index));
}

void QGraphicsLinearLayout_invalidate(QGraphicsLinearLayout* self) {
	self->invalidate();
}

QSizeF* QGraphicsLinearLayout_sizeHint(const QGraphicsLinearLayout* self, int which, QSizeF* constraint) {
	return new QSizeF(self->sizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

void QGraphicsLinearLayout_dump(const QGraphicsLinearLayout* self) {
	self->dump();
}

void QGraphicsLinearLayout_addStretch1(QGraphicsLinearLayout* self, int stretch) {
	self->addStretch(static_cast<int>(stretch));
}

void QGraphicsLinearLayout_insertStretch2(QGraphicsLinearLayout* self, int index, int stretch) {
	self->insertStretch(static_cast<int>(index), static_cast<int>(stretch));
}

void QGraphicsLinearLayout_dump1(const QGraphicsLinearLayout* self, int indent) {
	self->dump(static_cast<int>(indent));
}

void QGraphicsLinearLayout_virtualbase_removeAt(VirtualQGraphicsLinearLayout* self, int index) {

	self->QGraphicsLinearLayout::removeAt(static_cast<int>(index));
}

void QGraphicsLinearLayout_virtualbase_setGeometry(VirtualQGraphicsLinearLayout* self, QRectF* rect) {

	self->QGraphicsLinearLayout::setGeometry(*rect);
}

int QGraphicsLinearLayout_virtualbase_count(const VirtualQGraphicsLinearLayout* self) {

	return self->QGraphicsLinearLayout::count();
}

QGraphicsLayoutItem* QGraphicsLinearLayout_virtualbase_itemAt(const VirtualQGraphicsLinearLayout* self, int index) {

	return self->QGraphicsLinearLayout::itemAt(static_cast<int>(index));
}

void QGraphicsLinearLayout_virtualbase_invalidate(VirtualQGraphicsLinearLayout* self) {

	self->QGraphicsLinearLayout::invalidate();
}

QSizeF* QGraphicsLinearLayout_virtualbase_sizeHint(const VirtualQGraphicsLinearLayout* self, int which, QSizeF* constraint) {

	return new QSizeF(self->QGraphicsLinearLayout::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

void QGraphicsLinearLayout_virtualbase_getContentsMargins(const VirtualQGraphicsLinearLayout* self, double* left, double* top, double* right, double* bottom) {

	self->QGraphicsLinearLayout::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsLinearLayout_virtualbase_updateGeometry(VirtualQGraphicsLinearLayout* self) {

	self->QGraphicsLinearLayout::updateGeometry();
}

void QGraphicsLinearLayout_virtualbase_widgetEvent(VirtualQGraphicsLinearLayout* self, QEvent* e) {

	self->QGraphicsLinearLayout::widgetEvent(e);
}

const QGraphicsLinearLayout_VTable* QGraphicsLinearLayout_vtbl(const VirtualQGraphicsLinearLayout* self) { return self->vtbl; }
void* QGraphicsLinearLayout_vdata(const VirtualQGraphicsLinearLayout* self) { return self->vdata; }
void QGraphicsLinearLayout_setVdata(VirtualQGraphicsLinearLayout* self, void* vdata) { self->vdata = vdata; }

void QGraphicsLinearLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsLinearLayout* self, QGraphicsLayoutItem* layoutItem) {
	self->addChildLayoutItem(layoutItem);
}

void QGraphicsLinearLayout_protectedbase_setGraphicsItem(VirtualQGraphicsLinearLayout* self, QGraphicsItem* item) {
	self->setGraphicsItem(item);
}

void QGraphicsLinearLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsLinearLayout* self, bool ownedByLayout) {
	self->setOwnedByLayout(ownedByLayout);
}

void QGraphicsLinearLayout_delete(QGraphicsLinearLayout* self) {
	delete self;
}

