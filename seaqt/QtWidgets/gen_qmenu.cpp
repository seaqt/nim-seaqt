#include <QAction>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
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
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionMenuItem>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qmenu.h>
#include "gen_qmenu.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQMenu final : public QMenu {
	struct QMenu_VTable* vtbl;
public:

	VirtualQMenu(struct QMenu_VTable* vtbl, QWidget* parent): QMenu(parent), vtbl(vtbl) {};
	VirtualQMenu(struct QMenu_VTable* vtbl): QMenu(), vtbl(vtbl) {};
	VirtualQMenu(struct QMenu_VTable* vtbl, const QString& title): QMenu(title), vtbl(vtbl) {};
	VirtualQMenu(struct QMenu_VTable* vtbl, const QString& title, QWidget* parent): QMenu(title, parent), vtbl(vtbl) {};

	virtual ~VirtualQMenu() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMenu::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QMenu_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMenu::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QMenu_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMenu::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenu_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMenu::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QMenu_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QMenu::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QMenu::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMenu::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QMenu::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMenu::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QMenu::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* param1) override {
		if (vtbl->enterEvent == 0) {
			QMenu::enterEvent(param1);
			return;
		}

		QEnterEvent* sigval1 = param1;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_enterEvent(void* self, QEnterEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* param1) override {
		if (vtbl->leaveEvent == 0) {
			QMenu::leaveEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_leaveEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QMenu::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_hideEvent(void* self, QHideEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QMenu::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* param1) override {
		if (vtbl->actionEvent == 0) {
			QMenu::actionEvent(param1);
			return;
		}

		QActionEvent* sigval1 = param1;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_actionEvent(void* self, QActionEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QMenu::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_timerEvent(void* self, QTimerEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QMenu::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMenu_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMenu::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMenu_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionMenuItem* option, const QAction* action) const override {
		if (vtbl->initStyleOption == 0) {
			QMenu::initStyleOption(option, action);
			return;
		}

		QStyleOptionMenuItem* sigval1 = option;
		QAction* sigval2 = (QAction*) action;

		vtbl->initStyleOption(vtbl, this, sigval1, sigval2);

	}

	friend void QMenu_virtualbase_initStyleOption(const void* self, QStyleOptionMenuItem* option, QAction* action);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMenu::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenu_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMenu::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMenu::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QMenu_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMenu::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenu_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMenu::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QMenu_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMenu::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QMenu_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMenu::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMenu::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QMenu::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QMenu::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMenu::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QMenu::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMenu::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QMenu::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMenu::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QMenu::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QMenu::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMenu::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QMenu::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QMenu::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMenu::nativeEvent(eventType, message, result);
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

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QMenu_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMenu::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenu_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMenu::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMenu::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMenu_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMenu::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QMenu_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMenu::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMenu::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QMenu_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMenu::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMenu_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMenu::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMenu::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMenu::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMenu::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QMenu_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend int QMenu_protectedbase_columnCount(const void* self);
	friend void QMenu_protectedbase_updateMicroFocus(void* self);
	friend void QMenu_protectedbase_create(void* self);
	friend void QMenu_protectedbase_destroy(void* self);
	friend bool QMenu_protectedbase_focusNextChild(void* self);
	friend bool QMenu_protectedbase_focusPreviousChild(void* self);
	friend QObject* QMenu_protectedbase_sender(const void* self);
	friend int QMenu_protectedbase_senderSignalIndex(const void* self);
	friend int QMenu_protectedbase_receivers(const void* self, const char* signal);
	friend bool QMenu_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QMenu* QMenu_new(struct QMenu_VTable* vtbl, QWidget* parent) {
	return new VirtualQMenu(vtbl, parent);
}

QMenu* QMenu_new2(struct QMenu_VTable* vtbl) {
	return new VirtualQMenu(vtbl);
}

QMenu* QMenu_new3(struct QMenu_VTable* vtbl, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQMenu(vtbl, title_QString);
}

QMenu* QMenu_new4(struct QMenu_VTable* vtbl, struct miqt_string title, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQMenu(vtbl, title_QString, parent);
}

void QMenu_virtbase(QMenu* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QMenu_metaObject(const QMenu* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMenu_metacast(QMenu* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMenu_metacall(QMenu* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMenu_tr(const char* s) {
	QString _ret = QMenu::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QMenu_addMenu(QMenu* self, QMenu* menu) {
	return self->addMenu(menu);
}

QMenu* QMenu_addMenuWithTitle(QMenu* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addMenu(title_QString);
}

QMenu* QMenu_addMenu2(QMenu* self, QIcon* icon, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addMenu(*icon, title_QString);
}

QAction* QMenu_addSeparator(QMenu* self) {
	return self->addSeparator();
}

QAction* QMenu_addSection(QMenu* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addSection(text_QString);
}

QAction* QMenu_addSection2(QMenu* self, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addSection(*icon, text_QString);
}

QAction* QMenu_insertMenu(QMenu* self, QAction* before, QMenu* menu) {
	return self->insertMenu(before, menu);
}

QAction* QMenu_insertSeparator(QMenu* self, QAction* before) {
	return self->insertSeparator(before);
}

QAction* QMenu_insertSection(QMenu* self, QAction* before, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertSection(before, text_QString);
}

QAction* QMenu_insertSection2(QMenu* self, QAction* before, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertSection(before, *icon, text_QString);
}

bool QMenu_isEmpty(const QMenu* self) {
	return self->isEmpty();
}

void QMenu_clear(QMenu* self) {
	self->clear();
}

void QMenu_setTearOffEnabled(QMenu* self, bool tearOffEnabled) {
	self->setTearOffEnabled(tearOffEnabled);
}

bool QMenu_isTearOffEnabled(const QMenu* self) {
	return self->isTearOffEnabled();
}

bool QMenu_isTearOffMenuVisible(const QMenu* self) {
	return self->isTearOffMenuVisible();
}

void QMenu_showTearOffMenu(QMenu* self) {
	self->showTearOffMenu();
}

void QMenu_showTearOffMenuWithPos(QMenu* self, QPoint* pos) {
	self->showTearOffMenu(*pos);
}

void QMenu_hideTearOffMenu(QMenu* self) {
	self->hideTearOffMenu();
}

void QMenu_setDefaultAction(QMenu* self, QAction* defaultAction) {
	self->setDefaultAction(defaultAction);
}

QAction* QMenu_defaultAction(const QMenu* self) {
	return self->defaultAction();
}

void QMenu_setActiveAction(QMenu* self, QAction* act) {
	self->setActiveAction(act);
}

QAction* QMenu_activeAction(const QMenu* self) {
	return self->activeAction();
}

void QMenu_popup(QMenu* self, QPoint* pos) {
	self->popup(*pos);
}

QAction* QMenu_exec(QMenu* self) {
	return self->exec();
}

QAction* QMenu_execWithPos(QMenu* self, QPoint* pos) {
	return self->exec(*pos);
}

QAction* QMenu_exec2(struct miqt_array /* of QAction* */  actions, QPoint* pos) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	return QMenu::exec(actions_QList, *pos);
}

QSize* QMenu_sizeHint(const QMenu* self) {
	return new QSize(self->sizeHint());
}

QRect* QMenu_actionGeometry(const QMenu* self, QAction* param1) {
	return new QRect(self->actionGeometry(param1));
}

QAction* QMenu_actionAt(const QMenu* self, QPoint* param1) {
	return self->actionAt(*param1);
}

QAction* QMenu_menuAction(const QMenu* self) {
	return self->menuAction();
}

QMenu* QMenu_menuInAction(QAction* action) {
	return QMenu::menuInAction(action);
}

struct miqt_string QMenu_title(const QMenu* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMenu_setTitle(QMenu* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setTitle(title_QString);
}

QIcon* QMenu_icon(const QMenu* self) {
	return new QIcon(self->icon());
}

void QMenu_setIcon(QMenu* self, QIcon* icon) {
	self->setIcon(*icon);
}

void QMenu_setNoReplayFor(QMenu* self, QWidget* widget) {
	self->setNoReplayFor(widget);
}

bool QMenu_separatorsCollapsible(const QMenu* self) {
	return self->separatorsCollapsible();
}

void QMenu_setSeparatorsCollapsible(QMenu* self, bool collapse) {
	self->setSeparatorsCollapsible(collapse);
}

bool QMenu_toolTipsVisible(const QMenu* self) {
	return self->toolTipsVisible();
}

void QMenu_setToolTipsVisible(QMenu* self, bool visible) {
	self->setToolTipsVisible(visible);
}

void QMenu_aboutToShow(QMenu* self) {
	self->aboutToShow();
}

void QMenu_connect_aboutToShow(QMenu* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMenu::connect(self, static_cast<void (QMenu::*)()>(&QMenu::aboutToShow), self, local_caller{slot, callback, release});
}

void QMenu_aboutToHide(QMenu* self) {
	self->aboutToHide();
}

void QMenu_connect_aboutToHide(QMenu* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMenu::connect(self, static_cast<void (QMenu::*)()>(&QMenu::aboutToHide), self, local_caller{slot, callback, release});
}

void QMenu_triggered(QMenu* self, QAction* action) {
	self->triggered(action);
}

void QMenu_connect_triggered(QMenu* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQMenu::connect(self, static_cast<void (QMenu::*)(QAction*)>(&QMenu::triggered), self, local_caller{slot, callback, release});
}

void QMenu_hovered(QMenu* self, QAction* action) {
	self->hovered(action);
}

void QMenu_connect_hovered(QMenu* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQMenu::connect(self, static_cast<void (QMenu::*)(QAction*)>(&QMenu::hovered), self, local_caller{slot, callback, release});
}

struct miqt_string QMenu_tr2(const char* s, const char* c) {
	QString _ret = QMenu::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMenu_tr3(const char* s, const char* c, int n) {
	QString _ret = QMenu::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMenu_popup2(QMenu* self, QPoint* pos, QAction* at) {
	self->popup(*pos, at);
}

QAction* QMenu_exec22(QMenu* self, QPoint* pos, QAction* at) {
	return self->exec(*pos, at);
}

QAction* QMenu_exec3(struct miqt_array /* of QAction* */  actions, QPoint* pos, QAction* at) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	return QMenu::exec(actions_QList, *pos, at);
}

QAction* QMenu_exec4(struct miqt_array /* of QAction* */  actions, QPoint* pos, QAction* at, QWidget* parent) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	return QMenu::exec(actions_QList, *pos, at, parent);
}

QMetaObject* QMenu_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQMenu*)(self) )->QMenu::metaObject();

}

void* QMenu_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQMenu*)(self) )->QMenu::qt_metacast(param1);

}

int QMenu_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQMenu*)(self) )->QMenu::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QMenu_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQMenu*)(self) )->QMenu::sizeHint());

}

