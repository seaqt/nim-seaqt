#include <QEvent>
#include <QGraphicsItem>
#include <QGraphicsLayout>
#include <QGraphicsLayoutItem>
#include <QRectF>
#include <QSizeF>
#include <qgraphicslayout.h>
#include "gen_qgraphicslayout.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGraphicsLayout final : public QGraphicsLayout {
	struct QGraphicsLayout_VTable* vtbl;
public:

	VirtualQGraphicsLayout(struct QGraphicsLayout_VTable* vtbl): QGraphicsLayout(), vtbl(vtbl) {};
	VirtualQGraphicsLayout(struct QGraphicsLayout_VTable* vtbl, QGraphicsLayoutItem* parent): QGraphicsLayout(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
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

		vtbl->getContentsMargins(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QGraphicsLayout_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom);

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QGraphicsLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	friend void QGraphicsLayout_virtualbase_invalidate(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsLayout::updateGeometry();
			return;
		}


		vtbl->updateGeometry(vtbl, this);

	}

	friend void QGraphicsLayout_virtualbase_updateGeometry(void* self);

	// Subclass to allow providing a Go implementation
	virtual void widgetEvent(QEvent* e) override {
		if (vtbl->widgetEvent == 0) {
			QGraphicsLayout::widgetEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->widgetEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsLayout_virtualbase_widgetEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual QGraphicsLayoutItem* itemAt(int i) const override {
		if (vtbl->itemAt == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		int sigval1 = i;

		QGraphicsLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual void removeAt(int index) override {
		if (vtbl->removeAt == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;

		vtbl->removeAt(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsLayout::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	friend void QGraphicsLayout_virtualbase_setGeometry(void* self, QRectF* rect);

	// Subclass to allow providing a Go implementation
	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QSizeF(); // Pure virtual, there is no base we can call
		}

		Qt::SizeHint which_ret = which;
		int sigval1 = static_cast<int>(which_ret);
		const QSizeF& constraint_ret = constraint;
		// Cast returned reference into pointer
		QSizeF* sigval2 = const_cast<QSizeF*>(&constraint_ret);

		QSizeF* callback_return_value = vtbl->sizeHint(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsLayout_protectedbase_addChildLayoutItem(void* self, QGraphicsLayoutItem* layoutItem);
	friend void QGraphicsLayout_protectedbase_setGraphicsItem(void* self, QGraphicsItem* item);
	friend void QGraphicsLayout_protectedbase_setOwnedByLayout(void* self, bool ownedByLayout);
};

QGraphicsLayout* QGraphicsLayout_new(struct QGraphicsLayout_VTable* vtbl) {
	return new VirtualQGraphicsLayout(vtbl);
}

QGraphicsLayout* QGraphicsLayout_new2(struct QGraphicsLayout_VTable* vtbl, QGraphicsLayoutItem* parent) {
	return new VirtualQGraphicsLayout(vtbl, parent);
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

void QGraphicsLayout_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom) {

	( (const VirtualQGraphicsLayout*)(self) )->QGraphicsLayout::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));

}

void QGraphicsLayout_virtualbase_invalidate(void* self) {

	( (VirtualQGraphicsLayout*)(self) )->QGraphicsLayout::invalidate();

}

void QGraphicsLayout_virtualbase_updateGeometry(void* self) {

	( (VirtualQGraphicsLayout*)(self) )->QGraphicsLayout::updateGeometry();

}

void QGraphicsLayout_virtualbase_widgetEvent(void* self, QEvent* e) {

	( (VirtualQGraphicsLayout*)(self) )->QGraphicsLayout::widgetEvent(e);

}

void QGraphicsLayout_virtualbase_setGeometry(void* self, QRectF* rect) {

	( (VirtualQGraphicsLayout*)(self) )->QGraphicsLayout::setGeometry(*rect);

}

void QGraphicsLayout_protectedbase_addChildLayoutItem(void* self, QGraphicsLayoutItem* layoutItem) {
	VirtualQGraphicsLayout* self_cast = static_cast<VirtualQGraphicsLayout*>( (QGraphicsLayout*)(self) );
	
	self_cast->addChildLayoutItem(layoutItem);

}

void QGraphicsLayout_protectedbase_setGraphicsItem(void* self, QGraphicsItem* item) {
	VirtualQGraphicsLayout* self_cast = static_cast<VirtualQGraphicsLayout*>( (QGraphicsLayout*)(self) );
	
	self_cast->setGraphicsItem(item);

}

void QGraphicsLayout_protectedbase_setOwnedByLayout(void* self, bool ownedByLayout) {
	VirtualQGraphicsLayout* self_cast = static_cast<VirtualQGraphicsLayout*>( (QGraphicsLayout*)(self) );
	
	self_cast->setOwnedByLayout(ownedByLayout);

}

void QGraphicsLayout_delete(QGraphicsLayout* self) {
	delete self;
}

