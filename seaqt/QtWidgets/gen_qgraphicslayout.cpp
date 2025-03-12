#include <QEvent>
#include <QGraphicsItem>
#include <QGraphicsLayout>
#include <QGraphicsLayoutItem>
#include <QRectF>
#include <QSizeF>
#include <qgraphicslayout.h>
#include "gen_qgraphicslayout.h"
class VirtualQGraphicsLayout final : public QGraphicsLayout {
	const QGraphicsLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsLayout_VTable* QGraphicsLayout_vtbl(const VirtualQGraphicsLayout* self);
	friend void* QGraphicsLayout_vdata(const VirtualQGraphicsLayout* self);
	friend void QGraphicsLayout_setVdata(VirtualQGraphicsLayout* self, void* vdata);

	VirtualQGraphicsLayout(const QGraphicsLayout_VTable* vtbl, void* vdata): QGraphicsLayout(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsLayout(const QGraphicsLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent): QGraphicsLayout(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsLayout::getContentsMargins(left, top, right, bottom);
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

	friend void QGraphicsLayout_virtualbase_getContentsMargins(const VirtualQGraphicsLayout* self, double* left, double* top, double* right, double* bottom);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QGraphicsLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QGraphicsLayout_virtualbase_invalidate(VirtualQGraphicsLayout* self);

	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsLayout::updateGeometry();
			return;
		}


		vtbl->updateGeometry(this);

	}

	friend void QGraphicsLayout_virtualbase_updateGeometry(VirtualQGraphicsLayout* self);

	virtual void widgetEvent(QEvent* e) override {
		if (vtbl->widgetEvent == 0) {
			QGraphicsLayout::widgetEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->widgetEvent(this, sigval1);

	}

	friend void QGraphicsLayout_virtualbase_widgetEvent(VirtualQGraphicsLayout* self, QEvent* e);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	virtual QGraphicsLayoutItem* itemAt(int i) const override {
		if (vtbl->itemAt == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		int sigval1 = i;

		QGraphicsLayoutItem* callback_return_value = vtbl->itemAt(this, sigval1);

		return callback_return_value;
	}

	virtual void removeAt(int index) override {
		if (vtbl->removeAt == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;

		vtbl->removeAt(this, sigval1);

	}

	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsLayout::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QGraphicsLayout_virtualbase_setGeometry(VirtualQGraphicsLayout* self, QRectF* rect);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QGraphicsLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QGraphicsLayout_virtualbase_isEmpty(const VirtualQGraphicsLayout* self);

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
	friend void QGraphicsLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsLayout* self, QGraphicsLayoutItem* layoutItem);
	friend void QGraphicsLayout_protectedbase_setGraphicsItem(VirtualQGraphicsLayout* self, QGraphicsItem* item);
	friend void QGraphicsLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsLayout* self, bool ownedByLayout);
};

VirtualQGraphicsLayout* QGraphicsLayout_new(const QGraphicsLayout_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsLayout(vtbl, vdata);
}

VirtualQGraphicsLayout* QGraphicsLayout_new2(const QGraphicsLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent) {
	return new VirtualQGraphicsLayout(vtbl, vdata, parent);
}

void QGraphicsLayout_virtbase(QGraphicsLayout* src, QGraphicsLayoutItem** outptr_QGraphicsLayoutItem) {
	*outptr_QGraphicsLayoutItem = static_cast<QGraphicsLayoutItem*>(src);
}

void QGraphicsLayout_setContentsMargins(QGraphicsLayout* self, double left, double top, double right, double bottom) {
	self->setContentsMargins(static_cast<qreal>(left), static_cast<qreal>(top), static_cast<qreal>(right), static_cast<qreal>(bottom));
}

void QGraphicsLayout_getContentsMargins(const QGraphicsLayout* self, double* left, double* top, double* right, double* bottom) {
	self->getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsLayout_activate(QGraphicsLayout* self) {
	self->activate();
}

bool QGraphicsLayout_isActivated(const QGraphicsLayout* self) {
	return self->isActivated();
}

void QGraphicsLayout_invalidate(QGraphicsLayout* self) {
	self->invalidate();
}

void QGraphicsLayout_updateGeometry(QGraphicsLayout* self) {
	self->updateGeometry();
}

void QGraphicsLayout_widgetEvent(QGraphicsLayout* self, QEvent* e) {
	self->widgetEvent(e);
}

int QGraphicsLayout_count(const QGraphicsLayout* self) {
	return self->count();
}

QGraphicsLayoutItem* QGraphicsLayout_itemAt(const QGraphicsLayout* self, int i) {
	return self->itemAt(static_cast<int>(i));
}

void QGraphicsLayout_removeAt(QGraphicsLayout* self, int index) {
	self->removeAt(static_cast<int>(index));
}

void QGraphicsLayout_setInstantInvalidatePropagation(bool enable) {
	QGraphicsLayout::setInstantInvalidatePropagation(enable);
}

bool QGraphicsLayout_instantInvalidatePropagation() {
	return QGraphicsLayout::instantInvalidatePropagation();
}

void QGraphicsLayout_virtualbase_getContentsMargins(const VirtualQGraphicsLayout* self, double* left, double* top, double* right, double* bottom) {

	self->QGraphicsLayout::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsLayout_virtualbase_invalidate(VirtualQGraphicsLayout* self) {

	self->QGraphicsLayout::invalidate();
}

void QGraphicsLayout_virtualbase_updateGeometry(VirtualQGraphicsLayout* self) {

	self->QGraphicsLayout::updateGeometry();
}

void QGraphicsLayout_virtualbase_widgetEvent(VirtualQGraphicsLayout* self, QEvent* e) {

	self->QGraphicsLayout::widgetEvent(e);
}

void QGraphicsLayout_virtualbase_setGeometry(VirtualQGraphicsLayout* self, QRectF* rect) {

	self->QGraphicsLayout::setGeometry(*rect);
}

bool QGraphicsLayout_virtualbase_isEmpty(const VirtualQGraphicsLayout* self) {

	return self->QGraphicsLayout::isEmpty();
}

const QGraphicsLayout_VTable* QGraphicsLayout_vtbl(const VirtualQGraphicsLayout* self) { return self->vtbl; }
void* QGraphicsLayout_vdata(const VirtualQGraphicsLayout* self) { return self->vdata; }
void QGraphicsLayout_setVdata(VirtualQGraphicsLayout* self, void* vdata) { self->vdata = vdata; }

void QGraphicsLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsLayout* self, QGraphicsLayoutItem* layoutItem) {
	self->addChildLayoutItem(layoutItem);
}

void QGraphicsLayout_protectedbase_setGraphicsItem(VirtualQGraphicsLayout* self, QGraphicsItem* item) {
	self->setGraphicsItem(item);
}

void QGraphicsLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsLayout* self, bool ownedByLayout) {
	self->setOwnedByLayout(ownedByLayout);
}

void QGraphicsLayout_delete(QGraphicsLayout* self) {
	delete self;
}

