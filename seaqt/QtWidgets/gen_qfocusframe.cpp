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
#include <QFocusFrame>
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
#include <QStyleOption>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qfocusframe.h>
#include "gen_qfocusframe.h"
class VirtualQFocusFrame final : public QFocusFrame {
	const QFocusFrame_VTable* vtbl;
	void* vdata;
public:
	friend const QFocusFrame_VTable* QFocusFrame_vtbl(const VirtualQFocusFrame* self);
	friend void* QFocusFrame_vdata(const VirtualQFocusFrame* self);
	friend void QFocusFrame_setVdata(VirtualQFocusFrame* self, void* vdata);

	VirtualQFocusFrame(const QFocusFrame_VTable* vtbl, void* vdata, QWidget* parent): QFocusFrame(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQFocusFrame(const QFocusFrame_VTable* vtbl, void* vdata): QFocusFrame(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFocusFrame() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFocusFrame::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QFocusFrame_virtualbase_metaObject(const VirtualQFocusFrame* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFocusFrame::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QFocusFrame_virtualbase_metacast(VirtualQFocusFrame* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFocusFrame::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFocusFrame_virtualbase_metacall(VirtualQFocusFrame* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QFocusFrame::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QFocusFrame_virtualbase_event(VirtualQFocusFrame* self, QEvent* e);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QFocusFrame::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFocusFrame_virtualbase_eventFilter(VirtualQFocusFrame* self, QObject* param1, QEvent* param2);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QFocusFrame::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_paintEvent(VirtualQFocusFrame* self, QPaintEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFocusFrame::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFocusFrame_virtualbase_devType(const VirtualQFocusFrame* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFocusFrame::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_setVisible(VirtualQFocusFrame* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFocusFrame::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFocusFrame_virtualbase_sizeHint(const VirtualQFocusFrame* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFocusFrame::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFocusFrame_virtualbase_minimumSizeHint(const VirtualQFocusFrame* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFocusFrame::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFocusFrame_virtualbase_heightForWidth(const VirtualQFocusFrame* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFocusFrame::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QFocusFrame_virtualbase_hasHeightForWidth(const VirtualQFocusFrame* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFocusFrame::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QFocusFrame_virtualbase_paintEngine(const VirtualQFocusFrame* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QFocusFrame::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_mousePressEvent(VirtualQFocusFrame* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFocusFrame::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_mouseReleaseEvent(VirtualQFocusFrame* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFocusFrame::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_mouseDoubleClickEvent(VirtualQFocusFrame* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFocusFrame::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_mouseMoveEvent(VirtualQFocusFrame* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QFocusFrame::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_wheelEvent(VirtualQFocusFrame* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QFocusFrame::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_keyPressEvent(VirtualQFocusFrame* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFocusFrame::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_keyReleaseEvent(VirtualQFocusFrame* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QFocusFrame::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_focusInEvent(VirtualQFocusFrame* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QFocusFrame::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_focusOutEvent(VirtualQFocusFrame* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFocusFrame::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_enterEvent(VirtualQFocusFrame* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFocusFrame::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_leaveEvent(VirtualQFocusFrame* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFocusFrame::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_moveEvent(VirtualQFocusFrame* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QFocusFrame::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_resizeEvent(VirtualQFocusFrame* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QFocusFrame::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_closeEvent(VirtualQFocusFrame* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QFocusFrame::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_contextMenuEvent(VirtualQFocusFrame* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFocusFrame::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_tabletEvent(VirtualQFocusFrame* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFocusFrame::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_actionEvent(VirtualQFocusFrame* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFocusFrame::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_dragEnterEvent(VirtualQFocusFrame* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFocusFrame::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_dragMoveEvent(VirtualQFocusFrame* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFocusFrame::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_dragLeaveEvent(VirtualQFocusFrame* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFocusFrame::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_dropEvent(VirtualQFocusFrame* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QFocusFrame::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_showEvent(VirtualQFocusFrame* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QFocusFrame::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_hideEvent(VirtualQFocusFrame* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFocusFrame::nativeEvent(eventType, message, result);
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

	friend bool QFocusFrame_virtualbase_nativeEvent(VirtualQFocusFrame* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QFocusFrame::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_changeEvent(VirtualQFocusFrame* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFocusFrame::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFocusFrame_virtualbase_metric(const VirtualQFocusFrame* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFocusFrame::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_initPainter(const VirtualQFocusFrame* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFocusFrame::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QFocusFrame_virtualbase_redirected(const VirtualQFocusFrame* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFocusFrame::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QFocusFrame_virtualbase_sharedPainter(const VirtualQFocusFrame* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFocusFrame::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_inputMethodEvent(VirtualQFocusFrame* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFocusFrame::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QFocusFrame_virtualbase_inputMethodQuery(const VirtualQFocusFrame* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFocusFrame::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QFocusFrame_virtualbase_focusNextPrevChild(VirtualQFocusFrame* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFocusFrame::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_timerEvent(VirtualQFocusFrame* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFocusFrame::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_childEvent(VirtualQFocusFrame* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFocusFrame::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_customEvent(VirtualQFocusFrame* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFocusFrame::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_connectNotify(VirtualQFocusFrame* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFocusFrame::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QFocusFrame_virtualbase_disconnectNotify(VirtualQFocusFrame* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QFocusFrame_protectedbase_initStyleOption(const VirtualQFocusFrame* self, QStyleOption* option);
	friend void QFocusFrame_protectedbase_updateMicroFocus(VirtualQFocusFrame* self);
	friend void QFocusFrame_protectedbase_create(VirtualQFocusFrame* self);
	friend void QFocusFrame_protectedbase_destroy(VirtualQFocusFrame* self);
	friend bool QFocusFrame_protectedbase_focusNextChild(VirtualQFocusFrame* self);
	friend bool QFocusFrame_protectedbase_focusPreviousChild(VirtualQFocusFrame* self);
	friend QObject* QFocusFrame_protectedbase_sender(const VirtualQFocusFrame* self);
	friend int QFocusFrame_protectedbase_senderSignalIndex(const VirtualQFocusFrame* self);
	friend int QFocusFrame_protectedbase_receivers(const VirtualQFocusFrame* self, const char* signal);
	friend bool QFocusFrame_protectedbase_isSignalConnected(const VirtualQFocusFrame* self, QMetaMethod* signal);
};

VirtualQFocusFrame* QFocusFrame_new(const QFocusFrame_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQFocusFrame(vtbl, vdata, parent);
}

VirtualQFocusFrame* QFocusFrame_new2(const QFocusFrame_VTable* vtbl, void* vdata) {
	return new VirtualQFocusFrame(vtbl, vdata);
}

void QFocusFrame_virtbase(QFocusFrame* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QFocusFrame_metaObject(const QFocusFrame* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFocusFrame_metacast(QFocusFrame* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFocusFrame_metacall(QFocusFrame* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFocusFrame_tr(const char* s) {
	QString _ret = QFocusFrame::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFocusFrame_trUtf8(const char* s) {
	QString _ret = QFocusFrame::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFocusFrame_setWidget(QFocusFrame* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QFocusFrame_widget(const QFocusFrame* self) {
	return self->widget();
}

struct miqt_string QFocusFrame_tr2(const char* s, const char* c) {
	QString _ret = QFocusFrame::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFocusFrame_tr3(const char* s, const char* c, int n) {
	QString _ret = QFocusFrame::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFocusFrame_trUtf82(const char* s, const char* c) {
	QString _ret = QFocusFrame::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFocusFrame_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QFocusFrame::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFocusFrame_virtualbase_metaObject(const VirtualQFocusFrame* self) {

	return (QMetaObject*) self->QFocusFrame::metaObject();
}

void* QFocusFrame_virtualbase_metacast(VirtualQFocusFrame* self, const char* param1) {

	return self->QFocusFrame::qt_metacast(param1);
}

int QFocusFrame_virtualbase_metacall(VirtualQFocusFrame* self, int param1, int param2, void** param3) {

	return self->QFocusFrame::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QFocusFrame_virtualbase_event(VirtualQFocusFrame* self, QEvent* e) {

	return self->QFocusFrame::event(e);
}

bool QFocusFrame_virtualbase_eventFilter(VirtualQFocusFrame* self, QObject* param1, QEvent* param2) {

	return self->QFocusFrame::eventFilter(param1, param2);
}

void QFocusFrame_virtualbase_paintEvent(VirtualQFocusFrame* self, QPaintEvent* param1) {

	self->QFocusFrame::paintEvent(param1);
}

int QFocusFrame_virtualbase_devType(const VirtualQFocusFrame* self) {

	return self->QFocusFrame::devType();
}

void QFocusFrame_virtualbase_setVisible(VirtualQFocusFrame* self, bool visible) {

	self->QFocusFrame::setVisible(visible);
}

QSize* QFocusFrame_virtualbase_sizeHint(const VirtualQFocusFrame* self) {

	return new QSize(self->QFocusFrame::sizeHint());
}

QSize* QFocusFrame_virtualbase_minimumSizeHint(const VirtualQFocusFrame* self) {

	return new QSize(self->QFocusFrame::minimumSizeHint());
}

int QFocusFrame_virtualbase_heightForWidth(const VirtualQFocusFrame* self, int param1) {

	return self->QFocusFrame::heightForWidth(static_cast<int>(param1));
}

bool QFocusFrame_virtualbase_hasHeightForWidth(const VirtualQFocusFrame* self) {

	return self->QFocusFrame::hasHeightForWidth();
}

QPaintEngine* QFocusFrame_virtualbase_paintEngine(const VirtualQFocusFrame* self) {

	return self->QFocusFrame::paintEngine();
}

void QFocusFrame_virtualbase_mousePressEvent(VirtualQFocusFrame* self, QMouseEvent* event) {

	self->QFocusFrame::mousePressEvent(event);
}

void QFocusFrame_virtualbase_mouseReleaseEvent(VirtualQFocusFrame* self, QMouseEvent* event) {

	self->QFocusFrame::mouseReleaseEvent(event);
}

void QFocusFrame_virtualbase_mouseDoubleClickEvent(VirtualQFocusFrame* self, QMouseEvent* event) {

	self->QFocusFrame::mouseDoubleClickEvent(event);
}

void QFocusFrame_virtualbase_mouseMoveEvent(VirtualQFocusFrame* self, QMouseEvent* event) {

	self->QFocusFrame::mouseMoveEvent(event);
}

void QFocusFrame_virtualbase_wheelEvent(VirtualQFocusFrame* self, QWheelEvent* event) {

	self->QFocusFrame::wheelEvent(event);
}

void QFocusFrame_virtualbase_keyPressEvent(VirtualQFocusFrame* self, QKeyEvent* event) {

	self->QFocusFrame::keyPressEvent(event);
}

void QFocusFrame_virtualbase_keyReleaseEvent(VirtualQFocusFrame* self, QKeyEvent* event) {

	self->QFocusFrame::keyReleaseEvent(event);
}

void QFocusFrame_virtualbase_focusInEvent(VirtualQFocusFrame* self, QFocusEvent* event) {

	self->QFocusFrame::focusInEvent(event);
}

void QFocusFrame_virtualbase_focusOutEvent(VirtualQFocusFrame* self, QFocusEvent* event) {

	self->QFocusFrame::focusOutEvent(event);
}

void QFocusFrame_virtualbase_enterEvent(VirtualQFocusFrame* self, QEvent* event) {

	self->QFocusFrame::enterEvent(event);
}

void QFocusFrame_virtualbase_leaveEvent(VirtualQFocusFrame* self, QEvent* event) {

	self->QFocusFrame::leaveEvent(event);
}

void QFocusFrame_virtualbase_moveEvent(VirtualQFocusFrame* self, QMoveEvent* event) {

	self->QFocusFrame::moveEvent(event);
}

void QFocusFrame_virtualbase_resizeEvent(VirtualQFocusFrame* self, QResizeEvent* event) {

	self->QFocusFrame::resizeEvent(event);
}

void QFocusFrame_virtualbase_closeEvent(VirtualQFocusFrame* self, QCloseEvent* event) {

	self->QFocusFrame::closeEvent(event);
}

void QFocusFrame_virtualbase_contextMenuEvent(VirtualQFocusFrame* self, QContextMenuEvent* event) {

	self->QFocusFrame::contextMenuEvent(event);
}

void QFocusFrame_virtualbase_tabletEvent(VirtualQFocusFrame* self, QTabletEvent* event) {

	self->QFocusFrame::tabletEvent(event);
}

void QFocusFrame_virtualbase_actionEvent(VirtualQFocusFrame* self, QActionEvent* event) {

	self->QFocusFrame::actionEvent(event);
}

void QFocusFrame_virtualbase_dragEnterEvent(VirtualQFocusFrame* self, QDragEnterEvent* event) {

	self->QFocusFrame::dragEnterEvent(event);
}

void QFocusFrame_virtualbase_dragMoveEvent(VirtualQFocusFrame* self, QDragMoveEvent* event) {

	self->QFocusFrame::dragMoveEvent(event);
}

void QFocusFrame_virtualbase_dragLeaveEvent(VirtualQFocusFrame* self, QDragLeaveEvent* event) {

	self->QFocusFrame::dragLeaveEvent(event);
}

void QFocusFrame_virtualbase_dropEvent(VirtualQFocusFrame* self, QDropEvent* event) {

	self->QFocusFrame::dropEvent(event);
}

void QFocusFrame_virtualbase_showEvent(VirtualQFocusFrame* self, QShowEvent* event) {

	self->QFocusFrame::showEvent(event);
}

void QFocusFrame_virtualbase_hideEvent(VirtualQFocusFrame* self, QHideEvent* event) {

	self->QFocusFrame::hideEvent(event);
}

bool QFocusFrame_virtualbase_nativeEvent(VirtualQFocusFrame* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QFocusFrame::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QFocusFrame_virtualbase_changeEvent(VirtualQFocusFrame* self, QEvent* param1) {

	self->QFocusFrame::changeEvent(param1);
}

int QFocusFrame_virtualbase_metric(const VirtualQFocusFrame* self, int param1) {

	return self->QFocusFrame::metric(static_cast<VirtualQFocusFrame::PaintDeviceMetric>(param1));
}

void QFocusFrame_virtualbase_initPainter(const VirtualQFocusFrame* self, QPainter* painter) {

	self->QFocusFrame::initPainter(painter);
}

QPaintDevice* QFocusFrame_virtualbase_redirected(const VirtualQFocusFrame* self, QPoint* offset) {

	return self->QFocusFrame::redirected(offset);
}

QPainter* QFocusFrame_virtualbase_sharedPainter(const VirtualQFocusFrame* self) {

	return self->QFocusFrame::sharedPainter();
}

void QFocusFrame_virtualbase_inputMethodEvent(VirtualQFocusFrame* self, QInputMethodEvent* param1) {

	self->QFocusFrame::inputMethodEvent(param1);
}

QVariant* QFocusFrame_virtualbase_inputMethodQuery(const VirtualQFocusFrame* self, int param1) {

	return new QVariant(self->QFocusFrame::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QFocusFrame_virtualbase_focusNextPrevChild(VirtualQFocusFrame* self, bool next) {

	return self->QFocusFrame::focusNextPrevChild(next);
}

void QFocusFrame_virtualbase_timerEvent(VirtualQFocusFrame* self, QTimerEvent* event) {

	self->QFocusFrame::timerEvent(event);
}

void QFocusFrame_virtualbase_childEvent(VirtualQFocusFrame* self, QChildEvent* event) {

	self->QFocusFrame::childEvent(event);
}

void QFocusFrame_virtualbase_customEvent(VirtualQFocusFrame* self, QEvent* event) {

	self->QFocusFrame::customEvent(event);
}

void QFocusFrame_virtualbase_connectNotify(VirtualQFocusFrame* self, QMetaMethod* signal) {

	self->QFocusFrame::connectNotify(*signal);
}

void QFocusFrame_virtualbase_disconnectNotify(VirtualQFocusFrame* self, QMetaMethod* signal) {

	self->QFocusFrame::disconnectNotify(*signal);
}

const QMetaObject* QFocusFrame_staticMetaObject() { return &QFocusFrame::staticMetaObject; }

const QFocusFrame_VTable* QFocusFrame_vtbl(const VirtualQFocusFrame* self) { return self->vtbl; }
void* QFocusFrame_vdata(const VirtualQFocusFrame* self) { return self->vdata; }
void QFocusFrame_setVdata(VirtualQFocusFrame* self, void* vdata) { self->vdata = vdata; }

void QFocusFrame_protectedbase_initStyleOption(const VirtualQFocusFrame* self, QStyleOption* option) {
	self->initStyleOption(option);
}

void QFocusFrame_protectedbase_updateMicroFocus(VirtualQFocusFrame* self) {
	self->updateMicroFocus();
}

void QFocusFrame_protectedbase_create(VirtualQFocusFrame* self) {
	self->create();
}

void QFocusFrame_protectedbase_destroy(VirtualQFocusFrame* self) {
	self->destroy();
}

bool QFocusFrame_protectedbase_focusNextChild(VirtualQFocusFrame* self) {
	return self->focusNextChild();
}

bool QFocusFrame_protectedbase_focusPreviousChild(VirtualQFocusFrame* self) {
	return self->focusPreviousChild();
}

QObject* QFocusFrame_protectedbase_sender(const VirtualQFocusFrame* self) {
	return self->sender();
}

int QFocusFrame_protectedbase_senderSignalIndex(const VirtualQFocusFrame* self) {
	return self->senderSignalIndex();
}

int QFocusFrame_protectedbase_receivers(const VirtualQFocusFrame* self, const char* signal) {
	return self->receivers(signal);
}

bool QFocusFrame_protectedbase_isSignalConnected(const VirtualQFocusFrame* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QFocusFrame_delete(QFocusFrame* self) {
	delete self;
}

