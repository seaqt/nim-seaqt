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
#include <qmenubar.h>
#include "gen_qmenubar.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQMenuBar final : public QMenuBar {
	struct QMenuBar_VTable* vtbl;
public:

	VirtualQMenuBar(struct QMenuBar_VTable* vtbl, QWidget* parent): QMenuBar(parent), vtbl(vtbl) {};
	VirtualQMenuBar(struct QMenuBar_VTable* vtbl): QMenuBar(), vtbl(vtbl) {};

	virtual ~VirtualQMenuBar() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMenuBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QMenuBar_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMenuBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QMenuBar_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMenuBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenuBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMenuBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMenuBar_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMenuBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMenuBar_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMenuBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenuBar_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMenuBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QMenuBar::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QMenuBar::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMenuBar::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QMenuBar::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMenuBar::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* param1) override {
		if (vtbl->leaveEvent == 0) {
			QMenuBar::leaveEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_leaveEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QMenuBar::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QMenuBar::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* param1) override {
		if (vtbl->actionEvent == 0) {
			QMenuBar::actionEvent(param1);
			return;
		}

		QActionEvent* sigval1 = param1;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_actionEvent(void* self, QActionEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QMenuBar::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QMenuBar::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_focusInEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QMenuBar::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_timerEvent(void* self, QTimerEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QMenuBar::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMenuBar_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QMenuBar::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMenuBar_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMenuBar::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenuBar_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMenuBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QMenuBar_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMenuBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QMenuBar_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMenuBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QMenuBar::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMenuBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMenuBar::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMenuBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMenuBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QMenuBar::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMenuBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QMenuBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QMenuBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMenuBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QMenuBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QMenuBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QMenuBar::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMenuBar::nativeEvent(eventType, message, result);
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

	friend bool QMenuBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMenuBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenuBar_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMenuBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMenuBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMenuBar_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMenuBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QMenuBar_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMenuBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMenuBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QMenuBar_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMenuBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMenuBar_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMenuBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMenuBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMenuBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMenuBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QMenuBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QMenuBar_protectedbase_initStyleOption(const void* self, QStyleOptionMenuItem* option, QAction* action);
	friend void QMenuBar_protectedbase_updateMicroFocus(void* self);
	friend void QMenuBar_protectedbase_create(void* self);
	friend void QMenuBar_protectedbase_destroy(void* self);
	friend bool QMenuBar_protectedbase_focusNextChild(void* self);
	friend bool QMenuBar_protectedbase_focusPreviousChild(void* self);
	friend QObject* QMenuBar_protectedbase_sender(const void* self);
	friend int QMenuBar_protectedbase_senderSignalIndex(const void* self);
	friend int QMenuBar_protectedbase_receivers(const void* self, const char* signal);
	friend bool QMenuBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QMenuBar* QMenuBar_new(struct QMenuBar_VTable* vtbl, QWidget* parent) {
	return new VirtualQMenuBar(vtbl, parent);
}

QMenuBar* QMenuBar_new2(struct QMenuBar_VTable* vtbl) {
	return new VirtualQMenuBar(vtbl);
}

void QMenuBar_virtbase(QMenuBar* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QMenuBar_metaObject(const QMenuBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMenuBar_metacast(QMenuBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMenuBar_metacall(QMenuBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMenuBar_tr(const char* s) {
	QString _ret = QMenuBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMenuBar_trUtf8(const char* s) {
	QString _ret = QMenuBar::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QMenuBar_addAction(QMenuBar* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addAction(text_QString);
}

QAction* QMenuBar_addMenu(QMenuBar* self, QMenu* menu) {
	return self->addMenu(menu);
}

QMenu* QMenuBar_addMenuWithTitle(QMenuBar* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addMenu(title_QString);
}

QMenu* QMenuBar_addMenu2(QMenuBar* self, QIcon* icon, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addMenu(*icon, title_QString);
}

QAction* QMenuBar_addSeparator(QMenuBar* self) {
	return self->addSeparator();
}

QAction* QMenuBar_insertSeparator(QMenuBar* self, QAction* before) {
	return self->insertSeparator(before);
}

QAction* QMenuBar_insertMenu(QMenuBar* self, QAction* before, QMenu* menu) {
	return self->insertMenu(before, menu);
}

void QMenuBar_clear(QMenuBar* self) {
	self->clear();
}

QAction* QMenuBar_activeAction(const QMenuBar* self) {
	return self->activeAction();
}

void QMenuBar_setActiveAction(QMenuBar* self, QAction* action) {
	self->setActiveAction(action);
}

void QMenuBar_setDefaultUp(QMenuBar* self, bool defaultUp) {
	self->setDefaultUp(defaultUp);
}

bool QMenuBar_isDefaultUp(const QMenuBar* self) {
	return self->isDefaultUp();
}

QSize* QMenuBar_sizeHint(const QMenuBar* self) {
	return new QSize(self->sizeHint());
}

QSize* QMenuBar_minimumSizeHint(const QMenuBar* self) {
	return new QSize(self->minimumSizeHint());
}

int QMenuBar_heightForWidth(const QMenuBar* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

QRect* QMenuBar_actionGeometry(const QMenuBar* self, QAction* param1) {
	return new QRect(self->actionGeometry(param1));
}

QAction* QMenuBar_actionAt(const QMenuBar* self, QPoint* param1) {
	return self->actionAt(*param1);
}

void QMenuBar_setCornerWidget(QMenuBar* self, QWidget* w) {
	self->setCornerWidget(w);
}

QWidget* QMenuBar_cornerWidget(const QMenuBar* self) {
	return self->cornerWidget();
}

bool QMenuBar_isNativeMenuBar(const QMenuBar* self) {
	return self->isNativeMenuBar();
}

void QMenuBar_setNativeMenuBar(QMenuBar* self, bool nativeMenuBar) {
	self->setNativeMenuBar(nativeMenuBar);
}

void QMenuBar_setVisible(QMenuBar* self, bool visible) {
	self->setVisible(visible);
}

void QMenuBar_triggered(QMenuBar* self, QAction* action) {
	self->triggered(action);
}

void QMenuBar_connect_triggered(QMenuBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQMenuBar::connect(self, static_cast<void (QMenuBar::*)(QAction*)>(&QMenuBar::triggered), self, local_caller{slot, callback, release});
}

void QMenuBar_hovered(QMenuBar* self, QAction* action) {
	self->hovered(action);
}

void QMenuBar_connect_hovered(QMenuBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQMenuBar::connect(self, static_cast<void (QMenuBar::*)(QAction*)>(&QMenuBar::hovered), self, local_caller{slot, callback, release});
}

struct miqt_string QMenuBar_tr2(const char* s, const char* c) {
	QString _ret = QMenuBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMenuBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QMenuBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMenuBar_trUtf82(const char* s, const char* c) {
	QString _ret = QMenuBar::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMenuBar_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMenuBar::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMenuBar_setCornerWidget2(QMenuBar* self, QWidget* w, int corner) {
	self->setCornerWidget(w, static_cast<Qt::Corner>(corner));
}

QWidget* QMenuBar_cornerWidget1(const QMenuBar* self, int corner) {
	return self->cornerWidget(static_cast<Qt::Corner>(corner));
}

QMetaObject* QMenuBar_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQMenuBar*)(self) )->QMenuBar::metaObject();

}

void* QMenuBar_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQMenuBar*)(self) )->QMenuBar::qt_metacast(param1);

}

int QMenuBar_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQMenuBar*)(self) )->QMenuBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QMenuBar_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQMenuBar*)(self) )->QMenuBar::sizeHint());

}

QSize* QMenuBar_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQMenuBar*)(self) )->QMenuBar::minimumSizeHint());

}

