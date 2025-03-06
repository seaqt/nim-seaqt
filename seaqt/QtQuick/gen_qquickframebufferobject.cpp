#include <QChildEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHoverEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QObject>
#include <QPointF>
#include <QQmlParserStatus>
#include <QQuickFramebufferObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickFramebufferObject__Renderer
#include <QQuickItem>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__ItemChangeData
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__UpdatePaintNodeData
#include <QRectF>
#include <QSGNode>
#include <QSGTextureProvider>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QVariant>
#include <QWheelEvent>
#include <qquickframebufferobject.h>
#include "gen_qquickframebufferobject.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQuickFramebufferObject final : public QQuickFramebufferObject {
	struct QQuickFramebufferObject_VTable* vtbl;
public:

	VirtualQQuickFramebufferObject(struct QQuickFramebufferObject_VTable* vtbl): QQuickFramebufferObject(), vtbl(vtbl) {};
	VirtualQQuickFramebufferObject(struct QQuickFramebufferObject_VTable* vtbl, QQuickItem* parent): QQuickFramebufferObject(parent), vtbl(vtbl) {};

	virtual ~VirtualQQuickFramebufferObject() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickFramebufferObject::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickFramebufferObject_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickFramebufferObject::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickFramebufferObject_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickFramebufferObject::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickFramebufferObject_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QQuickFramebufferObject::Renderer* createRenderer() const override {
		if (vtbl->createRenderer == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QQuickFramebufferObject__Renderer* callback_return_value = vtbl->createRenderer(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool isTextureProvider() const override {
		if (vtbl->isTextureProvider == 0) {
			return QQuickFramebufferObject::isTextureProvider();
		}


		bool callback_return_value = vtbl->isTextureProvider(vtbl, this);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_isTextureProvider(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSGTextureProvider* textureProvider() const override {
		if (vtbl->textureProvider == 0) {
			return QQuickFramebufferObject::textureProvider();
		}


		QSGTextureProvider* callback_return_value = vtbl->textureProvider(vtbl, this);

		return callback_return_value;
	}

	friend QSGTextureProvider* QQuickFramebufferObject_virtualbase_textureProvider(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QQuickFramebufferObject::releaseResources();
			return;
		}


		vtbl->releaseResources(vtbl, this);

	}

	friend void QQuickFramebufferObject_virtualbase_releaseResources(void* self);

	// Subclass to allow providing a Go implementation
	virtual void geometryChange(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (vtbl->geometryChange == 0) {
			QQuickFramebufferObject::geometryChange(newGeometry, oldGeometry);
			return;
		}

		const QRectF& newGeometry_ret = newGeometry;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&newGeometry_ret);
		const QRectF& oldGeometry_ret = oldGeometry;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&oldGeometry_ret);

		vtbl->geometryChange(vtbl, this, sigval1, sigval2);

	}

	friend void QQuickFramebufferObject_virtualbase_geometryChange(void* self, QRectF* newGeometry, QRectF* oldGeometry);

	// Subclass to allow providing a Go implementation
	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (vtbl->updatePaintNode == 0) {
			return QQuickFramebufferObject::updatePaintNode(param1, param2);
		}

		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;

		QSGNode* callback_return_value = vtbl->updatePaintNode(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend QSGNode* QQuickFramebufferObject_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QQuickFramebufferObject::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	friend QRectF* QQuickFramebufferObject_virtualbase_boundingRect(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QRectF clipRect() const override {
		if (vtbl->clipRect == 0) {
			return QQuickFramebufferObject::clipRect();
		}


		QRectF* callback_return_value = vtbl->clipRect(vtbl, this);

		return *callback_return_value;
	}

	friend QRectF* QQuickFramebufferObject_virtualbase_clipRect(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QQuickFramebufferObject::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_contains(const void* self, QPointF* point);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QQuickFramebufferObject::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QQuickFramebufferObject_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickFramebufferObject::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void itemChange(QQuickItem::ItemChange param1, const QQuickItem::ItemChangeData& param2) override {
		if (vtbl->itemChange == 0) {
			QQuickFramebufferObject::itemChange(param1, param2);
			return;
		}

		QQuickItem::ItemChange param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		const QQuickItem::ItemChangeData& param2_ret = param2;
		// Cast returned reference into pointer
		QQuickItem__ItemChangeData* sigval2 = const_cast<QQuickItem::ItemChangeData*>(&param2_ret);

		vtbl->itemChange(vtbl, this, sigval1, sigval2);

	}

	friend void QQuickFramebufferObject_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2);

	// Subclass to allow providing a Go implementation
	virtual void classBegin() override {
		if (vtbl->classBegin == 0) {
			QQuickFramebufferObject::classBegin();
			return;
		}


		vtbl->classBegin(vtbl, this);

	}

	friend void QQuickFramebufferObject_virtualbase_classBegin(void* self);

	// Subclass to allow providing a Go implementation
	virtual void componentComplete() override {
		if (vtbl->componentComplete == 0) {
			QQuickFramebufferObject::componentComplete();
			return;
		}


		vtbl->componentComplete(vtbl, this);

	}

	friend void QQuickFramebufferObject_virtualbase_componentComplete(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickFramebufferObject::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickFramebufferObject::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QQuickFramebufferObject::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickFramebufferObject::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_focusInEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickFramebufferObject::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickFramebufferObject::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickFramebufferObject::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickFramebufferObject::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickFramebufferObject::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseUngrabEvent() override {
		if (vtbl->mouseUngrabEvent == 0) {
			QQuickFramebufferObject::mouseUngrabEvent();
			return;
		}


		vtbl->mouseUngrabEvent(vtbl, this);

	}

	friend void QQuickFramebufferObject_virtualbase_mouseUngrabEvent(void* self);

	// Subclass to allow providing a Go implementation
	virtual void touchUngrabEvent() override {
		if (vtbl->touchUngrabEvent == 0) {
			QQuickFramebufferObject::touchUngrabEvent();
			return;
		}


		vtbl->touchUngrabEvent(vtbl, this);

	}

	friend void QQuickFramebufferObject_virtualbase_touchUngrabEvent(void* self);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QQuickFramebufferObject::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* event) override {
		if (vtbl->touchEvent == 0) {
			QQuickFramebufferObject::touchEvent(event);
			return;
		}

		QTouchEvent* sigval1 = event;

		vtbl->touchEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_touchEvent(void* self, QTouchEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QQuickFramebufferObject::hoverEnterEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QQuickFramebufferObject::hoverMoveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QQuickFramebufferObject::hoverLeaveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QQuickFramebufferObject::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QQuickFramebufferObject::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QQuickFramebufferObject::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QQuickFramebufferObject::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_dropEvent(void* self, QDropEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (vtbl->childMouseEventFilter == 0) {
			return QQuickFramebufferObject::childMouseEventFilter(param1, param2);
		}

		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->childMouseEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual void updatePolish() override {
		if (vtbl->updatePolish == 0) {
			QQuickFramebufferObject::updatePolish();
			return;
		}


		vtbl->updatePolish(vtbl, this);

	}

	friend void QQuickFramebufferObject_virtualbase_updatePolish(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickFramebufferObject::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickFramebufferObject::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickFramebufferObject::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickFramebufferObject::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickFramebufferObject::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickFramebufferObject::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend bool QQuickFramebufferObject_protectedbase_isComponentComplete(const void* self);
	friend void QQuickFramebufferObject_protectedbase_updateInputMethod(void* self);
	friend bool QQuickFramebufferObject_protectedbase_widthValid(const void* self);
	friend bool QQuickFramebufferObject_protectedbase_heightValid(const void* self);
	friend void QQuickFramebufferObject_protectedbase_setImplicitSize(void* self, double param1, double param2);
	friend QObject* QQuickFramebufferObject_protectedbase_sender(const void* self);
	friend int QQuickFramebufferObject_protectedbase_senderSignalIndex(const void* self);
	friend int QQuickFramebufferObject_protectedbase_receivers(const void* self, const char* signal);
	friend bool QQuickFramebufferObject_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QQuickFramebufferObject* QQuickFramebufferObject_new(struct QQuickFramebufferObject_VTable* vtbl) {
	return new VirtualQQuickFramebufferObject(vtbl);
}

QQuickFramebufferObject* QQuickFramebufferObject_new2(struct QQuickFramebufferObject_VTable* vtbl, QQuickItem* parent) {
	return new VirtualQQuickFramebufferObject(vtbl, parent);
}

void QQuickFramebufferObject_virtbase(QQuickFramebufferObject* src, QQuickItem** outptr_QQuickItem) {
	*outptr_QQuickItem = static_cast<QQuickItem*>(src);
}

QMetaObject* QQuickFramebufferObject_metaObject(const QQuickFramebufferObject* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickFramebufferObject_metacast(QQuickFramebufferObject* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickFramebufferObject_metacall(QQuickFramebufferObject* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickFramebufferObject_tr(const char* s) {
	QString _ret = QQuickFramebufferObject::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQuickFramebufferObject_textureFollowsItemSize(const QQuickFramebufferObject* self) {
	return self->textureFollowsItemSize();
}

void QQuickFramebufferObject_setTextureFollowsItemSize(QQuickFramebufferObject* self, bool follows) {
	self->setTextureFollowsItemSize(follows);
}

bool QQuickFramebufferObject_mirrorVertically(const QQuickFramebufferObject* self) {
	return self->mirrorVertically();
}

void QQuickFramebufferObject_setMirrorVertically(QQuickFramebufferObject* self, bool enable) {
	self->setMirrorVertically(enable);
}

QQuickFramebufferObject__Renderer* QQuickFramebufferObject_createRenderer(const QQuickFramebufferObject* self) {
	return self->createRenderer();
}

bool QQuickFramebufferObject_isTextureProvider(const QQuickFramebufferObject* self) {
	return self->isTextureProvider();
}

QSGTextureProvider* QQuickFramebufferObject_textureProvider(const QQuickFramebufferObject* self) {
	return self->textureProvider();
}

void QQuickFramebufferObject_releaseResources(QQuickFramebufferObject* self) {
	self->releaseResources();
}

void QQuickFramebufferObject_textureFollowsItemSizeChanged(QQuickFramebufferObject* self, bool param1) {
	self->textureFollowsItemSizeChanged(param1);
}

void QQuickFramebufferObject_connect_textureFollowsItemSizeChanged(QQuickFramebufferObject* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickFramebufferObject::connect(self, static_cast<void (QQuickFramebufferObject::*)(bool)>(&QQuickFramebufferObject::textureFollowsItemSizeChanged), self, local_caller{slot, callback, release});
}

void QQuickFramebufferObject_mirrorVerticallyChanged(QQuickFramebufferObject* self, bool param1) {
	self->mirrorVerticallyChanged(param1);
}

void QQuickFramebufferObject_connect_mirrorVerticallyChanged(QQuickFramebufferObject* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQQuickFramebufferObject::connect(self, static_cast<void (QQuickFramebufferObject::*)(bool)>(&QQuickFramebufferObject::mirrorVerticallyChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QQuickFramebufferObject_tr2(const char* s, const char* c) {
	QString _ret = QQuickFramebufferObject::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickFramebufferObject_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickFramebufferObject::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickFramebufferObject_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::metaObject();

}

void* QQuickFramebufferObject_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::qt_metacast(param1);

}

int QQuickFramebufferObject_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQuickFramebufferObject_virtualbase_isTextureProvider(const void* self) {

	return ( (const VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::isTextureProvider();

}

QSGTextureProvider* QQuickFramebufferObject_virtualbase_textureProvider(const void* self) {

	return ( (const VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::textureProvider();

}

void QQuickFramebufferObject_virtualbase_releaseResources(void* self) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::releaseResources();

}

void QQuickFramebufferObject_virtualbase_geometryChange(void* self, QRectF* newGeometry, QRectF* oldGeometry) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::geometryChange(*newGeometry, *oldGeometry);

}

QSGNode* QQuickFramebufferObject_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

	return ( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::updatePaintNode(param1, param2);

}

QRectF* QQuickFramebufferObject_virtualbase_boundingRect(const void* self) {

	return new QRectF(( (const VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::boundingRect());

}

QRectF* QQuickFramebufferObject_virtualbase_clipRect(const void* self) {

	return new QRectF(( (const VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::clipRect());

}

bool QQuickFramebufferObject_virtualbase_contains(const void* self, QPointF* point) {

	return ( (const VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::contains(*point);

}

QVariant* QQuickFramebufferObject_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

bool QQuickFramebufferObject_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::event(param1);

}

void QQuickFramebufferObject_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::itemChange(static_cast<VirtualQQuickFramebufferObject::ItemChange>(param1), *param2);

}

void QQuickFramebufferObject_virtualbase_classBegin(void* self) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::classBegin();

}

void QQuickFramebufferObject_virtualbase_componentComplete(void* self) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::componentComplete();

}

void QQuickFramebufferObject_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::keyPressEvent(event);

}

void QQuickFramebufferObject_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::keyReleaseEvent(event);

}

void QQuickFramebufferObject_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::inputMethodEvent(param1);

}

void QQuickFramebufferObject_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::focusInEvent(param1);

}

void QQuickFramebufferObject_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::focusOutEvent(param1);

}

void QQuickFramebufferObject_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::mousePressEvent(event);

}

void QQuickFramebufferObject_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::mouseMoveEvent(event);

}

void QQuickFramebufferObject_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::mouseReleaseEvent(event);

}

void QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::mouseDoubleClickEvent(event);

}

void QQuickFramebufferObject_virtualbase_mouseUngrabEvent(void* self) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::mouseUngrabEvent();

}

void QQuickFramebufferObject_virtualbase_touchUngrabEvent(void* self) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::touchUngrabEvent();

}

void QQuickFramebufferObject_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::wheelEvent(event);

}

void QQuickFramebufferObject_virtualbase_touchEvent(void* self, QTouchEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::touchEvent(event);

}

void QQuickFramebufferObject_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::hoverEnterEvent(event);

}

void QQuickFramebufferObject_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::hoverMoveEvent(event);

}

void QQuickFramebufferObject_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::hoverLeaveEvent(event);

}

void QQuickFramebufferObject_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::dragEnterEvent(param1);

}

void QQuickFramebufferObject_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::dragMoveEvent(param1);

}

void QQuickFramebufferObject_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::dragLeaveEvent(param1);

}

