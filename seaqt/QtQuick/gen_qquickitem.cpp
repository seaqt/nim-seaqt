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

#ifdef __cplusplus
extern "C" {
#endif

QMetaObject* miqt_exec_callback_QQuickTransform_metaObject(const QQuickTransform*, intptr_t);
void* miqt_exec_callback_QQuickTransform_metacast(QQuickTransform*, intptr_t, const char*);
int miqt_exec_callback_QQuickTransform_metacall(QQuickTransform*, intptr_t, int, int, void**);
void miqt_exec_callback_QQuickTransform_applyTo(const QQuickTransform*, intptr_t, QMatrix4x4*);
bool miqt_exec_callback_QQuickTransform_event(QQuickTransform*, intptr_t, QEvent*);
bool miqt_exec_callback_QQuickTransform_eventFilter(QQuickTransform*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickTransform_timerEvent(QQuickTransform*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickTransform_childEvent(QQuickTransform*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickTransform_customEvent(QQuickTransform*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickTransform_connectNotify(QQuickTransform*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickTransform_disconnectNotify(QQuickTransform*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickItem_childrenRectChanged(intptr_t, QRectF*);
void miqt_exec_callback_QQuickItem_baselineOffsetChanged(intptr_t, double);
void miqt_exec_callback_QQuickItem_stateChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QQuickItem_focusChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_activeFocusChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_activeFocusOnTabChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_parentChanged(intptr_t, QQuickItem*);
void miqt_exec_callback_QQuickItem_transformOriginChanged(intptr_t, int);
void miqt_exec_callback_QQuickItem_smoothChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_antialiasingChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_clipChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_windowChanged(intptr_t, QQuickWindow*);
void miqt_exec_callback_QQuickItem_childrenChanged(intptr_t);
void miqt_exec_callback_QQuickItem_opacityChanged(intptr_t);
void miqt_exec_callback_QQuickItem_enabledChanged(intptr_t);
void miqt_exec_callback_QQuickItem_visibleChanged(intptr_t);
void miqt_exec_callback_QQuickItem_visibleChildrenChanged(intptr_t);
void miqt_exec_callback_QQuickItem_rotationChanged(intptr_t);
void miqt_exec_callback_QQuickItem_scaleChanged(intptr_t);
void miqt_exec_callback_QQuickItem_xChanged(intptr_t);
void miqt_exec_callback_QQuickItem_yChanged(intptr_t);
void miqt_exec_callback_QQuickItem_widthChanged(intptr_t);
void miqt_exec_callback_QQuickItem_heightChanged(intptr_t);
void miqt_exec_callback_QQuickItem_zChanged(intptr_t);
void miqt_exec_callback_QQuickItem_implicitWidthChanged(intptr_t);
void miqt_exec_callback_QQuickItem_implicitHeightChanged(intptr_t);
void miqt_exec_callback_QQuickItem_containmentMaskChanged(intptr_t);
QMetaObject* miqt_exec_callback_QQuickItem_metaObject(const QQuickItem*, intptr_t);
void* miqt_exec_callback_QQuickItem_metacast(QQuickItem*, intptr_t, const char*);
int miqt_exec_callback_QQuickItem_metacall(QQuickItem*, intptr_t, int, int, void**);
QRectF* miqt_exec_callback_QQuickItem_boundingRect(const QQuickItem*, intptr_t);
QRectF* miqt_exec_callback_QQuickItem_clipRect(const QQuickItem*, intptr_t);
bool miqt_exec_callback_QQuickItem_contains(const QQuickItem*, intptr_t, QPointF*);
QVariant* miqt_exec_callback_QQuickItem_inputMethodQuery(const QQuickItem*, intptr_t, int);
bool miqt_exec_callback_QQuickItem_isTextureProvider(const QQuickItem*, intptr_t);
QSGTextureProvider* miqt_exec_callback_QQuickItem_textureProvider(const QQuickItem*, intptr_t);
bool miqt_exec_callback_QQuickItem_event(QQuickItem*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickItem_itemChange(QQuickItem*, intptr_t, int, QQuickItem__ItemChangeData*);
void miqt_exec_callback_QQuickItem_classBegin(QQuickItem*, intptr_t);
void miqt_exec_callback_QQuickItem_componentComplete(QQuickItem*, intptr_t);
void miqt_exec_callback_QQuickItem_keyPressEvent(QQuickItem*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickItem_keyReleaseEvent(QQuickItem*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickItem_inputMethodEvent(QQuickItem*, intptr_t, QInputMethodEvent*);
void miqt_exec_callback_QQuickItem_focusInEvent(QQuickItem*, intptr_t, QFocusEvent*);
void miqt_exec_callback_QQuickItem_focusOutEvent(QQuickItem*, intptr_t, QFocusEvent*);
void miqt_exec_callback_QQuickItem_mousePressEvent(QQuickItem*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickItem_mouseMoveEvent(QQuickItem*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickItem_mouseReleaseEvent(QQuickItem*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickItem_mouseDoubleClickEvent(QQuickItem*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickItem_mouseUngrabEvent(QQuickItem*, intptr_t);
void miqt_exec_callback_QQuickItem_touchUngrabEvent(QQuickItem*, intptr_t);
void miqt_exec_callback_QQuickItem_wheelEvent(QQuickItem*, intptr_t, QWheelEvent*);
void miqt_exec_callback_QQuickItem_touchEvent(QQuickItem*, intptr_t, QTouchEvent*);
void miqt_exec_callback_QQuickItem_hoverEnterEvent(QQuickItem*, intptr_t, QHoverEvent*);
void miqt_exec_callback_QQuickItem_hoverMoveEvent(QQuickItem*, intptr_t, QHoverEvent*);
void miqt_exec_callback_QQuickItem_hoverLeaveEvent(QQuickItem*, intptr_t, QHoverEvent*);
void miqt_exec_callback_QQuickItem_dragEnterEvent(QQuickItem*, intptr_t, QDragEnterEvent*);
void miqt_exec_callback_QQuickItem_dragMoveEvent(QQuickItem*, intptr_t, QDragMoveEvent*);
void miqt_exec_callback_QQuickItem_dragLeaveEvent(QQuickItem*, intptr_t, QDragLeaveEvent*);
void miqt_exec_callback_QQuickItem_dropEvent(QQuickItem*, intptr_t, QDropEvent*);
bool miqt_exec_callback_QQuickItem_childMouseEventFilter(QQuickItem*, intptr_t, QQuickItem*, QEvent*);
void miqt_exec_callback_QQuickItem_windowDeactivateEvent(QQuickItem*, intptr_t);
void miqt_exec_callback_QQuickItem_geometryChanged(QQuickItem*, intptr_t, QRectF*, QRectF*);
QSGNode* miqt_exec_callback_QQuickItem_updatePaintNode(QQuickItem*, intptr_t, QSGNode*, QQuickItem__UpdatePaintNodeData*);
void miqt_exec_callback_QQuickItem_releaseResources(QQuickItem*, intptr_t);
void miqt_exec_callback_QQuickItem_updatePolish(QQuickItem*, intptr_t);
bool miqt_exec_callback_QQuickItem_eventFilter(QQuickItem*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickItem_timerEvent(QQuickItem*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickItem_childEvent(QQuickItem*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickItem_customEvent(QQuickItem*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickItem_connectNotify(QQuickItem*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickItem_disconnectNotify(QQuickItem*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQuickTransform final : public QQuickTransform {
public:

	VirtualQQuickTransform(): QQuickTransform() {};
	VirtualQQuickTransform(QObject* parent): QQuickTransform(parent) {};

	virtual ~VirtualQQuickTransform() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QQuickTransform::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QQuickTransform_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QQuickTransform_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QQuickTransform::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QQuickTransform_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QQuickTransform_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QQuickTransform::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QQuickTransform_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickTransform_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__applyTo = 0;

	// Subclass to allow providing a Go implementation
	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (handle__applyTo == 0) {
			return; // Pure virtual, there is no base we can call
		}
		
		QMatrix4x4* sigval1 = matrix;

		miqt_exec_callback_QQuickTransform_applyTo(this, handle__applyTo, sigval1);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QQuickTransform::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QQuickTransform_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QQuickTransform_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickTransform::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickTransform_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickTransform_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQuickTransform::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQuickTransform_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QQuickTransform_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickTransform::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickTransform_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QQuickTransform_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickTransform::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickTransform_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QQuickTransform_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickTransform::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickTransform_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QQuickTransform_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickTransform::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickTransform_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QQuickTransform_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QQuickTransform_protectedbase_update(bool* _dynamic_cast_ok, void* self);
	friend QObject* QQuickTransform_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickTransform_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickTransform_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickTransform_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickTransform* QQuickTransform_new() {
	return new VirtualQQuickTransform();
}

QQuickTransform* QQuickTransform_new2(QObject* parent) {
	return new VirtualQQuickTransform(parent);
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

struct miqt_string QQuickTransform_trUtf8(const char* s) {
	QString _ret = QQuickTransform::trUtf8(s);
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

struct miqt_string QQuickTransform_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickTransform::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTransform_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickTransform::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQuickTransform_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QQuickTransform_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQuickTransform*)(self) )->QQuickTransform::metaObject();

}

bool QQuickTransform_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QQuickTransform_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQuickTransform*)(self) )->QQuickTransform::qt_metacast(param1);

}

bool QQuickTransform_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QQuickTransform_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQuickTransform*)(self) )->QQuickTransform::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQuickTransform_override_virtual_applyTo(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__applyTo = slot;
	return true;
}

bool QQuickTransform_override_virtual_event(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickTransform_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQuickTransform*)(self) )->QQuickTransform::event(event);

}

bool QQuickTransform_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickTransform_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickTransform*)(self) )->QQuickTransform::eventFilter(watched, event);

}

bool QQuickTransform_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickTransform_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickTransform*)(self) )->QQuickTransform::timerEvent(event);

}

bool QQuickTransform_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickTransform_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickTransform*)(self) )->QQuickTransform::childEvent(event);

}

bool QQuickTransform_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickTransform_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickTransform*)(self) )->QQuickTransform::customEvent(event);

}

bool QQuickTransform_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickTransform_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickTransform*)(self) )->QQuickTransform::connectNotify(*signal);

}

