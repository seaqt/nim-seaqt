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
class VirtualQMainWindow final : public QMainWindow {
	const QMainWindow_VTable* vtbl;
	void* vdata;
public:
	friend const QMainWindow_VTable* QMainWindow_vtbl(const VirtualQMainWindow* self);
	friend void* QMainWindow_vdata(const VirtualQMainWindow* self);
	friend void QMainWindow_setVdata(VirtualQMainWindow* self, void* vdata);

	VirtualQMainWindow(const QMainWindow_VTable* vtbl, void* vdata, QWidget* parent): QMainWindow(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQMainWindow(const QMainWindow_VTable* vtbl, void* vdata): QMainWindow(), vtbl(vtbl), vdata(vdata) {}
	VirtualQMainWindow(const QMainWindow_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags flags): QMainWindow(parent, flags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMainWindow() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMainWindow::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMainWindow_virtualbase_metaObject(const VirtualQMainWindow* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMainWindow::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMainWindow_virtualbase_metacast(VirtualQMainWindow* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMainWindow::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMainWindow_virtualbase_metacall(VirtualQMainWindow* self, int param1, int param2, void** param3);

	virtual QMenu* createPopupMenu() override {
		if (vtbl->createPopupMenu == 0) {
			return QMainWindow::createPopupMenu();
		}


		QMenu* callback_return_value = vtbl->createPopupMenu(this);

		return callback_return_value;
	}

	friend QMenu* QMainWindow_virtualbase_createPopupMenu(VirtualQMainWindow* self);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QMainWindow::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_contextMenuEvent(VirtualQMainWindow* self, QContextMenuEvent* event);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMainWindow::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_event(VirtualQMainWindow* self, QEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMainWindow::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMainWindow_virtualbase_devType(const VirtualQMainWindow* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMainWindow::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QMainWindow_virtualbase_setVisible(VirtualQMainWindow* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMainWindow::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMainWindow_virtualbase_sizeHint(const VirtualQMainWindow* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMainWindow::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMainWindow_virtualbase_minimumSizeHint(const VirtualQMainWindow* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMainWindow::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMainWindow_virtualbase_heightForWidth(const VirtualQMainWindow* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMainWindow::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_hasHeightForWidth(const VirtualQMainWindow* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMainWindow::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QMainWindow_virtualbase_paintEngine(const VirtualQMainWindow* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QMainWindow::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_mousePressEvent(VirtualQMainWindow* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMainWindow::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_mouseReleaseEvent(VirtualQMainWindow* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMainWindow::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_mouseDoubleClickEvent(VirtualQMainWindow* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMainWindow::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_mouseMoveEvent(VirtualQMainWindow* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QMainWindow::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_wheelEvent(VirtualQMainWindow* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QMainWindow::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_keyPressEvent(VirtualQMainWindow* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMainWindow::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_keyReleaseEvent(VirtualQMainWindow* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QMainWindow::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_focusInEvent(VirtualQMainWindow* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QMainWindow::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_focusOutEvent(VirtualQMainWindow* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMainWindow::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_enterEvent(VirtualQMainWindow* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QMainWindow::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_leaveEvent(VirtualQMainWindow* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QMainWindow::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_paintEvent(VirtualQMainWindow* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMainWindow::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_moveEvent(VirtualQMainWindow* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QMainWindow::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_resizeEvent(VirtualQMainWindow* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMainWindow::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_closeEvent(VirtualQMainWindow* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMainWindow::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_tabletEvent(VirtualQMainWindow* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QMainWindow::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_actionEvent(VirtualQMainWindow* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QMainWindow::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_dragEnterEvent(VirtualQMainWindow* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QMainWindow::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_dragMoveEvent(VirtualQMainWindow* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMainWindow::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_dragLeaveEvent(VirtualQMainWindow* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QMainWindow::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_dropEvent(VirtualQMainWindow* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QMainWindow::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_showEvent(VirtualQMainWindow* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QMainWindow::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_hideEvent(VirtualQMainWindow* self, QHideEvent* event);

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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_nativeEvent(VirtualQMainWindow* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QMainWindow::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_changeEvent(VirtualQMainWindow* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMainWindow::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMainWindow_virtualbase_metric(const VirtualQMainWindow* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMainWindow::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QMainWindow_virtualbase_initPainter(const VirtualQMainWindow* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMainWindow::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMainWindow_virtualbase_redirected(const VirtualQMainWindow* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMainWindow::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QMainWindow_virtualbase_sharedPainter(const VirtualQMainWindow* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMainWindow::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_inputMethodEvent(VirtualQMainWindow* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMainWindow::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QMainWindow_virtualbase_inputMethodQuery(const VirtualQMainWindow* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMainWindow::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_focusNextPrevChild(VirtualQMainWindow* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMainWindow::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMainWindow_virtualbase_eventFilter(VirtualQMainWindow* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMainWindow::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_timerEvent(VirtualQMainWindow* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMainWindow::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_childEvent(VirtualQMainWindow* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMainWindow::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMainWindow_virtualbase_customEvent(VirtualQMainWindow* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMainWindow::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMainWindow_virtualbase_connectNotify(VirtualQMainWindow* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMainWindow::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMainWindow_virtualbase_disconnectNotify(VirtualQMainWindow* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QMainWindow_protectedbase_updateMicroFocus(VirtualQMainWindow* self);
	friend void QMainWindow_protectedbase_create(VirtualQMainWindow* self);
	friend void QMainWindow_protectedbase_destroy(VirtualQMainWindow* self);
	friend bool QMainWindow_protectedbase_focusNextChild(VirtualQMainWindow* self);
	friend bool QMainWindow_protectedbase_focusPreviousChild(VirtualQMainWindow* self);
	friend QObject* QMainWindow_protectedbase_sender(const VirtualQMainWindow* self);
	friend int QMainWindow_protectedbase_senderSignalIndex(const VirtualQMainWindow* self);
	friend int QMainWindow_protectedbase_receivers(const VirtualQMainWindow* self, const char* signal);
	friend bool QMainWindow_protectedbase_isSignalConnected(const VirtualQMainWindow* self, QMetaMethod* signal);
};

VirtualQMainWindow* QMainWindow_new(const QMainWindow_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQMainWindow(vtbl, vdata, parent);
}

VirtualQMainWindow* QMainWindow_new2(const QMainWindow_VTable* vtbl, void* vdata) {
	return new VirtualQMainWindow(vtbl, vdata);
}

VirtualQMainWindow* QMainWindow_new3(const QMainWindow_VTable* vtbl, void* vdata, QWidget* parent, int flags) {
	return new VirtualQMainWindow(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(flags));
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

void QMainWindow_connect_iconSizeChanged(VirtualQMainWindow* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSize*);
		void operator()(const QSize& iconSize) {
			const QSize& iconSize_ret = iconSize;
			// Cast returned reference into pointer
			QSize* sigval1 = const_cast<QSize*>(&iconSize_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMainWindow::connect(self, static_cast<void (QMainWindow::*)(const QSize&)>(&QMainWindow::iconSizeChanged), self, local_caller{slot, callback, release});
}

void QMainWindow_toolButtonStyleChanged(QMainWindow* self, int toolButtonStyle) {
	self->toolButtonStyleChanged(static_cast<Qt::ToolButtonStyle>(toolButtonStyle));
}

void QMainWindow_connect_toolButtonStyleChanged(VirtualQMainWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::ToolButtonStyle toolButtonStyle) {
			Qt::ToolButtonStyle toolButtonStyle_ret = toolButtonStyle;
			int sigval1 = static_cast<int>(toolButtonStyle_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMainWindow::connect(self, static_cast<void (QMainWindow::*)(Qt::ToolButtonStyle)>(&QMainWindow::toolButtonStyleChanged), self, local_caller{slot, callback, release});
}

void QMainWindow_tabifiedDockWidgetActivated(QMainWindow* self, QDockWidget* dockWidget) {
	self->tabifiedDockWidgetActivated(dockWidget);
}

void QMainWindow_connect_tabifiedDockWidgetActivated(VirtualQMainWindow* self, intptr_t slot, void (*callback)(intptr_t, QDockWidget*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDockWidget*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDockWidget*);
		void operator()(QDockWidget* dockWidget) {
			QDockWidget* sigval1 = dockWidget;
			callback(slot, sigval1);
		}
	};
	VirtualQMainWindow::connect(self, static_cast<void (QMainWindow::*)(QDockWidget*)>(&QMainWindow::tabifiedDockWidgetActivated), self, local_caller{slot, callback, release});
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

QMetaObject* QMainWindow_virtualbase_metaObject(const VirtualQMainWindow* self) {

	return (QMetaObject*) self->QMainWindow::metaObject();
}

void* QMainWindow_virtualbase_metacast(VirtualQMainWindow* self, const char* param1) {

	return self->QMainWindow::qt_metacast(param1);
}

int QMainWindow_virtualbase_metacall(VirtualQMainWindow* self, int param1, int param2, void** param3) {

	return self->QMainWindow::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QMenu* QMainWindow_virtualbase_createPopupMenu(VirtualQMainWindow* self) {

	return self->QMainWindow::createPopupMenu();
}

void QMainWindow_virtualbase_contextMenuEvent(VirtualQMainWindow* self, QContextMenuEvent* event) {

	self->QMainWindow::contextMenuEvent(event);
}

bool QMainWindow_virtualbase_event(VirtualQMainWindow* self, QEvent* event) {

	return self->QMainWindow::event(event);
}

int QMainWindow_virtualbase_devType(const VirtualQMainWindow* self) {

	return self->QMainWindow::devType();
}

void QMainWindow_virtualbase_setVisible(VirtualQMainWindow* self, bool visible) {

	self->QMainWindow::setVisible(visible);
}

QSize* QMainWindow_virtualbase_sizeHint(const VirtualQMainWindow* self) {

	return new QSize(self->QMainWindow::sizeHint());
}

QSize* QMainWindow_virtualbase_minimumSizeHint(const VirtualQMainWindow* self) {

	return new QSize(self->QMainWindow::minimumSizeHint());
}

int QMainWindow_virtualbase_heightForWidth(const VirtualQMainWindow* self, int param1) {

	return self->QMainWindow::heightForWidth(static_cast<int>(param1));
}

bool QMainWindow_virtualbase_hasHeightForWidth(const VirtualQMainWindow* self) {

	return self->QMainWindow::hasHeightForWidth();
}

QPaintEngine* QMainWindow_virtualbase_paintEngine(const VirtualQMainWindow* self) {

	return self->QMainWindow::paintEngine();
}

void QMainWindow_virtualbase_mousePressEvent(VirtualQMainWindow* self, QMouseEvent* event) {

	self->QMainWindow::mousePressEvent(event);
}

void QMainWindow_virtualbase_mouseReleaseEvent(VirtualQMainWindow* self, QMouseEvent* event) {

	self->QMainWindow::mouseReleaseEvent(event);
}

void QMainWindow_virtualbase_mouseDoubleClickEvent(VirtualQMainWindow* self, QMouseEvent* event) {

	self->QMainWindow::mouseDoubleClickEvent(event);
}

void QMainWindow_virtualbase_mouseMoveEvent(VirtualQMainWindow* self, QMouseEvent* event) {

	self->QMainWindow::mouseMoveEvent(event);
}

void QMainWindow_virtualbase_wheelEvent(VirtualQMainWindow* self, QWheelEvent* event) {

	self->QMainWindow::wheelEvent(event);
}

void QMainWindow_virtualbase_keyPressEvent(VirtualQMainWindow* self, QKeyEvent* event) {

	self->QMainWindow::keyPressEvent(event);
}

void QMainWindow_virtualbase_keyReleaseEvent(VirtualQMainWindow* self, QKeyEvent* event) {

	self->QMainWindow::keyReleaseEvent(event);
}

void QMainWindow_virtualbase_focusInEvent(VirtualQMainWindow* self, QFocusEvent* event) {

	self->QMainWindow::focusInEvent(event);
}

void QMainWindow_virtualbase_focusOutEvent(VirtualQMainWindow* self, QFocusEvent* event) {

	self->QMainWindow::focusOutEvent(event);
}

void QMainWindow_virtualbase_enterEvent(VirtualQMainWindow* self, QEvent* event) {

	self->QMainWindow::enterEvent(event);
}

void QMainWindow_virtualbase_leaveEvent(VirtualQMainWindow* self, QEvent* event) {

	self->QMainWindow::leaveEvent(event);
}

void QMainWindow_virtualbase_paintEvent(VirtualQMainWindow* self, QPaintEvent* event) {

	self->QMainWindow::paintEvent(event);
}

void QMainWindow_virtualbase_moveEvent(VirtualQMainWindow* self, QMoveEvent* event) {

	self->QMainWindow::moveEvent(event);
}

void QMainWindow_virtualbase_resizeEvent(VirtualQMainWindow* self, QResizeEvent* event) {

	self->QMainWindow::resizeEvent(event);
}

void QMainWindow_virtualbase_closeEvent(VirtualQMainWindow* self, QCloseEvent* event) {

	self->QMainWindow::closeEvent(event);
}

void QMainWindow_virtualbase_tabletEvent(VirtualQMainWindow* self, QTabletEvent* event) {

	self->QMainWindow::tabletEvent(event);
}

void QMainWindow_virtualbase_actionEvent(VirtualQMainWindow* self, QActionEvent* event) {

	self->QMainWindow::actionEvent(event);
}

void QMainWindow_virtualbase_dragEnterEvent(VirtualQMainWindow* self, QDragEnterEvent* event) {

	self->QMainWindow::dragEnterEvent(event);
}

void QMainWindow_virtualbase_dragMoveEvent(VirtualQMainWindow* self, QDragMoveEvent* event) {

	self->QMainWindow::dragMoveEvent(event);
}

void QMainWindow_virtualbase_dragLeaveEvent(VirtualQMainWindow* self, QDragLeaveEvent* event) {

	self->QMainWindow::dragLeaveEvent(event);
}

void QMainWindow_virtualbase_dropEvent(VirtualQMainWindow* self, QDropEvent* event) {

	self->QMainWindow::dropEvent(event);
}

void QMainWindow_virtualbase_showEvent(VirtualQMainWindow* self, QShowEvent* event) {

	self->QMainWindow::showEvent(event);
}

void QMainWindow_virtualbase_hideEvent(VirtualQMainWindow* self, QHideEvent* event) {

	self->QMainWindow::hideEvent(event);
}

bool QMainWindow_virtualbase_nativeEvent(VirtualQMainWindow* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QMainWindow::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QMainWindow_virtualbase_changeEvent(VirtualQMainWindow* self, QEvent* param1) {

	self->QMainWindow::changeEvent(param1);
}

int QMainWindow_virtualbase_metric(const VirtualQMainWindow* self, int param1) {

	return self->QMainWindow::metric(static_cast<VirtualQMainWindow::PaintDeviceMetric>(param1));
}

void QMainWindow_virtualbase_initPainter(const VirtualQMainWindow* self, QPainter* painter) {

	self->QMainWindow::initPainter(painter);
}

QPaintDevice* QMainWindow_virtualbase_redirected(const VirtualQMainWindow* self, QPoint* offset) {

	return self->QMainWindow::redirected(offset);
}

QPainter* QMainWindow_virtualbase_sharedPainter(const VirtualQMainWindow* self) {

	return self->QMainWindow::sharedPainter();
}

void QMainWindow_virtualbase_inputMethodEvent(VirtualQMainWindow* self, QInputMethodEvent* param1) {

	self->QMainWindow::inputMethodEvent(param1);
}

QVariant* QMainWindow_virtualbase_inputMethodQuery(const VirtualQMainWindow* self, int param1) {

	return new QVariant(self->QMainWindow::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QMainWindow_virtualbase_focusNextPrevChild(VirtualQMainWindow* self, bool next) {

	return self->QMainWindow::focusNextPrevChild(next);
}

bool QMainWindow_virtualbase_eventFilter(VirtualQMainWindow* self, QObject* watched, QEvent* event) {

	return self->QMainWindow::eventFilter(watched, event);
}

void QMainWindow_virtualbase_timerEvent(VirtualQMainWindow* self, QTimerEvent* event) {

	self->QMainWindow::timerEvent(event);
}

void QMainWindow_virtualbase_childEvent(VirtualQMainWindow* self, QChildEvent* event) {

	self->QMainWindow::childEvent(event);
}

void QMainWindow_virtualbase_customEvent(VirtualQMainWindow* self, QEvent* event) {

	self->QMainWindow::customEvent(event);
}

void QMainWindow_virtualbase_connectNotify(VirtualQMainWindow* self, QMetaMethod* signal) {

	self->QMainWindow::connectNotify(*signal);
}

void QMainWindow_virtualbase_disconnectNotify(VirtualQMainWindow* self, QMetaMethod* signal) {

	self->QMainWindow::disconnectNotify(*signal);
}

const QMetaObject* QMainWindow_staticMetaObject() { return &QMainWindow::staticMetaObject; }

const QMainWindow_VTable* QMainWindow_vtbl(const VirtualQMainWindow* self) { return self->vtbl; }
void* QMainWindow_vdata(const VirtualQMainWindow* self) { return self->vdata; }
void QMainWindow_setVdata(VirtualQMainWindow* self, void* vdata) { self->vdata = vdata; }

void QMainWindow_protectedbase_updateMicroFocus(VirtualQMainWindow* self) {
	self->updateMicroFocus();
}

void QMainWindow_protectedbase_create(VirtualQMainWindow* self) {
	self->create();
}

void QMainWindow_protectedbase_destroy(VirtualQMainWindow* self) {
	self->destroy();
}

bool QMainWindow_protectedbase_focusNextChild(VirtualQMainWindow* self) {
	return self->focusNextChild();
}

bool QMainWindow_protectedbase_focusPreviousChild(VirtualQMainWindow* self) {
	return self->focusPreviousChild();
}

QObject* QMainWindow_protectedbase_sender(const VirtualQMainWindow* self) {
	return self->sender();
}

int QMainWindow_protectedbase_senderSignalIndex(const VirtualQMainWindow* self) {
	return self->senderSignalIndex();
}

int QMainWindow_protectedbase_receivers(const VirtualQMainWindow* self, const char* signal) {
	return self->receivers(signal);
}

bool QMainWindow_protectedbase_isSignalConnected(const VirtualQMainWindow* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMainWindow_delete(QMainWindow* self) {
	delete self;
}

