#include <QAccessibleInterface>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QColor>
#include <QEvent>
#include <QExposeEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QImage>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintEvent>
#include <QQmlIncubationController>
#include <QQuickGraphicsConfiguration>
#include <QQuickGraphicsDevice>
#include <QQuickItem>
#include <QQuickRenderControl>
#include <QQuickRenderTarget>
#include <QQuickWindow>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickWindow__GraphicsStateInfo
#include <QResizeEvent>
#include <QRunnable>
#include <QSGImageNode>
#include <QSGNinePatchNode>
#include <QSGRectangleNode>
#include <QSGRendererInterface>
#include <QSGTexture>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSurface>
#include <QSurfaceFormat>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QWheelEvent>
#include <QWindow>
#include <qquickwindow.h>
#include "gen_qquickwindow.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQuickWindow_frameSwapped(intptr_t);
void miqt_exec_callback_QQuickWindow_sceneGraphInitialized(intptr_t);
void miqt_exec_callback_QQuickWindow_sceneGraphInvalidated(intptr_t);
void miqt_exec_callback_QQuickWindow_beforeSynchronizing(intptr_t);
void miqt_exec_callback_QQuickWindow_afterSynchronizing(intptr_t);
void miqt_exec_callback_QQuickWindow_beforeRendering(intptr_t);
void miqt_exec_callback_QQuickWindow_afterRendering(intptr_t);
void miqt_exec_callback_QQuickWindow_afterAnimating(intptr_t);
void miqt_exec_callback_QQuickWindow_sceneGraphAboutToStop(intptr_t);
void miqt_exec_callback_QQuickWindow_colorChanged(intptr_t, QColor*);
void miqt_exec_callback_QQuickWindow_activeFocusItemChanged(intptr_t);
void miqt_exec_callback_QQuickWindow_sceneGraphError(intptr_t, int, struct miqt_string);
void miqt_exec_callback_QQuickWindow_beforeRenderPassRecording(intptr_t);
void miqt_exec_callback_QQuickWindow_afterRenderPassRecording(intptr_t);
void miqt_exec_callback_QQuickWindow_paletteChanged(intptr_t);
void miqt_exec_callback_QQuickWindow_paletteCreated(intptr_t);
void miqt_exec_callback_QQuickWindow_beforeFrameBegin(intptr_t);
void miqt_exec_callback_QQuickWindow_afterFrameEnd(intptr_t);
QObject* miqt_exec_callback_QQuickWindow_focusObject(const QQuickWindow*, intptr_t);
QAccessibleInterface* miqt_exec_callback_QQuickWindow_accessibleRoot(const QQuickWindow*, intptr_t);
void miqt_exec_callback_QQuickWindow_exposeEvent(QQuickWindow*, intptr_t, QExposeEvent*);
void miqt_exec_callback_QQuickWindow_resizeEvent(QQuickWindow*, intptr_t, QResizeEvent*);
void miqt_exec_callback_QQuickWindow_showEvent(QQuickWindow*, intptr_t, QShowEvent*);
void miqt_exec_callback_QQuickWindow_hideEvent(QQuickWindow*, intptr_t, QHideEvent*);
void miqt_exec_callback_QQuickWindow_closeEvent(QQuickWindow*, intptr_t, QCloseEvent*);
void miqt_exec_callback_QQuickWindow_focusInEvent(QQuickWindow*, intptr_t, QFocusEvent*);
void miqt_exec_callback_QQuickWindow_focusOutEvent(QQuickWindow*, intptr_t, QFocusEvent*);
bool miqt_exec_callback_QQuickWindow_event(QQuickWindow*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickWindow_keyPressEvent(QQuickWindow*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickWindow_keyReleaseEvent(QQuickWindow*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickWindow_mousePressEvent(QQuickWindow*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickWindow_mouseReleaseEvent(QQuickWindow*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickWindow_mouseDoubleClickEvent(QQuickWindow*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickWindow_mouseMoveEvent(QQuickWindow*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickWindow_wheelEvent(QQuickWindow*, intptr_t, QWheelEvent*);
void miqt_exec_callback_QQuickWindow_tabletEvent(QQuickWindow*, intptr_t, QTabletEvent*);
int miqt_exec_callback_QQuickWindow_surfaceType(const QQuickWindow*, intptr_t);
QSurfaceFormat* miqt_exec_callback_QQuickWindow_format(const QQuickWindow*, intptr_t);
QSize* miqt_exec_callback_QQuickWindow_size(const QQuickWindow*, intptr_t);
void miqt_exec_callback_QQuickWindow_paintEvent(QQuickWindow*, intptr_t, QPaintEvent*);
void miqt_exec_callback_QQuickWindow_moveEvent(QQuickWindow*, intptr_t, QMoveEvent*);
void miqt_exec_callback_QQuickWindow_touchEvent(QQuickWindow*, intptr_t, QTouchEvent*);
bool miqt_exec_callback_QQuickWindow_nativeEvent(QQuickWindow*, intptr_t, struct miqt_string, void*, intptr_t*);
bool miqt_exec_callback_QQuickWindow_eventFilter(QQuickWindow*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickWindow_timerEvent(QQuickWindow*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickWindow_childEvent(QQuickWindow*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickWindow_customEvent(QQuickWindow*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickWindow_connectNotify(QQuickWindow*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickWindow_disconnectNotify(QQuickWindow*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQuickWindow final : public QQuickWindow {
public:

	VirtualQQuickWindow(): QQuickWindow() {};
	VirtualQQuickWindow(QQuickRenderControl* renderControl): QQuickWindow(renderControl) {};
	VirtualQQuickWindow(QWindow* parent): QQuickWindow(parent) {};

	virtual ~VirtualQQuickWindow() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusObject = 0;

	// Subclass to allow providing a Go implementation
	virtual QObject* focusObject() const override {
		if (handle__focusObject == 0) {
			return QQuickWindow::focusObject();
		}
		

		QObject* callback_return_value = miqt_exec_callback_QQuickWindow_focusObject(this, handle__focusObject);

		return callback_return_value;
	}

	friend QObject* QQuickWindow_virtualbase_focusObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__accessibleRoot = 0;

	// Subclass to allow providing a Go implementation
	virtual QAccessibleInterface* accessibleRoot() const override {
		if (handle__accessibleRoot == 0) {
			return QQuickWindow::accessibleRoot();
		}
		

		QAccessibleInterface* callback_return_value = miqt_exec_callback_QQuickWindow_accessibleRoot(this, handle__accessibleRoot);

		return callback_return_value;
	}

	friend QAccessibleInterface* QQuickWindow_virtualbase_accessibleRoot(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__exposeEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void exposeEvent(QExposeEvent* param1) override {
		if (handle__exposeEvent == 0) {
			QQuickWindow::exposeEvent(param1);
			return;
		}
		
		QExposeEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_exposeEvent(this, handle__exposeEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__resizeEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (handle__resizeEvent == 0) {
			QQuickWindow::resizeEvent(param1);
			return;
		}
		
		QResizeEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_resizeEvent(this, handle__resizeEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__showEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (handle__showEvent == 0) {
			QQuickWindow::showEvent(param1);
			return;
		}
		
		QShowEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_showEvent(this, handle__showEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_showEvent(void* self, QShowEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hideEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (handle__hideEvent == 0) {
			QQuickWindow::hideEvent(param1);
			return;
		}
		
		QHideEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_hideEvent(this, handle__hideEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_hideEvent(void* self, QHideEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__closeEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (handle__closeEvent == 0) {
			QQuickWindow::closeEvent(param1);
			return;
		}
		
		QCloseEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_closeEvent(this, handle__closeEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_closeEvent(void* self, QCloseEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusInEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (handle__focusInEvent == 0) {
			QQuickWindow::focusInEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_focusInEvent(this, handle__focusInEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusOutEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (handle__focusOutEvent == 0) {
			QQuickWindow::focusOutEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_focusOutEvent(this, handle__focusOutEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (handle__event == 0) {
			return QQuickWindow::event(param1);
		}
		
		QEvent* sigval1 = param1;

		bool callback_return_value = miqt_exec_callback_QQuickWindow_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QQuickWindow_virtualbase_event(void* self, QEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyPressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (handle__keyPressEvent == 0) {
			QQuickWindow::keyPressEvent(param1);
			return;
		}
		
		QKeyEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_keyPressEvent(this, handle__keyPressEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (handle__keyReleaseEvent == 0) {
			QQuickWindow::keyReleaseEvent(param1);
			return;
		}
		
		QKeyEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_keyReleaseEvent(this, handle__keyReleaseEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mousePressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (handle__mousePressEvent == 0) {
			QQuickWindow::mousePressEvent(param1);
			return;
		}
		
		QMouseEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_mousePressEvent(this, handle__mousePressEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (handle__mouseReleaseEvent == 0) {
			QQuickWindow::mouseReleaseEvent(param1);
			return;
		}
		
		QMouseEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_mouseReleaseEvent(this, handle__mouseReleaseEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseDoubleClickEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (handle__mouseDoubleClickEvent == 0) {
			QQuickWindow::mouseDoubleClickEvent(param1);
			return;
		}
		
		QMouseEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_mouseDoubleClickEvent(this, handle__mouseDoubleClickEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (handle__mouseMoveEvent == 0) {
			QQuickWindow::mouseMoveEvent(param1);
			return;
		}
		
		QMouseEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_mouseMoveEvent(this, handle__mouseMoveEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__wheelEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (handle__wheelEvent == 0) {
			QQuickWindow::wheelEvent(param1);
			return;
		}
		
		QWheelEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_wheelEvent(this, handle__wheelEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__tabletEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* param1) override {
		if (handle__tabletEvent == 0) {
			QQuickWindow::tabletEvent(param1);
			return;
		}
		
		QTabletEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_tabletEvent(this, handle__tabletEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__surfaceType = 0;

	// Subclass to allow providing a Go implementation
	virtual QSurface::SurfaceType surfaceType() const override {
		if (handle__surfaceType == 0) {
			return QQuickWindow::surfaceType();
		}
		

		int callback_return_value = miqt_exec_callback_QQuickWindow_surfaceType(this, handle__surfaceType);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	friend int QQuickWindow_virtualbase_surfaceType(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__format = 0;

	// Subclass to allow providing a Go implementation
	virtual QSurfaceFormat format() const override {
		if (handle__format == 0) {
			return QQuickWindow::format();
		}
		

		QSurfaceFormat* callback_return_value = miqt_exec_callback_QQuickWindow_format(this, handle__format);

		return *callback_return_value;
	}

	friend QSurfaceFormat* QQuickWindow_virtualbase_format(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__size = 0;

	// Subclass to allow providing a Go implementation
	virtual QSize size() const override {
		if (handle__size == 0) {
			return QQuickWindow::size();
		}
		

		QSize* callback_return_value = miqt_exec_callback_QQuickWindow_size(this, handle__size);

		return *callback_return_value;
	}

	friend QSize* QQuickWindow_virtualbase_size(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__paintEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (handle__paintEvent == 0) {
			QQuickWindow::paintEvent(param1);
			return;
		}
		
		QPaintEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_paintEvent(this, handle__paintEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__moveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* param1) override {
		if (handle__moveEvent == 0) {
			QQuickWindow::moveEvent(param1);
			return;
		}
		
		QMoveEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_moveEvent(this, handle__moveEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__touchEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* param1) override {
		if (handle__touchEvent == 0) {
			QQuickWindow::touchEvent(param1);
			return;
		}
		
		QTouchEvent* sigval1 = param1;

		miqt_exec_callback_QQuickWindow_touchEvent(this, handle__touchEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__nativeEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (handle__nativeEvent == 0) {
			return QQuickWindow::nativeEvent(eventType, message, result);
		}
		
		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = miqt_exec_callback_QQuickWindow_nativeEvent(this, handle__nativeEvent, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QQuickWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickWindow::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickWindow_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQuickWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQuickWindow::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQuickWindow_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickWindow::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickWindow_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickWindow::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickWindow_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickWindow::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickWindow_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickWindow::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickWindow_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QQuickWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void* QQuickWindow_protectedbase_resolveInterface(bool* _dynamic_cast_ok, const void* self, const char* name, int revision);
	friend QObject* QQuickWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickWindow* QQuickWindow_new() {
	return new VirtualQQuickWindow();
}

QQuickWindow* QQuickWindow_new2(QQuickRenderControl* renderControl) {
	return new VirtualQQuickWindow(renderControl);
}

QQuickWindow* QQuickWindow_new3(QWindow* parent) {
	return new VirtualQQuickWindow(parent);
}

void QQuickWindow_virtbase(QQuickWindow* src, QWindow** outptr_QWindow) {
	*outptr_QWindow = static_cast<QWindow*>(src);
}

QMetaObject* QQuickWindow_metaObject(const QQuickWindow* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickWindow_metacast(QQuickWindow* self, const char* param1) {
	return self->qt_metacast(param1);
}

struct miqt_string QQuickWindow_tr(const char* s) {
	QString _ret = QQuickWindow::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QQuickItem* QQuickWindow_contentItem(const QQuickWindow* self) {
	return self->contentItem();
}

QQuickItem* QQuickWindow_activeFocusItem(const QQuickWindow* self) {
	return self->activeFocusItem();
}

QObject* QQuickWindow_focusObject(const QQuickWindow* self) {
	return self->focusObject();
}

QQuickItem* QQuickWindow_mouseGrabberItem(const QQuickWindow* self) {
	return self->mouseGrabberItem();
}

QImage* QQuickWindow_grabWindow(QQuickWindow* self) {
	return new QImage(self->grabWindow());
}

void QQuickWindow_setRenderTarget(QQuickWindow* self, QQuickRenderTarget* target) {
	self->setRenderTarget(*target);
}

QQuickRenderTarget* QQuickWindow_renderTarget(const QQuickWindow* self) {
	return new QQuickRenderTarget(self->renderTarget());
}

QQuickWindow__GraphicsStateInfo* QQuickWindow_graphicsStateInfo(QQuickWindow* self) {
	const QQuickWindow::GraphicsStateInfo& _ret = self->graphicsStateInfo();
	// Cast returned reference into pointer
	return const_cast<QQuickWindow::GraphicsStateInfo*>(&_ret);
}

void QQuickWindow_beginExternalCommands(QQuickWindow* self) {
	self->beginExternalCommands();
}

void QQuickWindow_endExternalCommands(QQuickWindow* self) {
	self->endExternalCommands();
}

QQmlIncubationController* QQuickWindow_incubationController(const QQuickWindow* self) {
	return self->incubationController();
}

QAccessibleInterface* QQuickWindow_accessibleRoot(const QQuickWindow* self) {
	return self->accessibleRoot();
}

QSGTexture* QQuickWindow_createTextureFromImage(const QQuickWindow* self, QImage* image) {
	return self->createTextureFromImage(*image);
}

QSGTexture* QQuickWindow_createTextureFromImage2(const QQuickWindow* self, QImage* image, int options) {
	return self->createTextureFromImage(*image, static_cast<QQuickWindow::CreateTextureOptions>(options));
}

void QQuickWindow_setColor(QQuickWindow* self, QColor* color) {
	self->setColor(*color);
}

QColor* QQuickWindow_color(const QQuickWindow* self) {
	return new QColor(self->color());
}

bool QQuickWindow_hasDefaultAlphaBuffer() {
	return QQuickWindow::hasDefaultAlphaBuffer();
}

void QQuickWindow_setDefaultAlphaBuffer(bool useAlpha) {
	QQuickWindow::setDefaultAlphaBuffer(useAlpha);
}

void QQuickWindow_setPersistentGraphics(QQuickWindow* self, bool persistent) {
	self->setPersistentGraphics(persistent);
}

bool QQuickWindow_isPersistentGraphics(const QQuickWindow* self) {
	return self->isPersistentGraphics();
}

void QQuickWindow_setPersistentSceneGraph(QQuickWindow* self, bool persistent) {
	self->setPersistentSceneGraph(persistent);
}

bool QQuickWindow_isPersistentSceneGraph(const QQuickWindow* self) {
	return self->isPersistentSceneGraph();
}

bool QQuickWindow_isSceneGraphInitialized(const QQuickWindow* self) {
	return self->isSceneGraphInitialized();
}

void QQuickWindow_scheduleRenderJob(QQuickWindow* self, QRunnable* job, int schedule) {
	self->scheduleRenderJob(job, static_cast<QQuickWindow::RenderStage>(schedule));
}

double QQuickWindow_effectiveDevicePixelRatio(const QQuickWindow* self) {
	qreal _ret = self->effectiveDevicePixelRatio();
	return static_cast<double>(_ret);
}

QSGRendererInterface* QQuickWindow_rendererInterface(const QQuickWindow* self) {
	return self->rendererInterface();
}

void QQuickWindow_setGraphicsApi(int api) {
	QQuickWindow::setGraphicsApi(static_cast<QSGRendererInterface::GraphicsApi>(api));
}

int QQuickWindow_graphicsApi() {
	QSGRendererInterface::GraphicsApi _ret = QQuickWindow::graphicsApi();
	return static_cast<int>(_ret);
}

void QQuickWindow_setSceneGraphBackend(struct miqt_string backend) {
	QString backend_QString = QString::fromUtf8(backend.data, backend.len);
	QQuickWindow::setSceneGraphBackend(backend_QString);
}

struct miqt_string QQuickWindow_sceneGraphBackend() {
	QString _ret = QQuickWindow::sceneGraphBackend();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWindow_setGraphicsDevice(QQuickWindow* self, QQuickGraphicsDevice* device) {
	self->setGraphicsDevice(*device);
}

QQuickGraphicsDevice* QQuickWindow_graphicsDevice(const QQuickWindow* self) {
	return new QQuickGraphicsDevice(self->graphicsDevice());
}

void QQuickWindow_setGraphicsConfiguration(QQuickWindow* self, QQuickGraphicsConfiguration* config) {
	self->setGraphicsConfiguration(*config);
}

QQuickGraphicsConfiguration* QQuickWindow_graphicsConfiguration(const QQuickWindow* self) {
	return new QQuickGraphicsConfiguration(self->graphicsConfiguration());
}

QSGRectangleNode* QQuickWindow_createRectangleNode(const QQuickWindow* self) {
	return self->createRectangleNode();
}

QSGImageNode* QQuickWindow_createImageNode(const QQuickWindow* self) {
	return self->createImageNode();
}

QSGNinePatchNode* QQuickWindow_createNinePatchNode(const QQuickWindow* self) {
	return self->createNinePatchNode();
}

int QQuickWindow_textRenderType() {
	QQuickWindow::TextRenderType _ret = QQuickWindow::textRenderType();
	return static_cast<int>(_ret);
}

void QQuickWindow_setTextRenderType(int renderType) {
	QQuickWindow::setTextRenderType(static_cast<QQuickWindow::TextRenderType>(renderType));
}

void QQuickWindow_frameSwapped(QQuickWindow* self) {
	self->frameSwapped();
}

void QQuickWindow_connect_frameSwapped(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::frameSwapped), self, [=]() {
		miqt_exec_callback_QQuickWindow_frameSwapped(slot);
	});
}

void QQuickWindow_sceneGraphInitialized(QQuickWindow* self) {
	self->sceneGraphInitialized();
}

void QQuickWindow_connect_sceneGraphInitialized(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::sceneGraphInitialized), self, [=]() {
		miqt_exec_callback_QQuickWindow_sceneGraphInitialized(slot);
	});
}

void QQuickWindow_sceneGraphInvalidated(QQuickWindow* self) {
	self->sceneGraphInvalidated();
}

void QQuickWindow_connect_sceneGraphInvalidated(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::sceneGraphInvalidated), self, [=]() {
		miqt_exec_callback_QQuickWindow_sceneGraphInvalidated(slot);
	});
}

void QQuickWindow_beforeSynchronizing(QQuickWindow* self) {
	self->beforeSynchronizing();
}

void QQuickWindow_connect_beforeSynchronizing(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::beforeSynchronizing), self, [=]() {
		miqt_exec_callback_QQuickWindow_beforeSynchronizing(slot);
	});
}

void QQuickWindow_afterSynchronizing(QQuickWindow* self) {
	self->afterSynchronizing();
}

void QQuickWindow_connect_afterSynchronizing(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::afterSynchronizing), self, [=]() {
		miqt_exec_callback_QQuickWindow_afterSynchronizing(slot);
	});
}

void QQuickWindow_beforeRendering(QQuickWindow* self) {
	self->beforeRendering();
}

void QQuickWindow_connect_beforeRendering(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::beforeRendering), self, [=]() {
		miqt_exec_callback_QQuickWindow_beforeRendering(slot);
	});
}

void QQuickWindow_afterRendering(QQuickWindow* self) {
	self->afterRendering();
}

void QQuickWindow_connect_afterRendering(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::afterRendering), self, [=]() {
		miqt_exec_callback_QQuickWindow_afterRendering(slot);
	});
}

void QQuickWindow_afterAnimating(QQuickWindow* self) {
	self->afterAnimating();
}

void QQuickWindow_connect_afterAnimating(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::afterAnimating), self, [=]() {
		miqt_exec_callback_QQuickWindow_afterAnimating(slot);
	});
}

void QQuickWindow_sceneGraphAboutToStop(QQuickWindow* self) {
	self->sceneGraphAboutToStop();
}

void QQuickWindow_connect_sceneGraphAboutToStop(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::sceneGraphAboutToStop), self, [=]() {
		miqt_exec_callback_QQuickWindow_sceneGraphAboutToStop(slot);
	});
}

void QQuickWindow_colorChanged(QQuickWindow* self, QColor* param1) {
	self->colorChanged(*param1);
}

void QQuickWindow_connect_colorChanged(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)(const QColor&)>(&QQuickWindow::colorChanged), self, [=](const QColor& param1) {
		const QColor& param1_ret = param1;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&param1_ret);
		miqt_exec_callback_QQuickWindow_colorChanged(slot, sigval1);
	});
}

void QQuickWindow_activeFocusItemChanged(QQuickWindow* self) {
	self->activeFocusItemChanged();
}

void QQuickWindow_connect_activeFocusItemChanged(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::activeFocusItemChanged), self, [=]() {
		miqt_exec_callback_QQuickWindow_activeFocusItemChanged(slot);
	});
}

void QQuickWindow_sceneGraphError(QQuickWindow* self, int error, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->sceneGraphError(static_cast<QQuickWindow::SceneGraphError>(error), message_QString);
}

void QQuickWindow_connect_sceneGraphError(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)(QQuickWindow::SceneGraphError, const QString&)>(&QQuickWindow::sceneGraphError), self, [=](QQuickWindow::SceneGraphError error, const QString& message) {
		QQuickWindow::SceneGraphError error_ret = error;
		int sigval1 = static_cast<int>(error_ret);
		const QString message_ret = message;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray message_b = message_ret.toUtf8();
		struct miqt_string message_ms;
		message_ms.len = message_b.length();
		message_ms.data = static_cast<char*>(malloc(message_ms.len));
		memcpy(message_ms.data, message_b.data(), message_ms.len);
		struct miqt_string sigval2 = message_ms;
		miqt_exec_callback_QQuickWindow_sceneGraphError(slot, sigval1, sigval2);
	});
}

void QQuickWindow_beforeRenderPassRecording(QQuickWindow* self) {
	self->beforeRenderPassRecording();
}

void QQuickWindow_connect_beforeRenderPassRecording(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::beforeRenderPassRecording), self, [=]() {
		miqt_exec_callback_QQuickWindow_beforeRenderPassRecording(slot);
	});
}

void QQuickWindow_afterRenderPassRecording(QQuickWindow* self) {
	self->afterRenderPassRecording();
}

void QQuickWindow_connect_afterRenderPassRecording(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::afterRenderPassRecording), self, [=]() {
		miqt_exec_callback_QQuickWindow_afterRenderPassRecording(slot);
	});
}

void QQuickWindow_paletteChanged(QQuickWindow* self) {
	self->paletteChanged();
}

void QQuickWindow_connect_paletteChanged(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::paletteChanged), self, [=]() {
		miqt_exec_callback_QQuickWindow_paletteChanged(slot);
	});
}

void QQuickWindow_paletteCreated(QQuickWindow* self) {
	self->paletteCreated();
}

void QQuickWindow_connect_paletteCreated(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::paletteCreated), self, [=]() {
		miqt_exec_callback_QQuickWindow_paletteCreated(slot);
	});
}

void QQuickWindow_beforeFrameBegin(QQuickWindow* self) {
	self->beforeFrameBegin();
}

void QQuickWindow_connect_beforeFrameBegin(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::beforeFrameBegin), self, [=]() {
		miqt_exec_callback_QQuickWindow_beforeFrameBegin(slot);
	});
}

void QQuickWindow_afterFrameEnd(QQuickWindow* self) {
	self->afterFrameEnd();
}

void QQuickWindow_connect_afterFrameEnd(QQuickWindow* self, intptr_t slot) {
	VirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::afterFrameEnd), self, [=]() {
		miqt_exec_callback_QQuickWindow_afterFrameEnd(slot);
	});
}

void QQuickWindow_update(QQuickWindow* self) {
	self->update();
}

void QQuickWindow_releaseResources(QQuickWindow* self) {
	self->releaseResources();
}

struct miqt_string QQuickWindow_tr2(const char* s, const char* c) {
	QString _ret = QQuickWindow::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWindow_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickWindow::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQuickWindow_override_virtual_focusObject(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusObject = slot;
	return true;
}

QObject* QQuickWindow_virtualbase_focusObject(const void* self) {

	return ( (const VirtualQQuickWindow*)(self) )->QQuickWindow::focusObject();

}

bool QQuickWindow_override_virtual_accessibleRoot(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__accessibleRoot = slot;
	return true;
}

QAccessibleInterface* QQuickWindow_virtualbase_accessibleRoot(const void* self) {

	return ( (const VirtualQQuickWindow*)(self) )->QQuickWindow::accessibleRoot();

}

bool QQuickWindow_override_virtual_exposeEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__exposeEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::exposeEvent(param1);

}

bool QQuickWindow_override_virtual_resizeEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__resizeEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::resizeEvent(param1);

}

bool QQuickWindow_override_virtual_showEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__showEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::showEvent(param1);

}

bool QQuickWindow_override_virtual_hideEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hideEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_hideEvent(void* self, QHideEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::hideEvent(param1);

}

bool QQuickWindow_override_virtual_closeEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__closeEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_closeEvent(void* self, QCloseEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::closeEvent(param1);

}

bool QQuickWindow_override_virtual_focusInEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusInEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::focusInEvent(param1);

}

bool QQuickWindow_override_virtual_focusOutEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusOutEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::focusOutEvent(param1);

}

bool QQuickWindow_override_virtual_event(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickWindow_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQQuickWindow*)(self) )->QQuickWindow::event(param1);

}

bool QQuickWindow_override_virtual_keyPressEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyPressEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::keyPressEvent(param1);

}

bool QQuickWindow_override_virtual_keyReleaseEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyReleaseEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::keyReleaseEvent(param1);

}

bool QQuickWindow_override_virtual_mousePressEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mousePressEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::mousePressEvent(param1);

}

bool QQuickWindow_override_virtual_mouseReleaseEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseReleaseEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::mouseReleaseEvent(param1);

}

bool QQuickWindow_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseDoubleClickEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::mouseDoubleClickEvent(param1);

}