bool QQuickTransform_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickTransform_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickTransform*)(self) )->QQuickTransform::disconnectNotify(*signal);

}

const QMetaObject* QQuickTransform_staticMetaObject() { return &QQuickTransform::staticMetaObject; }
void QQuickTransform_protectedbase_update(bool* _dynamic_cast_ok, void* self) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->update();

}

QObject* QQuickTransform_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickTransform_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickTransform_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickTransform_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQuickTransform* self_cast = dynamic_cast<VirtualQQuickTransform*>( (QQuickTransform*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickTransform_delete(QQuickTransform* self) {
	delete self;
}

class VirtualQQuickItem final : public QQuickItem {
public:

	VirtualQQuickItem(): QQuickItem() {};
	VirtualQQuickItem(QQuickItem* parent): QQuickItem(parent) {};

	virtual ~VirtualQQuickItem() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QQuickItem::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QQuickItem_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QQuickItem_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QQuickItem::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QQuickItem_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QQuickItem_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QQuickItem::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QQuickItem_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickItem_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__boundingRect = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (handle__boundingRect == 0) {
			return QQuickItem::boundingRect();
		}
		

		QRectF* callback_return_value = miqt_exec_callback_QQuickItem_boundingRect(this, handle__boundingRect);

		return *callback_return_value;
	}

	friend QRectF* QQuickItem_virtualbase_boundingRect(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clipRect = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF clipRect() const override {
		if (handle__clipRect == 0) {
			return QQuickItem::clipRect();
		}
		

		QRectF* callback_return_value = miqt_exec_callback_QQuickItem_clipRect(this, handle__clipRect);

		return *callback_return_value;
	}

	friend QRectF* QQuickItem_virtualbase_clipRect(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__contains = 0;

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (handle__contains == 0) {
			return QQuickItem::contains(point);
		}
		
		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = miqt_exec_callback_QQuickItem_contains(this, handle__contains, sigval1);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_contains(const void* self, QPointF* point);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__inputMethodQuery = 0;

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (handle__inputMethodQuery == 0) {
			return QQuickItem::inputMethodQuery(query);
		}
		
		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = miqt_exec_callback_QQuickItem_inputMethodQuery(this, handle__inputMethodQuery, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QQuickItem_virtualbase_inputMethodQuery(const void* self, int query);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isTextureProvider = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isTextureProvider() const override {
		if (handle__isTextureProvider == 0) {
			return QQuickItem::isTextureProvider();
		}
		

		bool callback_return_value = miqt_exec_callback_QQuickItem_isTextureProvider(this, handle__isTextureProvider);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_isTextureProvider(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureProvider = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGTextureProvider* textureProvider() const override {
		if (handle__textureProvider == 0) {
			return QQuickItem::textureProvider();
		}
		

		QSGTextureProvider* callback_return_value = miqt_exec_callback_QQuickItem_textureProvider(this, handle__textureProvider);

		return callback_return_value;
	}

	friend QSGTextureProvider* QQuickItem_virtualbase_textureProvider(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (handle__event == 0) {
			return QQuickItem::event(param1);
		}
		
		QEvent* sigval1 = param1;

		bool callback_return_value = miqt_exec_callback_QQuickItem_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_event(void* self, QEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__itemChange = 0;

	// Subclass to allow providing a Go implementation
	virtual void itemChange(QQuickItem::ItemChange param1, const QQuickItem::ItemChangeData& param2) override {
		if (handle__itemChange == 0) {
			QQuickItem::itemChange(param1, param2);
			return;
		}
		
		QQuickItem::ItemChange param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		const QQuickItem::ItemChangeData& param2_ret = param2;
		// Cast returned reference into pointer
		QQuickItem__ItemChangeData* sigval2 = const_cast<QQuickItem::ItemChangeData*>(&param2_ret);

		miqt_exec_callback_QQuickItem_itemChange(this, handle__itemChange, sigval1, sigval2);

		
	}

	friend void QQuickItem_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__classBegin = 0;

	// Subclass to allow providing a Go implementation
	virtual void classBegin() override {
		if (handle__classBegin == 0) {
			QQuickItem::classBegin();
			return;
		}
		

		miqt_exec_callback_QQuickItem_classBegin(this, handle__classBegin);

		
	}

	friend void QQuickItem_virtualbase_classBegin(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__componentComplete = 0;

	// Subclass to allow providing a Go implementation
	virtual void componentComplete() override {
		if (handle__componentComplete == 0) {
			QQuickItem::componentComplete();
			return;
		}
		

		miqt_exec_callback_QQuickItem_componentComplete(this, handle__componentComplete);

		
	}

	friend void QQuickItem_virtualbase_componentComplete(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyPressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (handle__keyPressEvent == 0) {
			QQuickItem::keyPressEvent(event);
			return;
		}
		
		QKeyEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_keyPressEvent(this, handle__keyPressEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (handle__keyReleaseEvent == 0) {
			QQuickItem::keyReleaseEvent(event);
			return;
		}
		
		QKeyEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_keyReleaseEvent(this, handle__keyReleaseEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__inputMethodEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (handle__inputMethodEvent == 0) {
			QQuickItem::inputMethodEvent(param1);
			return;
		}
		
		QInputMethodEvent* sigval1 = param1;

		miqt_exec_callback_QQuickItem_inputMethodEvent(this, handle__inputMethodEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusInEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (handle__focusInEvent == 0) {
			QQuickItem::focusInEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickItem_focusInEvent(this, handle__focusInEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_focusInEvent(void* self, QFocusEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusOutEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (handle__focusOutEvent == 0) {
			QQuickItem::focusOutEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickItem_focusOutEvent(this, handle__focusOutEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mousePressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (handle__mousePressEvent == 0) {
			QQuickItem::mousePressEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_mousePressEvent(this, handle__mousePressEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (handle__mouseMoveEvent == 0) {
			QQuickItem::mouseMoveEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_mouseMoveEvent(this, handle__mouseMoveEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (handle__mouseReleaseEvent == 0) {
			QQuickItem::mouseReleaseEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_mouseReleaseEvent(this, handle__mouseReleaseEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseDoubleClickEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (handle__mouseDoubleClickEvent == 0) {
			QQuickItem::mouseDoubleClickEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_mouseDoubleClickEvent(this, handle__mouseDoubleClickEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseUngrabEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseUngrabEvent() override {
		if (handle__mouseUngrabEvent == 0) {
			QQuickItem::mouseUngrabEvent();
			return;
		}
		

		miqt_exec_callback_QQuickItem_mouseUngrabEvent(this, handle__mouseUngrabEvent);

		
	}

	friend void QQuickItem_virtualbase_mouseUngrabEvent(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__touchUngrabEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void touchUngrabEvent() override {
		if (handle__touchUngrabEvent == 0) {
			QQuickItem::touchUngrabEvent();
			return;
		}
		

		miqt_exec_callback_QQuickItem_touchUngrabEvent(this, handle__touchUngrabEvent);

		
	}

	friend void QQuickItem_virtualbase_touchUngrabEvent(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__wheelEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (handle__wheelEvent == 0) {
			QQuickItem::wheelEvent(event);
			return;
		}
		
		QWheelEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_wheelEvent(this, handle__wheelEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__touchEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* event) override {
		if (handle__touchEvent == 0) {
			QQuickItem::touchEvent(event);
			return;
		}
		
		QTouchEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_touchEvent(this, handle__touchEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_touchEvent(void* self, QTouchEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hoverEnterEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (handle__hoverEnterEvent == 0) {
			QQuickItem::hoverEnterEvent(event);
			return;
		}
		
		QHoverEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_hoverEnterEvent(this, handle__hoverEnterEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hoverMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (handle__hoverMoveEvent == 0) {
			QQuickItem::hoverMoveEvent(event);
			return;
		}
		
		QHoverEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_hoverMoveEvent(this, handle__hoverMoveEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hoverLeaveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (handle__hoverLeaveEvent == 0) {
			QQuickItem::hoverLeaveEvent(event);
			return;
		}
		
		QHoverEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_hoverLeaveEvent(this, handle__hoverLeaveEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dragEnterEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (handle__dragEnterEvent == 0) {
			QQuickItem::dragEnterEvent(param1);
			return;
		}
		
		QDragEnterEvent* sigval1 = param1;

		miqt_exec_callback_QQuickItem_dragEnterEvent(this, handle__dragEnterEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dragMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (handle__dragMoveEvent == 0) {
			QQuickItem::dragMoveEvent(param1);
			return;
		}
		
		QDragMoveEvent* sigval1 = param1;

		miqt_exec_callback_QQuickItem_dragMoveEvent(this, handle__dragMoveEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dragLeaveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (handle__dragLeaveEvent == 0) {
			QQuickItem::dragLeaveEvent(param1);
			return;
		}
		
		QDragLeaveEvent* sigval1 = param1;

		miqt_exec_callback_QQuickItem_dragLeaveEvent(this, handle__dragLeaveEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dropEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (handle__dropEvent == 0) {
			QQuickItem::dropEvent(param1);
			return;
		}
		
		QDropEvent* sigval1 = param1;

		miqt_exec_callback_QQuickItem_dropEvent(this, handle__dropEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_dropEvent(void* self, QDropEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childMouseEventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (handle__childMouseEventFilter == 0) {
			return QQuickItem::childMouseEventFilter(param1, param2);
		}
		
		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = miqt_exec_callback_QQuickItem_childMouseEventFilter(this, handle__childMouseEventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__windowDeactivateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void windowDeactivateEvent() override {
		if (handle__windowDeactivateEvent == 0) {
			QQuickItem::windowDeactivateEvent();
			return;
		}
		

		miqt_exec_callback_QQuickItem_windowDeactivateEvent(this, handle__windowDeactivateEvent);

		
	}

	friend void QQuickItem_virtualbase_windowDeactivateEvent(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__geometryChanged = 0;

	// Subclass to allow providing a Go implementation
	virtual void geometryChanged(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (handle__geometryChanged == 0) {
			QQuickItem::geometryChanged(newGeometry, oldGeometry);
			return;
		}
		
		const QRectF& newGeometry_ret = newGeometry;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&newGeometry_ret);
		const QRectF& oldGeometry_ret = oldGeometry;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&oldGeometry_ret);

		miqt_exec_callback_QQuickItem_geometryChanged(this, handle__geometryChanged, sigval1, sigval2);

		
	}

	friend void QQuickItem_virtualbase_geometryChanged(void* self, QRectF* newGeometry, QRectF* oldGeometry);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updatePaintNode = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (handle__updatePaintNode == 0) {
			return QQuickItem::updatePaintNode(param1, param2);
		}
		
		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;

		QSGNode* callback_return_value = miqt_exec_callback_QQuickItem_updatePaintNode(this, handle__updatePaintNode, sigval1, sigval2);

		return callback_return_value;
	}

	friend QSGNode* QQuickItem_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__releaseResources = 0;

	// Subclass to allow providing a Go implementation
	virtual void releaseResources() override {
		if (handle__releaseResources == 0) {
			QQuickItem::releaseResources();
			return;
		}
		

		miqt_exec_callback_QQuickItem_releaseResources(this, handle__releaseResources);

		
	}

	friend void QQuickItem_virtualbase_releaseResources(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updatePolish = 0;

	// Subclass to allow providing a Go implementation
	virtual void updatePolish() override {
		if (handle__updatePolish == 0) {
			QQuickItem::updatePolish();
			return;
		}
		

		miqt_exec_callback_QQuickItem_updatePolish(this, handle__updatePolish);

		
	}

	friend void QQuickItem_virtualbase_updatePolish(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickItem::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickItem_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQuickItem::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickItem::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickItem::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickItem_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QQuickItem_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickItem::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickItem_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QQuickItem_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickItem::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickItem_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QQuickItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend bool QQuickItem_protectedbase_isComponentComplete(bool* _dynamic_cast_ok, const void* self);
	friend void QQuickItem_protectedbase_updateInputMethod(bool* _dynamic_cast_ok, void* self);
	friend bool QQuickItem_protectedbase_widthValid(bool* _dynamic_cast_ok, const void* self);
	friend bool QQuickItem_protectedbase_heightValid(bool* _dynamic_cast_ok, const void* self);
	friend void QQuickItem_protectedbase_setImplicitSize(bool* _dynamic_cast_ok, void* self, double param1, double param2);
	friend void QQuickItem_protectedbase_updateInputMethod1(bool* _dynamic_cast_ok, void* self, int queries);
	friend QObject* QQuickItem_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickItem_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickItem_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickItem_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickItem* QQuickItem_new() {
	return new VirtualQQuickItem();
}

QQuickItem* QQuickItem_new2(QQuickItem* parent) {
	return new VirtualQQuickItem(parent);
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

struct miqt_string QQuickItem_trUtf8(const char* s) {
	QString _ret = QQuickItem::trUtf8(s);
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
	QVector<int> ids_QList;
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

void QQuickItem_connect_childrenRectChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(const QRectF&)>(&QQuickItem::childrenRectChanged), self, [=](const QRectF& param1) {
		const QRectF& param1_ret = param1;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&param1_ret);
		miqt_exec_callback_QQuickItem_childrenRectChanged(slot, sigval1);
	});
}

void QQuickItem_baselineOffsetChanged(QQuickItem* self, double param1) {
	self->baselineOffsetChanged(static_cast<qreal>(param1));
}

void QQuickItem_connect_baselineOffsetChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(qreal)>(&QQuickItem::baselineOffsetChanged), self, [=](qreal param1) {
		qreal param1_ret = param1;
		double sigval1 = static_cast<double>(param1_ret);
		miqt_exec_callback_QQuickItem_baselineOffsetChanged(slot, sigval1);
	});
}

void QQuickItem_stateChanged(QQuickItem* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->stateChanged(param1_QString);
}

void QQuickItem_connect_stateChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(const QString&)>(&QQuickItem::stateChanged), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QQuickItem_stateChanged(slot, sigval1);
	});
}

void QQuickItem_focusChanged(QQuickItem* self, bool param1) {
	self->focusChanged(param1);
}

void QQuickItem_connect_focusChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::focusChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_focusChanged(slot, sigval1);
	});
}

void QQuickItem_activeFocusChanged(QQuickItem* self, bool param1) {
	self->activeFocusChanged(param1);
}

void QQuickItem_connect_activeFocusChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::activeFocusChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_activeFocusChanged(slot, sigval1);
	});
}

void QQuickItem_activeFocusOnTabChanged(QQuickItem* self, bool param1) {
	self->activeFocusOnTabChanged(param1);
}

void QQuickItem_connect_activeFocusOnTabChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::activeFocusOnTabChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_activeFocusOnTabChanged(slot, sigval1);
	});
}

void QQuickItem_parentChanged(QQuickItem* self, QQuickItem* param1) {
	self->parentChanged(param1);
}

void QQuickItem_connect_parentChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(QQuickItem*)>(&QQuickItem::parentChanged), self, [=](QQuickItem* param1) {
		QQuickItem* sigval1 = param1;
		miqt_exec_callback_QQuickItem_parentChanged(slot, sigval1);
	});
}

void QQuickItem_transformOriginChanged(QQuickItem* self, int param1) {
	self->transformOriginChanged(static_cast<QQuickItem::TransformOrigin>(param1));
}

void QQuickItem_connect_transformOriginChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(QQuickItem::TransformOrigin)>(&QQuickItem::transformOriginChanged), self, [=](QQuickItem::TransformOrigin param1) {
		QQuickItem::TransformOrigin param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		miqt_exec_callback_QQuickItem_transformOriginChanged(slot, sigval1);
	});
}

void QQuickItem_smoothChanged(QQuickItem* self, bool param1) {
	self->smoothChanged(param1);
}

void QQuickItem_connect_smoothChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::smoothChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_smoothChanged(slot, sigval1);
	});
}

void QQuickItem_antialiasingChanged(QQuickItem* self, bool param1) {
	self->antialiasingChanged(param1);
}

void QQuickItem_connect_antialiasingChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::antialiasingChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_antialiasingChanged(slot, sigval1);
	});
}

void QQuickItem_clipChanged(QQuickItem* self, bool param1) {
	self->clipChanged(param1);
}

void QQuickItem_connect_clipChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::clipChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_clipChanged(slot, sigval1);
	});
}

void QQuickItem_windowChanged(QQuickItem* self, QQuickWindow* window) {
	self->windowChanged(window);
}

void QQuickItem_connect_windowChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(QQuickWindow*)>(&QQuickItem::windowChanged), self, [=](QQuickWindow* window) {
		QQuickWindow* sigval1 = window;
		miqt_exec_callback_QQuickItem_windowChanged(slot, sigval1);
	});
}

void QQuickItem_childrenChanged(QQuickItem* self) {
	self->childrenChanged();
}

void QQuickItem_connect_childrenChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::childrenChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_childrenChanged(slot);
	});
}

void QQuickItem_opacityChanged(QQuickItem* self) {
	self->opacityChanged();
}

void QQuickItem_connect_opacityChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::opacityChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_opacityChanged(slot);
	});
}

void QQuickItem_enabledChanged(QQuickItem* self) {
	self->enabledChanged();
}

void QQuickItem_connect_enabledChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::enabledChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_enabledChanged(slot);
	});
}

void QQuickItem_visibleChanged(QQuickItem* self) {
	self->visibleChanged();
}

void QQuickItem_connect_visibleChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::visibleChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_visibleChanged(slot);
	});
}

