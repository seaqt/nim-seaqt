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
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
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
#include <QStyleOptionToolBar>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QToolBar>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtoolbar.h>
#include "gen_qtoolbar.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQToolBar final : public QToolBar {
	struct QToolBar_VTable* vtbl;
public:

	VirtualQToolBar(struct QToolBar_VTable* vtbl, QWidget* parent): QToolBar(parent), vtbl(vtbl) {};
	VirtualQToolBar(struct QToolBar_VTable* vtbl, const QString& title): QToolBar(title), vtbl(vtbl) {};
	VirtualQToolBar(struct QToolBar_VTable* vtbl): QToolBar(), vtbl(vtbl) {};
	VirtualQToolBar(struct QToolBar_VTable* vtbl, const QString& title, QWidget* parent): QToolBar(title, parent), vtbl(vtbl) {};

	virtual ~VirtualQToolBar() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QToolBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QToolBar_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QToolBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QToolBar_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QToolBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QToolBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QToolBar::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QToolBar::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QToolBar::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QToolBar_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QToolBar::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBar_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QToolBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QToolBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QToolBar_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QToolBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QToolBar_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QToolBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBar_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QToolBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QToolBar_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QToolBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QToolBar_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QToolBar::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QToolBar::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QToolBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QToolBar::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QToolBar::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QToolBar::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QToolBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QToolBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QToolBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QToolBar::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QToolBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QToolBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QToolBar::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QToolBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QToolBar::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QToolBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QToolBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QToolBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QToolBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QToolBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QToolBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QToolBar::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QToolBar::nativeEvent(eventType, message, result);
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

	friend bool QToolBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QToolBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBar_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QToolBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QToolBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QToolBar_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QToolBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QToolBar_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QToolBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QToolBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QToolBar_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QToolBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QToolBar_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QToolBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QToolBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QToolBar::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QToolBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QToolBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QToolBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QToolBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QToolBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QToolBar_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionToolBar* option);
	friend void QToolBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QToolBar_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QToolBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QToolBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QToolBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QToolBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QToolBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QToolBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QToolBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QToolBar* QToolBar_new(struct QToolBar_VTable* vtbl, QWidget* parent) {
	return new VirtualQToolBar(vtbl, parent);
}

QToolBar* QToolBar_new2(struct QToolBar_VTable* vtbl, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQToolBar(vtbl, title_QString);
}

QToolBar* QToolBar_new3(struct QToolBar_VTable* vtbl) {
	return new VirtualQToolBar(vtbl);
}

QToolBar* QToolBar_new4(struct QToolBar_VTable* vtbl, struct miqt_string title, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQToolBar(vtbl, title_QString, parent);
}

