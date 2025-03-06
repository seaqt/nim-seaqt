#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDockWidget>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMainWindow>
#include <QMenu>
#include <QMenuBar>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QStatusBar>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QToolBar>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qmainwindow.h>
#include "gen_qmainwindow.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QMainWindow_iconSizeChanged(intptr_t, QSize*);
void miqt_exec_callback_QMainWindow_toolButtonStyleChanged(intptr_t, int);
void miqt_exec_callback_QMainWindow_tabifiedDockWidgetActivated(intptr_t, QDockWidget*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQMainWindow final : public QMainWindow {
	struct QMainWindow_VTable* vtbl;
public:

	VirtualQMainWindow(struct QMainWindow_VTable* vtbl, QWidget* parent): QMainWindow(parent), vtbl(vtbl) {};
	VirtualQMainWindow(struct QMainWindow_VTable* vtbl): QMainWindow(), vtbl(vtbl) {};
	VirtualQMainWindow(struct QMainWindow_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QMainWindow(parent, flags), vtbl(vtbl) {};

	virtual ~VirtualQMainWindow() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMainWindow::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QMainWindow_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMainWindow::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QMainWindow_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMainWindow::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMainWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QMenu* createPopupMenu() override {
		if (vtbl->createPopupMenu == 0) {
			return QMainWindow::createPopupMenu();
		}


		QMenu* callback_return_value = vtbl->createPopupMenu(vtbl, this);

		return callback_return_value;
	}

	friend QMenu* QMainWindow_virtualbase_createPopupMenu(void* self);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QMainWindow::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMainWindow::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMainWindow::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMainWindow_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMainWindow::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMainWindow::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QMainWindow_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMainWindow::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QMainWindow_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMainWindow::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMainWindow_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMainWindow::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMainWindow::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QMainWindow_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QMainWindow::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMainWindow::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMainWindow::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMainWindow::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QMainWindow::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QMainWindow::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMainWindow::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QMainWindow::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QMainWindow::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMainWindow::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QMainWindow::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QMainWindow::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMainWindow::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QMainWindow::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMainWindow::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMainWindow::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QMainWindow::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QMainWindow::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QMainWindow::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMainWindow::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QMainWindow::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QMainWindow::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QMainWindow::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMainWindow::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QMainWindow::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMainWindow::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMainWindow_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMainWindow::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMainWindow::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMainWindow_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMainWindow::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QMainWindow_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMainWindow::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMainWindow::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QMainWindow_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMainWindow::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMainWindow::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMainWindow::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMainWindow::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMainWindow::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMainWindow::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMainWindow::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QMainWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QMainWindow_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QMainWindow_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QMainWindow_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QMainWindow_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QMainWindow_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QMainWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QMainWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QMainWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QMainWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QMainWindow* QMainWindow_new(struct QMainWindow_VTable* vtbl, QWidget* parent) {
	return new VirtualQMainWindow(vtbl, parent);
}

QMainWindow* QMainWindow_new2(struct QMainWindow_VTable* vtbl) {
	return new VirtualQMainWindow(vtbl);
}

QMainWindow* QMainWindow_new3(struct QMainWindow_VTable* vtbl, QWidget* parent, int flags) {
	return new VirtualQMainWindow(vtbl, parent, static_cast<Qt::WindowFlags>(flags));
}

void QMainWindow_virtbase(QMainWindow* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QMainWindow_metaObject(const QMainWindow* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMainWindow_metacast(QMainWindow* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMainWindow_metacall(QMainWindow* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMainWindow_tr(const char* s) {
	QString _ret = QMainWindow::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMainWindow_trUtf8(const char* s) {
	QString _ret = QMainWindow::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QMainWindow_iconSize(const QMainWindow* self) {
	return new QSize(self->iconSize());
}

void QMainWindow_setIconSize(QMainWindow* self, QSize* iconSize) {
	self->setIconSize(*iconSize);
}

int QMainWindow_toolButtonStyle(const QMainWindow* self) {
	Qt::ToolButtonStyle _ret = self->toolButtonStyle();
	return static_cast<int>(_ret);
}

void QMainWindow_setToolButtonStyle(QMainWindow* self, int toolButtonStyle) {
	self->setToolButtonStyle(static_cast<Qt::ToolButtonStyle>(toolButtonStyle));
}

bool QMainWindow_isAnimated(const QMainWindow* self) {
	return self->isAnimated();
}

bool QMainWindow_isDockNestingEnabled(const QMainWindow* self) {
	return self->isDockNestingEnabled();
}

bool QMainWindow_documentMode(const QMainWindow* self) {
	return self->documentMode();
}

void QMainWindow_setDocumentMode(QMainWindow* self, bool enabled) {
	self->setDocumentMode(enabled);
}

int QMainWindow_tabShape(const QMainWindow* self) {
	QTabWidget::TabShape _ret = self->tabShape();
	return static_cast<int>(_ret);
}

void QMainWindow_setTabShape(QMainWindow* self, int tabShape) {
	self->setTabShape(static_cast<QTabWidget::TabShape>(tabShape));
}

int QMainWindow_tabPosition(const QMainWindow* self, int area) {
	QTabWidget::TabPosition _ret = self->tabPosition(static_cast<Qt::DockWidgetArea>(area));
	return static_cast<int>(_ret);
}

void QMainWindow_setTabPosition(QMainWindow* self, int areas, int tabPosition) {
	self->setTabPosition(static_cast<Qt::DockWidgetAreas>(areas), static_cast<QTabWidget::TabPosition>(tabPosition));
}

void QMainWindow_setDockOptions(QMainWindow* self, int options) {
	self->setDockOptions(static_cast<QMainWindow::DockOptions>(options));
}

int QMainWindow_dockOptions(const QMainWindow* self) {
	QMainWindow::DockOptions _ret = self->dockOptions();
	return static_cast<int>(_ret);
}

bool QMainWindow_isSeparator(const QMainWindow* self, QPoint* pos) {
	return self->isSeparator(*pos);
}

QMenuBar* QMainWindow_menuBar(const QMainWindow* self) {
	return self->menuBar();
}

void QMainWindow_setMenuBar(QMainWindow* self, QMenuBar* menubar) {
	self->setMenuBar(menubar);
}

QWidget* QMainWindow_menuWidget(const QMainWindow* self) {
	return self->menuWidget();
}

void QMainWindow_setMenuWidget(QMainWindow* self, QWidget* menubar) {
	self->setMenuWidget(menubar);
}

QStatusBar* QMainWindow_statusBar(const QMainWindow* self) {
	return self->statusBar();
}

void QMainWindow_setStatusBar(QMainWindow* self, QStatusBar* statusbar) {
	self->setStatusBar(statusbar);
}

QWidget* QMainWindow_centralWidget(const QMainWindow* self) {
	return self->centralWidget();
}

void QMainWindow_setCentralWidget(QMainWindow* self, QWidget* widget) {
	self->setCentralWidget(widget);
}

QWidget* QMainWindow_takeCentralWidget(QMainWindow* self) {
	return self->takeCentralWidget();
}

void QMainWindow_setCorner(QMainWindow* self, int corner, int area) {
	self->setCorner(static_cast<Qt::Corner>(corner), static_cast<Qt::DockWidgetArea>(area));
}

int QMainWindow_corner(const QMainWindow* self, int corner) {
	Qt::DockWidgetArea _ret = self->corner(static_cast<Qt::Corner>(corner));
	return static_cast<int>(_ret);
}

void QMainWindow_addToolBarBreak(QMainWindow* self) {
	self->addToolBarBreak();
}

void QMainWindow_insertToolBarBreak(QMainWindow* self, QToolBar* before) {
	self->insertToolBarBreak(before);
}

void QMainWindow_addToolBar(QMainWindow* self, int area, QToolBar* toolbar) {
	self->addToolBar(static_cast<Qt::ToolBarArea>(area), toolbar);
}

void QMainWindow_addToolBarWithToolbar(QMainWindow* self, QToolBar* toolbar) {
	self->addToolBar(toolbar);
}

QToolBar* QMainWindow_addToolBarWithTitle(QMainWindow* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addToolBar(title_QString);
}

void QMainWindow_insertToolBar(QMainWindow* self, QToolBar* before, QToolBar* toolbar) {
	self->insertToolBar(before, toolbar);
}

void QMainWindow_removeToolBar(QMainWindow* self, QToolBar* toolbar) {
	self->removeToolBar(toolbar);
}

void QMainWindow_removeToolBarBreak(QMainWindow* self, QToolBar* before) {
	self->removeToolBarBreak(before);
}

bool QMainWindow_unifiedTitleAndToolBarOnMac(const QMainWindow* self) {
	return self->unifiedTitleAndToolBarOnMac();
}

int QMainWindow_toolBarArea(const QMainWindow* self, QToolBar* toolbar) {
	Qt::ToolBarArea _ret = self->toolBarArea(toolbar);
	return static_cast<int>(_ret);
}

bool QMainWindow_toolBarBreak(const QMainWindow* self, QToolBar* toolbar) {
	return self->toolBarBreak(toolbar);
}

void QMainWindow_addDockWidget(QMainWindow* self, int area, QDockWidget* dockwidget) {
	self->addDockWidget(static_cast<Qt::DockWidgetArea>(area), dockwidget);
}

void QMainWindow_addDockWidget2(QMainWindow* self, int area, QDockWidget* dockwidget, int orientation) {
	self->addDockWidget(static_cast<Qt::DockWidgetArea>(area), dockwidget, static_cast<Qt::Orientation>(orientation));
}

void QMainWindow_splitDockWidget(QMainWindow* self, QDockWidget* after, QDockWidget* dockwidget, int orientation) {
	self->splitDockWidget(after, dockwidget, static_cast<Qt::Orientation>(orientation));
}

void QMainWindow_tabifyDockWidget(QMainWindow* self, QDockWidget* first, QDockWidget* second) {
	self->tabifyDockWidget(first, second);
}

struct miqt_array /* of QDockWidget* */  QMainWindow_tabifiedDockWidgets(const QMainWindow* self, QDockWidget* dockwidget) {
	QList<QDockWidget *> _ret = self->tabifiedDockWidgets(dockwidget);
	// Convert QList<> from C++ memory to manually-managed C memory
	QDockWidget** _arr = static_cast<QDockWidget**>(malloc(sizeof(QDockWidget*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMainWindow_removeDockWidget(QMainWindow* self, QDockWidget* dockwidget) {
	self->removeDockWidget(dockwidget);
}

bool QMainWindow_restoreDockWidget(QMainWindow* self, QDockWidget* dockwidget) {
	return self->restoreDockWidget(dockwidget);
}

int QMainWindow_dockWidgetArea(const QMainWindow* self, QDockWidget* dockwidget) {
	Qt::DockWidgetArea _ret = self->dockWidgetArea(dockwidget);
	return static_cast<int>(_ret);
}

void QMainWindow_resizeDocks(QMainWindow* self, struct miqt_array /* of QDockWidget* */  docks, struct miqt_array /* of int */  sizes, int orientation) {
	QList<QDockWidget *> docks_QList;
	docks_QList.reserve(docks.len);
	QDockWidget** docks_arr = static_cast<QDockWidget**>(docks.data);
	for(size_t i = 0; i < docks.len; ++i) {
		docks_QList.push_back(docks_arr[i]);
	}
	QList<int> sizes_QList;
	sizes_QList.reserve(sizes.len);
	int* sizes_arr = static_cast<int*>(sizes.data);
	for(size_t i = 0; i < sizes.len; ++i) {
		sizes_QList.push_back(static_cast<int>(sizes_arr[i]));
	}
	self->resizeDocks(docks_QList, sizes_QList, static_cast<Qt::Orientation>(orientation));
}

struct miqt_string QMainWindow_saveState(const QMainWindow* self) {
	QByteArray _qb = self->saveState();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QMainWindow_restoreState(QMainWindow* self, struct miqt_string state) {
	QByteArray state_QByteArray(state.data, state.len);
	return self->restoreState(state_QByteArray);
}

QMenu* QMainWindow_createPopupMenu(QMainWindow* self) {
	return self->createPopupMenu();
}

void QMainWindow_setAnimated(QMainWindow* self, bool enabled) {
	self->setAnimated(enabled);
}

void QMainWindow_setDockNestingEnabled(QMainWindow* self, bool enabled) {
	self->setDockNestingEnabled(enabled);
}

void QMainWindow_setUnifiedTitleAndToolBarOnMac(QMainWindow* self, bool set) {
	self->setUnifiedTitleAndToolBarOnMac(set);
}

void QMainWindow_iconSizeChanged(QMainWindow* self, QSize* iconSize) {
	self->iconSizeChanged(*iconSize);
}

void QMainWindow_connect_iconSizeChanged(QMainWindow* self, intptr_t slot) {
	VirtualQMainWindow::connect(self, static_cast<void (QMainWindow::*)(const QSize&)>(&QMainWindow::iconSizeChanged), self, [=](const QSize& iconSize) {
		const QSize& iconSize_ret = iconSize;
		// Cast returned reference into pointer
		QSize* sigval1 = const_cast<QSize*>(&iconSize_ret);
		miqt_exec_callback_QMainWindow_iconSizeChanged(slot, sigval1);
	});
}

void QMainWindow_toolButtonStyleChanged(QMainWindow* self, int toolButtonStyle) {
	self->toolButtonStyleChanged(static_cast<Qt::ToolButtonStyle>(toolButtonStyle));
}

void QMainWindow_connect_toolButtonStyleChanged(QMainWindow* self, intptr_t slot) {
	VirtualQMainWindow::connect(self, static_cast<void (QMainWindow::*)(Qt::ToolButtonStyle)>(&QMainWindow::toolButtonStyleChanged), self, [=](Qt::ToolButtonStyle toolButtonStyle) {
		Qt::ToolButtonStyle toolButtonStyle_ret = toolButtonStyle;
		int sigval1 = static_cast<int>(toolButtonStyle_ret);
		miqt_exec_callback_QMainWindow_toolButtonStyleChanged(slot, sigval1);
	});
}

void QMainWindow_tabifiedDockWidgetActivated(QMainWindow* self, QDockWidget* dockWidget) {
	self->tabifiedDockWidgetActivated(dockWidget);
}

void QMainWindow_connect_tabifiedDockWidgetActivated(QMainWindow* self, intptr_t slot) {
	VirtualQMainWindow::connect(self, static_cast<void (QMainWindow::*)(QDockWidget*)>(&QMainWindow::tabifiedDockWidgetActivated), self, [=](QDockWidget* dockWidget) {
		QDockWidget* sigval1 = dockWidget;
		miqt_exec_callback_QMainWindow_tabifiedDockWidgetActivated(slot, sigval1);
	});
}

struct miqt_string QMainWindow_tr2(const char* s, const char* c) {
	QString _ret = QMainWindow::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMainWindow_tr3(const char* s, const char* c, int n) {
	QString _ret = QMainWindow::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMainWindow_trUtf82(const char* s, const char* c) {
	QString _ret = QMainWindow::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMainWindow_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMainWindow::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMainWindow_addToolBarBreak1(QMainWindow* self, int area) {
	self->addToolBarBreak(static_cast<Qt::ToolBarArea>(area));
}

struct miqt_string QMainWindow_saveState1(const QMainWindow* self, int version) {
	QByteArray _qb = self->saveState(static_cast<int>(version));
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QMainWindow_restoreState2(QMainWindow* self, struct miqt_string state, int version) {
	QByteArray state_QByteArray(state.data, state.len);
	return self->restoreState(state_QByteArray, static_cast<int>(version));
}

QMetaObject* QMainWindow_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQMainWindow*)(self) )->QMainWindow::metaObject();

}

void* QMainWindow_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQMainWindow*)(self) )->QMainWindow::qt_metacast(param1);

}

int QMainWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQMainWindow*)(self) )->QMainWindow::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QMenu* QMainWindow_virtualbase_createPopupMenu(void* self) {

	return ( (VirtualQMainWindow*)(self) )->QMainWindow::createPopupMenu();

}

void QMainWindow_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::contextMenuEvent(event);

}

bool QMainWindow_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQMainWindow*)(self) )->QMainWindow::event(event);

}

int QMainWindow_virtualbase_devType(const void* self) {

	return ( (const VirtualQMainWindow*)(self) )->QMainWindow::devType();

}

void QMainWindow_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::setVisible(visible);

}

QSize* QMainWindow_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQMainWindow*)(self) )->QMainWindow::sizeHint());

}

QSize* QMainWindow_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQMainWindow*)(self) )->QMainWindow::minimumSizeHint());

}

