#include <QEvent>
#include <QGraphicsAnchor>
#include <QGraphicsAnchorLayout>
#include <QGraphicsItem>
#include <QGraphicsLayout>
#include <QGraphicsLayoutItem>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRectF>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qgraphicsanchorlayout.h>
#include "gen_qgraphicsanchorlayout.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QGraphicsAnchor_virtbase(QGraphicsAnchor* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGraphicsAnchor_metaObject(const QGraphicsAnchor* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsAnchor_metacast(QGraphicsAnchor* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsAnchor_metacall(QGraphicsAnchor* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsAnchor_tr(const char* s) {
	QString _ret = QGraphicsAnchor::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsAnchor_trUtf8(const char* s) {
	QString _ret = QGraphicsAnchor::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsAnchor_setSpacing(QGraphicsAnchor* self, double spacing) {
	self->setSpacing(static_cast<qreal>(spacing));
}

void QGraphicsAnchor_unsetSpacing(QGraphicsAnchor* self) {
	self->unsetSpacing();
}

double QGraphicsAnchor_spacing(const QGraphicsAnchor* self) {
	qreal _ret = self->spacing();
	return static_cast<double>(_ret);
}

void QGraphicsAnchor_setSizePolicy(QGraphicsAnchor* self, int policy) {
	self->setSizePolicy(static_cast<QSizePolicy::Policy>(policy));
}

int QGraphicsAnchor_sizePolicy(const QGraphicsAnchor* self) {
	QSizePolicy::Policy _ret = self->sizePolicy();
	return static_cast<int>(_ret);
}

struct miqt_string QGraphicsAnchor_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsAnchor::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsAnchor_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsAnchor::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsAnchor_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsAnchor::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsAnchor_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsAnchor::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QGraphicsAnchor_staticMetaObject() { return &QGraphicsAnchor::staticMetaObject; }
void QGraphicsAnchor_delete(QGraphicsAnchor* self) {
	delete self;
}

class VirtualQGraphicsAnchorLayout final : public QGraphicsAnchorLayout {
	struct QGraphicsAnchorLayout_VTable* vtbl;
public:

	VirtualQGraphicsAnchorLayout(struct QGraphicsAnchorLayout_VTable* vtbl): QGraphicsAnchorLayout(), vtbl(vtbl) {};
	VirtualQGraphicsAnchorLayout(struct QGraphicsAnchorLayout_VTable* vtbl, QGraphicsLayoutItem* parent): QGraphicsAnchorLayout(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsAnchorLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void removeAt(int index) override {
		if (vtbl->removeAt == 0) {
			QGraphicsAnchorLayout::removeAt(index);
			return;
		}

		int sigval1 = index;

		vtbl->removeAt(vtbl, this, sigval1);

	}

	friend void QGraphicsAnchorLayout_virtualbase_removeAt(void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsAnchorLayout::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	friend void QGraphicsAnchorLayout_virtualbase_setGeometry(void* self, QRectF* rect);

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QGraphicsAnchorLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsAnchorLayout_virtualbase_count(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QGraphicsLayoutItem* itemAt(int index) const override {
		if (vtbl->itemAt == 0) {
			return QGraphicsAnchorLayout::itemAt(index);
		}

		int sigval1 = index;

		QGraphicsLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QGraphicsLayoutItem* QGraphicsAnchorLayout_virtualbase_itemAt(const void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QGraphicsAnchorLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	friend void QGraphicsAnchorLayout_virtualbase_invalidate(void* self);

	// Subclass to allow providing a Go implementation
	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsAnchorLayout::sizeHint(which, constraint);
		}

		Qt::SizeHint which_ret = which;
		int sigval1 = static_cast<int>(which_ret);
		const QSizeF& constraint_ret = constraint;
		// Cast returned reference into pointer
		QSizeF* sigval2 = const_cast<QSizeF*>(&constraint_ret);

		QSizeF* callback_return_value = vtbl->sizeHint(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QSizeF* QGraphicsAnchorLayout_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint);

	// Subclass to allow providing a Go implementation
	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsAnchorLayout::getContentsMargins(left, top, right, bottom);
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

	friend void QGraphicsAnchorLayout_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsAnchorLayout::updateGeometry();
			return;
		}


		vtbl->updateGeometry(vtbl, this);

	}

	friend void QGraphicsAnchorLayout_virtualbase_updateGeometry(void* self);

	// Subclass to allow providing a Go implementation
	virtual void widgetEvent(QEvent* e) override {
		if (vtbl->widgetEvent == 0) {
			QGraphicsAnchorLayout::widgetEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->widgetEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsAnchorLayout_virtualbase_widgetEvent(void* self, QEvent* e);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsAnchorLayout_protectedbase_addChildLayoutItem(void* self, QGraphicsLayoutItem* layoutItem);
	friend void QGraphicsAnchorLayout_protectedbase_setGraphicsItem(void* self, QGraphicsItem* item);
	friend void QGraphicsAnchorLayout_protectedbase_setOwnedByLayout(void* self, bool ownedByLayout);
};

QGraphicsAnchorLayout* QGraphicsAnchorLayout_new(struct QGraphicsAnchorLayout_VTable* vtbl) {
	return new VirtualQGraphicsAnchorLayout(vtbl);
}

QGraphicsAnchorLayout* QGraphicsAnchorLayout_new2(struct QGraphicsAnchorLayout_VTable* vtbl, QGraphicsLayoutItem* parent) {
	return new VirtualQGraphicsAnchorLayout(vtbl, parent);
}

void QGraphicsAnchorLayout_virtbase(QGraphicsAnchorLayout* src, QGraphicsLayout** outptr_QGraphicsLayout) {
	*outptr_QGraphicsLayout = static_cast<QGraphicsLayout*>(src);
}

QGraphicsAnchor* QGraphicsAnchorLayout_addAnchor(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, int firstEdge, QGraphicsLayoutItem* secondItem, int secondEdge) {
	return self->addAnchor(firstItem, static_cast<Qt::AnchorPoint>(firstEdge), secondItem, static_cast<Qt::AnchorPoint>(secondEdge));
}

QGraphicsAnchor* QGraphicsAnchorLayout_anchor(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, int firstEdge, QGraphicsLayoutItem* secondItem, int secondEdge) {
	return self->anchor(firstItem, static_cast<Qt::AnchorPoint>(firstEdge), secondItem, static_cast<Qt::AnchorPoint>(secondEdge));
}

void QGraphicsAnchorLayout_addCornerAnchors(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, int firstCorner, QGraphicsLayoutItem* secondItem, int secondCorner) {
	self->addCornerAnchors(firstItem, static_cast<Qt::Corner>(firstCorner), secondItem, static_cast<Qt::Corner>(secondCorner));
}

void QGraphicsAnchorLayout_addAnchors(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, QGraphicsLayoutItem* secondItem) {
	self->addAnchors(firstItem, secondItem);
}

void QGraphicsAnchorLayout_setHorizontalSpacing(QGraphicsAnchorLayout* self, double spacing) {
	self->setHorizontalSpacing(static_cast<qreal>(spacing));
}

void QGraphicsAnchorLayout_setVerticalSpacing(QGraphicsAnchorLayout* self, double spacing) {
	self->setVerticalSpacing(static_cast<qreal>(spacing));
}

void QGraphicsAnchorLayout_setSpacing(QGraphicsAnchorLayout* self, double spacing) {
	self->setSpacing(static_cast<qreal>(spacing));
}

double QGraphicsAnchorLayout_horizontalSpacing(const QGraphicsAnchorLayout* self) {
	qreal _ret = self->horizontalSpacing();
	return static_cast<double>(_ret);
}

double QGraphicsAnchorLayout_verticalSpacing(const QGraphicsAnchorLayout* self) {
	qreal _ret = self->verticalSpacing();
	return static_cast<double>(_ret);
}

void QGraphicsAnchorLayout_removeAt(QGraphicsAnchorLayout* self, int index) {
	self->removeAt(static_cast<int>(index));
}

void QGraphicsAnchorLayout_setGeometry(QGraphicsAnchorLayout* self, QRectF* rect) {
	self->setGeometry(*rect);
}

int QGraphicsAnchorLayout_count(const QGraphicsAnchorLayout* self) {
	return self->count();
}

QGraphicsLayoutItem* QGraphicsAnchorLayout_itemAt(const QGraphicsAnchorLayout* self, int index) {
	return self->itemAt(static_cast<int>(index));
}

void QGraphicsAnchorLayout_invalidate(QGraphicsAnchorLayout* self) {
	self->invalidate();
}

void QGraphicsAnchorLayout_addAnchors3(QGraphicsAnchorLayout* self, QGraphicsLayoutItem* firstItem, QGraphicsLayoutItem* secondItem, int orientations) {
	self->addAnchors(firstItem, secondItem, static_cast<Qt::Orientations>(orientations));
}

void QGraphicsAnchorLayout_virtualbase_removeAt(void* self, int index) {

	( (VirtualQGraphicsAnchorLayout*)(self) )->QGraphicsAnchorLayout::removeAt(static_cast<int>(index));

}

void QGraphicsAnchorLayout_virtualbase_setGeometry(void* self, QRectF* rect) {

	( (VirtualQGraphicsAnchorLayout*)(self) )->QGraphicsAnchorLayout::setGeometry(*rect);

}

int QGraphicsAnchorLayout_virtualbase_count(const void* self) {

	return ( (const VirtualQGraphicsAnchorLayout*)(self) )->QGraphicsAnchorLayout::count();

}

QGraphicsLayoutItem* QGraphicsAnchorLayout_virtualbase_itemAt(const void* self, int index) {

	return ( (const VirtualQGraphicsAnchorLayout*)(self) )->QGraphicsAnchorLayout::itemAt(static_cast<int>(index));

}

void QGraphicsAnchorLayout_virtualbase_invalidate(void* self) {

	( (VirtualQGraphicsAnchorLayout*)(self) )->QGraphicsAnchorLayout::invalidate();

}

QSizeF* QGraphicsAnchorLayout_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint) {

	return new QSizeF(( (const VirtualQGraphicsAnchorLayout*)(self) )->QGraphicsAnchorLayout::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));

}

void QGraphicsAnchorLayout_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom) {

	( (const VirtualQGraphicsAnchorLayout*)(self) )->QGraphicsAnchorLayout::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));

}