void QQuickItem_visibleChildrenChanged(QQuickItem* self) {
	self->visibleChildrenChanged();
}

void QQuickItem_connect_visibleChildrenChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::visibleChildrenChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_visibleChildrenChanged(slot);
	});
}

void QQuickItem_rotationChanged(QQuickItem* self) {
	self->rotationChanged();
}

void QQuickItem_connect_rotationChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::rotationChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_rotationChanged(slot);
	});
}

void QQuickItem_scaleChanged(QQuickItem* self) {
	self->scaleChanged();
}

void QQuickItem_connect_scaleChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::scaleChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_scaleChanged(slot);
	});
}

void QQuickItem_xChanged(QQuickItem* self) {
	self->xChanged();
}

void QQuickItem_connect_xChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::xChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_xChanged(slot);
	});
}

void QQuickItem_yChanged(QQuickItem* self) {
	self->yChanged();
}

void QQuickItem_connect_yChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::yChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_yChanged(slot);
	});
}

void QQuickItem_widthChanged(QQuickItem* self) {
	self->widthChanged();
}

void QQuickItem_connect_widthChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::widthChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_widthChanged(slot);
	});
}

void QQuickItem_heightChanged(QQuickItem* self) {
	self->heightChanged();
}

