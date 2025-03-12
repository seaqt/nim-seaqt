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

const QMetaObject* QGraphicsAnchor_staticMetaObject() { return &QGraphicsAnchor::staticMetaObject; }

void QGraphicsAnchor_delete(QGraphicsAnchor* self) {
	delete self;
}

class VirtualQGraphicsAnchorLayout final : public QGraphicsAnchorLayout {
	const QGraphicsAnchorLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsAnchorLayout_VTable* QGraphicsAnchorLayout_vtbl(const VirtualQGraphicsAnchorLayout* self);
	friend void* QGraphicsAnchorLayout_vdata(const VirtualQGraphicsAnchorLayout* self);
	friend void QGraphicsAnchorLayout_setVdata(VirtualQGraphicsAnchorLayout* self, void* vdata);

	VirtualQGraphicsAnchorLayout(const QGraphicsAnchorLayout_VTable* vtbl, void* vdata): QGraphicsAnchorLayout(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsAnchorLayout(const QGraphicsAnchorLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent): QGraphicsAnchorLayout(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsAnchorLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void removeAt(int index) override {
		if (vtbl->removeAt == 0) {
			QGraphicsAnchorLayout::removeAt(index);
			return;
		}

		int sigval1 = index;

		vtbl->removeAt(this, sigval1);

	}

	friend void QGraphicsAnchorLayout_virtualbase_removeAt(VirtualQGraphicsAnchorLayout* self, int index);

	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsAnchorLayout::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QGraphicsAnchorLayout_virtualbase_setGeometry(VirtualQGraphicsAnchorLayout* self, QRectF* rect);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return QGraphicsAnchorLayout::count();
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsAnchorLayout_virtualbase_count(const VirtualQGraphicsAnchorLayout* self);

	virtual QGraphicsLayoutItem* itemAt(int index) const override {
		if (vtbl->itemAt == 0) {
			return QGraphicsAnchorLayout::itemAt(index);
		}

		int sigval1 = index;

		QGraphicsLayoutItem* callback_return_value = vtbl->itemAt(this, sigval1);

		return callback_return_value;
	}

	friend QGraphicsLayoutItem* QGraphicsAnchorLayout_virtualbase_itemAt(const VirtualQGraphicsAnchorLayout* self, int index);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QGraphicsAnchorLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QGraphicsAnchorLayout_virtualbase_invalidate(VirtualQGraphicsAnchorLayout* self);

	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsAnchorLayout::sizeHint(which, constraint);
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

	friend QSizeF* QGraphicsAnchorLayout_virtualbase_sizeHint(const VirtualQGraphicsAnchorLayout* self, int which, QSizeF* constraint);

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

		vtbl->getContentsMargins(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QGraphicsAnchorLayout_virtualbase_getContentsMargins(const VirtualQGraphicsAnchorLayout* self, double* left, double* top, double* right, double* bottom);

	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsAnchorLayout::updateGeometry();
			return;
		}


		vtbl->updateGeometry(this);

	}

	friend void QGraphicsAnchorLayout_virtualbase_updateGeometry(VirtualQGraphicsAnchorLayout* self);

	virtual void widgetEvent(QEvent* e) override {
		if (vtbl->widgetEvent == 0) {
			QGraphicsAnchorLayout::widgetEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->widgetEvent(this, sigval1);

	}

	friend void QGraphicsAnchorLayout_virtualbase_widgetEvent(VirtualQGraphicsAnchorLayout* self, QEvent* e);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QGraphicsAnchorLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QGraphicsAnchorLayout_virtualbase_isEmpty(const VirtualQGraphicsAnchorLayout* self);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsAnchorLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsAnchorLayout* self, QGraphicsLayoutItem* layoutItem);
	friend void QGraphicsAnchorLayout_protectedbase_setGraphicsItem(VirtualQGraphicsAnchorLayout* self, QGraphicsItem* item);
	friend void QGraphicsAnchorLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsAnchorLayout* self, bool ownedByLayout);
};

VirtualQGraphicsAnchorLayout* QGraphicsAnchorLayout_new(const QGraphicsAnchorLayout_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsAnchorLayout(vtbl, vdata);
}

VirtualQGraphicsAnchorLayout* QGraphicsAnchorLayout_new2(const QGraphicsAnchorLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent) {
	return new VirtualQGraphicsAnchorLayout(vtbl, vdata, parent);
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

void QGraphicsAnchorLayout_virtualbase_removeAt(VirtualQGraphicsAnchorLayout* self, int index) {

	self->QGraphicsAnchorLayout::removeAt(static_cast<int>(index));
}

void QGraphicsAnchorLayout_virtualbase_setGeometry(VirtualQGraphicsAnchorLayout* self, QRectF* rect) {

	self->QGraphicsAnchorLayout::setGeometry(*rect);
}

int QGraphicsAnchorLayout_virtualbase_count(const VirtualQGraphicsAnchorLayout* self) {

	return self->QGraphicsAnchorLayout::count();
}

QGraphicsLayoutItem* QGraphicsAnchorLayout_virtualbase_itemAt(const VirtualQGraphicsAnchorLayout* self, int index) {

	return self->QGraphicsAnchorLayout::itemAt(static_cast<int>(index));
}

void QGraphicsAnchorLayout_virtualbase_invalidate(VirtualQGraphicsAnchorLayout* self) {

	self->QGraphicsAnchorLayout::invalidate();
}

QSizeF* QGraphicsAnchorLayout_virtualbase_sizeHint(const VirtualQGraphicsAnchorLayout* self, int which, QSizeF* constraint) {

	return new QSizeF(self->QGraphicsAnchorLayout::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

void QGraphicsAnchorLayout_virtualbase_getContentsMargins(const VirtualQGraphicsAnchorLayout* self, double* left, double* top, double* right, double* bottom) {

	self->QGraphicsAnchorLayout::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsAnchorLayout_virtualbase_updateGeometry(VirtualQGraphicsAnchorLayout* self) {

	self->QGraphicsAnchorLayout::updateGeometry();
}

void QGraphicsAnchorLayout_virtualbase_widgetEvent(VirtualQGraphicsAnchorLayout* self, QEvent* e) {

	self->QGraphicsAnchorLayout::widgetEvent(e);
}

bool QGraphicsAnchorLayout_virtualbase_isEmpty(const VirtualQGraphicsAnchorLayout* self) {

	return self->QGraphicsAnchorLayout::isEmpty();
}

const QGraphicsAnchorLayout_VTable* QGraphicsAnchorLayout_vtbl(const VirtualQGraphicsAnchorLayout* self) { return self->vtbl; }
void* QGraphicsAnchorLayout_vdata(const VirtualQGraphicsAnchorLayout* self) { return self->vdata; }
void QGraphicsAnchorLayout_setVdata(VirtualQGraphicsAnchorLayout* self, void* vdata) { self->vdata = vdata; }

void QGraphicsAnchorLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsAnchorLayout* self, QGraphicsLayoutItem* layoutItem) {
	self->addChildLayoutItem(layoutItem);
}

void QGraphicsAnchorLayout_protectedbase_setGraphicsItem(VirtualQGraphicsAnchorLayout* self, QGraphicsItem* item) {
	self->setGraphicsItem(item);
}

void QGraphicsAnchorLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsAnchorLayout* self, bool ownedByLayout) {
	self->setOwnedByLayout(ownedByLayout);
}

void QGraphicsAnchorLayout_delete(QGraphicsAnchorLayout* self) {
	delete self;
}