void QGraphicsAnchorLayout_virtualbase_updateGeometry(void* self) {

	( (VirtualQGraphicsAnchorLayout*)(self) )->QGraphicsAnchorLayout::updateGeometry();

}

void QGraphicsAnchorLayout_virtualbase_widgetEvent(void* self, QEvent* e) {

	( (VirtualQGraphicsAnchorLayout*)(self) )->QGraphicsAnchorLayout::widgetEvent(e);

}

void QGraphicsAnchorLayout_protectedbase_addChildLayoutItem(void* self, QGraphicsLayoutItem* layoutItem) {
	VirtualQGraphicsAnchorLayout* self_cast = static_cast<VirtualQGraphicsAnchorLayout*>( (QGraphicsAnchorLayout*)(self) );
	
	self_cast->addChildLayoutItem(layoutItem);

}

void QGraphicsAnchorLayout_protectedbase_setGraphicsItem(void* self, QGraphicsItem* item) {
	VirtualQGraphicsAnchorLayout* self_cast = static_cast<VirtualQGraphicsAnchorLayout*>( (QGraphicsAnchorLayout*)(self) );
	
	self_cast->setGraphicsItem(item);

}

void QGraphicsAnchorLayout_protectedbase_setOwnedByLayout(void* self, bool ownedByLayout) {
	VirtualQGraphicsAnchorLayout* self_cast = static_cast<VirtualQGraphicsAnchorLayout*>( (QGraphicsAnchorLayout*)(self) );
	
	self_cast->setOwnedByLayout(ownedByLayout);

}

void QGraphicsAnchorLayout_delete(QGraphicsAnchorLayout* self) {
	delete self;
}

