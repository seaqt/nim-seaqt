#include <QChildEvent>
#include <QCursor>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHoverEvent>
#include <QInputMethodEvent>
#include <QJSValue>
#include <QKeyEvent>
#include <QList>
#include <QMatrix4x4>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QObject>
#include <QPointF>
#include <QQmlParserStatus>
#include <QQuickItem>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__ItemChangeData
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__UpdatePaintNodeData
#include <QQuickTransform>
#include <QQuickWindow>
#include <QRectF>
#include <QSGNode>
#include <QSGTextureProvider>
#include <QSize>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QTransform>
#include <QVariant>
#include <QWheelEvent>
#include <qquickitem.h>
#include "gen_qquickitem.h"
class VirtualQQuickTransform final : public QQuickTransform {
	const QQuickTransform_VTable* vtbl;
	void* vdata;
public:
	friend const QQuickTransform_VTable* QQuickTransform_vtbl(const VirtualQQuickTransform* self);
	friend void* QQuickTransform_vdata(const VirtualQQuickTransform* self);
	friend void QQuickTransform_setVdata(VirtualQQuickTransform* self, void* vdata);

	VirtualQQuickTransform(const QQuickTransform_VTable* vtbl, void* vdata): QQuickTransform(), vtbl(vtbl), vdata(vdata) {}
	VirtualQQuickTransform(const QQuickTransform_VTable* vtbl, void* vdata, QObject* parent): QQuickTransform(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQuickTransform() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickTransform::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickTransform_virtualbase_metaObject(const VirtualQQuickTransform* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickTransform::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickTransform_virtualbase_metacast(VirtualQQuickTransform* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickTransform::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickTransform_virtualbase_metacall(VirtualQQuickTransform* self, int param1, int param2, void** param3);

	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(this, sigval1);

	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickTransform::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickTransform_virtualbase_event(VirtualQQuickTransform* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickTransform::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickTransform_virtualbase_eventFilter(VirtualQQuickTransform* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickTransform::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QQuickTransform_virtualbase_timerEvent(VirtualQQuickTransform* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickTransform::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QQuickTransform_virtualbase_childEvent(VirtualQQuickTransform* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickTransform::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QQuickTransform_virtualbase_customEvent(VirtualQQuickTransform* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickTransform::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QQuickTransform_virtualbase_connectNotify(VirtualQQuickTransform* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickTransform::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QQuickTransform_virtualbase_disconnectNotify(VirtualQQuickTransform* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QQuickTransform_protectedbase_update(VirtualQQuickTransform* self);
	friend QObject* QQuickTransform_protectedbase_sender(const VirtualQQuickTransform* self);
	friend int QQuickTransform_protectedbase_senderSignalIndex(const VirtualQQuickTransform* self);
	friend int QQuickTransform_protectedbase_receivers(const VirtualQQuickTransform* self, const char* signal);
	friend bool QQuickTransform_protectedbase_isSignalConnected(const VirtualQQuickTransform* self, QMetaMethod* signal);
};

VirtualQQuickTransform* QQuickTransform_new(const QQuickTransform_VTable* vtbl, void* vdata) {
	return new VirtualQQuickTransform(vtbl, vdata);
}

VirtualQQuickTransform* QQuickTransform_new2(const QQuickTransform_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQQuickTransform(vtbl, vdata, parent);
}

void QQuickTransform_virtbase(QQuickTransform* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickTransform_metaObject(const QQuickTransform* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickTransform_metacast(QQuickTransform* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickTransform_metacall(QQuickTransform* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickTransform_tr(const char* s) {
	QString _ret = QQuickTransform::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickTransform_appendToItem(QQuickTransform* self, QQuickItem* param1) {
	self->appendToItem(param1);
}

void QQuickTransform_prependToItem(QQuickTransform* self, QQuickItem* param1) {
	self->prependToItem(param1);
}

void QQuickTransform_applyTo(const QQuickTransform* self, QMatrix4x4* matrix) {
	self->applyTo(matrix);
}

struct miqt_string QQuickTransform_tr2(const char* s, const char* c) {
	QString _ret = QQuickTransform::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTransform_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickTransform::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickTransform_virtualbase_metaObject(const VirtualQQuickTransform* self) {

	return (QMetaObject*) self->QQuickTransform::metaObject();
}

void* QQuickTransform_virtualbase_metacast(VirtualQQuickTransform* self, const char* param1) {

	return self->QQuickTransform::qt_metacast(param1);
}

int QQuickTransform_virtualbase_metacall(VirtualQQuickTransform* self, int param1, int param2, void** param3) {

	return self->QQuickTransform::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQuickTransform_virtualbase_event(VirtualQQuickTransform* self, QEvent* event) {

	return self->QQuickTransform::event(event);
}

bool QQuickTransform_virtualbase_eventFilter(VirtualQQuickTransform* self, QObject* watched, QEvent* event) {

	return self->QQuickTransform::eventFilter(watched, event);
}

void QQuickTransform_virtualbase_timerEvent(VirtualQQuickTransform* self, QTimerEvent* event) {

	self->QQuickTransform::timerEvent(event);
}

void QQuickTransform_virtualbase_childEvent(VirtualQQuickTransform* self, QChildEvent* event) {

	self->QQuickTransform::childEvent(event);
}

void QQuickTransform_virtualbase_customEvent(VirtualQQuickTransform* self, QEvent* event) {

	self->QQuickTransform::customEvent(event);
}

void QQuickTransform_virtualbase_connectNotify(VirtualQQuickTransform* self, QMetaMethod* signal) {

	self->QQuickTransform::connectNotify(*signal);
}

void QQuickTransform_virtualbase_disconnectNotify(VirtualQQuickTransform* self, QMetaMethod* signal) {

	self->QQuickTransform::disconnectNotify(*signal);
}

const QMetaObject* QQuickTransform_staticMetaObject() { return &QQuickTransform::staticMetaObject; }

const QQuickTransform_VTable* QQuickTransform_vtbl(const VirtualQQuickTransform* self) { return self->vtbl; }
void* QQuickTransform_vdata(const VirtualQQuickTransform* self) { return self->vdata; }
void QQuickTransform_setVdata(VirtualQQuickTransform* self, void* vdata) { self->vdata = vdata; }

void QQuickTransform_protectedbase_update(VirtualQQuickTransform* self) {
	self->update();
}

QObject* QQuickTransform_protectedbase_sender(const VirtualQQuickTransform* self) {
	return self->sender();
}

int QQuickTransform_protectedbase_senderSignalIndex(const VirtualQQuickTransform* self) {
	return self->senderSignalIndex();
}

int QQuickTransform_protectedbase_receivers(const VirtualQQuickTransform* self, const char* signal) {
	return self->receivers(signal);
}

bool QQuickTransform_protectedbase_isSignalConnected(const VirtualQQuickTransform* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQuickTransform_delete(QQuickTransform* self) {
	delete self;
}

class VirtualQQuickItem final : public QQuickItem {
	const QQuickItem_VTable* vtbl;
	void* vdata;
public:
	friend const QQuickItem_VTable* QQuickItem_vtbl(const VirtualQQuickItem* self);
	friend void* QQuickItem_vdata(const VirtualQQuickItem* self);
	friend void QQuickItem_setVdata(VirtualQQuickItem* self, void* vdata);

	VirtualQQuickItem(const QQuickItem_VTable* vtbl, void* vdata): QQuickItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQQuickItem(const QQuickItem_VTable* vtbl, void* vdata, QQuickItem* parent): QQuickItem(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQuickItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickItem::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickItem_virtualbase_metaObject(const VirtualQQuickItem* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickItem::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickItem_virtualbase_metacast(VirtualQQuickItem* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickItem::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickItem_virtualbase_metacall(VirtualQQuickItem* self, int param1, int param2, void** param3);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QQuickItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QQuickItem_virtualbase_boundingRect(const VirtualQQuickItem* self);

	virtual QRectF clipRect() const override {
		if (vtbl->clipRect == 0) {
			return QQuickItem::clipRect();
		}


		QRectF* callback_return_value = vtbl->clipRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QQuickItem_virtualbase_clipRect(const VirtualQQuickItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QQuickItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_contains(const VirtualQQuickItem* self, QPointF* point);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QQuickItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QQuickItem_virtualbase_inputMethodQuery(const VirtualQQuickItem* self, int query);

	virtual bool isTextureProvider() const override {
		if (vtbl->isTextureProvider == 0) {
			return QQuickItem::isTextureProvider();
		}


		bool callback_return_value = vtbl->isTextureProvider(this);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_isTextureProvider(const VirtualQQuickItem* self);

	virtual QSGTextureProvider* textureProvider() const override {
		if (vtbl->textureProvider == 0) {
			return QQuickItem::textureProvider();
		}


		QSGTextureProvider* callback_return_value = vtbl->textureProvider(this);

		return callback_return_value;
	}

	friend QSGTextureProvider* QQuickItem_virtualbase_textureProvider(const VirtualQQuickItem* self);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickItem::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_event(VirtualQQuickItem* self, QEvent* param1);

	virtual void itemChange(QQuickItem::ItemChange param1, const QQuickItem::ItemChangeData& param2) override {
		if (vtbl->itemChange == 0) {
			QQuickItem::itemChange(param1, param2);
			return;
		}

		QQuickItem::ItemChange param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		const QQuickItem::ItemChangeData& param2_ret = param2;
		// Cast returned reference into pointer
		QQuickItem__ItemChangeData* sigval2 = const_cast<QQuickItem::ItemChangeData*>(&param2_ret);

		vtbl->itemChange(this, sigval1, sigval2);

	}

	friend void QQuickItem_virtualbase_itemChange(VirtualQQuickItem* self, int param1, QQuickItem__ItemChangeData* param2);

	virtual void geometryChange(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (vtbl->geometryChange == 0) {
			QQuickItem::geometryChange(newGeometry, oldGeometry);
			return;
		}

		const QRectF& newGeometry_ret = newGeometry;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&newGeometry_ret);
		const QRectF& oldGeometry_ret = oldGeometry;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&oldGeometry_ret);

		vtbl->geometryChange(this, sigval1, sigval2);

	}

	friend void QQuickItem_virtualbase_geometryChange(VirtualQQuickItem* self, QRectF* newGeometry, QRectF* oldGeometry);

	virtual void classBegin() override {
		if (vtbl->classBegin == 0) {
			QQuickItem::classBegin();
			return;
		}


		vtbl->classBegin(this);

	}

	friend void QQuickItem_virtualbase_classBegin(VirtualQQuickItem* self);

	virtual void componentComplete() override {
		if (vtbl->componentComplete == 0) {
			QQuickItem::componentComplete();
			return;
		}


		vtbl->componentComplete(this);

	}

	friend void QQuickItem_virtualbase_componentComplete(VirtualQQuickItem* self);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_keyPressEvent(VirtualQQuickItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_keyReleaseEvent(VirtualQQuickItem* self, QKeyEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QQuickItem::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_inputMethodEvent(VirtualQQuickItem* self, QInputMethodEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickItem::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_focusInEvent(VirtualQQuickItem* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickItem::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_focusOutEvent(VirtualQQuickItem* self, QFocusEvent* param1);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickItem::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_mousePressEvent(VirtualQQuickItem* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickItem::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_mouseMoveEvent(VirtualQQuickItem* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickItem::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_mouseReleaseEvent(VirtualQQuickItem* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickItem::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_mouseDoubleClickEvent(VirtualQQuickItem* self, QMouseEvent* event);

	virtual void mouseUngrabEvent() override {
		if (vtbl->mouseUngrabEvent == 0) {
			QQuickItem::mouseUngrabEvent();
			return;
		}


		vtbl->mouseUngrabEvent(this);

	}

	friend void QQuickItem_virtualbase_mouseUngrabEvent(VirtualQQuickItem* self);

	virtual void touchUngrabEvent() override {
		if (vtbl->touchUngrabEvent == 0) {
			QQuickItem::touchUngrabEvent();
			return;
		}


		vtbl->touchUngrabEvent(this);

	}

	friend void QQuickItem_virtualbase_touchUngrabEvent(VirtualQQuickItem* self);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QQuickItem::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_wheelEvent(VirtualQQuickItem* self, QWheelEvent* event);

	virtual void touchEvent(QTouchEvent* event) override {
		if (vtbl->touchEvent == 0) {
			QQuickItem::touchEvent(event);
			return;
		}

		QTouchEvent* sigval1 = event;

		vtbl->touchEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_touchEvent(VirtualQQuickItem* self, QTouchEvent* event);

	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QQuickItem::hoverEnterEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_hoverEnterEvent(VirtualQQuickItem* self, QHoverEvent* event);

	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QQuickItem::hoverMoveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_hoverMoveEvent(VirtualQQuickItem* self, QHoverEvent* event);

	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QQuickItem::hoverLeaveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_hoverLeaveEvent(VirtualQQuickItem* self, QHoverEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QQuickItem::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_dragEnterEvent(VirtualQQuickItem* self, QDragEnterEvent* param1);

	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QQuickItem::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_dragMoveEvent(VirtualQQuickItem* self, QDragMoveEvent* param1);

	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QQuickItem::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_dragLeaveEvent(VirtualQQuickItem* self, QDragLeaveEvent* param1);

	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QQuickItem::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_dropEvent(VirtualQQuickItem* self, QDropEvent* param1);

	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (vtbl->childMouseEventFilter == 0) {
			return QQuickItem::childMouseEventFilter(param1, param2);
		}

		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->childMouseEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_childMouseEventFilter(VirtualQQuickItem* self, QQuickItem* param1, QEvent* param2);

	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (vtbl->updatePaintNode == 0) {
			return QQuickItem::updatePaintNode(param1, param2);
		}

		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;

		QSGNode* callback_return_value = vtbl->updatePaintNode(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend QSGNode* QQuickItem_virtualbase_updatePaintNode(VirtualQQuickItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);

	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QQuickItem::releaseResources();
			return;
		}


		vtbl->releaseResources(this);

	}

	friend void QQuickItem_virtualbase_releaseResources(VirtualQQuickItem* self);

	virtual void updatePolish() override {
		if (vtbl->updatePolish == 0) {
			QQuickItem::updatePolish();
			return;
		}


		vtbl->updatePolish(this);

	}

	friend void QQuickItem_virtualbase_updatePolish(VirtualQQuickItem* self);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickItem::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_eventFilter(VirtualQQuickItem* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickItem::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_timerEvent(VirtualQQuickItem* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickItem::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_childEvent(VirtualQQuickItem* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickItem::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QQuickItem_virtualbase_customEvent(VirtualQQuickItem* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickItem::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QQuickItem_virtualbase_connectNotify(VirtualQQuickItem* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickItem::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QQuickItem_virtualbase_disconnectNotify(VirtualQQuickItem* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend bool QQuickItem_protectedbase_isComponentComplete(const VirtualQQuickItem* self);
	friend void QQuickItem_protectedbase_updateInputMethod(VirtualQQuickItem* self);
	friend bool QQuickItem_protectedbase_widthValid(const VirtualQQuickItem* self);
	friend bool QQuickItem_protectedbase_heightValid(const VirtualQQuickItem* self);
	friend void QQuickItem_protectedbase_setImplicitSize(VirtualQQuickItem* self, double param1, double param2);
	friend void QQuickItem_protectedbase_updateInputMethod1(VirtualQQuickItem* self, int queries);
	friend QObject* QQuickItem_protectedbase_sender(const VirtualQQuickItem* self);
	friend int QQuickItem_protectedbase_senderSignalIndex(const VirtualQQuickItem* self);
	friend int QQuickItem_protectedbase_receivers(const VirtualQQuickItem* self, const char* signal);
	friend bool QQuickItem_protectedbase_isSignalConnected(const VirtualQQuickItem* self, QMetaMethod* signal);
};

VirtualQQuickItem* QQuickItem_new(const QQuickItem_VTable* vtbl, void* vdata) {
	return new VirtualQQuickItem(vtbl, vdata);
}

VirtualQQuickItem* QQuickItem_new2(const QQuickItem_VTable* vtbl, void* vdata, QQuickItem* parent) {
	return new VirtualQQuickItem(vtbl, vdata, parent);
}

void QQuickItem_virtbase(QQuickItem* src, QObject** outptr_QObject, QQmlParserStatus** outptr_QQmlParserStatus) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QQmlParserStatus = static_cast<QQmlParserStatus*>(src);
}

QMetaObject* QQuickItem_metaObject(const QQuickItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickItem_metacast(QQuickItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickItem_metacall(QQuickItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickItem_tr(const char* s) {
	QString _ret = QQuickItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QQuickWindow* QQuickItem_window(const QQuickItem* self) {
	return self->window();
}

QQuickItem* QQuickItem_parentItem(const QQuickItem* self) {
	return self->parentItem();
}

void QQuickItem_setParentItem(QQuickItem* self, QQuickItem* parent) {
	self->setParentItem(parent);
}

void QQuickItem_stackBefore(QQuickItem* self, QQuickItem* param1) {
	self->stackBefore(param1);
}

void QQuickItem_stackAfter(QQuickItem* self, QQuickItem* param1) {
	self->stackAfter(param1);
}

QRectF* QQuickItem_childrenRect(QQuickItem* self) {
	return new QRectF(self->childrenRect());
}

struct miqt_array /* of QQuickItem* */  QQuickItem_childItems(const QQuickItem* self) {
	QList<QQuickItem *> _ret = self->childItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QQuickItem** _arr = static_cast<QQuickItem**>(malloc(sizeof(QQuickItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QQuickItem_clip(const QQuickItem* self) {
	return self->clip();
}

void QQuickItem_setClip(QQuickItem* self, bool clip) {
	self->setClip(clip);
}

struct miqt_string QQuickItem_state(const QQuickItem* self) {
	QString _ret = self->state();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickItem_setState(QQuickItem* self, struct miqt_string state) {
	QString state_QString = QString::fromUtf8(state.data, state.len);
	self->setState(state_QString);
}

double QQuickItem_baselineOffset(const QQuickItem* self) {
	qreal _ret = self->baselineOffset();
	return static_cast<double>(_ret);
}

void QQuickItem_setBaselineOffset(QQuickItem* self, double baselineOffset) {
	self->setBaselineOffset(static_cast<qreal>(baselineOffset));
}

double QQuickItem_x(const QQuickItem* self) {
	qreal _ret = self->x();
	return static_cast<double>(_ret);
}

double QQuickItem_y(const QQuickItem* self) {
	qreal _ret = self->y();
	return static_cast<double>(_ret);
}

QPointF* QQuickItem_position(const QQuickItem* self) {
	return new QPointF(self->position());
}

void QQuickItem_setX(QQuickItem* self, double x) {
	self->setX(static_cast<qreal>(x));
}

void QQuickItem_setY(QQuickItem* self, double y) {
	self->setY(static_cast<qreal>(y));
}

void QQuickItem_setPosition(QQuickItem* self, QPointF* position) {
	self->setPosition(*position);
}

double QQuickItem_width(const QQuickItem* self) {
	qreal _ret = self->width();
	return static_cast<double>(_ret);
}

void QQuickItem_setWidth(QQuickItem* self, double width) {
	self->setWidth(static_cast<qreal>(width));
}

void QQuickItem_resetWidth(QQuickItem* self) {
	self->resetWidth();
}

void QQuickItem_setImplicitWidth(QQuickItem* self, double implicitWidth) {
	self->setImplicitWidth(static_cast<qreal>(implicitWidth));
}

double QQuickItem_implicitWidth(const QQuickItem* self) {
	qreal _ret = self->implicitWidth();
	return static_cast<double>(_ret);
}

double QQuickItem_height(const QQuickItem* self) {
	qreal _ret = self->height();
	return static_cast<double>(_ret);
}

void QQuickItem_setHeight(QQuickItem* self, double height) {
	self->setHeight(static_cast<qreal>(height));
}

void QQuickItem_resetHeight(QQuickItem* self) {
	self->resetHeight();
}

void QQuickItem_setImplicitHeight(QQuickItem* self, double implicitHeight) {
	self->setImplicitHeight(static_cast<qreal>(implicitHeight));
}

double QQuickItem_implicitHeight(const QQuickItem* self) {
	qreal _ret = self->implicitHeight();
	return static_cast<double>(_ret);
}

QSizeF* QQuickItem_size(const QQuickItem* self) {
	return new QSizeF(self->size());
}

void QQuickItem_setSize(QQuickItem* self, QSizeF* size) {
	self->setSize(*size);
}

int QQuickItem_transformOrigin(const QQuickItem* self) {
	QQuickItem::TransformOrigin _ret = self->transformOrigin();
	return static_cast<int>(_ret);
}

void QQuickItem_setTransformOrigin(QQuickItem* self, int transformOrigin) {
	self->setTransformOrigin(static_cast<QQuickItem::TransformOrigin>(transformOrigin));
}

QPointF* QQuickItem_transformOriginPoint(const QQuickItem* self) {
	return new QPointF(self->transformOriginPoint());
}

void QQuickItem_setTransformOriginPoint(QQuickItem* self, QPointF* transformOriginPoint) {
	self->setTransformOriginPoint(*transformOriginPoint);
}

double QQuickItem_z(const QQuickItem* self) {
	qreal _ret = self->z();
	return static_cast<double>(_ret);
}

void QQuickItem_setZ(QQuickItem* self, double z) {
	self->setZ(static_cast<qreal>(z));
}

double QQuickItem_rotation(const QQuickItem* self) {
	qreal _ret = self->rotation();
	return static_cast<double>(_ret);
}

void QQuickItem_setRotation(QQuickItem* self, double rotation) {
	self->setRotation(static_cast<qreal>(rotation));
}

double QQuickItem_scale(const QQuickItem* self) {
	qreal _ret = self->scale();
	return static_cast<double>(_ret);
}

void QQuickItem_setScale(QQuickItem* self, double scale) {
	self->setScale(static_cast<qreal>(scale));
}

double QQuickItem_opacity(const QQuickItem* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

void QQuickItem_setOpacity(QQuickItem* self, double opacity) {
	self->setOpacity(static_cast<qreal>(opacity));
}

bool QQuickItem_isVisible(const QQuickItem* self) {
	return self->isVisible();
}

void QQuickItem_setVisible(QQuickItem* self, bool visible) {
	self->setVisible(visible);
}

bool QQuickItem_isEnabled(const QQuickItem* self) {
	return self->isEnabled();
}

void QQuickItem_setEnabled(QQuickItem* self, bool enabled) {
	self->setEnabled(enabled);
}

bool QQuickItem_smooth(const QQuickItem* self) {
	return self->smooth();
}

void QQuickItem_setSmooth(QQuickItem* self, bool smooth) {
	self->setSmooth(smooth);
}

bool QQuickItem_activeFocusOnTab(const QQuickItem* self) {
	return self->activeFocusOnTab();
}

void QQuickItem_setActiveFocusOnTab(QQuickItem* self, bool activeFocusOnTab) {
	self->setActiveFocusOnTab(activeFocusOnTab);
}

bool QQuickItem_antialiasing(const QQuickItem* self) {
	return self->antialiasing();
}

void QQuickItem_setAntialiasing(QQuickItem* self, bool antialiasing) {
	self->setAntialiasing(antialiasing);
}

void QQuickItem_resetAntialiasing(QQuickItem* self) {
	self->resetAntialiasing();
}

int QQuickItem_flags(const QQuickItem* self) {
	QQuickItem::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QQuickItem_setFlag(QQuickItem* self, int flag) {
	self->setFlag(static_cast<QQuickItem::Flag>(flag));
}

void QQuickItem_setFlags(QQuickItem* self, int flags) {
	self->setFlags(static_cast<QQuickItem::Flags>(flags));
}

QRectF* QQuickItem_boundingRect(const QQuickItem* self) {
	return new QRectF(self->boundingRect());
}

QRectF* QQuickItem_clipRect(const QQuickItem* self) {
	return new QRectF(self->clipRect());
}

QQuickItem* QQuickItem_viewportItem(const QQuickItem* self) {
	return self->viewportItem();
}

bool QQuickItem_hasActiveFocus(const QQuickItem* self) {
	return self->hasActiveFocus();
}

bool QQuickItem_hasFocus(const QQuickItem* self) {
	return self->hasFocus();
}

void QQuickItem_setFocus(QQuickItem* self, bool focus) {
	self->setFocus(focus);
}

void QQuickItem_setFocus2(QQuickItem* self, bool focus, int reason) {
	self->setFocus(focus, static_cast<Qt::FocusReason>(reason));
}

bool QQuickItem_isFocusScope(const QQuickItem* self) {
	return self->isFocusScope();
}

QQuickItem* QQuickItem_scopedFocusItem(const QQuickItem* self) {
	return self->scopedFocusItem();
}

bool QQuickItem_isAncestorOf(const QQuickItem* self, QQuickItem* child) {
	return self->isAncestorOf(child);
}

int QQuickItem_acceptedMouseButtons(const QQuickItem* self) {
	Qt::MouseButtons _ret = self->acceptedMouseButtons();
	return static_cast<int>(_ret);
}

void QQuickItem_setAcceptedMouseButtons(QQuickItem* self, int buttons) {
	self->setAcceptedMouseButtons(static_cast<Qt::MouseButtons>(buttons));
}

bool QQuickItem_acceptHoverEvents(const QQuickItem* self) {
	return self->acceptHoverEvents();
}

void QQuickItem_setAcceptHoverEvents(QQuickItem* self, bool enabled) {
	self->setAcceptHoverEvents(enabled);
}

bool QQuickItem_acceptTouchEvents(const QQuickItem* self) {
	return self->acceptTouchEvents();
}

void QQuickItem_setAcceptTouchEvents(QQuickItem* self, bool accept) {
	self->setAcceptTouchEvents(accept);
}

QCursor* QQuickItem_cursor(const QQuickItem* self) {
	return new QCursor(self->cursor());
}

void QQuickItem_setCursor(QQuickItem* self, QCursor* cursor) {
	self->setCursor(*cursor);
}

void QQuickItem_unsetCursor(QQuickItem* self) {
	self->unsetCursor();
}

bool QQuickItem_isUnderMouse(const QQuickItem* self) {
	return self->isUnderMouse();
}

void QQuickItem_grabMouse(QQuickItem* self) {
	self->grabMouse();
}

void QQuickItem_ungrabMouse(QQuickItem* self) {
	self->ungrabMouse();
}

bool QQuickItem_keepMouseGrab(const QQuickItem* self) {
	return self->keepMouseGrab();
}

void QQuickItem_setKeepMouseGrab(QQuickItem* self, bool keepMouseGrab) {
	self->setKeepMouseGrab(keepMouseGrab);
}

bool QQuickItem_filtersChildMouseEvents(const QQuickItem* self) {
	return self->filtersChildMouseEvents();
}

void QQuickItem_setFiltersChildMouseEvents(QQuickItem* self, bool filter) {
	self->setFiltersChildMouseEvents(filter);
}

void QQuickItem_grabTouchPoints(QQuickItem* self, struct miqt_array /* of int */  ids) {
	QList<int> ids_QList;
	ids_QList.reserve(ids.len);
	int* ids_arr = static_cast<int*>(ids.data);
	for(size_t i = 0; i < ids.len; ++i) {
		ids_QList.push_back(static_cast<int>(ids_arr[i]));
	}
	self->grabTouchPoints(ids_QList);
}

void QQuickItem_ungrabTouchPoints(QQuickItem* self) {
	self->ungrabTouchPoints();
}

bool QQuickItem_keepTouchGrab(const QQuickItem* self) {
	return self->keepTouchGrab();
}

void QQuickItem_setKeepTouchGrab(QQuickItem* self, bool keepTouchGrab) {
	self->setKeepTouchGrab(keepTouchGrab);
}

bool QQuickItem_grabToImage(QQuickItem* self, QJSValue* callback) {
	return self->grabToImage(*callback);
}

bool QQuickItem_contains(const QQuickItem* self, QPointF* point) {
	return self->contains(*point);
}

QObject* QQuickItem_containmentMask(const QQuickItem* self) {
	return self->containmentMask();
}

void QQuickItem_setContainmentMask(QQuickItem* self, QObject* mask) {
	self->setContainmentMask(mask);
}

QTransform* QQuickItem_itemTransform(const QQuickItem* self, QQuickItem* param1, bool* param2) {
	return new QTransform(self->itemTransform(param1, param2));
}

QPointF* QQuickItem_mapToItem(const QQuickItem* self, QQuickItem* item, QPointF* point) {
	return new QPointF(self->mapToItem(item, *point));
}

QPointF* QQuickItem_mapToScene(const QQuickItem* self, QPointF* point) {
	return new QPointF(self->mapToScene(*point));
}

QPointF* QQuickItem_mapToGlobal(const QQuickItem* self, QPointF* point) {
	return new QPointF(self->mapToGlobal(*point));
}

QRectF* QQuickItem_mapRectToItem(const QQuickItem* self, QQuickItem* item, QRectF* rect) {
	return new QRectF(self->mapRectToItem(item, *rect));
}

QRectF* QQuickItem_mapRectToScene(const QQuickItem* self, QRectF* rect) {
	return new QRectF(self->mapRectToScene(*rect));
}

QPointF* QQuickItem_mapFromItem(const QQuickItem* self, QQuickItem* item, QPointF* point) {
	return new QPointF(self->mapFromItem(item, *point));
}

QPointF* QQuickItem_mapFromScene(const QQuickItem* self, QPointF* point) {
	return new QPointF(self->mapFromScene(*point));
}

QPointF* QQuickItem_mapFromGlobal(const QQuickItem* self, QPointF* point) {
	return new QPointF(self->mapFromGlobal(*point));
}

QRectF* QQuickItem_mapRectFromItem(const QQuickItem* self, QQuickItem* item, QRectF* rect) {
	return new QRectF(self->mapRectFromItem(item, *rect));
}

QRectF* QQuickItem_mapRectFromScene(const QQuickItem* self, QRectF* rect) {
	return new QRectF(self->mapRectFromScene(*rect));
}

void QQuickItem_polish(QQuickItem* self) {
	self->polish();
}

void QQuickItem_forceActiveFocus(QQuickItem* self) {
	self->forceActiveFocus();
}

void QQuickItem_forceActiveFocusWithReason(QQuickItem* self, int reason) {
	self->forceActiveFocus(static_cast<Qt::FocusReason>(reason));
}

QQuickItem* QQuickItem_nextItemInFocusChain(QQuickItem* self) {
	return self->nextItemInFocusChain();
}

QQuickItem* QQuickItem_childAt(const QQuickItem* self, double x, double y) {
	return self->childAt(static_cast<qreal>(x), static_cast<qreal>(y));
}

void QQuickItem_ensurePolished(QQuickItem* self) {
	self->ensurePolished();
}

void QQuickItem_dumpItemTree(const QQuickItem* self) {
	self->dumpItemTree();
}

QVariant* QQuickItem_inputMethodQuery(const QQuickItem* self, int query) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

bool QQuickItem_isTextureProvider(const QQuickItem* self) {
	return self->isTextureProvider();
}

QSGTextureProvider* QQuickItem_textureProvider(const QQuickItem* self) {
	return self->textureProvider();
}

void QQuickItem_update(QQuickItem* self) {
	self->update();
}

void QQuickItem_childrenRectChanged(QQuickItem* self, QRectF* param1) {
	self->childrenRectChanged(*param1);
}

void QQuickItem_connect_childrenRectChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, QRectF*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QRectF*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QRectF*);
		void operator()(const QRectF& param1) {
			const QRectF& param1_ret = param1;
			// Cast returned reference into pointer
			QRectF* sigval1 = const_cast<QRectF*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(const QRectF&)>(&QQuickItem::childrenRectChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_baselineOffsetChanged(QQuickItem* self, double param1) {
	self->baselineOffsetChanged(static_cast<qreal>(param1));
}

void QQuickItem_connect_baselineOffsetChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(qreal param1) {
			qreal param1_ret = param1;
			double sigval1 = static_cast<double>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(qreal)>(&QQuickItem::baselineOffsetChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_stateChanged(QQuickItem* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->stateChanged(param1_QString);
}

void QQuickItem_connect_stateChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(const QString&)>(&QQuickItem::stateChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_focusChanged(QQuickItem* self, bool param1) {
	self->focusChanged(param1);
}

void QQuickItem_connect_focusChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::focusChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_activeFocusChanged(QQuickItem* self, bool param1) {
	self->activeFocusChanged(param1);
}

void QQuickItem_connect_activeFocusChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::activeFocusChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_activeFocusOnTabChanged(QQuickItem* self, bool param1) {
	self->activeFocusOnTabChanged(param1);
}

void QQuickItem_connect_activeFocusOnTabChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::activeFocusOnTabChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_parentChanged(QQuickItem* self, QQuickItem* param1) {
	self->parentChanged(param1);
}

void QQuickItem_connect_parentChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, QQuickItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QQuickItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QQuickItem*);
		void operator()(QQuickItem* param1) {
			QQuickItem* sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(QQuickItem*)>(&QQuickItem::parentChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_transformOriginChanged(QQuickItem* self, int param1) {
	self->transformOriginChanged(static_cast<QQuickItem::TransformOrigin>(param1));
}

void QQuickItem_connect_transformOriginChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QQuickItem::TransformOrigin param1) {
			QQuickItem::TransformOrigin param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(QQuickItem::TransformOrigin)>(&QQuickItem::transformOriginChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_smoothChanged(QQuickItem* self, bool param1) {
	self->smoothChanged(param1);
}

void QQuickItem_connect_smoothChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::smoothChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_antialiasingChanged(QQuickItem* self, bool param1) {
	self->antialiasingChanged(param1);
}

void QQuickItem_connect_antialiasingChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::antialiasingChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_clipChanged(QQuickItem* self, bool param1) {
	self->clipChanged(param1);
}

void QQuickItem_connect_clipChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::clipChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_windowChanged(QQuickItem* self, QQuickWindow* window) {
	self->windowChanged(window);
}

void QQuickItem_connect_windowChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t, QQuickWindow*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QQuickWindow*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QQuickWindow*);
		void operator()(QQuickWindow* window) {
			QQuickWindow* sigval1 = window;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(QQuickWindow*)>(&QQuickItem::windowChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_childrenChanged(QQuickItem* self) {
	self->childrenChanged();
}

void QQuickItem_connect_childrenChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::childrenChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_opacityChanged(QQuickItem* self) {
	self->opacityChanged();
}

void QQuickItem_connect_opacityChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::opacityChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_enabledChanged(QQuickItem* self) {
	self->enabledChanged();
}

void QQuickItem_connect_enabledChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::enabledChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_visibleChanged(QQuickItem* self) {
	self->visibleChanged();
}

void QQuickItem_connect_visibleChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::visibleChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_visibleChildrenChanged(QQuickItem* self) {
	self->visibleChildrenChanged();
}

void QQuickItem_connect_visibleChildrenChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::visibleChildrenChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_rotationChanged(QQuickItem* self) {
	self->rotationChanged();
}

void QQuickItem_connect_rotationChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::rotationChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_scaleChanged(QQuickItem* self) {
	self->scaleChanged();
}

void QQuickItem_connect_scaleChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::scaleChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_xChanged(QQuickItem* self) {
	self->xChanged();
}

void QQuickItem_connect_xChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::xChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_yChanged(QQuickItem* self) {
	self->yChanged();
}

void QQuickItem_connect_yChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::yChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_widthChanged(QQuickItem* self) {
	self->widthChanged();
}

void QQuickItem_connect_widthChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::widthChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_heightChanged(QQuickItem* self) {
	self->heightChanged();
}

void QQuickItem_connect_heightChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::heightChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_zChanged(QQuickItem* self) {
	self->zChanged();
}

void QQuickItem_connect_zChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::zChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_implicitWidthChanged(QQuickItem* self) {
	self->implicitWidthChanged();
}

void QQuickItem_connect_implicitWidthChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::implicitWidthChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_implicitHeightChanged(QQuickItem* self) {
	self->implicitHeightChanged();
}

void QQuickItem_connect_implicitHeightChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::implicitHeightChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_containmentMaskChanged(QQuickItem* self) {
	self->containmentMaskChanged();
}

void QQuickItem_connect_containmentMaskChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::containmentMaskChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_paletteChanged(QQuickItem* self) {
	self->paletteChanged();
}

void QQuickItem_connect_paletteChanged(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::paletteChanged), self, local_caller{slot, callback, release});
}

void QQuickItem_paletteCreated(QQuickItem* self) {
	self->paletteCreated();
}

void QQuickItem_connect_paletteCreated(VirtualQQuickItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::paletteCreated), self, local_caller{slot, callback, release});
}

struct miqt_string QQuickItem_tr2(const char* s, const char* c) {
	QString _ret = QQuickItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItem_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickItem_setFlag2(QQuickItem* self, int flag, bool enabled) {
	self->setFlag(static_cast<QQuickItem::Flag>(flag), enabled);
}

bool QQuickItem_grabToImage22(QQuickItem* self, QJSValue* callback, QSize* targetSize) {
	return self->grabToImage(*callback, *targetSize);
}

QQuickItem* QQuickItem_nextItemInFocusChain1(QQuickItem* self, bool forward) {
	return self->nextItemInFocusChain(forward);
}

QMetaObject* QQuickItem_virtualbase_metaObject(const VirtualQQuickItem* self) {

	return (QMetaObject*) self->QQuickItem::metaObject();
}

void* QQuickItem_virtualbase_metacast(VirtualQQuickItem* self, const char* param1) {

	return self->QQuickItem::qt_metacast(param1);
}

int QQuickItem_virtualbase_metacall(VirtualQQuickItem* self, int param1, int param2, void** param3) {

	return self->QQuickItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QRectF* QQuickItem_virtualbase_boundingRect(const VirtualQQuickItem* self) {

	return new QRectF(self->QQuickItem::boundingRect());
}

QRectF* QQuickItem_virtualbase_clipRect(const VirtualQQuickItem* self) {

	return new QRectF(self->QQuickItem::clipRect());
}

bool QQuickItem_virtualbase_contains(const VirtualQQuickItem* self, QPointF* point) {

	return self->QQuickItem::contains(*point);
}

QVariant* QQuickItem_virtualbase_inputMethodQuery(const VirtualQQuickItem* self, int query) {

	return new QVariant(self->QQuickItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

bool QQuickItem_virtualbase_isTextureProvider(const VirtualQQuickItem* self) {

	return self->QQuickItem::isTextureProvider();
}

QSGTextureProvider* QQuickItem_virtualbase_textureProvider(const VirtualQQuickItem* self) {

	return self->QQuickItem::textureProvider();
}

bool QQuickItem_virtualbase_event(VirtualQQuickItem* self, QEvent* param1) {

	return self->QQuickItem::event(param1);
}

void QQuickItem_virtualbase_itemChange(VirtualQQuickItem* self, int param1, QQuickItem__ItemChangeData* param2) {

	self->QQuickItem::itemChange(static_cast<VirtualQQuickItem::ItemChange>(param1), *param2);
}

void QQuickItem_virtualbase_geometryChange(VirtualQQuickItem* self, QRectF* newGeometry, QRectF* oldGeometry) {

	self->QQuickItem::geometryChange(*newGeometry, *oldGeometry);
}

void QQuickItem_virtualbase_classBegin(VirtualQQuickItem* self) {

	self->QQuickItem::classBegin();
}

void QQuickItem_virtualbase_componentComplete(VirtualQQuickItem* self) {

	self->QQuickItem::componentComplete();
}

void QQuickItem_virtualbase_keyPressEvent(VirtualQQuickItem* self, QKeyEvent* event) {

	self->QQuickItem::keyPressEvent(event);
}

void QQuickItem_virtualbase_keyReleaseEvent(VirtualQQuickItem* self, QKeyEvent* event) {

	self->QQuickItem::keyReleaseEvent(event);
}

void QQuickItem_virtualbase_inputMethodEvent(VirtualQQuickItem* self, QInputMethodEvent* param1) {

	self->QQuickItem::inputMethodEvent(param1);
}

void QQuickItem_virtualbase_focusInEvent(VirtualQQuickItem* self, QFocusEvent* param1) {

	self->QQuickItem::focusInEvent(param1);
}

void QQuickItem_virtualbase_focusOutEvent(VirtualQQuickItem* self, QFocusEvent* param1) {

	self->QQuickItem::focusOutEvent(param1);
}

void QQuickItem_virtualbase_mousePressEvent(VirtualQQuickItem* self, QMouseEvent* event) {

	self->QQuickItem::mousePressEvent(event);
}

void QQuickItem_virtualbase_mouseMoveEvent(VirtualQQuickItem* self, QMouseEvent* event) {

	self->QQuickItem::mouseMoveEvent(event);
}

void QQuickItem_virtualbase_mouseReleaseEvent(VirtualQQuickItem* self, QMouseEvent* event) {

	self->QQuickItem::mouseReleaseEvent(event);
}

void QQuickItem_virtualbase_mouseDoubleClickEvent(VirtualQQuickItem* self, QMouseEvent* event) {

	self->QQuickItem::mouseDoubleClickEvent(event);
}

void QQuickItem_virtualbase_mouseUngrabEvent(VirtualQQuickItem* self) {

	self->QQuickItem::mouseUngrabEvent();
}

void QQuickItem_virtualbase_touchUngrabEvent(VirtualQQuickItem* self) {

	self->QQuickItem::touchUngrabEvent();
}

void QQuickItem_virtualbase_wheelEvent(VirtualQQuickItem* self, QWheelEvent* event) {

	self->QQuickItem::wheelEvent(event);
}

void QQuickItem_virtualbase_touchEvent(VirtualQQuickItem* self, QTouchEvent* event) {

	self->QQuickItem::touchEvent(event);
}

void QQuickItem_virtualbase_hoverEnterEvent(VirtualQQuickItem* self, QHoverEvent* event) {

	self->QQuickItem::hoverEnterEvent(event);
}

void QQuickItem_virtualbase_hoverMoveEvent(VirtualQQuickItem* self, QHoverEvent* event) {

	self->QQuickItem::hoverMoveEvent(event);
}

void QQuickItem_virtualbase_hoverLeaveEvent(VirtualQQuickItem* self, QHoverEvent* event) {

	self->QQuickItem::hoverLeaveEvent(event);
}

void QQuickItem_virtualbase_dragEnterEvent(VirtualQQuickItem* self, QDragEnterEvent* param1) {

	self->QQuickItem::dragEnterEvent(param1);
}

void QQuickItem_virtualbase_dragMoveEvent(VirtualQQuickItem* self, QDragMoveEvent* param1) {

	self->QQuickItem::dragMoveEvent(param1);
}

void QQuickItem_virtualbase_dragLeaveEvent(VirtualQQuickItem* self, QDragLeaveEvent* param1) {

	self->QQuickItem::dragLeaveEvent(param1);
}

void QQuickItem_virtualbase_dropEvent(VirtualQQuickItem* self, QDropEvent* param1) {

	self->QQuickItem::dropEvent(param1);
}

bool QQuickItem_virtualbase_childMouseEventFilter(VirtualQQuickItem* self, QQuickItem* param1, QEvent* param2) {

	return self->QQuickItem::childMouseEventFilter(param1, param2);
}

QSGNode* QQuickItem_virtualbase_updatePaintNode(VirtualQQuickItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

	return self->QQuickItem::updatePaintNode(param1, param2);
}

void QQuickItem_virtualbase_releaseResources(VirtualQQuickItem* self) {

	self->QQuickItem::releaseResources();
}

void QQuickItem_virtualbase_updatePolish(VirtualQQuickItem* self) {

	self->QQuickItem::updatePolish();
}

bool QQuickItem_virtualbase_eventFilter(VirtualQQuickItem* self, QObject* watched, QEvent* event) {

	return self->QQuickItem::eventFilter(watched, event);
}

void QQuickItem_virtualbase_timerEvent(VirtualQQuickItem* self, QTimerEvent* event) {

	self->QQuickItem::timerEvent(event);
}

void QQuickItem_virtualbase_childEvent(VirtualQQuickItem* self, QChildEvent* event) {

	self->QQuickItem::childEvent(event);
}

void QQuickItem_virtualbase_customEvent(VirtualQQuickItem* self, QEvent* event) {

	self->QQuickItem::customEvent(event);
}

void QQuickItem_virtualbase_connectNotify(VirtualQQuickItem* self, QMetaMethod* signal) {

	self->QQuickItem::connectNotify(*signal);
}

void QQuickItem_virtualbase_disconnectNotify(VirtualQQuickItem* self, QMetaMethod* signal) {

	self->QQuickItem::disconnectNotify(*signal);
}

const QMetaObject* QQuickItem_staticMetaObject() { return &QQuickItem::staticMetaObject; }

const QQuickItem_VTable* QQuickItem_vtbl(const VirtualQQuickItem* self) { return self->vtbl; }
void* QQuickItem_vdata(const VirtualQQuickItem* self) { return self->vdata; }
void QQuickItem_setVdata(VirtualQQuickItem* self, void* vdata) { self->vdata = vdata; }

bool QQuickItem_protectedbase_isComponentComplete(const VirtualQQuickItem* self) {
	return self->isComponentComplete();
}

void QQuickItem_protectedbase_updateInputMethod(VirtualQQuickItem* self) {
	self->updateInputMethod();
}

bool QQuickItem_protectedbase_widthValid(const VirtualQQuickItem* self) {
	return self->widthValid();
}

bool QQuickItem_protectedbase_heightValid(const VirtualQQuickItem* self) {
	return self->heightValid();
}

void QQuickItem_protectedbase_setImplicitSize(VirtualQQuickItem* self, double param1, double param2) {
	self->setImplicitSize(static_cast<qreal>(param1), static_cast<qreal>(param2));
}

void QQuickItem_protectedbase_updateInputMethod1(VirtualQQuickItem* self, int queries) {
	self->updateInputMethod(static_cast<Qt::InputMethodQueries>(queries));
}

QObject* QQuickItem_protectedbase_sender(const VirtualQQuickItem* self) {
	return self->sender();
}

int QQuickItem_protectedbase_senderSignalIndex(const VirtualQQuickItem* self) {
	return self->senderSignalIndex();
}

int QQuickItem_protectedbase_receivers(const VirtualQQuickItem* self, const char* signal) {
	return self->receivers(signal);
}

bool QQuickItem_protectedbase_isSignalConnected(const VirtualQQuickItem* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQuickItem_delete(QQuickItem* self) {
	delete self;
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new(QQuickItem* v) {
	return new QQuickItem__ItemChangeData(v);
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new2(QQuickWindow* v) {
	return new QQuickItem__ItemChangeData(v);
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new3(double v) {
	return new QQuickItem__ItemChangeData(static_cast<qreal>(v));
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new4(bool v) {
	return new QQuickItem__ItemChangeData(v);
}

void QQuickItem__ItemChangeData_delete(QQuickItem__ItemChangeData* self) {
	delete self;
}

void QQuickItem__UpdatePaintNodeData_delete(QQuickItem__UpdatePaintNodeData* self) {
	delete self;
}