bool QQuickWindow_override_virtual_mouseMoveEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseMoveEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::mouseMoveEvent(param1);

}

bool QQuickWindow_override_virtual_wheelEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__wheelEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::wheelEvent(param1);

}

bool QQuickWindow_override_virtual_tabletEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__tabletEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::tabletEvent(param1);

}

bool QQuickWindow_override_virtual_surfaceType(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__surfaceType = slot;
	return true;
}

int QQuickWindow_virtualbase_surfaceType(const void* self) {

	VirtualQQuickWindow::SurfaceType _ret = ( (const VirtualQQuickWindow*)(self) )->QQuickWindow::surfaceType();
	return static_cast<int>(_ret);

}

bool QQuickWindow_override_virtual_format(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__format = slot;
	return true;
}

QSurfaceFormat* QQuickWindow_virtualbase_format(const void* self) {

	return new QSurfaceFormat(( (const VirtualQQuickWindow*)(self) )->QQuickWindow::format());

}

bool QQuickWindow_override_virtual_size(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__size = slot;
	return true;
}

QSize* QQuickWindow_virtualbase_size(const void* self) {

	return new QSize(( (const VirtualQQuickWindow*)(self) )->QQuickWindow::size());

}

bool QQuickWindow_override_virtual_paintEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__paintEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::paintEvent(param1);

}