void QToolBar_virtbase(QToolBar* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QToolBar_metaObject(const QToolBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QToolBar_metacast(QToolBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QToolBar_metacall(QToolBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QToolBar_tr(const char* s) {
	QString _ret = QToolBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBar_trUtf8(const char* s) {
	QString _ret = QToolBar::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QToolBar_setMovable(QToolBar* self, bool movable) {
	self->setMovable(movable);
}

bool QToolBar_isMovable(const QToolBar* self) {
	return self->isMovable();
}

void QToolBar_setAllowedAreas(QToolBar* self, int areas) {
	self->setAllowedAreas(static_cast<Qt::ToolBarAreas>(areas));
}

int QToolBar_allowedAreas(const QToolBar* self) {
	Qt::ToolBarAreas _ret = self->allowedAreas();
	return static_cast<int>(_ret);
}

bool QToolBar_isAreaAllowed(const QToolBar* self, int area) {
	return self->isAreaAllowed(static_cast<Qt::ToolBarArea>(area));
}

void QToolBar_setOrientation(QToolBar* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QToolBar_orientation(const QToolBar* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QToolBar_clear(QToolBar* self) {
	self->clear();
}

QAction* QToolBar_addAction(QToolBar* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addAction(text_QString);
}

QAction* QToolBar_addAction2(QToolBar* self, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addAction(*icon, text_QString);
}

QAction* QToolBar_addSeparator(QToolBar* self) {
	return self->addSeparator();
}

QAction* QToolBar_insertSeparator(QToolBar* self, QAction* before) {
	return self->insertSeparator(before);
}

QAction* QToolBar_addWidget(QToolBar* self, QWidget* widget) {
	return self->addWidget(widget);
}

QAction* QToolBar_insertWidget(QToolBar* self, QAction* before, QWidget* widget) {
	return self->insertWidget(before, widget);
}

QRect* QToolBar_actionGeometry(const QToolBar* self, QAction* action) {
	return new QRect(self->actionGeometry(action));
}

QAction* QToolBar_actionAt(const QToolBar* self, QPoint* p) {
	return self->actionAt(*p);
}

QAction* QToolBar_actionAt2(const QToolBar* self, int x, int y) {
	return self->actionAt(static_cast<int>(x), static_cast<int>(y));
}

QAction* QToolBar_toggleViewAction(const QToolBar* self) {
	return self->toggleViewAction();
}

QSize* QToolBar_iconSize(const QToolBar* self) {
	return new QSize(self->iconSize());
}

int QToolBar_toolButtonStyle(const QToolBar* self) {
	Qt::ToolButtonStyle _ret = self->toolButtonStyle();
	return static_cast<int>(_ret);
}

QWidget* QToolBar_widgetForAction(const QToolBar* self, QAction* action) {
	return self->widgetForAction(action);
}

bool QToolBar_isFloatable(const QToolBar* self) {
	return self->isFloatable();
}

void QToolBar_setFloatable(QToolBar* self, bool floatable) {
	self->setFloatable(floatable);
}

bool QToolBar_isFloating(const QToolBar* self) {
	return self->isFloating();
}

void QToolBar_setIconSize(QToolBar* self, QSize* iconSize) {
	self->setIconSize(*iconSize);
}

void QToolBar_setToolButtonStyle(QToolBar* self, int toolButtonStyle) {
	self->setToolButtonStyle(static_cast<Qt::ToolButtonStyle>(toolButtonStyle));
}

void QToolBar_actionTriggered(QToolBar* self, QAction* action) {
	self->actionTriggered(action);
}

void QToolBar_connect_actionTriggered(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(QAction*)>(&QToolBar::actionTriggered), self, local_caller{slot, callback, release});
}

void QToolBar_movableChanged(QToolBar* self, bool movable) {
	self->movableChanged(movable);
}

void QToolBar_connect_movableChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool movable) {
			bool sigval1 = movable;
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(bool)>(&QToolBar::movableChanged), self, local_caller{slot, callback, release});
}

void QToolBar_allowedAreasChanged(QToolBar* self, int allowedAreas) {
	self->allowedAreasChanged(static_cast<Qt::ToolBarAreas>(allowedAreas));
}

void QToolBar_connect_allowedAreasChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::ToolBarAreas allowedAreas) {
			Qt::ToolBarAreas allowedAreas_ret = allowedAreas;
			int sigval1 = static_cast<int>(allowedAreas_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(Qt::ToolBarAreas)>(&QToolBar::allowedAreasChanged), self, local_caller{slot, callback, release});
}

void QToolBar_orientationChanged(QToolBar* self, int orientation) {
	self->orientationChanged(static_cast<Qt::Orientation>(orientation));
}

void QToolBar_connect_orientationChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::Orientation orientation) {
			Qt::Orientation orientation_ret = orientation;
			int sigval1 = static_cast<int>(orientation_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(Qt::Orientation)>(&QToolBar::orientationChanged), self, local_caller{slot, callback, release});
}

void QToolBar_iconSizeChanged(QToolBar* self, QSize* iconSize) {
	self->iconSizeChanged(*iconSize);
}

void QToolBar_connect_iconSizeChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) {
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
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(const QSize&)>(&QToolBar::iconSizeChanged), self, local_caller{slot, callback, release});
}

void QToolBar_toolButtonStyleChanged(QToolBar* self, int toolButtonStyle) {
	self->toolButtonStyleChanged(static_cast<Qt::ToolButtonStyle>(toolButtonStyle));
}

void QToolBar_connect_toolButtonStyleChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::ToolButtonStyle toolButtonStyle) {
			Qt::ToolButtonStyle toolButtonStyle_ret = toolButtonStyle;
			int sigval1 = static_cast<int>(toolButtonStyle_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(Qt::ToolButtonStyle)>(&QToolBar::toolButtonStyleChanged), self, local_caller{slot, callback, release});
}

void QToolBar_topLevelChanged(QToolBar* self, bool topLevel) {
	self->topLevelChanged(topLevel);
}

void QToolBar_connect_topLevelChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool topLevel) {
			bool sigval1 = topLevel;
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(bool)>(&QToolBar::topLevelChanged), self, local_caller{slot, callback, release});
}

void QToolBar_visibilityChanged(QToolBar* self, bool visible) {
	self->visibilityChanged(visible);
}