void QQuickItem_connect_heightChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::heightChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_heightChanged(slot);
	});
}

void QQuickItem_zChanged(QQuickItem* self) {
	self->zChanged();
}

void QQuickItem_connect_zChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::zChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_zChanged(slot);
	});
}

void QQuickItem_implicitWidthChanged(QQuickItem* self) {
	self->implicitWidthChanged();
}

void QQuickItem_connect_implicitWidthChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::implicitWidthChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_implicitWidthChanged(slot);
	});
}

void QQuickItem_implicitHeightChanged(QQuickItem* self) {
	self->implicitHeightChanged();
}

void QQuickItem_connect_implicitHeightChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::implicitHeightChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_implicitHeightChanged(slot);
	});
}

void QQuickItem_containmentMaskChanged(QQuickItem* self) {
	self->containmentMaskChanged();
}

void QQuickItem_connect_containmentMaskChanged(QQuickItem* self, intptr_t slot) {
	VirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::containmentMaskChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_containmentMaskChanged(slot);
	});
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

struct miqt_string QQuickItem_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickItem::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItem_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickItem::trUtf8(s, c, static_cast<int>(n));
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

bool QQuickItem_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QQuickItem_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQuickItem*)(self) )->QQuickItem::metaObject();

}

