#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDialog>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QErrorMessage>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
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
#include <qerrormessage.h>
#include "gen_qerrormessage.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQErrorMessage final : public QErrorMessage {
	struct QErrorMessage_VTable* vtbl;
public:

	VirtualQErrorMessage(struct QErrorMessage_VTable* vtbl, QWidget* parent): QErrorMessage(parent), vtbl(vtbl) {};
	VirtualQErrorMessage(struct QErrorMessage_VTable* vtbl): QErrorMessage(), vtbl(vtbl) {};

	virtual ~VirtualQErrorMessage() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QErrorMessage::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QErrorMessage_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QErrorMessage::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QErrorMessage_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QErrorMessage::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QErrorMessage::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_done(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QErrorMessage::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QErrorMessage::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QErrorMessage::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QErrorMessage_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QErrorMessage::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QErrorMessage_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QErrorMessage::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	friend void QErrorMessage_virtualbase_open(void* self);

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QErrorMessage::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_exec(void* self);

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QErrorMessage::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	friend void QErrorMessage_virtualbase_accept(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QErrorMessage::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	friend void QErrorMessage_virtualbase_reject(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QErrorMessage::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QErrorMessage::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_closeEvent(void* self, QCloseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QErrorMessage::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QErrorMessage::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QErrorMessage::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QErrorMessage::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QErrorMessage_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QErrorMessage::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QErrorMessage::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QErrorMessage::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QErrorMessage_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QErrorMessage::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QErrorMessage_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QErrorMessage::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QErrorMessage_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QErrorMessage::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QErrorMessage::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QErrorMessage::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QErrorMessage::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QErrorMessage::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QErrorMessage::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QErrorMessage::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QErrorMessage::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QErrorMessage::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QErrorMessage::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QErrorMessage::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QErrorMessage::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QErrorMessage::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QErrorMessage::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QErrorMessage::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QErrorMessage::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QErrorMessage::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QErrorMessage::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QErrorMessage::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QErrorMessage::nativeEvent(eventType, message, result);
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

	friend bool QErrorMessage_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QErrorMessage::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QErrorMessage::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QErrorMessage::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QErrorMessage_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QErrorMessage::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QErrorMessage_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QErrorMessage::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QErrorMessage::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QErrorMessage_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QErrorMessage::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QErrorMessage_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QErrorMessage::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QErrorMessage::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QErrorMessage::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QErrorMessage::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QErrorMessage::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QErrorMessage_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QErrorMessage_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
	friend void QErrorMessage_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QErrorMessage_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QErrorMessage_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QErrorMessage_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QErrorMessage_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QErrorMessage_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QErrorMessage_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QErrorMessage_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QErrorMessage_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QErrorMessage* QErrorMessage_new(struct QErrorMessage_VTable* vtbl, QWidget* parent) {
	return new VirtualQErrorMessage(vtbl, parent);
}

QErrorMessage* QErrorMessage_new2(struct QErrorMessage_VTable* vtbl) {
	return new VirtualQErrorMessage(vtbl);
}

void QErrorMessage_virtbase(QErrorMessage* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QErrorMessage_metaObject(const QErrorMessage* self) {
	return (QMetaObject*) self->metaObject();
}

void* QErrorMessage_metacast(QErrorMessage* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QErrorMessage_metacall(QErrorMessage* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QErrorMessage_tr(const char* s) {
	QString _ret = QErrorMessage::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QErrorMessage_trUtf8(const char* s) {
	QString _ret = QErrorMessage::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QErrorMessage* QErrorMessage_qtHandler() {
	return QErrorMessage::qtHandler();
}

void QErrorMessage_showMessage(QErrorMessage* self, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->showMessage(message_QString);
}

void QErrorMessage_showMessage2(QErrorMessage* self, struct miqt_string message, struct miqt_string type) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	QString type_QString = QString::fromUtf8(type.data, type.len);
	self->showMessage(message_QString, type_QString);
}

struct miqt_string QErrorMessage_tr2(const char* s, const char* c) {
	QString _ret = QErrorMessage::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QErrorMessage_tr3(const char* s, const char* c, int n) {
	QString _ret = QErrorMessage::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QErrorMessage_trUtf82(const char* s, const char* c) {
	QString _ret = QErrorMessage::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QErrorMessage_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QErrorMessage::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QErrorMessage_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQErrorMessage*)(self) )->QErrorMessage::metaObject();

}

void* QErrorMessage_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQErrorMessage*)(self) )->QErrorMessage::qt_metacast(param1);

}

int QErrorMessage_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQErrorMessage*)(self) )->QErrorMessage::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QErrorMessage_virtualbase_done(void* self, int param1) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::done(static_cast<int>(param1));

}

void QErrorMessage_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::changeEvent(e);

}

void QErrorMessage_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::setVisible(visible);

}

