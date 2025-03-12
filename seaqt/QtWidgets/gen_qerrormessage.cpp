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
class VirtualQErrorMessage final : public QErrorMessage {
	const QErrorMessage_VTable* vtbl;
	void* vdata;
public:
	friend const QErrorMessage_VTable* QErrorMessage_vtbl(const VirtualQErrorMessage* self);
	friend void* QErrorMessage_vdata(const VirtualQErrorMessage* self);
	friend void QErrorMessage_setVdata(VirtualQErrorMessage* self, void* vdata);

	VirtualQErrorMessage(const QErrorMessage_VTable* vtbl, void* vdata, QWidget* parent): QErrorMessage(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQErrorMessage(const QErrorMessage_VTable* vtbl, void* vdata): QErrorMessage(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQErrorMessage() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QErrorMessage::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QErrorMessage_virtualbase_metaObject(const VirtualQErrorMessage* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QErrorMessage::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QErrorMessage_virtualbase_metacast(VirtualQErrorMessage* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QErrorMessage::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_metacall(VirtualQErrorMessage* self, int param1, int param2, void** param3);

	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QErrorMessage::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_done(VirtualQErrorMessage* self, int param1);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QErrorMessage::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_changeEvent(VirtualQErrorMessage* self, QEvent* e);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QErrorMessage::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_setVisible(VirtualQErrorMessage* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QErrorMessage::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QErrorMessage_virtualbase_sizeHint(const VirtualQErrorMessage* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QErrorMessage::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QErrorMessage_virtualbase_minimumSizeHint(const VirtualQErrorMessage* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QErrorMessage::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QErrorMessage_virtualbase_open(VirtualQErrorMessage* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QErrorMessage::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_exec(VirtualQErrorMessage* self);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QErrorMessage::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QErrorMessage_virtualbase_accept(VirtualQErrorMessage* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QErrorMessage::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QErrorMessage_virtualbase_reject(VirtualQErrorMessage* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QErrorMessage::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_keyPressEvent(VirtualQErrorMessage* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QErrorMessage::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_closeEvent(VirtualQErrorMessage* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QErrorMessage::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_showEvent(VirtualQErrorMessage* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QErrorMessage::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_resizeEvent(VirtualQErrorMessage* self, QResizeEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QErrorMessage::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_contextMenuEvent(VirtualQErrorMessage* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QErrorMessage::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QErrorMessage_virtualbase_eventFilter(VirtualQErrorMessage* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QErrorMessage::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_devType(const VirtualQErrorMessage* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QErrorMessage::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_heightForWidth(const VirtualQErrorMessage* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QErrorMessage::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QErrorMessage_virtualbase_hasHeightForWidth(const VirtualQErrorMessage* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QErrorMessage::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QErrorMessage_virtualbase_paintEngine(const VirtualQErrorMessage* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QErrorMessage::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QErrorMessage_virtualbase_event(VirtualQErrorMessage* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QErrorMessage::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_mousePressEvent(VirtualQErrorMessage* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QErrorMessage::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_mouseReleaseEvent(VirtualQErrorMessage* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QErrorMessage::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_mouseDoubleClickEvent(VirtualQErrorMessage* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QErrorMessage::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_mouseMoveEvent(VirtualQErrorMessage* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QErrorMessage::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_wheelEvent(VirtualQErrorMessage* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QErrorMessage::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_keyReleaseEvent(VirtualQErrorMessage* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QErrorMessage::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_focusInEvent(VirtualQErrorMessage* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QErrorMessage::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_focusOutEvent(VirtualQErrorMessage* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QErrorMessage::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_enterEvent(VirtualQErrorMessage* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QErrorMessage::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_leaveEvent(VirtualQErrorMessage* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QErrorMessage::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_paintEvent(VirtualQErrorMessage* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QErrorMessage::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_moveEvent(VirtualQErrorMessage* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QErrorMessage::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_tabletEvent(VirtualQErrorMessage* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QErrorMessage::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_actionEvent(VirtualQErrorMessage* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QErrorMessage::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_dragEnterEvent(VirtualQErrorMessage* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QErrorMessage::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_dragMoveEvent(VirtualQErrorMessage* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QErrorMessage::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_dragLeaveEvent(VirtualQErrorMessage* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QErrorMessage::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_dropEvent(VirtualQErrorMessage* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QErrorMessage::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_hideEvent(VirtualQErrorMessage* self, QHideEvent* event);

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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QErrorMessage_virtualbase_nativeEvent(VirtualQErrorMessage* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QErrorMessage::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QErrorMessage_virtualbase_metric(const VirtualQErrorMessage* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QErrorMessage::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_initPainter(const VirtualQErrorMessage* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QErrorMessage::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QErrorMessage_virtualbase_redirected(const VirtualQErrorMessage* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QErrorMessage::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QErrorMessage_virtualbase_sharedPainter(const VirtualQErrorMessage* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QErrorMessage::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_inputMethodEvent(VirtualQErrorMessage* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QErrorMessage::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QErrorMessage_virtualbase_inputMethodQuery(const VirtualQErrorMessage* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QErrorMessage::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QErrorMessage_virtualbase_focusNextPrevChild(VirtualQErrorMessage* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QErrorMessage::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_timerEvent(VirtualQErrorMessage* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QErrorMessage::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_childEvent(VirtualQErrorMessage* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QErrorMessage::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_customEvent(VirtualQErrorMessage* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QErrorMessage::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_connectNotify(VirtualQErrorMessage* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QErrorMessage::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QErrorMessage_virtualbase_disconnectNotify(VirtualQErrorMessage* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QErrorMessage_protectedbase_adjustPosition(VirtualQErrorMessage* self, QWidget* param1);
	friend void QErrorMessage_protectedbase_updateMicroFocus(VirtualQErrorMessage* self);
	friend void QErrorMessage_protectedbase_create(VirtualQErrorMessage* self);
	friend void QErrorMessage_protectedbase_destroy(VirtualQErrorMessage* self);
	friend bool QErrorMessage_protectedbase_focusNextChild(VirtualQErrorMessage* self);
	friend bool QErrorMessage_protectedbase_focusPreviousChild(VirtualQErrorMessage* self);
	friend QObject* QErrorMessage_protectedbase_sender(const VirtualQErrorMessage* self);
	friend int QErrorMessage_protectedbase_senderSignalIndex(const VirtualQErrorMessage* self);
	friend int QErrorMessage_protectedbase_receivers(const VirtualQErrorMessage* self, const char* signal);
	friend bool QErrorMessage_protectedbase_isSignalConnected(const VirtualQErrorMessage* self, QMetaMethod* signal);
};

VirtualQErrorMessage* QErrorMessage_new(const QErrorMessage_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQErrorMessage(vtbl, vdata, parent);
}

VirtualQErrorMessage* QErrorMessage_new2(const QErrorMessage_VTable* vtbl, void* vdata) {
	return new VirtualQErrorMessage(vtbl, vdata);
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

QMetaObject* QErrorMessage_virtualbase_metaObject(const VirtualQErrorMessage* self) {

	return (QMetaObject*) self->QErrorMessage::metaObject();
}

void* QErrorMessage_virtualbase_metacast(VirtualQErrorMessage* self, const char* param1) {

	return self->QErrorMessage::qt_metacast(param1);
}

int QErrorMessage_virtualbase_metacall(VirtualQErrorMessage* self, int param1, int param2, void** param3) {

	return self->QErrorMessage::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QErrorMessage_virtualbase_done(VirtualQErrorMessage* self, int param1) {

	self->QErrorMessage::done(static_cast<int>(param1));
}

void QErrorMessage_virtualbase_changeEvent(VirtualQErrorMessage* self, QEvent* e) {

	self->QErrorMessage::changeEvent(e);
}

void QErrorMessage_virtualbase_setVisible(VirtualQErrorMessage* self, bool visible) {

	self->QErrorMessage::setVisible(visible);
}

QSize* QErrorMessage_virtualbase_sizeHint(const VirtualQErrorMessage* self) {

	return new QSize(self->QErrorMessage::sizeHint());
}

QSize* QErrorMessage_virtualbase_minimumSizeHint(const VirtualQErrorMessage* self) {

	return new QSize(self->QErrorMessage::minimumSizeHint());
}

void QErrorMessage_virtualbase_open(VirtualQErrorMessage* self) {

	self->QErrorMessage::open();
}

int QErrorMessage_virtualbase_exec(VirtualQErrorMessage* self) {

	return self->QErrorMessage::exec();
}

void QErrorMessage_virtualbase_accept(VirtualQErrorMessage* self) {

	self->QErrorMessage::accept();
}

void QErrorMessage_virtualbase_reject(VirtualQErrorMessage* self) {

	self->QErrorMessage::reject();
}

void QErrorMessage_virtualbase_keyPressEvent(VirtualQErrorMessage* self, QKeyEvent* param1) {

	self->QErrorMessage::keyPressEvent(param1);
}

void QErrorMessage_virtualbase_closeEvent(VirtualQErrorMessage* self, QCloseEvent* param1) {

	self->QErrorMessage::closeEvent(param1);
}

void QErrorMessage_virtualbase_showEvent(VirtualQErrorMessage* self, QShowEvent* param1) {

	self->QErrorMessage::showEvent(param1);
}

void QErrorMessage_virtualbase_resizeEvent(VirtualQErrorMessage* self, QResizeEvent* param1) {

	self->QErrorMessage::resizeEvent(param1);
}

void QErrorMessage_virtualbase_contextMenuEvent(VirtualQErrorMessage* self, QContextMenuEvent* param1) {

	self->QErrorMessage::contextMenuEvent(param1);
}

bool QErrorMessage_virtualbase_eventFilter(VirtualQErrorMessage* self, QObject* param1, QEvent* param2) {

	return self->QErrorMessage::eventFilter(param1, param2);
}

int QErrorMessage_virtualbase_devType(const VirtualQErrorMessage* self) {

	return self->QErrorMessage::devType();
}

int QErrorMessage_virtualbase_heightForWidth(const VirtualQErrorMessage* self, int param1) {

	return self->QErrorMessage::heightForWidth(static_cast<int>(param1));
}

bool QErrorMessage_virtualbase_hasHeightForWidth(const VirtualQErrorMessage* self) {

	return self->QErrorMessage::hasHeightForWidth();
}

QPaintEngine* QErrorMessage_virtualbase_paintEngine(const VirtualQErrorMessage* self) {

	return self->QErrorMessage::paintEngine();
}

bool QErrorMessage_virtualbase_event(VirtualQErrorMessage* self, QEvent* event) {

	return self->QErrorMessage::event(event);
}

void QErrorMessage_virtualbase_mousePressEvent(VirtualQErrorMessage* self, QMouseEvent* event) {

	self->QErrorMessage::mousePressEvent(event);
}

void QErrorMessage_virtualbase_mouseReleaseEvent(VirtualQErrorMessage* self, QMouseEvent* event) {

	self->QErrorMessage::mouseReleaseEvent(event);
}

void QErrorMessage_virtualbase_mouseDoubleClickEvent(VirtualQErrorMessage* self, QMouseEvent* event) {

	self->QErrorMessage::mouseDoubleClickEvent(event);
}

void QErrorMessage_virtualbase_mouseMoveEvent(VirtualQErrorMessage* self, QMouseEvent* event) {

	self->QErrorMessage::mouseMoveEvent(event);
}

void QErrorMessage_virtualbase_wheelEvent(VirtualQErrorMessage* self, QWheelEvent* event) {

	self->QErrorMessage::wheelEvent(event);
}

void QErrorMessage_virtualbase_keyReleaseEvent(VirtualQErrorMessage* self, QKeyEvent* event) {

	self->QErrorMessage::keyReleaseEvent(event);
}

void QErrorMessage_virtualbase_focusInEvent(VirtualQErrorMessage* self, QFocusEvent* event) {

	self->QErrorMessage::focusInEvent(event);
}

void QErrorMessage_virtualbase_focusOutEvent(VirtualQErrorMessage* self, QFocusEvent* event) {

	self->QErrorMessage::focusOutEvent(event);
}

void QErrorMessage_virtualbase_enterEvent(VirtualQErrorMessage* self, QEvent* event) {

	self->QErrorMessage::enterEvent(event);
}

void QErrorMessage_virtualbase_leaveEvent(VirtualQErrorMessage* self, QEvent* event) {

	self->QErrorMessage::leaveEvent(event);
}

void QErrorMessage_virtualbase_paintEvent(VirtualQErrorMessage* self, QPaintEvent* event) {

	self->QErrorMessage::paintEvent(event);
}

void QErrorMessage_virtualbase_moveEvent(VirtualQErrorMessage* self, QMoveEvent* event) {

	self->QErrorMessage::moveEvent(event);
}

void QErrorMessage_virtualbase_tabletEvent(VirtualQErrorMessage* self, QTabletEvent* event) {

	self->QErrorMessage::tabletEvent(event);
}

void QErrorMessage_virtualbase_actionEvent(VirtualQErrorMessage* self, QActionEvent* event) {

	self->QErrorMessage::actionEvent(event);
}

void QErrorMessage_virtualbase_dragEnterEvent(VirtualQErrorMessage* self, QDragEnterEvent* event) {

	self->QErrorMessage::dragEnterEvent(event);
}

void QErrorMessage_virtualbase_dragMoveEvent(VirtualQErrorMessage* self, QDragMoveEvent* event) {

	self->QErrorMessage::dragMoveEvent(event);
}

void QErrorMessage_virtualbase_dragLeaveEvent(VirtualQErrorMessage* self, QDragLeaveEvent* event) {

	self->QErrorMessage::dragLeaveEvent(event);
}

void QErrorMessage_virtualbase_dropEvent(VirtualQErrorMessage* self, QDropEvent* event) {

	self->QErrorMessage::dropEvent(event);
}

void QErrorMessage_virtualbase_hideEvent(VirtualQErrorMessage* self, QHideEvent* event) {

	self->QErrorMessage::hideEvent(event);
}

bool QErrorMessage_virtualbase_nativeEvent(VirtualQErrorMessage* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QErrorMessage::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QErrorMessage_virtualbase_metric(const VirtualQErrorMessage* self, int param1) {

	return self->QErrorMessage::metric(static_cast<VirtualQErrorMessage::PaintDeviceMetric>(param1));
}

void QErrorMessage_virtualbase_initPainter(const VirtualQErrorMessage* self, QPainter* painter) {

	self->QErrorMessage::initPainter(painter);
}

QPaintDevice* QErrorMessage_virtualbase_redirected(const VirtualQErrorMessage* self, QPoint* offset) {

	return self->QErrorMessage::redirected(offset);
}

QPainter* QErrorMessage_virtualbase_sharedPainter(const VirtualQErrorMessage* self) {

	return self->QErrorMessage::sharedPainter();
}

void QErrorMessage_virtualbase_inputMethodEvent(VirtualQErrorMessage* self, QInputMethodEvent* param1) {

	self->QErrorMessage::inputMethodEvent(param1);
}

QVariant* QErrorMessage_virtualbase_inputMethodQuery(const VirtualQErrorMessage* self, int param1) {

	return new QVariant(self->QErrorMessage::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QErrorMessage_virtualbase_focusNextPrevChild(VirtualQErrorMessage* self, bool next) {

	return self->QErrorMessage::focusNextPrevChild(next);
}

void QErrorMessage_virtualbase_timerEvent(VirtualQErrorMessage* self, QTimerEvent* event) {

	self->QErrorMessage::timerEvent(event);
}

void QErrorMessage_virtualbase_childEvent(VirtualQErrorMessage* self, QChildEvent* event) {

	self->QErrorMessage::childEvent(event);
}

void QErrorMessage_virtualbase_customEvent(VirtualQErrorMessage* self, QEvent* event) {

	self->QErrorMessage::customEvent(event);
}

void QErrorMessage_virtualbase_connectNotify(VirtualQErrorMessage* self, QMetaMethod* signal) {

	self->QErrorMessage::connectNotify(*signal);
}

void QErrorMessage_virtualbase_disconnectNotify(VirtualQErrorMessage* self, QMetaMethod* signal) {

	self->QErrorMessage::disconnectNotify(*signal);
}

const QMetaObject* QErrorMessage_staticMetaObject() { return &QErrorMessage::staticMetaObject; }

const QErrorMessage_VTable* QErrorMessage_vtbl(const VirtualQErrorMessage* self) { return self->vtbl; }
void* QErrorMessage_vdata(const VirtualQErrorMessage* self) { return self->vdata; }
void QErrorMessage_setVdata(VirtualQErrorMessage* self, void* vdata) { self->vdata = vdata; }

void QErrorMessage_protectedbase_adjustPosition(VirtualQErrorMessage* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QErrorMessage_protectedbase_updateMicroFocus(VirtualQErrorMessage* self) {
	self->updateMicroFocus();
}

void QErrorMessage_protectedbase_create(VirtualQErrorMessage* self) {
	self->create();
}

void QErrorMessage_protectedbase_destroy(VirtualQErrorMessage* self) {
	self->destroy();
}

bool QErrorMessage_protectedbase_focusNextChild(VirtualQErrorMessage* self) {
	return self->focusNextChild();
}

bool QErrorMessage_protectedbase_focusPreviousChild(VirtualQErrorMessage* self) {
	return self->focusPreviousChild();
}

QObject* QErrorMessage_protectedbase_sender(const VirtualQErrorMessage* self) {
	return self->sender();
}

int QErrorMessage_protectedbase_senderSignalIndex(const VirtualQErrorMessage* self) {
	return self->senderSignalIndex();
}

int QErrorMessage_protectedbase_receivers(const VirtualQErrorMessage* self, const char* signal) {
	return self->receivers(signal);
}

bool QErrorMessage_protectedbase_isSignalConnected(const VirtualQErrorMessage* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QErrorMessage_delete(QErrorMessage* self) {
	delete self;
}