bool QQuickItem_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QQuickItem_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQuickItem*)(self) )->QQuickItem::qt_metacast(param1);

}

bool QQuickItem_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QQuickItem_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQuickItem*)(self) )->QQuickItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQuickItem_override_virtual_boundingRect(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__boundingRect = slot;
	return true;
}

QRectF* QQuickItem_virtualbase_boundingRect(const void* self) {

	return new QRectF(( (const VirtualQQuickItem*)(self) )->QQuickItem::boundingRect());

}

bool QQuickItem_override_virtual_clipRect(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clipRect = slot;
	return true;
}

QRectF* QQuickItem_virtualbase_clipRect(const void* self) {

	return new QRectF(( (const VirtualQQuickItem*)(self) )->QQuickItem::clipRect());

}

bool QQuickItem_override_virtual_contains(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__contains = slot;
	return true;
}

bool QQuickItem_virtualbase_contains(const void* self, QPointF* point) {

	return ( (const VirtualQQuickItem*)(self) )->QQuickItem::contains(*point);

}

bool QQuickItem_override_virtual_inputMethodQuery(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__inputMethodQuery = slot;
	return true;
}

QVariant* QQuickItem_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQQuickItem*)(self) )->QQuickItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

bool QQuickItem_override_virtual_isTextureProvider(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isTextureProvider = slot;
	return true;
}