void QQuickFramebufferObject_virtualbase_dropEvent(void* self, QDropEvent* param1) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::dropEvent(param1);

}

bool QQuickFramebufferObject_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2) {

	return ( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::childMouseEventFilter(param1, param2);

}

void QQuickFramebufferObject_virtualbase_updatePolish(void* self) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::updatePolish();

}

bool QQuickFramebufferObject_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::eventFilter(watched, event);

}

void QQuickFramebufferObject_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::timerEvent(event);

}

void QQuickFramebufferObject_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::childEvent(event);

}

void QQuickFramebufferObject_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::customEvent(event);

}

void QQuickFramebufferObject_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::connectNotify(*signal);

}

void QQuickFramebufferObject_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickFramebufferObject*)(self) )->QQuickFramebufferObject::disconnectNotify(*signal);

}

const QMetaObject* QQuickFramebufferObject_staticMetaObject() { return &QQuickFramebufferObject::staticMetaObject; }
bool QQuickFramebufferObject_protectedbase_isComponentComplete(const void* self) {
	VirtualQQuickFramebufferObject* self_cast = static_cast<VirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	
	return self_cast->isComponentComplete();

}

void QQuickFramebufferObject_protectedbase_updateInputMethod(void* self) {
	VirtualQQuickFramebufferObject* self_cast = static_cast<VirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	
	self_cast->updateInputMethod();

}