void QMenu_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::changeEvent(param1);

}

void QMenu_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::keyPressEvent(param1);

}

void QMenu_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::mouseReleaseEvent(param1);

}

void QMenu_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::mousePressEvent(param1);

}

void QMenu_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::mouseMoveEvent(param1);

}

void QMenu_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::wheelEvent(param1);

}

void QMenu_virtualbase_enterEvent(void* self, QEnterEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::enterEvent(param1);

}

void QMenu_virtualbase_leaveEvent(void* self, QEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::leaveEvent(param1);

}

void QMenu_virtualbase_hideEvent(void* self, QHideEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::hideEvent(param1);

}

void QMenu_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::paintEvent(param1);

}

void QMenu_virtualbase_actionEvent(void* self, QActionEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::actionEvent(param1);

}

void QMenu_virtualbase_timerEvent(void* self, QTimerEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::timerEvent(param1);

}

bool QMenu_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQMenu*)(self) )->QMenu::event(param1);

}

bool QMenu_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQMenu*)(self) )->QMenu::focusNextPrevChild(next);

}

void QMenu_virtualbase_initStyleOption(const void* self, QStyleOptionMenuItem* option, QAction* action) {

	( (const VirtualQMenu*)(self) )->QMenu::initStyleOption(option, action);

}