int QMenuBar_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQMenuBar*)(self) )->QMenuBar::heightForWidth(static_cast<int>(param1));

}

void QMenuBar_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::setVisible(visible);

}

void QMenuBar_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::changeEvent(param1);

}

void QMenuBar_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::keyPressEvent(param1);

}

void QMenuBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::mouseReleaseEvent(param1);

}

void QMenuBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::mousePressEvent(param1);

}

void QMenuBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::mouseMoveEvent(param1);

}

void QMenuBar_virtualbase_leaveEvent(void* self, QEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::leaveEvent(param1);

}

void QMenuBar_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::paintEvent(param1);

}

void QMenuBar_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::resizeEvent(param1);

}

void QMenuBar_virtualbase_actionEvent(void* self, QActionEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::actionEvent(param1);

}

void QMenuBar_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::focusOutEvent(param1);

}

void QMenuBar_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::focusInEvent(param1);

}

void QMenuBar_virtualbase_timerEvent(void* self, QTimerEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::timerEvent(param1);

}

bool QMenuBar_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQMenuBar*)(self) )->QMenuBar::eventFilter(param1, param2);

}

bool QMenuBar_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQMenuBar*)(self) )->QMenuBar::event(param1);

}

int QMenuBar_virtualbase_devType(const void* self) {

	return ( (const VirtualQMenuBar*)(self) )->QMenuBar::devType();

}

