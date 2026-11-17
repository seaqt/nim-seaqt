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
#include <QQuickItem>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__ItemChangeData
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__UpdatePaintNodeData
#include <QQuickRhiItem>
#include <QQuickRhiItemRenderer>
#include <QRectF>
#include <QSGNode>
#include <QSGTextureProvider>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QVariant>
#include <QWheelEvent>
#include <qquickrhiitem.h>
#include "gen_qquickrhiitem.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QQuickRhiItemRenderer_delete(QQuickRhiItemRenderer* self) {
	delete self;
}

class VirtualQQuickRhiItem final : public QQuickRhiItem {
	const QQuickRhiItem_VTable* vtbl;
public:
	friend void* QQuickRhiItem_vdata(VirtualQQuickRhiItem* self);
	friend VirtualQQuickRhiItem* vdata_QQuickRhiItem(void* vdata);

	VirtualQQuickRhiItem(const QQuickRhiItem_VTable* vtbl): QQuickRhiItem(), vtbl(vtbl) {}
	VirtualQQuickRhiItem(const QQuickRhiItem_VTable* vtbl, QQuickItem* parent): QQuickRhiItem(parent), vtbl(vtbl) {}

	virtual ~VirtualQQuickRhiItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickRhiItem::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQuickRhiItem_virtualbase_metaObject(const VirtualQQuickRhiItem* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickRhiItem::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQuickRhiItem_virtualbase_metacast(VirtualQQuickRhiItem* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickRhiItem::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQuickRhiItem_virtualbase_metacall(VirtualQQuickRhiItem* self, int param1, int param2, void** param3);

	virtual bool isTextureProvider() const override {
		if (vtbl->isTextureProvider == 0) {
			return QQuickRhiItem::isTextureProvider();
		}

		bool callback_return_value = vtbl->isTextureProvider(this);
		return callback_return_value;
	}

	friend bool QQuickRhiItem_virtualbase_isTextureProvider(const VirtualQQuickRhiItem* self);

	virtual QSGTextureProvider* textureProvider() const override {
		if (vtbl->textureProvider == 0) {
			return QQuickRhiItem::textureProvider();
		}

		QSGTextureProvider* callback_return_value = vtbl->textureProvider(this);
		return callback_return_value;
	}

	friend QSGTextureProvider* QQuickRhiItem_virtualbase_textureProvider(const VirtualQQuickRhiItem* self);

	virtual QQuickRhiItemRenderer* createRenderer() override {
		if (vtbl->createRenderer == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QQuickRhiItemRenderer* callback_return_value = vtbl->createRenderer(this);
		return callback_return_value;
	}

	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (vtbl->updatePaintNode == 0) {
			return QQuickRhiItem::updatePaintNode(param1, param2);
		}

		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;
		QSGNode* callback_return_value = vtbl->updatePaintNode(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend QSGNode* QQuickRhiItem_virtualbase_updatePaintNode(VirtualQQuickRhiItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickRhiItem::event(param1);
		}

		QEvent* sigval1 = param1;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQuickRhiItem_virtualbase_event(VirtualQQuickRhiItem* self, QEvent* param1);

	virtual void geometryChange(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (vtbl->geometryChange == 0) {
			QQuickRhiItem::geometryChange(newGeometry, oldGeometry);
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

	friend void QQuickRhiItem_virtualbase_geometryChange(VirtualQQuickRhiItem* self, QRectF* newGeometry, QRectF* oldGeometry);

	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QQuickRhiItem::releaseResources();
			return;
		}

		vtbl->releaseResources(this);
	}

	friend void QQuickRhiItem_virtualbase_releaseResources(VirtualQQuickRhiItem* self);

	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QQuickRhiItem::boundingRect();
		}

		QRectF* callback_return_value = vtbl->boundingRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QRectF* QQuickRhiItem_virtualbase_boundingRect(const VirtualQQuickRhiItem* self);

	virtual QRectF clipRect() const override {
		if (vtbl->clipRect == 0) {
			return QQuickRhiItem::clipRect();
		}

		QRectF* callback_return_value = vtbl->clipRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QRectF* QQuickRhiItem_virtualbase_clipRect(const VirtualQQuickRhiItem* self);

	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QQuickRhiItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);
		bool callback_return_value = vtbl->contains(this, sigval1);
		return callback_return_value;
	}

	friend bool QQuickRhiItem_virtualbase_contains(const VirtualQQuickRhiItem* self, QPointF* point);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QQuickRhiItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);
		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QQuickRhiItem_virtualbase_inputMethodQuery(const VirtualQQuickRhiItem* self, int query);

	virtual void itemChange(QQuickItem::ItemChange param1, const QQuickItem::ItemChangeData& param2) override {
		if (vtbl->itemChange == 0) {
			QQuickRhiItem::itemChange(param1, param2);
			return;
		}

		QQuickItem::ItemChange param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		const QQuickItem::ItemChangeData& param2_ret = param2;
		// Cast returned reference into pointer
		QQuickItem__ItemChangeData* sigval2 = const_cast<QQuickItem::ItemChangeData*>(&param2_ret);
		vtbl->itemChange(this, sigval1, sigval2);
	}

	friend void QQuickRhiItem_virtualbase_itemChange(VirtualQQuickRhiItem* self, int param1, QQuickItem__ItemChangeData* param2);

	virtual void classBegin() override {
		if (vtbl->classBegin == 0) {
			QQuickRhiItem::classBegin();
			return;
		}

		vtbl->classBegin(this);
	}

	friend void QQuickRhiItem_virtualbase_classBegin(VirtualQQuickRhiItem* self);

	virtual void componentComplete() override {
		if (vtbl->componentComplete == 0) {
			QQuickRhiItem::componentComplete();
			return;
		}

		vtbl->componentComplete(this);
	}

	friend void QQuickRhiItem_virtualbase_componentComplete(VirtualQQuickRhiItem* self);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickRhiItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyPressEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_keyPressEvent(VirtualQQuickRhiItem* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickRhiItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyReleaseEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_keyReleaseEvent(VirtualQQuickRhiItem* self, QKeyEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QQuickRhiItem::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;
		vtbl->inputMethodEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_inputMethodEvent(VirtualQQuickRhiItem* self, QInputMethodEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickRhiItem::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;
		vtbl->focusInEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_focusInEvent(VirtualQQuickRhiItem* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickRhiItem::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;
		vtbl->focusOutEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_focusOutEvent(VirtualQQuickRhiItem* self, QFocusEvent* param1);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickRhiItem::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mousePressEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_mousePressEvent(VirtualQQuickRhiItem* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickRhiItem::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseMoveEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_mouseMoveEvent(VirtualQQuickRhiItem* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickRhiItem::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseReleaseEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_mouseReleaseEvent(VirtualQQuickRhiItem* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickRhiItem::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseDoubleClickEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_mouseDoubleClickEvent(VirtualQQuickRhiItem* self, QMouseEvent* event);

	virtual void mouseUngrabEvent() override {
		if (vtbl->mouseUngrabEvent == 0) {
			QQuickRhiItem::mouseUngrabEvent();
			return;
		}

		vtbl->mouseUngrabEvent(this);
	}

	friend void QQuickRhiItem_virtualbase_mouseUngrabEvent(VirtualQQuickRhiItem* self);

	virtual void touchUngrabEvent() override {
		if (vtbl->touchUngrabEvent == 0) {
			QQuickRhiItem::touchUngrabEvent();
			return;
		}

		vtbl->touchUngrabEvent(this);
	}

	friend void QQuickRhiItem_virtualbase_touchUngrabEvent(VirtualQQuickRhiItem* self);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QQuickRhiItem::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;
		vtbl->wheelEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_wheelEvent(VirtualQQuickRhiItem* self, QWheelEvent* event);

	virtual void touchEvent(QTouchEvent* event) override {
		if (vtbl->touchEvent == 0) {
			QQuickRhiItem::touchEvent(event);
			return;
		}

		QTouchEvent* sigval1 = event;
		vtbl->touchEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_touchEvent(VirtualQQuickRhiItem* self, QTouchEvent* event);

	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QQuickRhiItem::hoverEnterEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;
		vtbl->hoverEnterEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_hoverEnterEvent(VirtualQQuickRhiItem* self, QHoverEvent* event);

	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QQuickRhiItem::hoverMoveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;
		vtbl->hoverMoveEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_hoverMoveEvent(VirtualQQuickRhiItem* self, QHoverEvent* event);

	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QQuickRhiItem::hoverLeaveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;
		vtbl->hoverLeaveEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_hoverLeaveEvent(VirtualQQuickRhiItem* self, QHoverEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QQuickRhiItem::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;
		vtbl->dragEnterEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_dragEnterEvent(VirtualQQuickRhiItem* self, QDragEnterEvent* param1);

	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QQuickRhiItem::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;
		vtbl->dragMoveEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_dragMoveEvent(VirtualQQuickRhiItem* self, QDragMoveEvent* param1);

	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QQuickRhiItem::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;
		vtbl->dragLeaveEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_dragLeaveEvent(VirtualQQuickRhiItem* self, QDragLeaveEvent* param1);

	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QQuickRhiItem::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;
		vtbl->dropEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_dropEvent(VirtualQQuickRhiItem* self, QDropEvent* param1);

	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (vtbl->childMouseEventFilter == 0) {
			return QQuickRhiItem::childMouseEventFilter(param1, param2);
		}

		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;
		bool callback_return_value = vtbl->childMouseEventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQuickRhiItem_virtualbase_childMouseEventFilter(VirtualQQuickRhiItem* self, QQuickItem* param1, QEvent* param2);

	virtual void updatePolish() override {
		if (vtbl->updatePolish == 0) {
			QQuickRhiItem::updatePolish();
			return;
		}

		vtbl->updatePolish(this);
	}

	friend void QQuickRhiItem_virtualbase_updatePolish(VirtualQQuickRhiItem* self);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickRhiItem::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQuickRhiItem_virtualbase_eventFilter(VirtualQQuickRhiItem* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickRhiItem::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_timerEvent(VirtualQQuickRhiItem* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickRhiItem::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_childEvent(VirtualQQuickRhiItem* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickRhiItem::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_customEvent(VirtualQQuickRhiItem* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickRhiItem::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_connectNotify(VirtualQQuickRhiItem* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickRhiItem::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQuickRhiItem_virtualbase_disconnectNotify(VirtualQQuickRhiItem* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend bool QQuickRhiItem_protectedbase_isAutoRenderTargetEnabled(const VirtualQQuickRhiItem* self);
	friend void QQuickRhiItem_protectedbase_setAutoRenderTarget(VirtualQQuickRhiItem* self, bool enabled);
	friend bool QQuickRhiItem_protectedbase_isComponentComplete(const VirtualQQuickRhiItem* self);
	friend void QQuickRhiItem_protectedbase_updateInputMethod(VirtualQQuickRhiItem* self);
	friend bool QQuickRhiItem_protectedbase_widthValid(const VirtualQQuickRhiItem* self);
	friend bool QQuickRhiItem_protectedbase_heightValid(const VirtualQQuickRhiItem* self);
	friend void QQuickRhiItem_protectedbase_setImplicitSize(VirtualQQuickRhiItem* self, double param1, double param2);
	friend QObject* QQuickRhiItem_protectedbase_sender(const VirtualQQuickRhiItem* self);
	friend int QQuickRhiItem_protectedbase_senderSignalIndex(const VirtualQQuickRhiItem* self);
	friend int QQuickRhiItem_protectedbase_receivers(const VirtualQQuickRhiItem* self, const char* signal);
	friend bool QQuickRhiItem_protectedbase_isSignalConnected(const VirtualQQuickRhiItem* self, QMetaMethod* signal);
};

VirtualQQuickRhiItem* QQuickRhiItem_new(const QQuickRhiItem_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQuickRhiItem>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQuickRhiItem(vtbl) : nullptr;
}

VirtualQQuickRhiItem* QQuickRhiItem_new_parent(const QQuickRhiItem_VTable* vtbl, size_t vdata, QQuickItem* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQuickRhiItem>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQuickRhiItem(vtbl, parent) : nullptr;
}

void QQuickRhiItem_virtbase(QQuickRhiItem* src, QQuickItem** outptr_QQuickItem) {
	*outptr_QQuickItem = static_cast<QQuickItem*>(src);
}

QMetaObject* QQuickRhiItem_metaObject(const QQuickRhiItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickRhiItem_metacast(QQuickRhiItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickRhiItem_metacall(QQuickRhiItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQuickRhiItem_tr_s(const char* s) {
	QString _ret = QQuickRhiItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QQuickRhiItem_sampleCount(const QQuickRhiItem* self) {
	return self->sampleCount();
}

void QQuickRhiItem_setSampleCount(QQuickRhiItem* self, int samples) {
	self->setSampleCount(static_cast<int>(samples));
}

int QQuickRhiItem_colorBufferFormat(const QQuickRhiItem* self) {
	QQuickRhiItem::TextureFormat _ret = self->colorBufferFormat();
	return static_cast<int>(_ret);
}

void QQuickRhiItem_setColorBufferFormat(QQuickRhiItem* self, int format) {
	self->setColorBufferFormat(static_cast<QQuickRhiItem::TextureFormat>(format));
}

bool QQuickRhiItem_isMirrorVerticallyEnabled(const QQuickRhiItem* self) {
	return self->isMirrorVerticallyEnabled();
}

void QQuickRhiItem_setMirrorVertically(QQuickRhiItem* self, bool enable) {
	self->setMirrorVertically(enable);
}

bool QQuickRhiItem_alphaBlending(const QQuickRhiItem* self) {
	return self->alphaBlending();
}

void QQuickRhiItem_setAlphaBlending(QQuickRhiItem* self, bool enable) {
	self->setAlphaBlending(enable);
}

int QQuickRhiItem_fixedColorBufferWidth(const QQuickRhiItem* self) {
	return self->fixedColorBufferWidth();
}

void QQuickRhiItem_setFixedColorBufferWidth(QQuickRhiItem* self, int width) {
	self->setFixedColorBufferWidth(static_cast<int>(width));
}

int QQuickRhiItem_fixedColorBufferHeight(const QQuickRhiItem* self) {
	return self->fixedColorBufferHeight();
}

void QQuickRhiItem_setFixedColorBufferHeight(QQuickRhiItem* self, int height) {
	self->setFixedColorBufferHeight(static_cast<int>(height));
}

QSize* QQuickRhiItem_effectiveColorBufferSize(const QQuickRhiItem* self) {
	return new QSize(self->effectiveColorBufferSize());
}

bool QQuickRhiItem_isTextureProvider(const QQuickRhiItem* self) {
	return self->isTextureProvider();
}

QSGTextureProvider* QQuickRhiItem_textureProvider(const QQuickRhiItem* self) {
	return self->textureProvider();
}

void QQuickRhiItem_sampleCountChanged(QQuickRhiItem* self) {
	self->sampleCountChanged();
}

void QQuickRhiItem_connect_sampleCountChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRhiItem::connect(self, static_cast<void (QQuickRhiItem::*)()>(&QQuickRhiItem::sampleCountChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickRhiItem_colorBufferFormatChanged(QQuickRhiItem* self) {
	self->colorBufferFormatChanged();
}

void QQuickRhiItem_connect_colorBufferFormatChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRhiItem::connect(self, static_cast<void (QQuickRhiItem::*)()>(&QQuickRhiItem::colorBufferFormatChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickRhiItem_autoRenderTargetChanged(QQuickRhiItem* self) {
	self->autoRenderTargetChanged();
}

void QQuickRhiItem_connect_autoRenderTargetChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRhiItem::connect(self, static_cast<void (QQuickRhiItem::*)()>(&QQuickRhiItem::autoRenderTargetChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickRhiItem_mirrorVerticallyChanged(QQuickRhiItem* self) {
	self->mirrorVerticallyChanged();
}

void QQuickRhiItem_connect_mirrorVerticallyChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRhiItem::connect(self, static_cast<void (QQuickRhiItem::*)()>(&QQuickRhiItem::mirrorVerticallyChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickRhiItem_alphaBlendingChanged(QQuickRhiItem* self) {
	self->alphaBlendingChanged();
}

void QQuickRhiItem_connect_alphaBlendingChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRhiItem::connect(self, static_cast<void (QQuickRhiItem::*)()>(&QQuickRhiItem::alphaBlendingChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickRhiItem_fixedColorBufferWidthChanged(QQuickRhiItem* self) {
	self->fixedColorBufferWidthChanged();
}

void QQuickRhiItem_connect_fixedColorBufferWidthChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRhiItem::connect(self, static_cast<void (QQuickRhiItem::*)()>(&QQuickRhiItem::fixedColorBufferWidthChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickRhiItem_fixedColorBufferHeightChanged(QQuickRhiItem* self) {
	self->fixedColorBufferHeightChanged();
}

void QQuickRhiItem_connect_fixedColorBufferHeightChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRhiItem::connect(self, static_cast<void (QQuickRhiItem::*)()>(&QQuickRhiItem::fixedColorBufferHeightChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickRhiItem_effectiveColorBufferSizeChanged(QQuickRhiItem* self) {
	self->effectiveColorBufferSizeChanged();
}

void QQuickRhiItem_connect_effectiveColorBufferSizeChanged(QQuickRhiItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRhiItem::connect(self, static_cast<void (QQuickRhiItem::*)()>(&QQuickRhiItem::effectiveColorBufferSizeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QQuickRhiItem_tr_s_c(const char* s, const char* c) {
	QString _ret = QQuickRhiItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQuickRhiItem_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQuickRhiItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QQuickRhiItem_staticMetaObject() { return &QQuickRhiItem::staticMetaObject; }
void* QQuickRhiItem_vdata(VirtualQQuickRhiItem* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQuickRhiItem>()); }
VirtualQQuickRhiItem* vdata_QQuickRhiItem(void* vdata) { return reinterpret_cast<VirtualQQuickRhiItem*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQuickRhiItem>()); }

QMetaObject* QQuickRhiItem_virtualbase_metaObject(const VirtualQQuickRhiItem* self) {

	return (QMetaObject*) self->QQuickRhiItem::metaObject();
}

void* QQuickRhiItem_virtualbase_metacast(VirtualQQuickRhiItem* self, const char* param1) {

	return self->QQuickRhiItem::qt_metacast(param1);
}

int QQuickRhiItem_virtualbase_metacall(VirtualQQuickRhiItem* self, int param1, int param2, void** param3) {

	return self->QQuickRhiItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQuickRhiItem_virtualbase_isTextureProvider(const VirtualQQuickRhiItem* self) {

	return self->QQuickRhiItem::isTextureProvider();
}

QSGTextureProvider* QQuickRhiItem_virtualbase_textureProvider(const VirtualQQuickRhiItem* self) {

	return self->QQuickRhiItem::textureProvider();
}

QSGNode* QQuickRhiItem_virtualbase_updatePaintNode(VirtualQQuickRhiItem* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

	return self->QQuickRhiItem::updatePaintNode(param1, param2);
}

bool QQuickRhiItem_virtualbase_event(VirtualQQuickRhiItem* self, QEvent* param1) {

	return self->QQuickRhiItem::event(param1);
}

void QQuickRhiItem_virtualbase_geometryChange(VirtualQQuickRhiItem* self, QRectF* newGeometry, QRectF* oldGeometry) {

	self->QQuickRhiItem::geometryChange(*newGeometry, *oldGeometry);
}

void QQuickRhiItem_virtualbase_releaseResources(VirtualQQuickRhiItem* self) {

	self->QQuickRhiItem::releaseResources();
}

QRectF* QQuickRhiItem_virtualbase_boundingRect(const VirtualQQuickRhiItem* self) {

	return new QRectF(self->QQuickRhiItem::boundingRect());
}

QRectF* QQuickRhiItem_virtualbase_clipRect(const VirtualQQuickRhiItem* self) {

	return new QRectF(self->QQuickRhiItem::clipRect());
}

bool QQuickRhiItem_virtualbase_contains(const VirtualQQuickRhiItem* self, QPointF* point) {

	return self->QQuickRhiItem::contains(*point);
}

QVariant* QQuickRhiItem_virtualbase_inputMethodQuery(const VirtualQQuickRhiItem* self, int query) {

	return new QVariant(self->QQuickRhiItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QQuickRhiItem_virtualbase_itemChange(VirtualQQuickRhiItem* self, int param1, QQuickItem__ItemChangeData* param2) {

	self->QQuickRhiItem::itemChange(static_cast<VirtualQQuickRhiItem::ItemChange>(param1), *param2);
}

void QQuickRhiItem_virtualbase_classBegin(VirtualQQuickRhiItem* self) {

	self->QQuickRhiItem::classBegin();
}

void QQuickRhiItem_virtualbase_componentComplete(VirtualQQuickRhiItem* self) {

	self->QQuickRhiItem::componentComplete();
}

void QQuickRhiItem_virtualbase_keyPressEvent(VirtualQQuickRhiItem* self, QKeyEvent* event) {

	self->QQuickRhiItem::keyPressEvent(event);
}

void QQuickRhiItem_virtualbase_keyReleaseEvent(VirtualQQuickRhiItem* self, QKeyEvent* event) {

	self->QQuickRhiItem::keyReleaseEvent(event);
}

void QQuickRhiItem_virtualbase_inputMethodEvent(VirtualQQuickRhiItem* self, QInputMethodEvent* param1) {

	self->QQuickRhiItem::inputMethodEvent(param1);
}

void QQuickRhiItem_virtualbase_focusInEvent(VirtualQQuickRhiItem* self, QFocusEvent* param1) {

	self->QQuickRhiItem::focusInEvent(param1);
}

void QQuickRhiItem_virtualbase_focusOutEvent(VirtualQQuickRhiItem* self, QFocusEvent* param1) {

	self->QQuickRhiItem::focusOutEvent(param1);
}

void QQuickRhiItem_virtualbase_mousePressEvent(VirtualQQuickRhiItem* self, QMouseEvent* event) {

	self->QQuickRhiItem::mousePressEvent(event);
}

void QQuickRhiItem_virtualbase_mouseMoveEvent(VirtualQQuickRhiItem* self, QMouseEvent* event) {

	self->QQuickRhiItem::mouseMoveEvent(event);
}

void QQuickRhiItem_virtualbase_mouseReleaseEvent(VirtualQQuickRhiItem* self, QMouseEvent* event) {

	self->QQuickRhiItem::mouseReleaseEvent(event);
}

void QQuickRhiItem_virtualbase_mouseDoubleClickEvent(VirtualQQuickRhiItem* self, QMouseEvent* event) {

	self->QQuickRhiItem::mouseDoubleClickEvent(event);
}

void QQuickRhiItem_virtualbase_mouseUngrabEvent(VirtualQQuickRhiItem* self) {

	self->QQuickRhiItem::mouseUngrabEvent();
}

void QQuickRhiItem_virtualbase_touchUngrabEvent(VirtualQQuickRhiItem* self) {

	self->QQuickRhiItem::touchUngrabEvent();
}

void QQuickRhiItem_virtualbase_wheelEvent(VirtualQQuickRhiItem* self, QWheelEvent* event) {

	self->QQuickRhiItem::wheelEvent(event);
}

void QQuickRhiItem_virtualbase_touchEvent(VirtualQQuickRhiItem* self, QTouchEvent* event) {

	self->QQuickRhiItem::touchEvent(event);
}

void QQuickRhiItem_virtualbase_hoverEnterEvent(VirtualQQuickRhiItem* self, QHoverEvent* event) {

	self->QQuickRhiItem::hoverEnterEvent(event);
}

void QQuickRhiItem_virtualbase_hoverMoveEvent(VirtualQQuickRhiItem* self, QHoverEvent* event) {

	self->QQuickRhiItem::hoverMoveEvent(event);
}

void QQuickRhiItem_virtualbase_hoverLeaveEvent(VirtualQQuickRhiItem* self, QHoverEvent* event) {

	self->QQuickRhiItem::hoverLeaveEvent(event);
}

void QQuickRhiItem_virtualbase_dragEnterEvent(VirtualQQuickRhiItem* self, QDragEnterEvent* param1) {

	self->QQuickRhiItem::dragEnterEvent(param1);
}

void QQuickRhiItem_virtualbase_dragMoveEvent(VirtualQQuickRhiItem* self, QDragMoveEvent* param1) {

	self->QQuickRhiItem::dragMoveEvent(param1);
}

void QQuickRhiItem_virtualbase_dragLeaveEvent(VirtualQQuickRhiItem* self, QDragLeaveEvent* param1) {

	self->QQuickRhiItem::dragLeaveEvent(param1);
}

void QQuickRhiItem_virtualbase_dropEvent(VirtualQQuickRhiItem* self, QDropEvent* param1) {

	self->QQuickRhiItem::dropEvent(param1);
}

bool QQuickRhiItem_virtualbase_childMouseEventFilter(VirtualQQuickRhiItem* self, QQuickItem* param1, QEvent* param2) {

	return self->QQuickRhiItem::childMouseEventFilter(param1, param2);
}

void QQuickRhiItem_virtualbase_updatePolish(VirtualQQuickRhiItem* self) {

	self->QQuickRhiItem::updatePolish();
}

bool QQuickRhiItem_virtualbase_eventFilter(VirtualQQuickRhiItem* self, QObject* watched, QEvent* event) {

	return self->QQuickRhiItem::eventFilter(watched, event);
}

void QQuickRhiItem_virtualbase_timerEvent(VirtualQQuickRhiItem* self, QTimerEvent* event) {

	self->QQuickRhiItem::timerEvent(event);
}

void QQuickRhiItem_virtualbase_childEvent(VirtualQQuickRhiItem* self, QChildEvent* event) {

	self->QQuickRhiItem::childEvent(event);
}

void QQuickRhiItem_virtualbase_customEvent(VirtualQQuickRhiItem* self, QEvent* event) {

	self->QQuickRhiItem::customEvent(event);
}

void QQuickRhiItem_virtualbase_connectNotify(VirtualQQuickRhiItem* self, QMetaMethod* signal) {

	self->QQuickRhiItem::connectNotify(*signal);
}

void QQuickRhiItem_virtualbase_disconnectNotify(VirtualQQuickRhiItem* self, QMetaMethod* signal) {

	self->QQuickRhiItem::disconnectNotify(*signal);
}

bool QQuickRhiItem_protectedbase_isAutoRenderTargetEnabled(const VirtualQQuickRhiItem* self) {
	return self->QQuickRhiItem::isAutoRenderTargetEnabled();
}

void QQuickRhiItem_protectedbase_setAutoRenderTarget(VirtualQQuickRhiItem* self, bool enabled) {
	self->QQuickRhiItem::setAutoRenderTarget(enabled);
}

bool QQuickRhiItem_protectedbase_isComponentComplete(const VirtualQQuickRhiItem* self) {
	return self->QQuickRhiItem::isComponentComplete();
}

void QQuickRhiItem_protectedbase_updateInputMethod(VirtualQQuickRhiItem* self) {
	self->QQuickRhiItem::updateInputMethod();
}

bool QQuickRhiItem_protectedbase_widthValid(const VirtualQQuickRhiItem* self) {
	return self->QQuickRhiItem::widthValid();
}

bool QQuickRhiItem_protectedbase_heightValid(const VirtualQQuickRhiItem* self) {
	return self->QQuickRhiItem::heightValid();
}

void QQuickRhiItem_protectedbase_setImplicitSize(VirtualQQuickRhiItem* self, double param1, double param2) {
	self->QQuickRhiItem::setImplicitSize(static_cast<qreal>(param1), static_cast<qreal>(param2));
}

QObject* QQuickRhiItem_protectedbase_sender(const VirtualQQuickRhiItem* self) {
	return self->QQuickRhiItem::sender();
}

int QQuickRhiItem_protectedbase_senderSignalIndex(const VirtualQQuickRhiItem* self) {
	return self->QQuickRhiItem::senderSignalIndex();
}

int QQuickRhiItem_protectedbase_receivers(const VirtualQQuickRhiItem* self, const char* signal) {
	return self->QQuickRhiItem::receivers(signal);
}

bool QQuickRhiItem_protectedbase_isSignalConnected(const VirtualQQuickRhiItem* self, QMetaMethod* signal) {
	return self->QQuickRhiItem::isSignalConnected(*signal);
}

void QQuickRhiItem_delete(QQuickRhiItem* self) {
	delete self;
}