void QToolBar_connect_visibilityChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool visible) {
			bool sigval1 = visible;
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(bool)>(&QToolBar::visibilityChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QToolBar_tr2(const char* s, const char* c) {
	QString _ret = QToolBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QToolBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBar_trUtf82(const char* s, const char* c) {
	QString _ret = QToolBar::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBar_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QToolBar::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QToolBar_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQToolBar*)(self) )->QToolBar::metaObject();

}

void* QToolBar_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQToolBar*)(self) )->QToolBar::qt_metacast(param1);

}

int QToolBar_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQToolBar*)(self) )->QToolBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QToolBar_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::actionEvent(event);

}

void QToolBar_virtualbase_changeEvent(void* self, QEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::changeEvent(event);

}

void QToolBar_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::paintEvent(event);

}

bool QToolBar_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQToolBar*)(self) )->QToolBar::event(event);

}

int QToolBar_virtualbase_devType(const void* self) {

	return ( (const VirtualQToolBar*)(self) )->QToolBar::devType();

}

void QToolBar_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQToolBar*)(self) )->QToolBar::setVisible(visible);

}

QSize* QToolBar_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQToolBar*)(self) )->QToolBar::sizeHint());

}

QSize* QToolBar_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQToolBar*)(self) )->QToolBar::minimumSizeHint());

}

int QToolBar_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQToolBar*)(self) )->QToolBar::heightForWidth(static_cast<int>(param1));

}

bool QToolBar_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQToolBar*)(self) )->QToolBar::hasHeightForWidth();

}

QPaintEngine* QToolBar_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQToolBar*)(self) )->QToolBar::paintEngine();

}

void QToolBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::mousePressEvent(event);

}

void QToolBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::mouseReleaseEvent(event);

}

void QToolBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::mouseDoubleClickEvent(event);

}

void QToolBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::mouseMoveEvent(event);

}

void QToolBar_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::wheelEvent(event);

}

void QToolBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::keyPressEvent(event);

}

void QToolBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::keyReleaseEvent(event);

}

void QToolBar_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::focusInEvent(event);

}

void QToolBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::focusOutEvent(event);

}

void QToolBar_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::enterEvent(event);

}

void QToolBar_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::leaveEvent(event);

}

void QToolBar_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::moveEvent(event);

}

void QToolBar_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::resizeEvent(event);

}

void QToolBar_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::closeEvent(event);

}

void QToolBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::contextMenuEvent(event);

}

void QToolBar_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::tabletEvent(event);

}

void QToolBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::dragEnterEvent(event);

}

void QToolBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::dragMoveEvent(event);

}

void QToolBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::dragLeaveEvent(event);

}

void QToolBar_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::dropEvent(event);

}

void QToolBar_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::showEvent(event);

}

void QToolBar_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::hideEvent(event);

}

bool QToolBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQToolBar*)(self) )->QToolBar::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QToolBar_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQToolBar*)(self) )->QToolBar::metric(static_cast<VirtualQToolBar::PaintDeviceMetric>(param1));

}

void QToolBar_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQToolBar*)(self) )->QToolBar::initPainter(painter);

}

QPaintDevice* QToolBar_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQToolBar*)(self) )->QToolBar::redirected(offset);

}

QPainter* QToolBar_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQToolBar*)(self) )->QToolBar::sharedPainter();

}

void QToolBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQToolBar*)(self) )->QToolBar::inputMethodEvent(param1);

}

QVariant* QToolBar_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQToolBar*)(self) )->QToolBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QToolBar_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQToolBar*)(self) )->QToolBar::focusNextPrevChild(next);

}

bool QToolBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQToolBar*)(self) )->QToolBar::eventFilter(watched, event);

}

void QToolBar_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::timerEvent(event);

}

void QToolBar_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::childEvent(event);

}

void QToolBar_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQToolBar*)(self) )->QToolBar::customEvent(event);

}

void QToolBar_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQToolBar*)(self) )->QToolBar::connectNotify(*signal);

}

void QToolBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQToolBar*)(self) )->QToolBar::disconnectNotify(*signal);

}

const QMetaObject* QToolBar_staticMetaObject() { return &QToolBar::staticMetaObject; }
void QToolBar_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionToolBar* option) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QToolBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QToolBar_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QToolBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QToolBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QToolBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QToolBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QToolBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QToolBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QToolBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQToolBar* self_cast = dynamic_cast<VirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QToolBar_delete(QToolBar* self) {
	delete self;
}