bool QQuickWindow_override_virtual_moveEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__moveEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::moveEvent(param1);

}

bool QQuickWindow_override_virtual_touchEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__touchEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::touchEvent(param1);

}

bool QQuickWindow_override_virtual_nativeEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__nativeEvent = slot;
	return true;
}

bool QQuickWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQQuickWindow*)(self) )->QQuickWindow::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

bool QQuickWindow_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQuickWindow*)(self) )->QQuickWindow::eventFilter(watched, event);

}

bool QQuickWindow_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::timerEvent(event);

}

bool QQuickWindow_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::childEvent(event);

}

bool QQuickWindow_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickWindow_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::customEvent(event);

}

bool QQuickWindow_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::connectNotify(*signal);

}

bool QQuickWindow_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQuickWindow*)(self) )->QQuickWindow::disconnectNotify(*signal);

}

void* QQuickWindow_protectedbase_resolveInterface(bool* _dynamic_cast_ok, const void* self, const char* name, int revision) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->resolveInterface(name, static_cast<int>(revision));

}

QObject* QQuickWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQuickWindow* self_cast = dynamic_cast<VirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickWindow_delete(QQuickWindow* self) {
	delete self;
}

void QQuickWindow__GraphicsStateInfo_delete(QQuickWindow__GraphicsStateInfo* self) {
	delete self;
}