QSize* QErrorMessage_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQErrorMessage*)(self) )->QErrorMessage::sizeHint());

}

QSize* QErrorMessage_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQErrorMessage*)(self) )->QErrorMessage::minimumSizeHint());

}

void QErrorMessage_virtualbase_open(void* self) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::open();

}

int QErrorMessage_virtualbase_exec(void* self) {

	return ( (VirtualQErrorMessage*)(self) )->QErrorMessage::exec();

}

void QErrorMessage_virtualbase_accept(void* self) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::accept();

}

void QErrorMessage_virtualbase_reject(void* self) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::reject();

}

void QErrorMessage_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::keyPressEvent(param1);

}

void QErrorMessage_virtualbase_closeEvent(void* self, QCloseEvent* param1) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::closeEvent(param1);

}

void QErrorMessage_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::showEvent(param1);

}

void QErrorMessage_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::resizeEvent(param1);

}

void QErrorMessage_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::contextMenuEvent(param1);

}

bool QErrorMessage_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQErrorMessage*)(self) )->QErrorMessage::eventFilter(param1, param2);

}

int QErrorMessage_virtualbase_devType(const void* self) {

	return ( (const VirtualQErrorMessage*)(self) )->QErrorMessage::devType();

}

int QErrorMessage_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQErrorMessage*)(self) )->QErrorMessage::heightForWidth(static_cast<int>(param1));

}

bool QErrorMessage_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQErrorMessage*)(self) )->QErrorMessage::hasHeightForWidth();

}

QPaintEngine* QErrorMessage_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQErrorMessage*)(self) )->QErrorMessage::paintEngine();

}

bool QErrorMessage_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQErrorMessage*)(self) )->QErrorMessage::event(event);

}

void QErrorMessage_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::mousePressEvent(event);

}

void QErrorMessage_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::mouseReleaseEvent(event);

}

void QErrorMessage_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::mouseDoubleClickEvent(event);

}

void QErrorMessage_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::mouseMoveEvent(event);

}

void QErrorMessage_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::wheelEvent(event);

}

void QErrorMessage_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::keyReleaseEvent(event);

}

void QErrorMessage_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::focusInEvent(event);

}

void QErrorMessage_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::focusOutEvent(event);

}

void QErrorMessage_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::enterEvent(event);

}

void QErrorMessage_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::leaveEvent(event);

}

void QErrorMessage_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::paintEvent(event);

}

void QErrorMessage_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::moveEvent(event);

}

void QErrorMessage_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::tabletEvent(event);

}

void QErrorMessage_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::actionEvent(event);

}

void QErrorMessage_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::dragEnterEvent(event);

}

void QErrorMessage_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::dragMoveEvent(event);

}

void QErrorMessage_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::dragLeaveEvent(event);

}

void QErrorMessage_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::dropEvent(event);

}

void QErrorMessage_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::hideEvent(event);

}

bool QErrorMessage_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQErrorMessage*)(self) )->QErrorMessage::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QErrorMessage_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQErrorMessage*)(self) )->QErrorMessage::metric(static_cast<VirtualQErrorMessage::PaintDeviceMetric>(param1));

}

void QErrorMessage_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQErrorMessage*)(self) )->QErrorMessage::initPainter(painter);

}

QPaintDevice* QErrorMessage_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQErrorMessage*)(self) )->QErrorMessage::redirected(offset);

}

QPainter* QErrorMessage_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQErrorMessage*)(self) )->QErrorMessage::sharedPainter();

}

void QErrorMessage_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::inputMethodEvent(param1);

}

QVariant* QErrorMessage_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQErrorMessage*)(self) )->QErrorMessage::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QErrorMessage_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQErrorMessage*)(self) )->QErrorMessage::focusNextPrevChild(next);

}

void QErrorMessage_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::timerEvent(event);

}

void QErrorMessage_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::childEvent(event);

}

void QErrorMessage_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::customEvent(event);

}

void QErrorMessage_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::connectNotify(*signal);

}

void QErrorMessage_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQErrorMessage*)(self) )->QErrorMessage::disconnectNotify(*signal);

}

const QMetaObject* QErrorMessage_staticMetaObject() { return &QErrorMessage::staticMetaObject; }
void QErrorMessage_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->adjustPosition(param1);

}

void QErrorMessage_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QErrorMessage_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QErrorMessage_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QErrorMessage_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QErrorMessage_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QErrorMessage_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QErrorMessage_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QErrorMessage_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QErrorMessage_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQErrorMessage* self_cast = dynamic_cast<VirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QErrorMessage_delete(QErrorMessage* self) {
	delete self;
}