bool QQuickItem_virtualbase_isTextureProvider(const void* self) {

	return ( (const VirtualQQuickItem*)(self) )->QQuickItem::isTextureProvider();

}

bool QQuickItem_override_virtual_textureProvider(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureProvider = slot;
	return true;
}

QSGTextureProvider* QQuickItem_virtualbase_textureProvider(const void* self) {

	return ( (const VirtualQQuickItem*)(self) )->QQuickItem::textureProvider();

}

bool QQuickItem_override_virtual_event(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickItem_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQQuickItem*)(self) )->QQuickItem::event(param1);

}

bool QQuickItem_override_virtual_itemChange(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__itemChange = slot;
	return true;
}

void QQuickItem_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::itemChange(static_cast<VirtualQQuickItem::ItemChange>(param1), *param2);

}

bool QQuickItem_override_virtual_classBegin(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__classBegin = slot;
	return true;
}

void QQuickItem_virtualbase_classBegin(void* self) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::classBegin();

}

bool QQuickItem_override_virtual_componentComplete(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__componentComplete = slot;
	return true;
}

void QQuickItem_virtualbase_componentComplete(void* self) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::componentComplete();

}

bool QQuickItem_override_virtual_keyPressEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyPressEvent = slot;
	return true;
}

void QQuickItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::keyPressEvent(event);

}

