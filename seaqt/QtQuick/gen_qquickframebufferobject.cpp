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
class VirtualQQuickFramebufferObject final : public QQuickFramebufferObject {
	const QQuickFramebufferObject_VTable* vtbl;
	void* vdata;
public:
	friend const QQuickFramebufferObject_VTable* QQuickFramebufferObject_vtbl(const VirtualQQuickFramebufferObject* self);
	friend void* QQuickFramebufferObject_vdata(const VirtualQQuickFramebufferObject* self);
	friend void QQuickFramebufferObject_setVdata(VirtualQQuickFramebufferObject* self, void* vdata);

	VirtualQQuickFramebufferObject(const QQuickFramebufferObject_VTable* vtbl, void* vdata): QQuickFramebufferObject(), vtbl(vtbl), vdata(vdata) {}
	VirtualQQuickFramebufferObject(const QQuickFramebufferObject_VTable* vtbl, void* vdata, QQuickItem* parent): QQuickFramebufferObject(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQuickFramebufferObject() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickFramebufferObject::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QQuickFramebufferObject_virtualbase_metaObject(const VirtualQQuickFramebufferObject* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickFramebufferObject::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QQuickFramebufferObject_virtualbase_metacast(VirtualQQuickFramebufferObject* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickFramebufferObject::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickFramebufferObject_virtualbase_metacall(VirtualQQuickFramebufferObject* self, int param1, int param2, void** param3);

	virtual QQuickFramebufferObject::Renderer* createRenderer() const override {
		if (vtbl->createRenderer == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QQuickFramebufferObject__Renderer* callback_return_value = vtbl->createRenderer(this);

		return callback_return_value;
	}

	virtual bool isTextureProvider() const override {
		if (vtbl->isTextureProvider == 0) {
			return QQuickFramebufferObject::isTextureProvider();
		}


		bool callback_return_value = vtbl->isTextureProvider(this);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_isTextureProvider(const VirtualQQuickFramebufferObject* self);

	virtual QSGTextureProvider* textureProvider() const override {
		if (vtbl->textureProvider == 0) {
			return QQuickFramebufferObject::textureProvider();
		}


		QSGTextureProvider* callback_return_value = vtbl->textureProvider(this);

		return callback_return_value;
	}

	friend QSGTextureProvider* QQuickFramebufferObject_virtualbase_textureProvider(const VirtualQQuickFramebufferObject* self);

	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QQuickFramebufferObject::releaseResources();
			return;
		}


		vtbl->releaseResources(this);

	}

	friend void QQuickFramebufferObject_virtualbase_releaseResources(VirtualQQuickFramebufferObject* self);

	virtual void geometryChanged(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (vtbl->geometryChanged == 0) {
			QQuickFramebufferObject::geometryChanged(newGeometry, oldGeometry);
			return;
		}

		const QRectF& newGeometry_ret = newGeometry;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&newGeometry_ret);
		const QRectF& oldGeometry_ret = oldGeometry;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&oldGeometry_ret);

		vtbl->geometryChanged(this, sigval1, sigval2);

	}

	friend void QQuickFramebufferObject_virtualbase_geometryChanged(VirtualQQuickFramebufferObject* self, QRectF* newGeometry, QRectF* oldGeometry);

	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (vtbl->updatePaintNode == 0) {
			return QQuickFramebufferObject::updatePaintNode(param1, param2);
		}

		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;

		QSGNode* callback_return_value = vtbl->updatePaintNode(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend QSGNode* QQuickFramebufferObject_virtualbase_updatePaintNode(VirtualQQuickFramebufferObject* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QQuickFramebufferObject::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QQuickFramebufferObject_virtualbase_boundingRect(const VirtualQQuickFramebufferObject* self);

	virtual QRectF clipRect() const override {
		if (vtbl->clipRect == 0) {
			return QQuickFramebufferObject::clipRect();
		}


		QRectF* callback_return_value = vtbl->clipRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QQuickFramebufferObject_virtualbase_clipRect(const VirtualQQuickFramebufferObject* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QQuickFramebufferObject::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_contains(const VirtualQQuickFramebufferObject* self, QPointF* point);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QQuickFramebufferObject::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QQuickFramebufferObject_virtualbase_inputMethodQuery(const VirtualQQuickFramebufferObject* self, int query);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickFramebufferObject::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_event(VirtualQQuickFramebufferObject* self, QEvent* param1);

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

		vtbl->itemChange(this, sigval1, sigval2);

	}

	friend void QQuickFramebufferObject_virtualbase_itemChange(VirtualQQuickFramebufferObject* self, int param1, QQuickItem__ItemChangeData* param2);

	virtual void classBegin() override {
		if (vtbl->classBegin == 0) {
			QQuickFramebufferObject::classBegin();
			return;
		}


		vtbl->classBegin(this);

	}

	friend void QQuickFramebufferObject_virtualbase_classBegin(VirtualQQuickFramebufferObject* self);

	virtual void componentComplete() override {
		if (vtbl->componentComplete == 0) {
			QQuickFramebufferObject::componentComplete();
			return;
		}


		vtbl->componentComplete(this);

	}

	friend void QQuickFramebufferObject_virtualbase_componentComplete(VirtualQQuickFramebufferObject* self);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickFramebufferObject::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_keyPressEvent(VirtualQQuickFramebufferObject* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickFramebufferObject::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_keyReleaseEvent(VirtualQQuickFramebufferObject* self, QKeyEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QQuickFramebufferObject::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_inputMethodEvent(VirtualQQuickFramebufferObject* self, QInputMethodEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickFramebufferObject::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_focusInEvent(VirtualQQuickFramebufferObject* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickFramebufferObject::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_focusOutEvent(VirtualQQuickFramebufferObject* self, QFocusEvent* param1);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickFramebufferObject::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_mousePressEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickFramebufferObject::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_mouseMoveEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickFramebufferObject::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_mouseReleaseEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickFramebufferObject::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event);

	virtual void mouseUngrabEvent() override {
		if (vtbl->mouseUngrabEvent == 0) {
			QQuickFramebufferObject::mouseUngrabEvent();
			return;
		}


		vtbl->mouseUngrabEvent(this);

	}

	friend void QQuickFramebufferObject_virtualbase_mouseUngrabEvent(VirtualQQuickFramebufferObject* self);

	virtual void touchUngrabEvent() override {
		if (vtbl->touchUngrabEvent == 0) {
			QQuickFramebufferObject::touchUngrabEvent();
			return;
		}


		vtbl->touchUngrabEvent(this);

	}

	friend void QQuickFramebufferObject_virtualbase_touchUngrabEvent(VirtualQQuickFramebufferObject* self);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QQuickFramebufferObject::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_wheelEvent(VirtualQQuickFramebufferObject* self, QWheelEvent* event);

	virtual void touchEvent(QTouchEvent* event) override {
		if (vtbl->touchEvent == 0) {
			QQuickFramebufferObject::touchEvent(event);
			return;
		}

		QTouchEvent* sigval1 = event;

		vtbl->touchEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_touchEvent(VirtualQQuickFramebufferObject* self, QTouchEvent* event);

	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QQuickFramebufferObject::hoverEnterEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_hoverEnterEvent(VirtualQQuickFramebufferObject* self, QHoverEvent* event);

	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QQuickFramebufferObject::hoverMoveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_hoverMoveEvent(VirtualQQuickFramebufferObject* self, QHoverEvent* event);

	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QQuickFramebufferObject::hoverLeaveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_hoverLeaveEvent(VirtualQQuickFramebufferObject* self, QHoverEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QQuickFramebufferObject::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_dragEnterEvent(VirtualQQuickFramebufferObject* self, QDragEnterEvent* param1);

	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QQuickFramebufferObject::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_dragMoveEvent(VirtualQQuickFramebufferObject* self, QDragMoveEvent* param1);

	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QQuickFramebufferObject::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_dragLeaveEvent(VirtualQQuickFramebufferObject* self, QDragLeaveEvent* param1);

	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QQuickFramebufferObject::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_dropEvent(VirtualQQuickFramebufferObject* self, QDropEvent* param1);

	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (vtbl->childMouseEventFilter == 0) {
			return QQuickFramebufferObject::childMouseEventFilter(param1, param2);
		}

		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->childMouseEventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_childMouseEventFilter(VirtualQQuickFramebufferObject* self, QQuickItem* param1, QEvent* param2);

	virtual void windowDeactivateEvent() override {
		if (vtbl->windowDeactivateEvent == 0) {
			QQuickFramebufferObject::windowDeactivateEvent();
			return;
		}


		vtbl->windowDeactivateEvent(this);

	}

	friend void QQuickFramebufferObject_virtualbase_windowDeactivateEvent(VirtualQQuickFramebufferObject* self);

	virtual void updatePolish() override {
		if (vtbl->updatePolish == 0) {
			QQuickFramebufferObject::updatePolish();
			return;
		}


		vtbl->updatePolish(this);

	}

	friend void QQuickFramebufferObject_virtualbase_updatePolish(VirtualQQuickFramebufferObject* self);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickFramebufferObject::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickFramebufferObject_virtualbase_eventFilter(VirtualQQuickFramebufferObject* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickFramebufferObject::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_timerEvent(VirtualQQuickFramebufferObject* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickFramebufferObject::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_childEvent(VirtualQQuickFramebufferObject* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickFramebufferObject::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_customEvent(VirtualQQuickFramebufferObject* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickFramebufferObject::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_connectNotify(VirtualQQuickFramebufferObject* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickFramebufferObject::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QQuickFramebufferObject_virtualbase_disconnectNotify(VirtualQQuickFramebufferObject* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend bool QQuickFramebufferObject_protectedbase_isComponentComplete(const VirtualQQuickFramebufferObject* self);
	friend void QQuickFramebufferObject_protectedbase_updateInputMethod(VirtualQQuickFramebufferObject* self);
	friend bool QQuickFramebufferObject_protectedbase_widthValid(const VirtualQQuickFramebufferObject* self);
	friend bool QQuickFramebufferObject_protectedbase_heightValid(const VirtualQQuickFramebufferObject* self);
	friend void QQuickFramebufferObject_protectedbase_setImplicitSize(VirtualQQuickFramebufferObject* self, double param1, double param2);
	friend QObject* QQuickFramebufferObject_protectedbase_sender(const VirtualQQuickFramebufferObject* self);
	friend int QQuickFramebufferObject_protectedbase_senderSignalIndex(const VirtualQQuickFramebufferObject* self);
	friend int QQuickFramebufferObject_protectedbase_receivers(const VirtualQQuickFramebufferObject* self, const char* signal);
	friend bool QQuickFramebufferObject_protectedbase_isSignalConnected(const VirtualQQuickFramebufferObject* self, QMetaMethod* signal);
};

VirtualQQuickFramebufferObject* QQuickFramebufferObject_new(const QQuickFramebufferObject_VTable* vtbl, void* vdata) {
	return new VirtualQQuickFramebufferObject(vtbl, vdata);
}

VirtualQQuickFramebufferObject* QQuickFramebufferObject_new2(const QQuickFramebufferObject_VTable* vtbl, void* vdata, QQuickItem* parent) {
	return new VirtualQQuickFramebufferObject(vtbl, vdata, parent);
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

struct miqt_string QQuickFramebufferObject_trUtf8(const char* s) {
	QString _ret = QQuickFramebufferObject::trUtf8(s);
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

void QQuickFramebufferObject_connect_textureFollowsItemSizeChanged(VirtualQQuickFramebufferObject* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
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

void QQuickFramebufferObject_connect_mirrorVerticallyChanged(VirtualQQuickFramebufferObject* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
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

struct miqt_string QQuickFramebufferObject_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickFramebufferObject::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickFramebufferObject_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickFramebufferObject::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickFramebufferObject_virtualbase_metaObject(const VirtualQQuickFramebufferObject* self) {

	return (QMetaObject*) self->QQuickFramebufferObject::metaObject();
}

void* QQuickFramebufferObject_virtualbase_metacast(VirtualQQuickFramebufferObject* self, const char* param1) {

	return self->QQuickFramebufferObject::qt_metacast(param1);
}

int QQuickFramebufferObject_virtualbase_metacall(VirtualQQuickFramebufferObject* self, int param1, int param2, void** param3) {

	return self->QQuickFramebufferObject::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQuickFramebufferObject_virtualbase_isTextureProvider(const VirtualQQuickFramebufferObject* self) {

	return self->QQuickFramebufferObject::isTextureProvider();
}

QSGTextureProvider* QQuickFramebufferObject_virtualbase_textureProvider(const VirtualQQuickFramebufferObject* self) {

	return self->QQuickFramebufferObject::textureProvider();
}

void QQuickFramebufferObject_virtualbase_releaseResources(VirtualQQuickFramebufferObject* self) {

	self->QQuickFramebufferObject::releaseResources();
}

void QQuickFramebufferObject_virtualbase_geometryChanged(VirtualQQuickFramebufferObject* self, QRectF* newGeometry, QRectF* oldGeometry) {

	self->QQuickFramebufferObject::geometryChanged(*newGeometry, *oldGeometry);
}

QSGNode* QQuickFramebufferObject_virtualbase_updatePaintNode(VirtualQQuickFramebufferObject* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

	return self->QQuickFramebufferObject::updatePaintNode(param1, param2);
}

QRectF* QQuickFramebufferObject_virtualbase_boundingRect(const VirtualQQuickFramebufferObject* self) {

	return new QRectF(self->QQuickFramebufferObject::boundingRect());
}

QRectF* QQuickFramebufferObject_virtualbase_clipRect(const VirtualQQuickFramebufferObject* self) {

	return new QRectF(self->QQuickFramebufferObject::clipRect());
}

bool QQuickFramebufferObject_virtualbase_contains(const VirtualQQuickFramebufferObject* self, QPointF* point) {

	return self->QQuickFramebufferObject::contains(*point);
}

QVariant* QQuickFramebufferObject_virtualbase_inputMethodQuery(const VirtualQQuickFramebufferObject* self, int query) {

	return new QVariant(self->QQuickFramebufferObject::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

bool QQuickFramebufferObject_virtualbase_event(VirtualQQuickFramebufferObject* self, QEvent* param1) {

	return self->QQuickFramebufferObject::event(param1);
}

void QQuickFramebufferObject_virtualbase_itemChange(VirtualQQuickFramebufferObject* self, int param1, QQuickItem__ItemChangeData* param2) {

	self->QQuickFramebufferObject::itemChange(static_cast<VirtualQQuickFramebufferObject::ItemChange>(param1), *param2);
}

void QQuickFramebufferObject_virtualbase_classBegin(VirtualQQuickFramebufferObject* self) {

	self->QQuickFramebufferObject::classBegin();
}

void QQuickFramebufferObject_virtualbase_componentComplete(VirtualQQuickFramebufferObject* self) {

	self->QQuickFramebufferObject::componentComplete();
}

void QQuickFramebufferObject_virtualbase_keyPressEvent(VirtualQQuickFramebufferObject* self, QKeyEvent* event) {

	self->QQuickFramebufferObject::keyPressEvent(event);
}

void QQuickFramebufferObject_virtualbase_keyReleaseEvent(VirtualQQuickFramebufferObject* self, QKeyEvent* event) {

	self->QQuickFramebufferObject::keyReleaseEvent(event);
}

void QQuickFramebufferObject_virtualbase_inputMethodEvent(VirtualQQuickFramebufferObject* self, QInputMethodEvent* param1) {

	self->QQuickFramebufferObject::inputMethodEvent(param1);
}

void QQuickFramebufferObject_virtualbase_focusInEvent(VirtualQQuickFramebufferObject* self, QFocusEvent* param1) {

	self->QQuickFramebufferObject::focusInEvent(param1);
}

void QQuickFramebufferObject_virtualbase_focusOutEvent(VirtualQQuickFramebufferObject* self, QFocusEvent* param1) {

	self->QQuickFramebufferObject::focusOutEvent(param1);
}

void QQuickFramebufferObject_virtualbase_mousePressEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event) {

	self->QQuickFramebufferObject::mousePressEvent(event);
}

void QQuickFramebufferObject_virtualbase_mouseMoveEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event) {

	self->QQuickFramebufferObject::mouseMoveEvent(event);
}

void QQuickFramebufferObject_virtualbase_mouseReleaseEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event) {

	self->QQuickFramebufferObject::mouseReleaseEvent(event);
}

void QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(VirtualQQuickFramebufferObject* self, QMouseEvent* event) {

	self->QQuickFramebufferObject::mouseDoubleClickEvent(event);
}

void QQuickFramebufferObject_virtualbase_mouseUngrabEvent(VirtualQQuickFramebufferObject* self) {

	self->QQuickFramebufferObject::mouseUngrabEvent();
}

void QQuickFramebufferObject_virtualbase_touchUngrabEvent(VirtualQQuickFramebufferObject* self) {

	self->QQuickFramebufferObject::touchUngrabEvent();
}

void QQuickFramebufferObject_virtualbase_wheelEvent(VirtualQQuickFramebufferObject* self, QWheelEvent* event) {

	self->QQuickFramebufferObject::wheelEvent(event);
}

void QQuickFramebufferObject_virtualbase_touchEvent(VirtualQQuickFramebufferObject* self, QTouchEvent* event) {

	self->QQuickFramebufferObject::touchEvent(event);
}

void QQuickFramebufferObject_virtualbase_hoverEnterEvent(VirtualQQuickFramebufferObject* self, QHoverEvent* event) {

	self->QQuickFramebufferObject::hoverEnterEvent(event);
}

void QQuickFramebufferObject_virtualbase_hoverMoveEvent(VirtualQQuickFramebufferObject* self, QHoverEvent* event) {

	self->QQuickFramebufferObject::hoverMoveEvent(event);
}

void QQuickFramebufferObject_virtualbase_hoverLeaveEvent(VirtualQQuickFramebufferObject* self, QHoverEvent* event) {

	self->QQuickFramebufferObject::hoverLeaveEvent(event);
}

void QQuickFramebufferObject_virtualbase_dragEnterEvent(VirtualQQuickFramebufferObject* self, QDragEnterEvent* param1) {

	self->QQuickFramebufferObject::dragEnterEvent(param1);
}

void QQuickFramebufferObject_virtualbase_dragMoveEvent(VirtualQQuickFramebufferObject* self, QDragMoveEvent* param1) {

	self->QQuickFramebufferObject::dragMoveEvent(param1);
}

void QQuickFramebufferObject_virtualbase_dragLeaveEvent(VirtualQQuickFramebufferObject* self, QDragLeaveEvent* param1) {

	self->QQuickFramebufferObject::dragLeaveEvent(param1);
}

void QQuickFramebufferObject_virtualbase_dropEvent(VirtualQQuickFramebufferObject* self, QDropEvent* param1) {

	self->QQuickFramebufferObject::dropEvent(param1);
}

bool QQuickFramebufferObject_virtualbase_childMouseEventFilter(VirtualQQuickFramebufferObject* self, QQuickItem* param1, QEvent* param2) {

	return self->QQuickFramebufferObject::childMouseEventFilter(param1, param2);
}

void QQuickFramebufferObject_virtualbase_windowDeactivateEvent(VirtualQQuickFramebufferObject* self) {

	self->QQuickFramebufferObject::windowDeactivateEvent();
}

void QQuickFramebufferObject_virtualbase_updatePolish(VirtualQQuickFramebufferObject* self) {

	self->QQuickFramebufferObject::updatePolish();
}

bool QQuickFramebufferObject_virtualbase_eventFilter(VirtualQQuickFramebufferObject* self, QObject* watched, QEvent* event) {

	return self->QQuickFramebufferObject::eventFilter(watched, event);
}

void QQuickFramebufferObject_virtualbase_timerEvent(VirtualQQuickFramebufferObject* self, QTimerEvent* event) {

	self->QQuickFramebufferObject::timerEvent(event);
}

void QQuickFramebufferObject_virtualbase_childEvent(VirtualQQuickFramebufferObject* self, QChildEvent* event) {

	self->QQuickFramebufferObject::childEvent(event);
}

void QQuickFramebufferObject_virtualbase_customEvent(VirtualQQuickFramebufferObject* self, QEvent* event) {

	self->QQuickFramebufferObject::customEvent(event);
}

void QQuickFramebufferObject_virtualbase_connectNotify(VirtualQQuickFramebufferObject* self, QMetaMethod* signal) {

	self->QQuickFramebufferObject::connectNotify(*signal);
}

void QQuickFramebufferObject_virtualbase_disconnectNotify(VirtualQQuickFramebufferObject* self, QMetaMethod* signal) {

	self->QQuickFramebufferObject::disconnectNotify(*signal);
}

const QMetaObject* QQuickFramebufferObject_staticMetaObject() { return &QQuickFramebufferObject::staticMetaObject; }

const QQuickFramebufferObject_VTable* QQuickFramebufferObject_vtbl(const VirtualQQuickFramebufferObject* self) { return self->vtbl; }
void* QQuickFramebufferObject_vdata(const VirtualQQuickFramebufferObject* self) { return self->vdata; }
void QQuickFramebufferObject_setVdata(VirtualQQuickFramebufferObject* self, void* vdata) { self->vdata = vdata; }

bool QQuickFramebufferObject_protectedbase_isComponentComplete(const VirtualQQuickFramebufferObject* self) {
	return self->isComponentComplete();
}

void QQuickFramebufferObject_protectedbase_updateInputMethod(VirtualQQuickFramebufferObject* self) {
	self->updateInputMethod();
}

bool QQuickFramebufferObject_protectedbase_widthValid(const VirtualQQuickFramebufferObject* self) {
	return self->widthValid();
}

bool QQuickFramebufferObject_protectedbase_heightValid(const VirtualQQuickFramebufferObject* self) {
	return self->heightValid();
}

void QQuickFramebufferObject_protectedbase_setImplicitSize(VirtualQQuickFramebufferObject* self, double param1, double param2) {
	self->setImplicitSize(static_cast<qreal>(param1), static_cast<qreal>(param2));
}

QObject* QQuickFramebufferObject_protectedbase_sender(const VirtualQQuickFramebufferObject* self) {
	return self->sender();
}

int QQuickFramebufferObject_protectedbase_senderSignalIndex(const VirtualQQuickFramebufferObject* self) {
	return self->senderSignalIndex();
}

int QQuickFramebufferObject_protectedbase_receivers(const VirtualQQuickFramebufferObject* self, const char* signal) {
	return self->receivers(signal);
}

bool QQuickFramebufferObject_protectedbase_isSignalConnected(const VirtualQQuickFramebufferObject* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQuickFramebufferObject_delete(QQuickFramebufferObject* self) {
	delete self;
}

