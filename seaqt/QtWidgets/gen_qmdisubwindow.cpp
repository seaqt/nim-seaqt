#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMdiArea>
#include <QMdiSubWindow>
#include <QMenu>
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
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qmdisubwindow.h>
#include "gen_qmdisubwindow.h"
class VirtualQMdiSubWindow final : public QMdiSubWindow {
	const QMdiSubWindow_VTable* vtbl;
	void* vdata;
public:
	friend const QMdiSubWindow_VTable* QMdiSubWindow_vtbl(const VirtualQMdiSubWindow* self);
	friend void* QMdiSubWindow_vdata(const VirtualQMdiSubWindow* self);
	friend void QMdiSubWindow_setVdata(VirtualQMdiSubWindow* self, void* vdata);

	VirtualQMdiSubWindow(const QMdiSubWindow_VTable* vtbl, void* vdata, QWidget* parent): QMdiSubWindow(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQMdiSubWindow(const QMdiSubWindow_VTable* vtbl, void* vdata): QMdiSubWindow(), vtbl(vtbl), vdata(vdata) {}
	VirtualQMdiSubWindow(const QMdiSubWindow_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags flags): QMdiSubWindow(parent, flags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMdiSubWindow() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMdiSubWindow::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMdiSubWindow_virtualbase_metaObject(const VirtualQMdiSubWindow* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMdiSubWindow::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMdiSubWindow_virtualbase_metacast(VirtualQMdiSubWindow* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMdiSubWindow::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiSubWindow_virtualbase_metacall(VirtualQMdiSubWindow* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMdiSubWindow::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMdiSubWindow_virtualbase_sizeHint(const VirtualQMdiSubWindow* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMdiSubWindow::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMdiSubWindow_virtualbase_minimumSizeHint(const VirtualQMdiSubWindow* self);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMdiSubWindow::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMdiSubWindow_virtualbase_eventFilter(VirtualQMdiSubWindow* self, QObject* object, QEvent* event);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMdiSubWindow::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMdiSubWindow_virtualbase_event(VirtualQMdiSubWindow* self, QEvent* event);

	virtual void showEvent(QShowEvent* showEvent) override {
		if (vtbl->showEvent == 0) {
			QMdiSubWindow::showEvent(showEvent);
			return;
		}

		QShowEvent* sigval1 = showEvent;

		vtbl->showEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_showEvent(VirtualQMdiSubWindow* self, QShowEvent* showEvent);

	virtual void hideEvent(QHideEvent* hideEvent) override {
		if (vtbl->hideEvent == 0) {
			QMdiSubWindow::hideEvent(hideEvent);
			return;
		}

		QHideEvent* sigval1 = hideEvent;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_hideEvent(VirtualQMdiSubWindow* self, QHideEvent* hideEvent);

	virtual void changeEvent(QEvent* changeEvent) override {
		if (vtbl->changeEvent == 0) {
			QMdiSubWindow::changeEvent(changeEvent);
			return;
		}

		QEvent* sigval1 = changeEvent;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_changeEvent(VirtualQMdiSubWindow* self, QEvent* changeEvent);

	virtual void closeEvent(QCloseEvent* closeEvent) override {
		if (vtbl->closeEvent == 0) {
			QMdiSubWindow::closeEvent(closeEvent);
			return;
		}

		QCloseEvent* sigval1 = closeEvent;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_closeEvent(VirtualQMdiSubWindow* self, QCloseEvent* closeEvent);

	virtual void leaveEvent(QEvent* leaveEvent) override {
		if (vtbl->leaveEvent == 0) {
			QMdiSubWindow::leaveEvent(leaveEvent);
			return;
		}

		QEvent* sigval1 = leaveEvent;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_leaveEvent(VirtualQMdiSubWindow* self, QEvent* leaveEvent);

	virtual void resizeEvent(QResizeEvent* resizeEvent) override {
		if (vtbl->resizeEvent == 0) {
			QMdiSubWindow::resizeEvent(resizeEvent);
			return;
		}

		QResizeEvent* sigval1 = resizeEvent;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_resizeEvent(VirtualQMdiSubWindow* self, QResizeEvent* resizeEvent);

	virtual void timerEvent(QTimerEvent* timerEvent) override {
		if (vtbl->timerEvent == 0) {
			QMdiSubWindow::timerEvent(timerEvent);
			return;
		}

		QTimerEvent* sigval1 = timerEvent;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_timerEvent(VirtualQMdiSubWindow* self, QTimerEvent* timerEvent);

	virtual void moveEvent(QMoveEvent* moveEvent) override {
		if (vtbl->moveEvent == 0) {
			QMdiSubWindow::moveEvent(moveEvent);
			return;
		}

		QMoveEvent* sigval1 = moveEvent;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_moveEvent(VirtualQMdiSubWindow* self, QMoveEvent* moveEvent);

	virtual void paintEvent(QPaintEvent* paintEvent) override {
		if (vtbl->paintEvent == 0) {
			QMdiSubWindow::paintEvent(paintEvent);
			return;
		}

		QPaintEvent* sigval1 = paintEvent;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_paintEvent(VirtualQMdiSubWindow* self, QPaintEvent* paintEvent);

	virtual void mousePressEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mousePressEvent == 0) {
			QMdiSubWindow::mousePressEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_mousePressEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);

	virtual void mouseDoubleClickEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMdiSubWindow::mouseDoubleClickEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_mouseDoubleClickEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);

	virtual void mouseReleaseEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMdiSubWindow::mouseReleaseEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_mouseReleaseEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);

	virtual void mouseMoveEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMdiSubWindow::mouseMoveEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_mouseMoveEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent);

	virtual void keyPressEvent(QKeyEvent* keyEvent) override {
		if (vtbl->keyPressEvent == 0) {
			QMdiSubWindow::keyPressEvent(keyEvent);
			return;
		}

		QKeyEvent* sigval1 = keyEvent;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_keyPressEvent(VirtualQMdiSubWindow* self, QKeyEvent* keyEvent);

	virtual void contextMenuEvent(QContextMenuEvent* contextMenuEvent) override {
		if (vtbl->contextMenuEvent == 0) {
			QMdiSubWindow::contextMenuEvent(contextMenuEvent);
			return;
		}

		QContextMenuEvent* sigval1 = contextMenuEvent;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_contextMenuEvent(VirtualQMdiSubWindow* self, QContextMenuEvent* contextMenuEvent);

	virtual void focusInEvent(QFocusEvent* focusInEvent) override {
		if (vtbl->focusInEvent == 0) {
			QMdiSubWindow::focusInEvent(focusInEvent);
			return;
		}

		QFocusEvent* sigval1 = focusInEvent;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_focusInEvent(VirtualQMdiSubWindow* self, QFocusEvent* focusInEvent);

	virtual void focusOutEvent(QFocusEvent* focusOutEvent) override {
		if (vtbl->focusOutEvent == 0) {
			QMdiSubWindow::focusOutEvent(focusOutEvent);
			return;
		}

		QFocusEvent* sigval1 = focusOutEvent;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_focusOutEvent(VirtualQMdiSubWindow* self, QFocusEvent* focusOutEvent);

	virtual void childEvent(QChildEvent* childEvent) override {
		if (vtbl->childEvent == 0) {
			QMdiSubWindow::childEvent(childEvent);
			return;
		}

		QChildEvent* sigval1 = childEvent;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_childEvent(VirtualQMdiSubWindow* self, QChildEvent* childEvent);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMdiSubWindow::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiSubWindow_virtualbase_devType(const VirtualQMdiSubWindow* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMdiSubWindow::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_setVisible(VirtualQMdiSubWindow* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMdiSubWindow::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiSubWindow_virtualbase_heightForWidth(const VirtualQMdiSubWindow* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMdiSubWindow::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QMdiSubWindow_virtualbase_hasHeightForWidth(const VirtualQMdiSubWindow* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMdiSubWindow::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QMdiSubWindow_virtualbase_paintEngine(const VirtualQMdiSubWindow* self);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QMdiSubWindow::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_wheelEvent(VirtualQMdiSubWindow* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMdiSubWindow::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_keyReleaseEvent(VirtualQMdiSubWindow* self, QKeyEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMdiSubWindow::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_enterEvent(VirtualQMdiSubWindow* self, QEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMdiSubWindow::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_tabletEvent(VirtualQMdiSubWindow* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QMdiSubWindow::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_actionEvent(VirtualQMdiSubWindow* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QMdiSubWindow::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_dragEnterEvent(VirtualQMdiSubWindow* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QMdiSubWindow::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_dragMoveEvent(VirtualQMdiSubWindow* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMdiSubWindow::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_dragLeaveEvent(VirtualQMdiSubWindow* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QMdiSubWindow::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_dropEvent(VirtualQMdiSubWindow* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMdiSubWindow::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QMdiSubWindow_virtualbase_nativeEvent(VirtualQMdiSubWindow* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMdiSubWindow::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiSubWindow_virtualbase_metric(const VirtualQMdiSubWindow* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMdiSubWindow::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_initPainter(const VirtualQMdiSubWindow* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMdiSubWindow::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMdiSubWindow_virtualbase_redirected(const VirtualQMdiSubWindow* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMdiSubWindow::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QMdiSubWindow_virtualbase_sharedPainter(const VirtualQMdiSubWindow* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMdiSubWindow::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_inputMethodEvent(VirtualQMdiSubWindow* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMdiSubWindow::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QMdiSubWindow_virtualbase_inputMethodQuery(const VirtualQMdiSubWindow* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMdiSubWindow::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QMdiSubWindow_virtualbase_focusNextPrevChild(VirtualQMdiSubWindow* self, bool next);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMdiSubWindow::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_customEvent(VirtualQMdiSubWindow* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMdiSubWindow::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_connectNotify(VirtualQMdiSubWindow* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMdiSubWindow::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMdiSubWindow_virtualbase_disconnectNotify(VirtualQMdiSubWindow* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QMdiSubWindow_protectedbase_updateMicroFocus(VirtualQMdiSubWindow* self);
	friend void QMdiSubWindow_protectedbase_create(VirtualQMdiSubWindow* self);
	friend void QMdiSubWindow_protectedbase_destroy(VirtualQMdiSubWindow* self);
	friend bool QMdiSubWindow_protectedbase_focusNextChild(VirtualQMdiSubWindow* self);
	friend bool QMdiSubWindow_protectedbase_focusPreviousChild(VirtualQMdiSubWindow* self);
	friend QObject* QMdiSubWindow_protectedbase_sender(const VirtualQMdiSubWindow* self);
	friend int QMdiSubWindow_protectedbase_senderSignalIndex(const VirtualQMdiSubWindow* self);
	friend int QMdiSubWindow_protectedbase_receivers(const VirtualQMdiSubWindow* self, const char* signal);
	friend bool QMdiSubWindow_protectedbase_isSignalConnected(const VirtualQMdiSubWindow* self, QMetaMethod* signal);
};

VirtualQMdiSubWindow* QMdiSubWindow_new(const QMdiSubWindow_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQMdiSubWindow(vtbl, vdata, parent);
}

VirtualQMdiSubWindow* QMdiSubWindow_new2(const QMdiSubWindow_VTable* vtbl, void* vdata) {
	return new VirtualQMdiSubWindow(vtbl, vdata);
}

VirtualQMdiSubWindow* QMdiSubWindow_new3(const QMdiSubWindow_VTable* vtbl, void* vdata, QWidget* parent, int flags) {
	return new VirtualQMdiSubWindow(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(flags));
}

void QMdiSubWindow_virtbase(QMdiSubWindow* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QMdiSubWindow_metaObject(const QMdiSubWindow* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMdiSubWindow_metacast(QMdiSubWindow* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMdiSubWindow_metacall(QMdiSubWindow* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMdiSubWindow_tr(const char* s) {
	QString _ret = QMdiSubWindow::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiSubWindow_trUtf8(const char* s) {
	QString _ret = QMdiSubWindow::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QMdiSubWindow_sizeHint(const QMdiSubWindow* self) {
	return new QSize(self->sizeHint());
}

QSize* QMdiSubWindow_minimumSizeHint(const QMdiSubWindow* self) {
	return new QSize(self->minimumSizeHint());
}

void QMdiSubWindow_setWidget(QMdiSubWindow* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QMdiSubWindow_widget(const QMdiSubWindow* self) {
	return self->widget();
}

QWidget* QMdiSubWindow_maximizedButtonsWidget(const QMdiSubWindow* self) {
	return self->maximizedButtonsWidget();
}

QWidget* QMdiSubWindow_maximizedSystemMenuIconWidget(const QMdiSubWindow* self) {
	return self->maximizedSystemMenuIconWidget();
}

bool QMdiSubWindow_isShaded(const QMdiSubWindow* self) {
	return self->isShaded();
}

void QMdiSubWindow_setOption(QMdiSubWindow* self, int option) {
	self->setOption(static_cast<QMdiSubWindow::SubWindowOption>(option));
}

bool QMdiSubWindow_testOption(const QMdiSubWindow* self, int param1) {
	return self->testOption(static_cast<QMdiSubWindow::SubWindowOption>(param1));
}

void QMdiSubWindow_setKeyboardSingleStep(QMdiSubWindow* self, int step) {
	self->setKeyboardSingleStep(static_cast<int>(step));
}

int QMdiSubWindow_keyboardSingleStep(const QMdiSubWindow* self) {
	return self->keyboardSingleStep();
}

void QMdiSubWindow_setKeyboardPageStep(QMdiSubWindow* self, int step) {
	self->setKeyboardPageStep(static_cast<int>(step));
}

int QMdiSubWindow_keyboardPageStep(const QMdiSubWindow* self) {
	return self->keyboardPageStep();
}

void QMdiSubWindow_setSystemMenu(QMdiSubWindow* self, QMenu* systemMenu) {
	self->setSystemMenu(systemMenu);
}

QMenu* QMdiSubWindow_systemMenu(const QMdiSubWindow* self) {
	return self->systemMenu();
}

QMdiArea* QMdiSubWindow_mdiArea(const QMdiSubWindow* self) {
	return self->mdiArea();
}

void QMdiSubWindow_windowStateChanged(QMdiSubWindow* self, int oldState, int newState) {
	self->windowStateChanged(static_cast<Qt::WindowStates>(oldState), static_cast<Qt::WindowStates>(newState));
}

void QMdiSubWindow_connect_windowStateChanged(VirtualQMdiSubWindow* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(Qt::WindowStates oldState, Qt::WindowStates newState) {
			Qt::WindowStates oldState_ret = oldState;
			int sigval1 = static_cast<int>(oldState_ret);
			Qt::WindowStates newState_ret = newState;
			int sigval2 = static_cast<int>(newState_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQMdiSubWindow::connect(self, static_cast<void (QMdiSubWindow::*)(Qt::WindowStates, Qt::WindowStates)>(&QMdiSubWindow::windowStateChanged), self, local_caller{slot, callback, release});
}

void QMdiSubWindow_aboutToActivate(QMdiSubWindow* self) {
	self->aboutToActivate();
}

void QMdiSubWindow_connect_aboutToActivate(VirtualQMdiSubWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMdiSubWindow::connect(self, static_cast<void (QMdiSubWindow::*)()>(&QMdiSubWindow::aboutToActivate), self, local_caller{slot, callback, release});
}

void QMdiSubWindow_showSystemMenu(QMdiSubWindow* self) {
	self->showSystemMenu();
}

void QMdiSubWindow_showShaded(QMdiSubWindow* self) {
	self->showShaded();
}

struct miqt_string QMdiSubWindow_tr2(const char* s, const char* c) {
	QString _ret = QMdiSubWindow::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiSubWindow_tr3(const char* s, const char* c, int n) {
	QString _ret = QMdiSubWindow::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiSubWindow_trUtf82(const char* s, const char* c) {
	QString _ret = QMdiSubWindow::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiSubWindow_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMdiSubWindow::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMdiSubWindow_setOption2(QMdiSubWindow* self, int option, bool on) {
	self->setOption(static_cast<QMdiSubWindow::SubWindowOption>(option), on);
}

QMetaObject* QMdiSubWindow_virtualbase_metaObject(const VirtualQMdiSubWindow* self) {

	return (QMetaObject*) self->QMdiSubWindow::metaObject();
}

void* QMdiSubWindow_virtualbase_metacast(VirtualQMdiSubWindow* self, const char* param1) {

	return self->QMdiSubWindow::qt_metacast(param1);
}

int QMdiSubWindow_virtualbase_metacall(VirtualQMdiSubWindow* self, int param1, int param2, void** param3) {

	return self->QMdiSubWindow::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QMdiSubWindow_virtualbase_sizeHint(const VirtualQMdiSubWindow* self) {

	return new QSize(self->QMdiSubWindow::sizeHint());
}

QSize* QMdiSubWindow_virtualbase_minimumSizeHint(const VirtualQMdiSubWindow* self) {

	return new QSize(self->QMdiSubWindow::minimumSizeHint());
}

bool QMdiSubWindow_virtualbase_eventFilter(VirtualQMdiSubWindow* self, QObject* object, QEvent* event) {

	return self->QMdiSubWindow::eventFilter(object, event);
}

bool QMdiSubWindow_virtualbase_event(VirtualQMdiSubWindow* self, QEvent* event) {

	return self->QMdiSubWindow::event(event);
}

void QMdiSubWindow_virtualbase_showEvent(VirtualQMdiSubWindow* self, QShowEvent* showEvent) {

	self->QMdiSubWindow::showEvent(showEvent);
}

void QMdiSubWindow_virtualbase_hideEvent(VirtualQMdiSubWindow* self, QHideEvent* hideEvent) {

	self->QMdiSubWindow::hideEvent(hideEvent);
}

void QMdiSubWindow_virtualbase_changeEvent(VirtualQMdiSubWindow* self, QEvent* changeEvent) {

	self->QMdiSubWindow::changeEvent(changeEvent);
}

void QMdiSubWindow_virtualbase_closeEvent(VirtualQMdiSubWindow* self, QCloseEvent* closeEvent) {

	self->QMdiSubWindow::closeEvent(closeEvent);
}

void QMdiSubWindow_virtualbase_leaveEvent(VirtualQMdiSubWindow* self, QEvent* leaveEvent) {

	self->QMdiSubWindow::leaveEvent(leaveEvent);
}

void QMdiSubWindow_virtualbase_resizeEvent(VirtualQMdiSubWindow* self, QResizeEvent* resizeEvent) {

	self->QMdiSubWindow::resizeEvent(resizeEvent);
}

void QMdiSubWindow_virtualbase_timerEvent(VirtualQMdiSubWindow* self, QTimerEvent* timerEvent) {

	self->QMdiSubWindow::timerEvent(timerEvent);
}

void QMdiSubWindow_virtualbase_moveEvent(VirtualQMdiSubWindow* self, QMoveEvent* moveEvent) {

	self->QMdiSubWindow::moveEvent(moveEvent);
}

void QMdiSubWindow_virtualbase_paintEvent(VirtualQMdiSubWindow* self, QPaintEvent* paintEvent) {

	self->QMdiSubWindow::paintEvent(paintEvent);
}

void QMdiSubWindow_virtualbase_mousePressEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent) {

	self->QMdiSubWindow::mousePressEvent(mouseEvent);
}

void QMdiSubWindow_virtualbase_mouseDoubleClickEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent) {

	self->QMdiSubWindow::mouseDoubleClickEvent(mouseEvent);
}

void QMdiSubWindow_virtualbase_mouseReleaseEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent) {

	self->QMdiSubWindow::mouseReleaseEvent(mouseEvent);
}

void QMdiSubWindow_virtualbase_mouseMoveEvent(VirtualQMdiSubWindow* self, QMouseEvent* mouseEvent) {

	self->QMdiSubWindow::mouseMoveEvent(mouseEvent);
}

void QMdiSubWindow_virtualbase_keyPressEvent(VirtualQMdiSubWindow* self, QKeyEvent* keyEvent) {

	self->QMdiSubWindow::keyPressEvent(keyEvent);
}

void QMdiSubWindow_virtualbase_contextMenuEvent(VirtualQMdiSubWindow* self, QContextMenuEvent* contextMenuEvent) {

	self->QMdiSubWindow::contextMenuEvent(contextMenuEvent);
}

void QMdiSubWindow_virtualbase_focusInEvent(VirtualQMdiSubWindow* self, QFocusEvent* focusInEvent) {

	self->QMdiSubWindow::focusInEvent(focusInEvent);
}

void QMdiSubWindow_virtualbase_focusOutEvent(VirtualQMdiSubWindow* self, QFocusEvent* focusOutEvent) {

	self->QMdiSubWindow::focusOutEvent(focusOutEvent);
}

void QMdiSubWindow_virtualbase_childEvent(VirtualQMdiSubWindow* self, QChildEvent* childEvent) {

	self->QMdiSubWindow::childEvent(childEvent);
}

int QMdiSubWindow_virtualbase_devType(const VirtualQMdiSubWindow* self) {

	return self->QMdiSubWindow::devType();
}

void QMdiSubWindow_virtualbase_setVisible(VirtualQMdiSubWindow* self, bool visible) {

	self->QMdiSubWindow::setVisible(visible);
}

int QMdiSubWindow_virtualbase_heightForWidth(const VirtualQMdiSubWindow* self, int param1) {

	return self->QMdiSubWindow::heightForWidth(static_cast<int>(param1));
}

bool QMdiSubWindow_virtualbase_hasHeightForWidth(const VirtualQMdiSubWindow* self) {

	return self->QMdiSubWindow::hasHeightForWidth();
}

QPaintEngine* QMdiSubWindow_virtualbase_paintEngine(const VirtualQMdiSubWindow* self) {

	return self->QMdiSubWindow::paintEngine();
}

void QMdiSubWindow_virtualbase_wheelEvent(VirtualQMdiSubWindow* self, QWheelEvent* event) {

	self->QMdiSubWindow::wheelEvent(event);
}

void QMdiSubWindow_virtualbase_keyReleaseEvent(VirtualQMdiSubWindow* self, QKeyEvent* event) {

	self->QMdiSubWindow::keyReleaseEvent(event);
}

void QMdiSubWindow_virtualbase_enterEvent(VirtualQMdiSubWindow* self, QEvent* event) {

	self->QMdiSubWindow::enterEvent(event);
}

void QMdiSubWindow_virtualbase_tabletEvent(VirtualQMdiSubWindow* self, QTabletEvent* event) {

	self->QMdiSubWindow::tabletEvent(event);
}

void QMdiSubWindow_virtualbase_actionEvent(VirtualQMdiSubWindow* self, QActionEvent* event) {

	self->QMdiSubWindow::actionEvent(event);
}

void QMdiSubWindow_virtualbase_dragEnterEvent(VirtualQMdiSubWindow* self, QDragEnterEvent* event) {

	self->QMdiSubWindow::dragEnterEvent(event);
}

void QMdiSubWindow_virtualbase_dragMoveEvent(VirtualQMdiSubWindow* self, QDragMoveEvent* event) {

	self->QMdiSubWindow::dragMoveEvent(event);
}

void QMdiSubWindow_virtualbase_dragLeaveEvent(VirtualQMdiSubWindow* self, QDragLeaveEvent* event) {

	self->QMdiSubWindow::dragLeaveEvent(event);
}

void QMdiSubWindow_virtualbase_dropEvent(VirtualQMdiSubWindow* self, QDropEvent* event) {

	self->QMdiSubWindow::dropEvent(event);
}

bool QMdiSubWindow_virtualbase_nativeEvent(VirtualQMdiSubWindow* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QMdiSubWindow::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QMdiSubWindow_virtualbase_metric(const VirtualQMdiSubWindow* self, int param1) {

	return self->QMdiSubWindow::metric(static_cast<VirtualQMdiSubWindow::PaintDeviceMetric>(param1));
}

void QMdiSubWindow_virtualbase_initPainter(const VirtualQMdiSubWindow* self, QPainter* painter) {

	self->QMdiSubWindow::initPainter(painter);
}

QPaintDevice* QMdiSubWindow_virtualbase_redirected(const VirtualQMdiSubWindow* self, QPoint* offset) {

	return self->QMdiSubWindow::redirected(offset);
}

QPainter* QMdiSubWindow_virtualbase_sharedPainter(const VirtualQMdiSubWindow* self) {

	return self->QMdiSubWindow::sharedPainter();
}

void QMdiSubWindow_virtualbase_inputMethodEvent(VirtualQMdiSubWindow* self, QInputMethodEvent* param1) {

	self->QMdiSubWindow::inputMethodEvent(param1);
}

QVariant* QMdiSubWindow_virtualbase_inputMethodQuery(const VirtualQMdiSubWindow* self, int param1) {

	return new QVariant(self->QMdiSubWindow::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QMdiSubWindow_virtualbase_focusNextPrevChild(VirtualQMdiSubWindow* self, bool next) {

	return self->QMdiSubWindow::focusNextPrevChild(next);
}

void QMdiSubWindow_virtualbase_customEvent(VirtualQMdiSubWindow* self, QEvent* event) {

	self->QMdiSubWindow::customEvent(event);
}

void QMdiSubWindow_virtualbase_connectNotify(VirtualQMdiSubWindow* self, QMetaMethod* signal) {

	self->QMdiSubWindow::connectNotify(*signal);
}

void QMdiSubWindow_virtualbase_disconnectNotify(VirtualQMdiSubWindow* self, QMetaMethod* signal) {

	self->QMdiSubWindow::disconnectNotify(*signal);
}

const QMetaObject* QMdiSubWindow_staticMetaObject() { return &QMdiSubWindow::staticMetaObject; }

const QMdiSubWindow_VTable* QMdiSubWindow_vtbl(const VirtualQMdiSubWindow* self) { return self->vtbl; }
void* QMdiSubWindow_vdata(const VirtualQMdiSubWindow* self) { return self->vdata; }
void QMdiSubWindow_setVdata(VirtualQMdiSubWindow* self, void* vdata) { self->vdata = vdata; }

void QMdiSubWindow_protectedbase_updateMicroFocus(VirtualQMdiSubWindow* self) {
	self->updateMicroFocus();
}

void QMdiSubWindow_protectedbase_create(VirtualQMdiSubWindow* self) {
	self->create();
}

void QMdiSubWindow_protectedbase_destroy(VirtualQMdiSubWindow* self) {
	self->destroy();
}

bool QMdiSubWindow_protectedbase_focusNextChild(VirtualQMdiSubWindow* self) {
	return self->focusNextChild();
}

bool QMdiSubWindow_protectedbase_focusPreviousChild(VirtualQMdiSubWindow* self) {
	return self->focusPreviousChild();
}

QObject* QMdiSubWindow_protectedbase_sender(const VirtualQMdiSubWindow* self) {
	return self->sender();
}

int QMdiSubWindow_protectedbase_senderSignalIndex(const VirtualQMdiSubWindow* self) {
	return self->senderSignalIndex();
}

int QMdiSubWindow_protectedbase_receivers(const VirtualQMdiSubWindow* self, const char* signal) {
	return self->receivers(signal);
}

bool QMdiSubWindow_protectedbase_isSignalConnected(const VirtualQMdiSubWindow* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMdiSubWindow_delete(QMdiSubWindow* self) {
	delete self;
}