bool QQuickItem_override_virtual_keyReleaseEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyReleaseEvent = slot;
	return true;
}

void QQuickItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::keyReleaseEvent(event);

}

bool QQuickItem_override_virtual_inputMethodEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__inputMethodEvent = slot;
	return true;
}

void QQuickItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::inputMethodEvent(param1);

}

bool QQuickItem_override_virtual_focusInEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusInEvent = slot;
	return true;
}

void QQuickItem_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::focusInEvent(param1);

}

bool QQuickItem_override_virtual_focusOutEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusOutEvent = slot;
	return true;
}

void QQuickItem_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::focusOutEvent(param1);

}

bool QQuickItem_override_virtual_mousePressEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mousePressEvent = slot;
	return true;
}

void QQuickItem_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::mousePressEvent(event);

}

bool QQuickItem_override_virtual_mouseMoveEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseMoveEvent = slot;
	return true;
}

void QQuickItem_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::mouseMoveEvent(event);

}

bool QQuickItem_override_virtual_mouseReleaseEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseReleaseEvent = slot;
	return true;
}

void QQuickItem_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::mouseReleaseEvent(event);

}

bool QQuickItem_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseDoubleClickEvent = slot;
	return true;
}

void QQuickItem_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::mouseDoubleClickEvent(event);

}

bool QQuickItem_override_virtual_mouseUngrabEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseUngrabEvent = slot;
	return true;
}

void QQuickItem_virtualbase_mouseUngrabEvent(void* self) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::mouseUngrabEvent();

}

bool QQuickItem_override_virtual_touchUngrabEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__touchUngrabEvent = slot;
	return true;
}

void QQuickItem_virtualbase_touchUngrabEvent(void* self) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::touchUngrabEvent();

}

bool QQuickItem_override_virtual_wheelEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__wheelEvent = slot;
	return true;
}

void QQuickItem_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::wheelEvent(event);

}