int QMenu_virtualbase_devType(const void* self) {

	return ( (const VirtualQMenu*)(self) )->QMenu::devType();

}

void QMenu_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQMenu*)(self) )->QMenu::setVisible(visible);

}

QSize* QMenu_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQMenu*)(self) )->QMenu::minimumSizeHint());

}

int QMenu_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQMenu*)(self) )->QMenu::heightForWidth(static_cast<int>(param1));

}

bool QMenu_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQMenu*)(self) )->QMenu::hasHeightForWidth();

}

QPaintEngine* QMenu_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQMenu*)(self) )->QMenu::paintEngine();

}

void QMenu_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::mouseDoubleClickEvent(event);

}

void QMenu_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::keyReleaseEvent(event);

}

void QMenu_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::focusInEvent(event);

}

void QMenu_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::focusOutEvent(event);

}

void QMenu_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::moveEvent(event);

}

void QMenu_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::resizeEvent(event);

}

void QMenu_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::closeEvent(event);

}

void QMenu_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::contextMenuEvent(event);

}

void QMenu_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::tabletEvent(event);

}

void QMenu_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::dragEnterEvent(event);

}

void QMenu_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::dragMoveEvent(event);

}

void QMenu_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::dragLeaveEvent(event);

}

void QMenu_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::dropEvent(event);

}