bool QQuickFramebufferObject_protectedbase_widthValid(const void* self) {
	VirtualQQuickFramebufferObject* self_cast = static_cast<VirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	
	return self_cast->widthValid();

}

bool QQuickFramebufferObject_protectedbase_heightValid(const void* self) {
	VirtualQQuickFramebufferObject* self_cast = static_cast<VirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	
	return self_cast->heightValid();

}

void QQuickFramebufferObject_protectedbase_setImplicitSize(void* self, double param1, double param2) {
	VirtualQQuickFramebufferObject* self_cast = static_cast<VirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	
	self_cast->setImplicitSize(static_cast<qreal>(param1), static_cast<qreal>(param2));

}

QObject* QQuickFramebufferObject_protectedbase_sender(const void* self) {
	VirtualQQuickFramebufferObject* self_cast = static_cast<VirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	
	return self_cast->sender();

}

int QQuickFramebufferObject_protectedbase_senderSignalIndex(const void* self) {
	VirtualQQuickFramebufferObject* self_cast = static_cast<VirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QQuickFramebufferObject_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQQuickFramebufferObject* self_cast = static_cast<VirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	
	return self_cast->receivers(signal);

}

bool QQuickFramebufferObject_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQQuickFramebufferObject* self_cast = static_cast<VirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickFramebufferObject_delete(QQuickFramebufferObject* self) {
	delete self;
}