bool QQuickItem_override_virtual_touchEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__touchEvent = slot;
	return true;
}

void QQuickItem_virtualbase_touchEvent(void* self, QTouchEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::touchEvent(event);

}

bool QQuickItem_override_virtual_hoverEnterEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hoverEnterEvent = slot;
	return true;
}

void QQuickItem_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::hoverEnterEvent(event);

}

bool QQuickItem_override_virtual_hoverMoveEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hoverMoveEvent = slot;
	return true;
}

void QQuickItem_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::hoverMoveEvent(event);

}

bool QQuickItem_override_virtual_hoverLeaveEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hoverLeaveEvent = slot;
	return true;
}

void QQuickItem_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::hoverLeaveEvent(event);

}

bool QQuickItem_override_virtual_dragEnterEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dragEnterEvent = slot;
	return true;
}

void QQuickItem_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::dragEnterEvent(param1);

}

bool QQuickItem_override_virtual_dragMoveEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dragMoveEvent = slot;
	return true;
}

void QQuickItem_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::dragMoveEvent(param1);

}

bool QQuickItem_override_virtual_dragLeaveEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dragLeaveEvent = slot;
	return true;
}

void QQuickItem_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::dragLeaveEvent(param1);

}

bool QQuickItem_override_virtual_dropEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dropEvent = slot;
	return true;
}

void QQuickItem_virtualbase_dropEvent(void* self, QDropEvent* param1) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::dropEvent(param1);

}

bool QQuickItem_override_virtual_childMouseEventFilter(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childMouseEventFilter = slot;
	return true;
}

bool QQuickItem_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2) {

	return ( (VirtualQQuickItem*)(self) )->QQuickItem::childMouseEventFilter(param1, param2);

}

bool QQuickItem_override_virtual_windowDeactivateEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__windowDeactivateEvent = slot;
	return true;
}

void QQuickItem_virtualbase_windowDeactivateEvent(void* self) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::windowDeactivateEvent();

}

bool QQuickItem_override_virtual_geometryChanged(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__geometryChanged = slot;
	return true;
}

void QQuickItem_virtualbase_geometryChanged(void* self, QRectF* newGeometry, QRectF* oldGeometry) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::geometryChanged(*newGeometry, *oldGeometry);

}

bool QQuickItem_override_virtual_updatePaintNode(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updatePaintNode = slot;
	return true;
}

QSGNode* QQuickItem_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

	return ( (VirtualQQuickItem*)(self) )->QQuickItem::updatePaintNode(param1, param2);

}

bool QQuickItem_override_virtual_releaseResources(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__releaseResources = slot;
	return true;
}

void QQuickItem_virtualbase_releaseResources(void* self) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::releaseResources();

}

bool QQuickItem_override_virtual_updatePolish(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updatePolish = slot;
	return true;
}

void QQuickItem_virtualbase_updatePolish(void* self) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::updatePolish();

}

bool QQuickItem_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickItem*)(self) )->QQuickItem::eventFilter(watched, event);

}

bool QQuickItem_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickItem_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::timerEvent(event);

}

bool QQuickItem_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickItem_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::childEvent(event);

}

bool QQuickItem_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickItem_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::customEvent(event);

}

bool QQuickItem_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickItem_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::connectNotify(*signal);

}

bool QQuickItem_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickItem*)(self) )->QQuickItem::disconnectNotify(*signal);

}

const QMetaObject* QQuickItem_staticMetaObject() { return &QQuickItem::staticMetaObject; }
bool QQuickItem_protectedbase_isComponentComplete(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isComponentComplete();

}

void QQuickItem_protectedbase_updateInputMethod(bool* _dynamic_cast_ok, void* self) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateInputMethod();

}

bool QQuickItem_protectedbase_widthValid(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->widthValid();

}

bool QQuickItem_protectedbase_heightValid(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->heightValid();

}

void QQuickItem_protectedbase_setImplicitSize(bool* _dynamic_cast_ok, void* self, double param1, double param2) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setImplicitSize(static_cast<qreal>(param1), static_cast<qreal>(param2));

}

void QQuickItem_protectedbase_updateInputMethod1(bool* _dynamic_cast_ok, void* self, int queries) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateInputMethod(static_cast<Qt::InputMethodQueries>(queries));

}

QObject* QQuickItem_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickItem_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickItem_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickItem_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQuickItem* self_cast = dynamic_cast<VirtualQQuickItem*>( (QQuickItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickItem_delete(QQuickItem* self) {
	delete self;
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new(QQuickItem* v) {
	return new QQuickItem::ItemChangeData(v);
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new2(QQuickWindow* v) {
	return new QQuickItem::ItemChangeData(v);
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new3(double v) {
	return new QQuickItem::ItemChangeData(static_cast<qreal>(v));
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new4(bool v) {
	return new QQuickItem::ItemChangeData(v);
}

void QQuickItem__ItemChangeData_delete(QQuickItem__ItemChangeData* self) {
	delete self;
}

void QQuickItem__UpdatePaintNodeData_delete(QQuickItem__UpdatePaintNodeData* self) {
	delete self;
}