int QMainWindow_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQMainWindow*)(self) )->QMainWindow::heightForWidth(static_cast<int>(param1));

}

bool QMainWindow_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQMainWindow*)(self) )->QMainWindow::hasHeightForWidth();

}

QPaintEngine* QMainWindow_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQMainWindow*)(self) )->QMainWindow::paintEngine();

}

void QMainWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::mousePressEvent(event);

}

void QMainWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::mouseReleaseEvent(event);

}

void QMainWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::mouseDoubleClickEvent(event);

}

void QMainWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::mouseMoveEvent(event);

}

void QMainWindow_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::wheelEvent(event);

}

void QMainWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::keyPressEvent(event);

}

void QMainWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::keyReleaseEvent(event);

}

void QMainWindow_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::focusInEvent(event);

}

void QMainWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::focusOutEvent(event);

}

void QMainWindow_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::enterEvent(event);

}

void QMainWindow_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::leaveEvent(event);

}

void QMainWindow_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::paintEvent(event);

}

void QMainWindow_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::moveEvent(event);

}

void QMainWindow_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::resizeEvent(event);

}

void QMainWindow_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::closeEvent(event);

}

void QMainWindow_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::tabletEvent(event);

}

void QMainWindow_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::actionEvent(event);

}

void QMainWindow_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::dragEnterEvent(event);

}

