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
#include <QSizeGrip>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qsizegrip.h>
#include "gen_qsizegrip.h"
class VirtualQSizeGrip final : public QSizeGrip {
	const QSizeGrip_VTable* vtbl;
	void* vdata;
public:
	friend const QSizeGrip_VTable* QSizeGrip_vtbl(const VirtualQSizeGrip* self);
	friend void* QSizeGrip_vdata(const VirtualQSizeGrip* self);
	friend void QSizeGrip_setVdata(VirtualQSizeGrip* self, void* vdata);

	VirtualQSizeGrip(const QSizeGrip_VTable* vtbl, void* vdata, QWidget* parent): QSizeGrip(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSizeGrip() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSizeGrip::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSizeGrip_virtualbase_metaObject(const VirtualQSizeGrip* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSizeGrip::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSizeGrip_virtualbase_metacast(VirtualQSizeGrip* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSizeGrip::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSizeGrip_virtualbase_metacall(VirtualQSizeGrip* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSizeGrip::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSizeGrip_virtualbase_sizeHint(const VirtualQSizeGrip* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSizeGrip::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_setVisible(VirtualQSizeGrip* self, bool visible);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QSizeGrip::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_paintEvent(VirtualQSizeGrip* self, QPaintEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QSizeGrip::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_mousePressEvent(VirtualQSizeGrip* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSizeGrip::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_mouseMoveEvent(VirtualQSizeGrip* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSizeGrip::mouseReleaseEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_mouseReleaseEvent(VirtualQSizeGrip* self, QMouseEvent* mouseEvent);

	virtual void moveEvent(QMoveEvent* moveEvent) override {
		if (vtbl->moveEvent == 0) {
			QSizeGrip::moveEvent(moveEvent);
			return;
		}

		QMoveEvent* sigval1 = moveEvent;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_moveEvent(VirtualQSizeGrip* self, QMoveEvent* moveEvent);

	virtual void showEvent(QShowEvent* showEvent) override {
		if (vtbl->showEvent == 0) {
			QSizeGrip::showEvent(showEvent);
			return;
		}

		QShowEvent* sigval1 = showEvent;

		vtbl->showEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_showEvent(VirtualQSizeGrip* self, QShowEvent* showEvent);

	virtual void hideEvent(QHideEvent* hideEvent) override {
		if (vtbl->hideEvent == 0) {
			QSizeGrip::hideEvent(hideEvent);
			return;
		}

		QHideEvent* sigval1 = hideEvent;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_hideEvent(VirtualQSizeGrip* self, QHideEvent* hideEvent);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QSizeGrip::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSizeGrip_virtualbase_eventFilter(VirtualQSizeGrip* self, QObject* param1, QEvent* param2);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QSizeGrip::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSizeGrip_virtualbase_event(VirtualQSizeGrip* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSizeGrip::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSizeGrip_virtualbase_devType(const VirtualQSizeGrip* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSizeGrip::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSizeGrip_virtualbase_minimumSizeHint(const VirtualQSizeGrip* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSizeGrip::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSizeGrip_virtualbase_heightForWidth(const VirtualQSizeGrip* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSizeGrip::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QSizeGrip_virtualbase_hasHeightForWidth(const VirtualQSizeGrip* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSizeGrip::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QSizeGrip_virtualbase_paintEngine(const VirtualQSizeGrip* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSizeGrip::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_mouseDoubleClickEvent(VirtualQSizeGrip* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSizeGrip::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_wheelEvent(VirtualQSizeGrip* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSizeGrip::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_keyPressEvent(VirtualQSizeGrip* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSizeGrip::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_keyReleaseEvent(VirtualQSizeGrip* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSizeGrip::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_focusInEvent(VirtualQSizeGrip* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSizeGrip::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_focusOutEvent(VirtualQSizeGrip* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSizeGrip::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_enterEvent(VirtualQSizeGrip* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSizeGrip::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_leaveEvent(VirtualQSizeGrip* self, QEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSizeGrip::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_resizeEvent(VirtualQSizeGrip* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSizeGrip::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_closeEvent(VirtualQSizeGrip* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSizeGrip::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_contextMenuEvent(VirtualQSizeGrip* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSizeGrip::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_tabletEvent(VirtualQSizeGrip* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSizeGrip::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_actionEvent(VirtualQSizeGrip* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSizeGrip::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_dragEnterEvent(VirtualQSizeGrip* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSizeGrip::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_dragMoveEvent(VirtualQSizeGrip* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSizeGrip::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_dragLeaveEvent(VirtualQSizeGrip* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSizeGrip::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_dropEvent(VirtualQSizeGrip* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSizeGrip::nativeEvent(eventType, message, result);
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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QSizeGrip_virtualbase_nativeEvent(VirtualQSizeGrip* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSizeGrip::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_changeEvent(VirtualQSizeGrip* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSizeGrip::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSizeGrip_virtualbase_metric(const VirtualQSizeGrip* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSizeGrip::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_initPainter(const VirtualQSizeGrip* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSizeGrip::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSizeGrip_virtualbase_redirected(const VirtualQSizeGrip* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSizeGrip::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QSizeGrip_virtualbase_sharedPainter(const VirtualQSizeGrip* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSizeGrip::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_inputMethodEvent(VirtualQSizeGrip* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSizeGrip::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSizeGrip_virtualbase_inputMethodQuery(const VirtualQSizeGrip* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSizeGrip::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QSizeGrip_virtualbase_focusNextPrevChild(VirtualQSizeGrip* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSizeGrip::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_timerEvent(VirtualQSizeGrip* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSizeGrip::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_childEvent(VirtualQSizeGrip* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSizeGrip::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_customEvent(VirtualQSizeGrip* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSizeGrip::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_connectNotify(VirtualQSizeGrip* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSizeGrip::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSizeGrip_virtualbase_disconnectNotify(VirtualQSizeGrip* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSizeGrip_protectedbase_updateMicroFocus(VirtualQSizeGrip* self);
	friend void QSizeGrip_protectedbase_create(VirtualQSizeGrip* self);
	friend void QSizeGrip_protectedbase_destroy(VirtualQSizeGrip* self);
	friend bool QSizeGrip_protectedbase_focusNextChild(VirtualQSizeGrip* self);
	friend bool QSizeGrip_protectedbase_focusPreviousChild(VirtualQSizeGrip* self);
	friend QObject* QSizeGrip_protectedbase_sender(const VirtualQSizeGrip* self);
	friend int QSizeGrip_protectedbase_senderSignalIndex(const VirtualQSizeGrip* self);
	friend int QSizeGrip_protectedbase_receivers(const VirtualQSizeGrip* self, const char* signal);
	friend bool QSizeGrip_protectedbase_isSignalConnected(const VirtualQSizeGrip* self, QMetaMethod* signal);
};

VirtualQSizeGrip* QSizeGrip_new(const QSizeGrip_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQSizeGrip(vtbl, vdata, parent);
}

void QSizeGrip_virtbase(QSizeGrip* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QSizeGrip_metaObject(const QSizeGrip* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSizeGrip_metacast(QSizeGrip* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSizeGrip_metacall(QSizeGrip* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSizeGrip_tr(const char* s) {
	QString _ret = QSizeGrip::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QSizeGrip_sizeHint(const QSizeGrip* self) {
	return new QSize(self->sizeHint());
}

void QSizeGrip_setVisible(QSizeGrip* self, bool visible) {
	self->setVisible(visible);
}

struct miqt_string QSizeGrip_tr2(const char* s, const char* c) {
	QString _ret = QSizeGrip::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSizeGrip_tr3(const char* s, const char* c, int n) {
	QString _ret = QSizeGrip::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSizeGrip_virtualbase_metaObject(const VirtualQSizeGrip* self) {

	return (QMetaObject*) self->QSizeGrip::metaObject();
}

void* QSizeGrip_virtualbase_metacast(VirtualQSizeGrip* self, const char* param1) {

	return self->QSizeGrip::qt_metacast(param1);
}

int QSizeGrip_virtualbase_metacall(VirtualQSizeGrip* self, int param1, int param2, void** param3) {

	return self->QSizeGrip::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QSizeGrip_virtualbase_sizeHint(const VirtualQSizeGrip* self) {

	return new QSize(self->QSizeGrip::sizeHint());
}

void QSizeGrip_virtualbase_setVisible(VirtualQSizeGrip* self, bool visible) {

	self->QSizeGrip::setVisible(visible);
}

void QSizeGrip_virtualbase_paintEvent(VirtualQSizeGrip* self, QPaintEvent* param1) {

	self->QSizeGrip::paintEvent(param1);
}

void QSizeGrip_virtualbase_mousePressEvent(VirtualQSizeGrip* self, QMouseEvent* param1) {

	self->QSizeGrip::mousePressEvent(param1);
}

void QSizeGrip_virtualbase_mouseMoveEvent(VirtualQSizeGrip* self, QMouseEvent* param1) {

	self->QSizeGrip::mouseMoveEvent(param1);
}

void QSizeGrip_virtualbase_mouseReleaseEvent(VirtualQSizeGrip* self, QMouseEvent* mouseEvent) {

	self->QSizeGrip::mouseReleaseEvent(mouseEvent);
}

void QSizeGrip_virtualbase_moveEvent(VirtualQSizeGrip* self, QMoveEvent* moveEvent) {

	self->QSizeGrip::moveEvent(moveEvent);
}

void QSizeGrip_virtualbase_showEvent(VirtualQSizeGrip* self, QShowEvent* showEvent) {

	self->QSizeGrip::showEvent(showEvent);
}

void QSizeGrip_virtualbase_hideEvent(VirtualQSizeGrip* self, QHideEvent* hideEvent) {

	self->QSizeGrip::hideEvent(hideEvent);
}

bool QSizeGrip_virtualbase_eventFilter(VirtualQSizeGrip* self, QObject* param1, QEvent* param2) {

	return self->QSizeGrip::eventFilter(param1, param2);
}

bool QSizeGrip_virtualbase_event(VirtualQSizeGrip* self, QEvent* param1) {

	return self->QSizeGrip::event(param1);
}

int QSizeGrip_virtualbase_devType(const VirtualQSizeGrip* self) {

	return self->QSizeGrip::devType();
}

QSize* QSizeGrip_virtualbase_minimumSizeHint(const VirtualQSizeGrip* self) {

	return new QSize(self->QSizeGrip::minimumSizeHint());
}

int QSizeGrip_virtualbase_heightForWidth(const VirtualQSizeGrip* self, int param1) {

	return self->QSizeGrip::heightForWidth(static_cast<int>(param1));
}

bool QSizeGrip_virtualbase_hasHeightForWidth(const VirtualQSizeGrip* self) {

	return self->QSizeGrip::hasHeightForWidth();
}

QPaintEngine* QSizeGrip_virtualbase_paintEngine(const VirtualQSizeGrip* self) {

	return self->QSizeGrip::paintEngine();
}

void QSizeGrip_virtualbase_mouseDoubleClickEvent(VirtualQSizeGrip* self, QMouseEvent* event) {

	self->QSizeGrip::mouseDoubleClickEvent(event);
}

void QSizeGrip_virtualbase_wheelEvent(VirtualQSizeGrip* self, QWheelEvent* event) {

	self->QSizeGrip::wheelEvent(event);
}

void QSizeGrip_virtualbase_keyPressEvent(VirtualQSizeGrip* self, QKeyEvent* event) {

	self->QSizeGrip::keyPressEvent(event);
}

void QSizeGrip_virtualbase_keyReleaseEvent(VirtualQSizeGrip* self, QKeyEvent* event) {

	self->QSizeGrip::keyReleaseEvent(event);
}

void QSizeGrip_virtualbase_focusInEvent(VirtualQSizeGrip* self, QFocusEvent* event) {

	self->QSizeGrip::focusInEvent(event);
}

void QSizeGrip_virtualbase_focusOutEvent(VirtualQSizeGrip* self, QFocusEvent* event) {

	self->QSizeGrip::focusOutEvent(event);
}

void QSizeGrip_virtualbase_enterEvent(VirtualQSizeGrip* self, QEnterEvent* event) {

	self->QSizeGrip::enterEvent(event);
}

void QSizeGrip_virtualbase_leaveEvent(VirtualQSizeGrip* self, QEvent* event) {

	self->QSizeGrip::leaveEvent(event);
}

void QSizeGrip_virtualbase_resizeEvent(VirtualQSizeGrip* self, QResizeEvent* event) {

	self->QSizeGrip::resizeEvent(event);
}

void QSizeGrip_virtualbase_closeEvent(VirtualQSizeGrip* self, QCloseEvent* event) {

	self->QSizeGrip::closeEvent(event);
}

void QSizeGrip_virtualbase_contextMenuEvent(VirtualQSizeGrip* self, QContextMenuEvent* event) {

	self->QSizeGrip::contextMenuEvent(event);
}

void QSizeGrip_virtualbase_tabletEvent(VirtualQSizeGrip* self, QTabletEvent* event) {

	self->QSizeGrip::tabletEvent(event);
}

void QSizeGrip_virtualbase_actionEvent(VirtualQSizeGrip* self, QActionEvent* event) {

	self->QSizeGrip::actionEvent(event);
}

void QSizeGrip_virtualbase_dragEnterEvent(VirtualQSizeGrip* self, QDragEnterEvent* event) {

	self->QSizeGrip::dragEnterEvent(event);
}

void QSizeGrip_virtualbase_dragMoveEvent(VirtualQSizeGrip* self, QDragMoveEvent* event) {

	self->QSizeGrip::dragMoveEvent(event);
}

void QSizeGrip_virtualbase_dragLeaveEvent(VirtualQSizeGrip* self, QDragLeaveEvent* event) {

	self->QSizeGrip::dragLeaveEvent(event);
}

void QSizeGrip_virtualbase_dropEvent(VirtualQSizeGrip* self, QDropEvent* event) {

	self->QSizeGrip::dropEvent(event);
}

bool QSizeGrip_virtualbase_nativeEvent(VirtualQSizeGrip* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QSizeGrip::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QSizeGrip_virtualbase_changeEvent(VirtualQSizeGrip* self, QEvent* param1) {

	self->QSizeGrip::changeEvent(param1);
}

int QSizeGrip_virtualbase_metric(const VirtualQSizeGrip* self, int param1) {

	return self->QSizeGrip::metric(static_cast<VirtualQSizeGrip::PaintDeviceMetric>(param1));
}

void QSizeGrip_virtualbase_initPainter(const VirtualQSizeGrip* self, QPainter* painter) {

	self->QSizeGrip::initPainter(painter);
}

QPaintDevice* QSizeGrip_virtualbase_redirected(const VirtualQSizeGrip* self, QPoint* offset) {

	return self->QSizeGrip::redirected(offset);
}

QPainter* QSizeGrip_virtualbase_sharedPainter(const VirtualQSizeGrip* self) {

	return self->QSizeGrip::sharedPainter();
}

void QSizeGrip_virtualbase_inputMethodEvent(VirtualQSizeGrip* self, QInputMethodEvent* param1) {

	self->QSizeGrip::inputMethodEvent(param1);
}

QVariant* QSizeGrip_virtualbase_inputMethodQuery(const VirtualQSizeGrip* self, int param1) {

	return new QVariant(self->QSizeGrip::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QSizeGrip_virtualbase_focusNextPrevChild(VirtualQSizeGrip* self, bool next) {

	return self->QSizeGrip::focusNextPrevChild(next);
}

void QSizeGrip_virtualbase_timerEvent(VirtualQSizeGrip* self, QTimerEvent* event) {

	self->QSizeGrip::timerEvent(event);
}

void QSizeGrip_virtualbase_childEvent(VirtualQSizeGrip* self, QChildEvent* event) {

	self->QSizeGrip::childEvent(event);
}

void QSizeGrip_virtualbase_customEvent(VirtualQSizeGrip* self, QEvent* event) {

	self->QSizeGrip::customEvent(event);
}

void QSizeGrip_virtualbase_connectNotify(VirtualQSizeGrip* self, QMetaMethod* signal) {

	self->QSizeGrip::connectNotify(*signal);
}

void QSizeGrip_virtualbase_disconnectNotify(VirtualQSizeGrip* self, QMetaMethod* signal) {

	self->QSizeGrip::disconnectNotify(*signal);
}

const QMetaObject* QSizeGrip_staticMetaObject() { return &QSizeGrip::staticMetaObject; }

const QSizeGrip_VTable* QSizeGrip_vtbl(const VirtualQSizeGrip* self) { return self->vtbl; }
void* QSizeGrip_vdata(const VirtualQSizeGrip* self) { return self->vdata; }
void QSizeGrip_setVdata(VirtualQSizeGrip* self, void* vdata) { self->vdata = vdata; }

void QSizeGrip_protectedbase_updateMicroFocus(VirtualQSizeGrip* self) {
	self->updateMicroFocus();
}

void QSizeGrip_protectedbase_create(VirtualQSizeGrip* self) {
	self->create();
}

void QSizeGrip_protectedbase_destroy(VirtualQSizeGrip* self) {
	self->destroy();
}

bool QSizeGrip_protectedbase_focusNextChild(VirtualQSizeGrip* self) {
	return self->focusNextChild();
}

bool QSizeGrip_protectedbase_focusPreviousChild(VirtualQSizeGrip* self) {
	return self->focusPreviousChild();
}

QObject* QSizeGrip_protectedbase_sender(const VirtualQSizeGrip* self) {
	return self->sender();
}

int QSizeGrip_protectedbase_senderSignalIndex(const VirtualQSizeGrip* self) {
	return self->senderSignalIndex();
}

int QSizeGrip_protectedbase_receivers(const VirtualQSizeGrip* self, const char* signal) {
	return self->receivers(signal);
}

bool QSizeGrip_protectedbase_isSignalConnected(const VirtualQSizeGrip* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSizeGrip_delete(QSizeGrip* self) {
	delete self;
}