bool QMenuBar_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQMenuBar*)(self) )->QMenuBar::hasHeightForWidth();

}

QPaintEngine* QMenuBar_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQMenuBar*)(self) )->QMenuBar::paintEngine();

}

void QMenuBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::mouseDoubleClickEvent(event);

}

void QMenuBar_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::wheelEvent(event);

}

void QMenuBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::keyReleaseEvent(event);

}

void QMenuBar_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::enterEvent(event);

}

void QMenuBar_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::moveEvent(event);

}

void QMenuBar_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::closeEvent(event);

}

void QMenuBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::contextMenuEvent(event);

}

void QMenuBar_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::tabletEvent(event);

}

void QMenuBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::dragEnterEvent(event);

}

void QMenuBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::dragMoveEvent(event);

}

void QMenuBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::dragLeaveEvent(event);

}

void QMenuBar_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::dropEvent(event);

}

void QMenuBar_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::showEvent(event);

}

void QMenuBar_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::hideEvent(event);

}

bool QMenuBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQMenuBar*)(self) )->QMenuBar::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QMenuBar_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQMenuBar*)(self) )->QMenuBar::metric(static_cast<VirtualQMenuBar::PaintDeviceMetric>(param1));

}

void QMenuBar_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQMenuBar*)(self) )->QMenuBar::initPainter(painter);

}

QPaintDevice* QMenuBar_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQMenuBar*)(self) )->QMenuBar::redirected(offset);

}

QPainter* QMenuBar_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQMenuBar*)(self) )->QMenuBar::sharedPainter();

}

void QMenuBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::inputMethodEvent(param1);

}

QVariant* QMenuBar_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQMenuBar*)(self) )->QMenuBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QMenuBar_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQMenuBar*)(self) )->QMenuBar::focusNextPrevChild(next);

}

void QMenuBar_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::childEvent(event);

}

void QMenuBar_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::customEvent(event);

}

void QMenuBar_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::connectNotify(*signal);

}

void QMenuBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMenuBar*)(self) )->QMenuBar::disconnectNotify(*signal);

}

const QMetaObject* QMenuBar_staticMetaObject() { return &QMenuBar::staticMetaObject; }
void QMenuBar_protectedbase_initStyleOption(const void* self, QStyleOptionMenuItem* option, QAction* action) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	self_cast->initStyleOption(option, action);

}

void QMenuBar_protectedbase_updateMicroFocus(void* self) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	self_cast->updateMicroFocus();

}

void QMenuBar_protectedbase_create(void* self) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	self_cast->create();

}

void QMenuBar_protectedbase_destroy(void* self) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	self_cast->destroy();

}

bool QMenuBar_protectedbase_focusNextChild(void* self) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	return self_cast->focusNextChild();

}

bool QMenuBar_protectedbase_focusPreviousChild(void* self) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QMenuBar_protectedbase_sender(const void* self) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	return self_cast->sender();

}

int QMenuBar_protectedbase_senderSignalIndex(const void* self) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QMenuBar_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	return self_cast->receivers(signal);

}

bool QMenuBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQMenuBar* self_cast = static_cast<VirtualQMenuBar*>( (QMenuBar*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QMenuBar_delete(QMenuBar* self) {
	delete self;
}