void QMainWindow_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::dragMoveEvent(event);

}

void QMainWindow_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::dragLeaveEvent(event);

}

void QMainWindow_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::dropEvent(event);

}

void QMainWindow_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::showEvent(event);

}

void QMainWindow_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::hideEvent(event);

}

bool QMainWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQMainWindow*)(self) )->QMainWindow::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

void QMainWindow_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::changeEvent(param1);

}

int QMainWindow_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQMainWindow*)(self) )->QMainWindow::metric(static_cast<VirtualQMainWindow::PaintDeviceMetric>(param1));

}

void QMainWindow_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQMainWindow*)(self) )->QMainWindow::initPainter(painter);

}

QPaintDevice* QMainWindow_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQMainWindow*)(self) )->QMainWindow::redirected(offset);

}

QPainter* QMainWindow_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQMainWindow*)(self) )->QMainWindow::sharedPainter();

}

void QMainWindow_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::inputMethodEvent(param1);

}

QVariant* QMainWindow_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQMainWindow*)(self) )->QMainWindow::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QMainWindow_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQMainWindow*)(self) )->QMainWindow::focusNextPrevChild(next);

}

bool QMainWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQMainWindow*)(self) )->QMainWindow::eventFilter(watched, event);

}

void QMainWindow_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::timerEvent(event);

}