void QMenu_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::showEvent(event);

}

bool QMenu_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQMenu*)(self) )->QMenu::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QMenu_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQMenu*)(self) )->QMenu::metric(static_cast<VirtualQMenu::PaintDeviceMetric>(param1));

}

void QMenu_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQMenu*)(self) )->QMenu::initPainter(painter);

}

QPaintDevice* QMenu_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQMenu*)(self) )->QMenu::redirected(offset);

}

QPainter* QMenu_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQMenu*)(self) )->QMenu::sharedPainter();

}

void QMenu_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQMenu*)(self) )->QMenu::inputMethodEvent(param1);

}

QVariant* QMenu_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQMenu*)(self) )->QMenu::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QMenu_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQMenu*)(self) )->QMenu::eventFilter(watched, event);

}

void QMenu_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::childEvent(event);

}

void QMenu_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQMenu*)(self) )->QMenu::customEvent(event);

}

void QMenu_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMenu*)(self) )->QMenu::connectNotify(*signal);

}

void QMenu_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMenu*)(self) )->QMenu::disconnectNotify(*signal);

}

const QMetaObject* QMenu_staticMetaObject() { return &QMenu::staticMetaObject; }
int QMenu_protectedbase_columnCount(const void* self) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	return self_cast->columnCount();

}

void QMenu_protectedbase_updateMicroFocus(void* self) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	self_cast->updateMicroFocus();

}

void QMenu_protectedbase_create(void* self) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	self_cast->create();

}

void QMenu_protectedbase_destroy(void* self) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	self_cast->destroy();

}

bool QMenu_protectedbase_focusNextChild(void* self) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	return self_cast->focusNextChild();

}

bool QMenu_protectedbase_focusPreviousChild(void* self) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QMenu_protectedbase_sender(const void* self) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	return self_cast->sender();

}

int QMenu_protectedbase_senderSignalIndex(const void* self) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QMenu_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	return self_cast->receivers(signal);

}

bool QMenu_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQMenu* self_cast = static_cast<VirtualQMenu*>( (QMenu*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QMenu_delete(QMenu* self) {
	delete self;
}

