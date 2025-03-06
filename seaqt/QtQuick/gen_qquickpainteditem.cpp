#include <QChildEvent>
#include <QColor>
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
#include <QPainter>
#include <QPointF>
#include <QQmlParserStatus>
#include <QQuickItem>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__ItemChangeData
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__UpdatePaintNodeData
#include <QQuickPaintedItem>
#include <QRect>
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
#include <qquickpainteditem.h>
#include "gen_qquickpainteditem.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQuickPaintedItem_fillColorChanged(intptr_t);
void miqt_exec_callback_QQuickPaintedItem_contentsSizeChanged(intptr_t);
void miqt_exec_callback_QQuickPaintedItem_contentsScaleChanged(intptr_t);
void miqt_exec_callback_QQuickPaintedItem_renderTargetChanged(intptr_t);
void miqt_exec_callback_QQuickPaintedItem_textureSizeChanged(intptr_t);
QMetaObject* miqt_exec_callback_QQuickPaintedItem_metaObject(const QQuickPaintedItem*, intptr_t);
void* miqt_exec_callback_QQuickPaintedItem_metacast(QQuickPaintedItem*, intptr_t, const char*);
int miqt_exec_callback_QQuickPaintedItem_metacall(QQuickPaintedItem*, intptr_t, int, int, void**);
void miqt_exec_callback_QQuickPaintedItem_paint(QQuickPaintedItem*, intptr_t, QPainter*);
bool miqt_exec_callback_QQuickPaintedItem_isTextureProvider(const QQuickPaintedItem*, intptr_t);
QSGTextureProvider* miqt_exec_callback_QQuickPaintedItem_textureProvider(const QQuickPaintedItem*, intptr_t);
QSGNode* miqt_exec_callback_QQuickPaintedItem_updatePaintNode(QQuickPaintedItem*, intptr_t, QSGNode*, QQuickItem__UpdatePaintNodeData*);
void miqt_exec_callback_QQuickPaintedItem_releaseResources(QQuickPaintedItem*, intptr_t);
void miqt_exec_callback_QQuickPaintedItem_itemChange(QQuickPaintedItem*, intptr_t, int, QQuickItem__ItemChangeData*);
QRectF* miqt_exec_callback_QQuickPaintedItem_boundingRect(const QQuickPaintedItem*, intptr_t);
QRectF* miqt_exec_callback_QQuickPaintedItem_clipRect(const QQuickPaintedItem*, intptr_t);
bool miqt_exec_callback_QQuickPaintedItem_contains(const QQuickPaintedItem*, intptr_t, QPointF*);
QVariant* miqt_exec_callback_QQuickPaintedItem_inputMethodQuery(const QQuickPaintedItem*, intptr_t, int);
bool miqt_exec_callback_QQuickPaintedItem_event(QQuickPaintedItem*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickPaintedItem_geometryChange(QQuickPaintedItem*, intptr_t, QRectF*, QRectF*);
void miqt_exec_callback_QQuickPaintedItem_classBegin(QQuickPaintedItem*, intptr_t);
void miqt_exec_callback_QQuickPaintedItem_componentComplete(QQuickPaintedItem*, intptr_t);
void miqt_exec_callback_QQuickPaintedItem_keyPressEvent(QQuickPaintedItem*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickPaintedItem_keyReleaseEvent(QQuickPaintedItem*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickPaintedItem_inputMethodEvent(QQuickPaintedItem*, intptr_t, QInputMethodEvent*);
void miqt_exec_callback_QQuickPaintedItem_focusInEvent(QQuickPaintedItem*, intptr_t, QFocusEvent*);
void miqt_exec_callback_QQuickPaintedItem_focusOutEvent(QQuickPaintedItem*, intptr_t, QFocusEvent*);
void miqt_exec_callback_QQuickPaintedItem_mousePressEvent(QQuickPaintedItem*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickPaintedItem_mouseMoveEvent(QQuickPaintedItem*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickPaintedItem_mouseReleaseEvent(QQuickPaintedItem*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickPaintedItem_mouseDoubleClickEvent(QQuickPaintedItem*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickPaintedItem_mouseUngrabEvent(QQuickPaintedItem*, intptr_t);
void miqt_exec_callback_QQuickPaintedItem_touchUngrabEvent(QQuickPaintedItem*, intptr_t);
void miqt_exec_callback_QQuickPaintedItem_wheelEvent(QQuickPaintedItem*, intptr_t, QWheelEvent*);
void miqt_exec_callback_QQuickPaintedItem_touchEvent(QQuickPaintedItem*, intptr_t, QTouchEvent*);
void miqt_exec_callback_QQuickPaintedItem_hoverEnterEvent(QQuickPaintedItem*, intptr_t, QHoverEvent*);
void miqt_exec_callback_QQuickPaintedItem_hoverMoveEvent(QQuickPaintedItem*, intptr_t, QHoverEvent*);
void miqt_exec_callback_QQuickPaintedItem_hoverLeaveEvent(QQuickPaintedItem*, intptr_t, QHoverEvent*);
void miqt_exec_callback_QQuickPaintedItem_dragEnterEvent(QQuickPaintedItem*, intptr_t, QDragEnterEvent*);
void miqt_exec_callback_QQuickPaintedItem_dragMoveEvent(QQuickPaintedItem*, intptr_t, QDragMoveEvent*);
void miqt_exec_callback_QQuickPaintedItem_dragLeaveEvent(QQuickPaintedItem*, intptr_t, QDragLeaveEvent*);
void miqt_exec_callback_QQuickPaintedItem_dropEvent(QQuickPaintedItem*, intptr_t, QDropEvent*);
bool miqt_exec_callback_QQuickPaintedItem_childMouseEventFilter(QQuickPaintedItem*, intptr_t, QQuickItem*, QEvent*);
void miqt_exec_callback_QQuickPaintedItem_updatePolish(QQuickPaintedItem*, intptr_t);
bool miqt_exec_callback_QQuickPaintedItem_eventFilter(QQuickPaintedItem*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickPaintedItem_timerEvent(QQuickPaintedItem*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickPaintedItem_childEvent(QQuickPaintedItem*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickPaintedItem_customEvent(QQuickPaintedItem*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickPaintedItem_connectNotify(QQuickPaintedItem*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickPaintedItem_disconnectNotify(QQuickPaintedItem*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQuickPaintedItem final : public QQuickPaintedItem {
public:

	VirtualQQuickPaintedItem(): QQuickPaintedItem() {};
	VirtualQQuickPaintedItem(QQuickItem* parent): QQuickPaintedItem(parent) {};

	virtual ~VirtualQQuickPaintedItem() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QQuickPaintedItem::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QQuickPaintedItem_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QQuickPaintedItem_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QQuickPaintedItem::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QQuickPaintedItem_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QQuickPaintedItem_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QQuickPaintedItem::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QQuickPaintedItem_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQuickPaintedItem_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__paint = 0;

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter) override {
		if (handle__paint == 0) {
			return; // Pure virtual, there is no base we can call
		}
		
		QPainter* sigval1 = painter;

		miqt_exec_callback_QQuickPaintedItem_paint(this, handle__paint, sigval1);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isTextureProvider = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isTextureProvider() const override {
		if (handle__isTextureProvider == 0) {
			return QQuickPaintedItem::isTextureProvider();
		}
		

		bool callback_return_value = miqt_exec_callback_QQuickPaintedItem_isTextureProvider(this, handle__isTextureProvider);

		return callback_return_value;
	}

	friend bool QQuickPaintedItem_virtualbase_isTextureProvider(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureProvider = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGTextureProvider* textureProvider() const override {
		if (handle__textureProvider == 0) {
			return QQuickPaintedItem::textureProvider();
		}
		

		QSGTextureProvider* callback_return_value = miqt_exec_callback_QQuickPaintedItem_textureProvider(this, handle__textureProvider);

		return callback_return_value;
	}

	friend QSGTextureProvider* QQuickPaintedItem_virtualbase_textureProvider(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updatePaintNode = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (handle__updatePaintNode == 0) {
			return QQuickPaintedItem::updatePaintNode(param1, param2);
		}
		
		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;

		QSGNode* callback_return_value = miqt_exec_callback_QQuickPaintedItem_updatePaintNode(this, handle__updatePaintNode, sigval1, sigval2);

		return callback_return_value;
	}

	friend QSGNode* QQuickPaintedItem_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__releaseResources = 0;

	// Subclass to allow providing a Go implementation
	virtual void releaseResources() override {
		if (handle__releaseResources == 0) {
			QQuickPaintedItem::releaseResources();
			return;
		}
		

		miqt_exec_callback_QQuickPaintedItem_releaseResources(this, handle__releaseResources);

		
	}

	friend void QQuickPaintedItem_virtualbase_releaseResources(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__itemChange = 0;

	// Subclass to allow providing a Go implementation
	virtual void itemChange(QQuickItem::ItemChange param1, const QQuickItem::ItemChangeData& param2) override {
		if (handle__itemChange == 0) {
			QQuickPaintedItem::itemChange(param1, param2);
			return;
		}
		
		QQuickItem::ItemChange param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		const QQuickItem::ItemChangeData& param2_ret = param2;
		// Cast returned reference into pointer
		QQuickItem__ItemChangeData* sigval2 = const_cast<QQuickItem::ItemChangeData*>(&param2_ret);

		miqt_exec_callback_QQuickPaintedItem_itemChange(this, handle__itemChange, sigval1, sigval2);

		
	}

	friend void QQuickPaintedItem_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__boundingRect = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (handle__boundingRect == 0) {
			return QQuickPaintedItem::boundingRect();
		}
		

		QRectF* callback_return_value = miqt_exec_callback_QQuickPaintedItem_boundingRect(this, handle__boundingRect);

		return *callback_return_value;
	}

	friend QRectF* QQuickPaintedItem_virtualbase_boundingRect(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clipRect = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF clipRect() const override {
		if (handle__clipRect == 0) {
			return QQuickPaintedItem::clipRect();
		}
		

		QRectF* callback_return_value = miqt_exec_callback_QQuickPaintedItem_clipRect(this, handle__clipRect);

		return *callback_return_value;
	}

	friend QRectF* QQuickPaintedItem_virtualbase_clipRect(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__contains = 0;

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (handle__contains == 0) {
			return QQuickPaintedItem::contains(point);
		}
		
		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = miqt_exec_callback_QQuickPaintedItem_contains(this, handle__contains, sigval1);

		return callback_return_value;
	}

	friend bool QQuickPaintedItem_virtualbase_contains(const void* self, QPointF* point);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__inputMethodQuery = 0;

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (handle__inputMethodQuery == 0) {
			return QQuickPaintedItem::inputMethodQuery(query);
		}
		
		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = miqt_exec_callback_QQuickPaintedItem_inputMethodQuery(this, handle__inputMethodQuery, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QQuickPaintedItem_virtualbase_inputMethodQuery(const void* self, int query);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (handle__event == 0) {
			return QQuickPaintedItem::event(param1);
		}
		
		QEvent* sigval1 = param1;

		bool callback_return_value = miqt_exec_callback_QQuickPaintedItem_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QQuickPaintedItem_virtualbase_event(void* self, QEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__geometryChange = 0;

	// Subclass to allow providing a Go implementation
	virtual void geometryChange(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (handle__geometryChange == 0) {
			QQuickPaintedItem::geometryChange(newGeometry, oldGeometry);
			return;
		}
		
		const QRectF& newGeometry_ret = newGeometry;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&newGeometry_ret);
		const QRectF& oldGeometry_ret = oldGeometry;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&oldGeometry_ret);

		miqt_exec_callback_QQuickPaintedItem_geometryChange(this, handle__geometryChange, sigval1, sigval2);

		
	}

	friend void QQuickPaintedItem_virtualbase_geometryChange(void* self, QRectF* newGeometry, QRectF* oldGeometry);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__classBegin = 0;

	// Subclass to allow providing a Go implementation
	virtual void classBegin() override {
		if (handle__classBegin == 0) {
			QQuickPaintedItem::classBegin();
			return;
		}
		

		miqt_exec_callback_QQuickPaintedItem_classBegin(this, handle__classBegin);

		
	}

	friend void QQuickPaintedItem_virtualbase_classBegin(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__componentComplete = 0;

	// Subclass to allow providing a Go implementation
	virtual void componentComplete() override {
		if (handle__componentComplete == 0) {
			QQuickPaintedItem::componentComplete();
			return;
		}
		

		miqt_exec_callback_QQuickPaintedItem_componentComplete(this, handle__componentComplete);

		
	}

	friend void QQuickPaintedItem_virtualbase_componentComplete(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyPressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (handle__keyPressEvent == 0) {
			QQuickPaintedItem::keyPressEvent(event);
			return;
		}
		
		QKeyEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_keyPressEvent(this, handle__keyPressEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (handle__keyReleaseEvent == 0) {
			QQuickPaintedItem::keyReleaseEvent(event);
			return;
		}
		
		QKeyEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_keyReleaseEvent(this, handle__keyReleaseEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__inputMethodEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (handle__inputMethodEvent == 0) {
			QQuickPaintedItem::inputMethodEvent(param1);
			return;
		}
		
		QInputMethodEvent* sigval1 = param1;

		miqt_exec_callback_QQuickPaintedItem_inputMethodEvent(this, handle__inputMethodEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusInEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (handle__focusInEvent == 0) {
			QQuickPaintedItem::focusInEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickPaintedItem_focusInEvent(this, handle__focusInEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_focusInEvent(void* self, QFocusEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusOutEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (handle__focusOutEvent == 0) {
			QQuickPaintedItem::focusOutEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickPaintedItem_focusOutEvent(this, handle__focusOutEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mousePressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (handle__mousePressEvent == 0) {
			QQuickPaintedItem::mousePressEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_mousePressEvent(this, handle__mousePressEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (handle__mouseMoveEvent == 0) {
			QQuickPaintedItem::mouseMoveEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_mouseMoveEvent(this, handle__mouseMoveEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (handle__mouseReleaseEvent == 0) {
			QQuickPaintedItem::mouseReleaseEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_mouseReleaseEvent(this, handle__mouseReleaseEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseDoubleClickEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (handle__mouseDoubleClickEvent == 0) {
			QQuickPaintedItem::mouseDoubleClickEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_mouseDoubleClickEvent(this, handle__mouseDoubleClickEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseUngrabEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseUngrabEvent() override {
		if (handle__mouseUngrabEvent == 0) {
			QQuickPaintedItem::mouseUngrabEvent();
			return;
		}
		

		miqt_exec_callback_QQuickPaintedItem_mouseUngrabEvent(this, handle__mouseUngrabEvent);

		
	}

	friend void QQuickPaintedItem_virtualbase_mouseUngrabEvent(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__touchUngrabEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void touchUngrabEvent() override {
		if (handle__touchUngrabEvent == 0) {
			QQuickPaintedItem::touchUngrabEvent();
			return;
		}
		

		miqt_exec_callback_QQuickPaintedItem_touchUngrabEvent(this, handle__touchUngrabEvent);

		
	}

	friend void QQuickPaintedItem_virtualbase_touchUngrabEvent(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__wheelEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (handle__wheelEvent == 0) {
			QQuickPaintedItem::wheelEvent(event);
			return;
		}
		
		QWheelEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_wheelEvent(this, handle__wheelEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__touchEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* event) override {
		if (handle__touchEvent == 0) {
			QQuickPaintedItem::touchEvent(event);
			return;
		}
		
		QTouchEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_touchEvent(this, handle__touchEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_touchEvent(void* self, QTouchEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hoverEnterEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (handle__hoverEnterEvent == 0) {
			QQuickPaintedItem::hoverEnterEvent(event);
			return;
		}
		
		QHoverEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_hoverEnterEvent(this, handle__hoverEnterEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hoverMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (handle__hoverMoveEvent == 0) {
			QQuickPaintedItem::hoverMoveEvent(event);
			return;
		}
		
		QHoverEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_hoverMoveEvent(this, handle__hoverMoveEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hoverLeaveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (handle__hoverLeaveEvent == 0) {
			QQuickPaintedItem::hoverLeaveEvent(event);
			return;
		}
		
		QHoverEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_hoverLeaveEvent(this, handle__hoverLeaveEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dragEnterEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (handle__dragEnterEvent == 0) {
			QQuickPaintedItem::dragEnterEvent(param1);
			return;
		}
		
		QDragEnterEvent* sigval1 = param1;

		miqt_exec_callback_QQuickPaintedItem_dragEnterEvent(this, handle__dragEnterEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dragMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (handle__dragMoveEvent == 0) {
			QQuickPaintedItem::dragMoveEvent(param1);
			return;
		}
		
		QDragMoveEvent* sigval1 = param1;

		miqt_exec_callback_QQuickPaintedItem_dragMoveEvent(this, handle__dragMoveEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dragLeaveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (handle__dragLeaveEvent == 0) {
			QQuickPaintedItem::dragLeaveEvent(param1);
			return;
		}
		
		QDragLeaveEvent* sigval1 = param1;

		miqt_exec_callback_QQuickPaintedItem_dragLeaveEvent(this, handle__dragLeaveEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dropEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (handle__dropEvent == 0) {
			QQuickPaintedItem::dropEvent(param1);
			return;
		}
		
		QDropEvent* sigval1 = param1;

		miqt_exec_callback_QQuickPaintedItem_dropEvent(this, handle__dropEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_dropEvent(void* self, QDropEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childMouseEventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (handle__childMouseEventFilter == 0) {
			return QQuickPaintedItem::childMouseEventFilter(param1, param2);
		}
		
		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = miqt_exec_callback_QQuickPaintedItem_childMouseEventFilter(this, handle__childMouseEventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickPaintedItem_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updatePolish = 0;

	// Subclass to allow providing a Go implementation
	virtual void updatePolish() override {
		if (handle__updatePolish == 0) {
			QQuickPaintedItem::updatePolish();
			return;
		}
		

		miqt_exec_callback_QQuickPaintedItem_updatePolish(this, handle__updatePolish);

		
	}

	friend void QQuickPaintedItem_virtualbase_updatePolish(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickPaintedItem::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickPaintedItem_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickPaintedItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQuickPaintedItem::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickPaintedItem::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickPaintedItem::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickPaintedItem_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickPaintedItem::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickPaintedItem_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickPaintedItem::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickPaintedItem_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QQuickPaintedItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend bool QQuickPaintedItem_protectedbase_isComponentComplete(bool* _dynamic_cast_ok, const void* self);
	friend void QQuickPaintedItem_protectedbase_updateInputMethod(bool* _dynamic_cast_ok, void* self);
	friend bool QQuickPaintedItem_protectedbase_widthValid(bool* _dynamic_cast_ok, const void* self);
	friend bool QQuickPaintedItem_protectedbase_heightValid(bool* _dynamic_cast_ok, const void* self);
	friend void QQuickPaintedItem_protectedbase_setImplicitSize(bool* _dynamic_cast_ok, void* self, double param1, double param2);
	friend QObject* QQuickPaintedItem_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickPaintedItem_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickPaintedItem_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickPaintedItem_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickPaintedItem* QQuickPaintedItem_new() {
	return new VirtualQQuickPaintedItem();
}

QQuickPaintedItem* QQuickPaintedItem_new2(QQuickItem* parent) {
	return new VirtualQQuickPaintedItem(parent);
}

void QQuickPaintedItem_virtbase(QQuickPaintedItem* src, QQuickItem** outptr_QQuickItem) {
	*outptr_QQuickItem = static_cast<QQuickItem*>(src);
}

QMetaObject* QQuickPaintedItem_metaObject(const QQuickPaintedItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickPaintedItem_metacast(QQuickPaintedItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickPaintedItem_metacall(QQuickPaintedItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickPaintedItem_tr(const char* s) {
	QString _ret = QQuickPaintedItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickPaintedItem_update(QQuickPaintedItem* self) {
	self->update();
}

bool QQuickPaintedItem_opaquePainting(const QQuickPaintedItem* self) {
	return self->opaquePainting();
}

void QQuickPaintedItem_setOpaquePainting(QQuickPaintedItem* self, bool opaque) {
	self->setOpaquePainting(opaque);
}

bool QQuickPaintedItem_antialiasing(const QQuickPaintedItem* self) {
	return self->antialiasing();
}

void QQuickPaintedItem_setAntialiasing(QQuickPaintedItem* self, bool enable) {
	self->setAntialiasing(enable);
}

bool QQuickPaintedItem_mipmap(const QQuickPaintedItem* self) {
	return self->mipmap();
}

void QQuickPaintedItem_setMipmap(QQuickPaintedItem* self, bool enable) {
	self->setMipmap(enable);
}

int QQuickPaintedItem_performanceHints(const QQuickPaintedItem* self) {
	QQuickPaintedItem::PerformanceHints _ret = self->performanceHints();
	return static_cast<int>(_ret);
}

void QQuickPaintedItem_setPerformanceHint(QQuickPaintedItem* self, int hint) {
	self->setPerformanceHint(static_cast<QQuickPaintedItem::PerformanceHint>(hint));
}

void QQuickPaintedItem_setPerformanceHints(QQuickPaintedItem* self, int hints) {
	self->setPerformanceHints(static_cast<QQuickPaintedItem::PerformanceHints>(hints));
}

QRectF* QQuickPaintedItem_contentsBoundingRect(const QQuickPaintedItem* self) {
	return new QRectF(self->contentsBoundingRect());
}

QSize* QQuickPaintedItem_contentsSize(const QQuickPaintedItem* self) {
	return new QSize(self->contentsSize());
}

void QQuickPaintedItem_setContentsSize(QQuickPaintedItem* self, QSize* contentsSize) {
	self->setContentsSize(*contentsSize);
}

void QQuickPaintedItem_resetContentsSize(QQuickPaintedItem* self) {
	self->resetContentsSize();
}

double QQuickPaintedItem_contentsScale(const QQuickPaintedItem* self) {
	qreal _ret = self->contentsScale();
	return static_cast<double>(_ret);
}

void QQuickPaintedItem_setContentsScale(QQuickPaintedItem* self, double contentsScale) {
	self->setContentsScale(static_cast<qreal>(contentsScale));
}

QSize* QQuickPaintedItem_textureSize(const QQuickPaintedItem* self) {
	return new QSize(self->textureSize());
}

void QQuickPaintedItem_setTextureSize(QQuickPaintedItem* self, QSize* size) {
	self->setTextureSize(*size);
}

QColor* QQuickPaintedItem_fillColor(const QQuickPaintedItem* self) {
	return new QColor(self->fillColor());
}

void QQuickPaintedItem_setFillColor(QQuickPaintedItem* self, QColor* fillColor) {
	self->setFillColor(*fillColor);
}

int QQuickPaintedItem_renderTarget(const QQuickPaintedItem* self) {
	QQuickPaintedItem::RenderTarget _ret = self->renderTarget();
	return static_cast<int>(_ret);
}

void QQuickPaintedItem_setRenderTarget(QQuickPaintedItem* self, int target) {
	self->setRenderTarget(static_cast<QQuickPaintedItem::RenderTarget>(target));
}

void QQuickPaintedItem_paint(QQuickPaintedItem* self, QPainter* painter) {
	self->paint(painter);
}

bool QQuickPaintedItem_isTextureProvider(const QQuickPaintedItem* self) {
	return self->isTextureProvider();
}

QSGTextureProvider* QQuickPaintedItem_textureProvider(const QQuickPaintedItem* self) {
	return self->textureProvider();
}

void QQuickPaintedItem_fillColorChanged(QQuickPaintedItem* self) {
	self->fillColorChanged();
}

void QQuickPaintedItem_connect_fillColorChanged(QQuickPaintedItem* self, intptr_t slot) {
	VirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::fillColorChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_fillColorChanged(slot);
	});
}

void QQuickPaintedItem_contentsSizeChanged(QQuickPaintedItem* self) {
	self->contentsSizeChanged();
}

void QQuickPaintedItem_connect_contentsSizeChanged(QQuickPaintedItem* self, intptr_t slot) {
	VirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::contentsSizeChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_contentsSizeChanged(slot);
	});
}

void QQuickPaintedItem_contentsScaleChanged(QQuickPaintedItem* self) {
	self->contentsScaleChanged();
}

void QQuickPaintedItem_connect_contentsScaleChanged(QQuickPaintedItem* self, intptr_t slot) {
	VirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::contentsScaleChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_contentsScaleChanged(slot);
	});
}

void QQuickPaintedItem_renderTargetChanged(QQuickPaintedItem* self) {
	self->renderTargetChanged();
}

void QQuickPaintedItem_connect_renderTargetChanged(QQuickPaintedItem* self, intptr_t slot) {
	VirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::renderTargetChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_renderTargetChanged(slot);
	});
}

void QQuickPaintedItem_textureSizeChanged(QQuickPaintedItem* self) {
	self->textureSizeChanged();
}

void QQuickPaintedItem_connect_textureSizeChanged(QQuickPaintedItem* self, intptr_t slot) {
	VirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::textureSizeChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_textureSizeChanged(slot);
	});
}

struct miqt_string QQuickPaintedItem_tr2(const char* s, const char* c) {
	QString _ret = QQuickPaintedItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickPaintedItem_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickPaintedItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickPaintedItem_update1(QQuickPaintedItem* self, QRect* rect) {
	self->update(*rect);
}

void QQuickPaintedItem_setPerformanceHint2(QQuickPaintedItem* self, int hint, bool enabled) {
	self->setPerformanceHint(static_cast<QQuickPaintedItem::PerformanceHint>(hint), enabled);
}

bool QQuickPaintedItem_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QQuickPaintedItem_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::metaObject();

}

bool QQuickPaintedItem_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QQuickPaintedItem_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::qt_metacast(param1);

}

bool QQuickPaintedItem_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QQuickPaintedItem_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QQuickPaintedItem_override_virtual_paint(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__paint = slot;
	return true;
}

bool QQuickPaintedItem_override_virtual_isTextureProvider(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isTextureProvider = slot;
	return true;
}

bool QQuickPaintedItem_virtualbase_isTextureProvider(const void* self) {

	return ( (const VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::isTextureProvider();

}

bool QQuickPaintedItem_override_virtual_textureProvider(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureProvider = slot;
	return true;
}

QSGTextureProvider* QQuickPaintedItem_virtualbase_textureProvider(const void* self) {

	return ( (const VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::textureProvider();

}

bool QQuickPaintedItem_override_virtual_updatePaintNode(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updatePaintNode = slot;
	return true;
}

QSGNode* QQuickPaintedItem_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

	return ( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::updatePaintNode(param1, param2);

}

bool QQuickPaintedItem_override_virtual_releaseResources(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__releaseResources = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_releaseResources(void* self) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::releaseResources();

}

bool QQuickPaintedItem_override_virtual_itemChange(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__itemChange = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::itemChange(static_cast<VirtualQQuickPaintedItem::ItemChange>(param1), *param2);

}

bool QQuickPaintedItem_override_virtual_boundingRect(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__boundingRect = slot;
	return true;
}

QRectF* QQuickPaintedItem_virtualbase_boundingRect(const void* self) {

	return new QRectF(( (const VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::boundingRect());

}

bool QQuickPaintedItem_override_virtual_clipRect(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clipRect = slot;
	return true;
}

QRectF* QQuickPaintedItem_virtualbase_clipRect(const void* self) {

	return new QRectF(( (const VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::clipRect());

}

bool QQuickPaintedItem_override_virtual_contains(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__contains = slot;
	return true;
}

bool QQuickPaintedItem_virtualbase_contains(const void* self, QPointF* point) {

	return ( (const VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::contains(*point);

}

bool QQuickPaintedItem_override_virtual_inputMethodQuery(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__inputMethodQuery = slot;
	return true;
}

QVariant* QQuickPaintedItem_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

bool QQuickPaintedItem_override_virtual_event(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickPaintedItem_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::event(param1);

}

bool QQuickPaintedItem_override_virtual_geometryChange(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__geometryChange = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_geometryChange(void* self, QRectF* newGeometry, QRectF* oldGeometry) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::geometryChange(*newGeometry, *oldGeometry);

}

bool QQuickPaintedItem_override_virtual_classBegin(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__classBegin = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_classBegin(void* self) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::classBegin();

}

bool QQuickPaintedItem_override_virtual_componentComplete(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__componentComplete = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_componentComplete(void* self) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::componentComplete();

}

bool QQuickPaintedItem_override_virtual_keyPressEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyPressEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::keyPressEvent(event);

}

bool QQuickPaintedItem_override_virtual_keyReleaseEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyReleaseEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::keyReleaseEvent(event);

}

bool QQuickPaintedItem_override_virtual_inputMethodEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__inputMethodEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::inputMethodEvent(param1);

}

bool QQuickPaintedItem_override_virtual_focusInEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusInEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::focusInEvent(param1);

}

bool QQuickPaintedItem_override_virtual_focusOutEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusOutEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::focusOutEvent(param1);

}

bool QQuickPaintedItem_override_virtual_mousePressEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mousePressEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::mousePressEvent(event);

}

bool QQuickPaintedItem_override_virtual_mouseMoveEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseMoveEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::mouseMoveEvent(event);

}

bool QQuickPaintedItem_override_virtual_mouseReleaseEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseReleaseEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::mouseReleaseEvent(event);

}

bool QQuickPaintedItem_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseDoubleClickEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::mouseDoubleClickEvent(event);

}

bool QQuickPaintedItem_override_virtual_mouseUngrabEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseUngrabEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_mouseUngrabEvent(void* self) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::mouseUngrabEvent();

}

bool QQuickPaintedItem_override_virtual_touchUngrabEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__touchUngrabEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_touchUngrabEvent(void* self) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::touchUngrabEvent();

}

bool QQuickPaintedItem_override_virtual_wheelEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__wheelEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::wheelEvent(event);

}

bool QQuickPaintedItem_override_virtual_touchEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__touchEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_touchEvent(void* self, QTouchEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::touchEvent(event);

}

bool QQuickPaintedItem_override_virtual_hoverEnterEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hoverEnterEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::hoverEnterEvent(event);

}

bool QQuickPaintedItem_override_virtual_hoverMoveEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hoverMoveEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::hoverMoveEvent(event);

}

bool QQuickPaintedItem_override_virtual_hoverLeaveEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hoverLeaveEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::hoverLeaveEvent(event);

}

bool QQuickPaintedItem_override_virtual_dragEnterEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dragEnterEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::dragEnterEvent(param1);

}

bool QQuickPaintedItem_override_virtual_dragMoveEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dragMoveEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::dragMoveEvent(param1);

}

bool QQuickPaintedItem_override_virtual_dragLeaveEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dragLeaveEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::dragLeaveEvent(param1);

}

bool QQuickPaintedItem_override_virtual_dropEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dropEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_dropEvent(void* self, QDropEvent* param1) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::dropEvent(param1);

}

bool QQuickPaintedItem_override_virtual_childMouseEventFilter(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childMouseEventFilter = slot;
	return true;
}

bool QQuickPaintedItem_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2) {

	return ( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::childMouseEventFilter(param1, param2);

}

bool QQuickPaintedItem_override_virtual_updatePolish(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updatePolish = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_updatePolish(void* self) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::updatePolish();

}

bool QQuickPaintedItem_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickPaintedItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::eventFilter(watched, event);

}

bool QQuickPaintedItem_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::timerEvent(event);

}

bool QQuickPaintedItem_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::childEvent(event);

}

bool QQuickPaintedItem_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::customEvent(event);

}

bool QQuickPaintedItem_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::connectNotify(*signal);

}

bool QQuickPaintedItem_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickPaintedItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickPaintedItem*)(self) )->QQuickPaintedItem::disconnectNotify(*signal);

}

const QMetaObject* QQuickPaintedItem_staticMetaObject() { return &QQuickPaintedItem::staticMetaObject; }
bool QQuickPaintedItem_protectedbase_isComponentComplete(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isComponentComplete();

}

void QQuickPaintedItem_protectedbase_updateInputMethod(bool* _dynamic_cast_ok, void* self) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateInputMethod();

}

bool QQuickPaintedItem_protectedbase_widthValid(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->widthValid();

}

bool QQuickPaintedItem_protectedbase_heightValid(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->heightValid();

}

void QQuickPaintedItem_protectedbase_setImplicitSize(bool* _dynamic_cast_ok, void* self, double param1, double param2) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setImplicitSize(static_cast<qreal>(param1), static_cast<qreal>(param2));

}

QObject* QQuickPaintedItem_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickPaintedItem_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickPaintedItem_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickPaintedItem_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQuickPaintedItem* self_cast = dynamic_cast<VirtualQQuickPaintedItem*>( (QQuickPaintedItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickPaintedItem_delete(QQuickPaintedItem* self) {
	delete self;
}