void QMainWindow_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::childEvent(event);

}

void QMainWindow_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::customEvent(event);

}

void QMainWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::connectNotify(*signal);

}

void QMainWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMainWindow*)(self) )->QMainWindow::disconnectNotify(*signal);

}

const QMetaObject* QMainWindow_staticMetaObject() { return &QMainWindow::staticMetaObject; }
void QMainWindow_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQMainWindow* self_cast = dynamic_cast<VirtualQMainWindow*>( (QMainWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QMainWindow_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQMainWindow* self_cast = dynamic_cast<VirtualQMainWindow*>( (QMainWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QMainWindow_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQMainWindow* self_cast = dynamic_cast<VirtualQMainWindow*>( (QMainWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QMainWindow_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQMainWindow* self_cast = dynamic_cast<VirtualQMainWindow*>( (QMainWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QMainWindow_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQMainWindow* self_cast = dynamic_cast<VirtualQMainWindow*>( (QMainWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QMainWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQMainWindow* self_cast = dynamic_cast<VirtualQMainWindow*>( (QMainWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QMainWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQMainWindow* self_cast = dynamic_cast<VirtualQMainWindow*>( (QMainWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QMainWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQMainWindow* self_cast = dynamic_cast<VirtualQMainWindow*>( (QMainWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QMainWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQMainWindow* self_cast = dynamic_cast<VirtualQMainWindow*>( (QMainWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QMainWindow_delete(QMainWindow* self) {
	delete self;
}

