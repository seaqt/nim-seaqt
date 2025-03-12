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
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QVideoSink>
#include <QVideoWidget>
#include <QWheelEvent>
#include <QWidget>
#include <qvideowidget.h>
#include "gen_qvideowidget.h"
class VirtualQVideoWidget final : public QVideoWidget {
	const QVideoWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QVideoWidget_VTable* QVideoWidget_vtbl(const VirtualQVideoWidget* self);
	friend void* QVideoWidget_vdata(const VirtualQVideoWidget* self);
	friend void QVideoWidget_setVdata(VirtualQVideoWidget* self, void* vdata);

	VirtualQVideoWidget(const QVideoWidget_VTable* vtbl, void* vdata, QWidget* parent): QVideoWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQVideoWidget(const QVideoWidget_VTable* vtbl, void* vdata): QVideoWidget(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQVideoWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVideoWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QVideoWidget_virtualbase_metaObject(const VirtualQVideoWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVideoWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QVideoWidget_virtualbase_metacast(VirtualQVideoWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVideoWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoWidget_virtualbase_metacall(VirtualQVideoWidget* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QVideoWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QVideoWidget_virtualbase_sizeHint(const VirtualQVideoWidget* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVideoWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QVideoWidget_virtualbase_event(VirtualQVideoWidget* self, QEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QVideoWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_showEvent(VirtualQVideoWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QVideoWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_hideEvent(VirtualQVideoWidget* self, QHideEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QVideoWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_resizeEvent(VirtualQVideoWidget* self, QResizeEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QVideoWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_moveEvent(VirtualQVideoWidget* self, QMoveEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QVideoWidget::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoWidget_virtualbase_devType(const VirtualQVideoWidget* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QVideoWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_setVisible(VirtualQVideoWidget* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QVideoWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QVideoWidget_virtualbase_minimumSizeHint(const VirtualQVideoWidget* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QVideoWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoWidget_virtualbase_heightForWidth(const VirtualQVideoWidget* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QVideoWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QVideoWidget_virtualbase_hasHeightForWidth(const VirtualQVideoWidget* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QVideoWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QVideoWidget_virtualbase_paintEngine(const VirtualQVideoWidget* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QVideoWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_mousePressEvent(VirtualQVideoWidget* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QVideoWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_mouseReleaseEvent(VirtualQVideoWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QVideoWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_mouseDoubleClickEvent(VirtualQVideoWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QVideoWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_mouseMoveEvent(VirtualQVideoWidget* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QVideoWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_wheelEvent(VirtualQVideoWidget* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QVideoWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_keyPressEvent(VirtualQVideoWidget* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QVideoWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_keyReleaseEvent(VirtualQVideoWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QVideoWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_focusInEvent(VirtualQVideoWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QVideoWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_focusOutEvent(VirtualQVideoWidget* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QVideoWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_enterEvent(VirtualQVideoWidget* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QVideoWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_leaveEvent(VirtualQVideoWidget* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QVideoWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_paintEvent(VirtualQVideoWidget* self, QPaintEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QVideoWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_closeEvent(VirtualQVideoWidget* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QVideoWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_contextMenuEvent(VirtualQVideoWidget* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QVideoWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_tabletEvent(VirtualQVideoWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QVideoWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_actionEvent(VirtualQVideoWidget* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QVideoWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_dragEnterEvent(VirtualQVideoWidget* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QVideoWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_dragMoveEvent(VirtualQVideoWidget* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QVideoWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_dragLeaveEvent(VirtualQVideoWidget* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QVideoWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_dropEvent(VirtualQVideoWidget* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QVideoWidget::nativeEvent(eventType, message, result);
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

	friend bool QVideoWidget_virtualbase_nativeEvent(VirtualQVideoWidget* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QVideoWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_changeEvent(VirtualQVideoWidget* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QVideoWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoWidget_virtualbase_metric(const VirtualQVideoWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QVideoWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_initPainter(const VirtualQVideoWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QVideoWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QVideoWidget_virtualbase_redirected(const VirtualQVideoWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QVideoWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QVideoWidget_virtualbase_sharedPainter(const VirtualQVideoWidget* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QVideoWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_inputMethodEvent(VirtualQVideoWidget* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QVideoWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QVideoWidget_virtualbase_inputMethodQuery(const VirtualQVideoWidget* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QVideoWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QVideoWidget_virtualbase_focusNextPrevChild(VirtualQVideoWidget* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVideoWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QVideoWidget_virtualbase_eventFilter(VirtualQVideoWidget* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVideoWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_timerEvent(VirtualQVideoWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QVideoWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_childEvent(VirtualQVideoWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVideoWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_customEvent(VirtualQVideoWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVideoWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_connectNotify(VirtualQVideoWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVideoWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QVideoWidget_virtualbase_disconnectNotify(VirtualQVideoWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QVideoWidget_protectedbase_updateMicroFocus(VirtualQVideoWidget* self);
	friend void QVideoWidget_protectedbase_create(VirtualQVideoWidget* self);
	friend void QVideoWidget_protectedbase_destroy(VirtualQVideoWidget* self);
	friend bool QVideoWidget_protectedbase_focusNextChild(VirtualQVideoWidget* self);
	friend bool QVideoWidget_protectedbase_focusPreviousChild(VirtualQVideoWidget* self);
	friend QObject* QVideoWidget_protectedbase_sender(const VirtualQVideoWidget* self);
	friend int QVideoWidget_protectedbase_senderSignalIndex(const VirtualQVideoWidget* self);
	friend int QVideoWidget_protectedbase_receivers(const VirtualQVideoWidget* self, const char* signal);
	friend bool QVideoWidget_protectedbase_isSignalConnected(const VirtualQVideoWidget* self, QMetaMethod* signal);
};

VirtualQVideoWidget* QVideoWidget_new(const QVideoWidget_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQVideoWidget(vtbl, vdata, parent);
}

VirtualQVideoWidget* QVideoWidget_new2(const QVideoWidget_VTable* vtbl, void* vdata) {
	return new VirtualQVideoWidget(vtbl, vdata);
}

void QVideoWidget_virtbase(QVideoWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QVideoWidget_metaObject(const QVideoWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVideoWidget_metacast(QVideoWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVideoWidget_metacall(QVideoWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QVideoWidget_tr(const char* s) {
	QString _ret = QVideoWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVideoSink* QVideoWidget_videoSink(const QVideoWidget* self) {
	return self->videoSink();
}

int QVideoWidget_aspectRatioMode(const QVideoWidget* self) {
	Qt::AspectRatioMode _ret = self->aspectRatioMode();
	return static_cast<int>(_ret);
}

QSize* QVideoWidget_sizeHint(const QVideoWidget* self) {
	return new QSize(self->sizeHint());
}

void QVideoWidget_setFullScreen(QVideoWidget* self, bool fullScreen) {
	self->setFullScreen(fullScreen);
}

void QVideoWidget_setAspectRatioMode(QVideoWidget* self, int mode) {
	self->setAspectRatioMode(static_cast<Qt::AspectRatioMode>(mode));
}

void QVideoWidget_fullScreenChanged(QVideoWidget* self, bool fullScreen) {
	self->fullScreenChanged(fullScreen);
}

void QVideoWidget_connect_fullScreenChanged(VirtualQVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool fullScreen) {
			bool sigval1 = fullScreen;
			callback(slot, sigval1);
		}
	};
	VirtualQVideoWidget::connect(self, static_cast<void (QVideoWidget::*)(bool)>(&QVideoWidget::fullScreenChanged), self, local_caller{slot, callback, release});
}

void QVideoWidget_aspectRatioModeChanged(QVideoWidget* self, int mode) {
	self->aspectRatioModeChanged(static_cast<Qt::AspectRatioMode>(mode));
}

void QVideoWidget_connect_aspectRatioModeChanged(VirtualQVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::AspectRatioMode mode) {
			Qt::AspectRatioMode mode_ret = mode;
			int sigval1 = static_cast<int>(mode_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQVideoWidget::connect(self, static_cast<void (QVideoWidget::*)(Qt::AspectRatioMode)>(&QVideoWidget::aspectRatioModeChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QVideoWidget_tr2(const char* s, const char* c) {
	QString _ret = QVideoWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QVideoWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QVideoWidget_virtualbase_metaObject(const VirtualQVideoWidget* self) {

	return (QMetaObject*) self->QVideoWidget::metaObject();
}

void* QVideoWidget_virtualbase_metacast(VirtualQVideoWidget* self, const char* param1) {

	return self->QVideoWidget::qt_metacast(param1);
}

int QVideoWidget_virtualbase_metacall(VirtualQVideoWidget* self, int param1, int param2, void** param3) {

	return self->QVideoWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QVideoWidget_virtualbase_sizeHint(const VirtualQVideoWidget* self) {

	return new QSize(self->QVideoWidget::sizeHint());
}

bool QVideoWidget_virtualbase_event(VirtualQVideoWidget* self, QEvent* event) {

	return self->QVideoWidget::event(event);
}

void QVideoWidget_virtualbase_showEvent(VirtualQVideoWidget* self, QShowEvent* event) {

	self->QVideoWidget::showEvent(event);
}

void QVideoWidget_virtualbase_hideEvent(VirtualQVideoWidget* self, QHideEvent* event) {

	self->QVideoWidget::hideEvent(event);
}

void QVideoWidget_virtualbase_resizeEvent(VirtualQVideoWidget* self, QResizeEvent* event) {

	self->QVideoWidget::resizeEvent(event);
}

void QVideoWidget_virtualbase_moveEvent(VirtualQVideoWidget* self, QMoveEvent* event) {

	self->QVideoWidget::moveEvent(event);
}

int QVideoWidget_virtualbase_devType(const VirtualQVideoWidget* self) {

	return self->QVideoWidget::devType();
}

void QVideoWidget_virtualbase_setVisible(VirtualQVideoWidget* self, bool visible) {

	self->QVideoWidget::setVisible(visible);
}

QSize* QVideoWidget_virtualbase_minimumSizeHint(const VirtualQVideoWidget* self) {

	return new QSize(self->QVideoWidget::minimumSizeHint());
}

int QVideoWidget_virtualbase_heightForWidth(const VirtualQVideoWidget* self, int param1) {

	return self->QVideoWidget::heightForWidth(static_cast<int>(param1));
}

bool QVideoWidget_virtualbase_hasHeightForWidth(const VirtualQVideoWidget* self) {

	return self->QVideoWidget::hasHeightForWidth();
}

QPaintEngine* QVideoWidget_virtualbase_paintEngine(const VirtualQVideoWidget* self) {

	return self->QVideoWidget::paintEngine();
}

void QVideoWidget_virtualbase_mousePressEvent(VirtualQVideoWidget* self, QMouseEvent* event) {

	self->QVideoWidget::mousePressEvent(event);
}

void QVideoWidget_virtualbase_mouseReleaseEvent(VirtualQVideoWidget* self, QMouseEvent* event) {

	self->QVideoWidget::mouseReleaseEvent(event);
}

void QVideoWidget_virtualbase_mouseDoubleClickEvent(VirtualQVideoWidget* self, QMouseEvent* event) {

	self->QVideoWidget::mouseDoubleClickEvent(event);
}

void QVideoWidget_virtualbase_mouseMoveEvent(VirtualQVideoWidget* self, QMouseEvent* event) {

	self->QVideoWidget::mouseMoveEvent(event);
}

void QVideoWidget_virtualbase_wheelEvent(VirtualQVideoWidget* self, QWheelEvent* event) {

	self->QVideoWidget::wheelEvent(event);
}

void QVideoWidget_virtualbase_keyPressEvent(VirtualQVideoWidget* self, QKeyEvent* event) {

	self->QVideoWidget::keyPressEvent(event);
}

void QVideoWidget_virtualbase_keyReleaseEvent(VirtualQVideoWidget* self, QKeyEvent* event) {

	self->QVideoWidget::keyReleaseEvent(event);
}

void QVideoWidget_virtualbase_focusInEvent(VirtualQVideoWidget* self, QFocusEvent* event) {

	self->QVideoWidget::focusInEvent(event);
}

void QVideoWidget_virtualbase_focusOutEvent(VirtualQVideoWidget* self, QFocusEvent* event) {

	self->QVideoWidget::focusOutEvent(event);
}

void QVideoWidget_virtualbase_enterEvent(VirtualQVideoWidget* self, QEnterEvent* event) {

	self->QVideoWidget::enterEvent(event);
}

void QVideoWidget_virtualbase_leaveEvent(VirtualQVideoWidget* self, QEvent* event) {

	self->QVideoWidget::leaveEvent(event);
}

void QVideoWidget_virtualbase_paintEvent(VirtualQVideoWidget* self, QPaintEvent* event) {

	self->QVideoWidget::paintEvent(event);
}

void QVideoWidget_virtualbase_closeEvent(VirtualQVideoWidget* self, QCloseEvent* event) {

	self->QVideoWidget::closeEvent(event);
}

void QVideoWidget_virtualbase_contextMenuEvent(VirtualQVideoWidget* self, QContextMenuEvent* event) {

	self->QVideoWidget::contextMenuEvent(event);
}

void QVideoWidget_virtualbase_tabletEvent(VirtualQVideoWidget* self, QTabletEvent* event) {

	self->QVideoWidget::tabletEvent(event);
}

void QVideoWidget_virtualbase_actionEvent(VirtualQVideoWidget* self, QActionEvent* event) {

	self->QVideoWidget::actionEvent(event);
}

void QVideoWidget_virtualbase_dragEnterEvent(VirtualQVideoWidget* self, QDragEnterEvent* event) {

	self->QVideoWidget::dragEnterEvent(event);
}

void QVideoWidget_virtualbase_dragMoveEvent(VirtualQVideoWidget* self, QDragMoveEvent* event) {

	self->QVideoWidget::dragMoveEvent(event);
}

void QVideoWidget_virtualbase_dragLeaveEvent(VirtualQVideoWidget* self, QDragLeaveEvent* event) {

	self->QVideoWidget::dragLeaveEvent(event);
}

void QVideoWidget_virtualbase_dropEvent(VirtualQVideoWidget* self, QDropEvent* event) {

	self->QVideoWidget::dropEvent(event);
}

bool QVideoWidget_virtualbase_nativeEvent(VirtualQVideoWidget* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QVideoWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QVideoWidget_virtualbase_changeEvent(VirtualQVideoWidget* self, QEvent* param1) {

	self->QVideoWidget::changeEvent(param1);
}

int QVideoWidget_virtualbase_metric(const VirtualQVideoWidget* self, int param1) {

	return self->QVideoWidget::metric(static_cast<VirtualQVideoWidget::PaintDeviceMetric>(param1));
}

void QVideoWidget_virtualbase_initPainter(const VirtualQVideoWidget* self, QPainter* painter) {

	self->QVideoWidget::initPainter(painter);
}

QPaintDevice* QVideoWidget_virtualbase_redirected(const VirtualQVideoWidget* self, QPoint* offset) {

	return self->QVideoWidget::redirected(offset);
}

QPainter* QVideoWidget_virtualbase_sharedPainter(const VirtualQVideoWidget* self) {

	return self->QVideoWidget::sharedPainter();
}

void QVideoWidget_virtualbase_inputMethodEvent(VirtualQVideoWidget* self, QInputMethodEvent* param1) {

	self->QVideoWidget::inputMethodEvent(param1);
}

QVariant* QVideoWidget_virtualbase_inputMethodQuery(const VirtualQVideoWidget* self, int param1) {

	return new QVariant(self->QVideoWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QVideoWidget_virtualbase_focusNextPrevChild(VirtualQVideoWidget* self, bool next) {

	return self->QVideoWidget::focusNextPrevChild(next);
}

bool QVideoWidget_virtualbase_eventFilter(VirtualQVideoWidget* self, QObject* watched, QEvent* event) {

	return self->QVideoWidget::eventFilter(watched, event);
}

void QVideoWidget_virtualbase_timerEvent(VirtualQVideoWidget* self, QTimerEvent* event) {

	self->QVideoWidget::timerEvent(event);
}

void QVideoWidget_virtualbase_childEvent(VirtualQVideoWidget* self, QChildEvent* event) {

	self->QVideoWidget::childEvent(event);
}

void QVideoWidget_virtualbase_customEvent(VirtualQVideoWidget* self, QEvent* event) {

	self->QVideoWidget::customEvent(event);
}

void QVideoWidget_virtualbase_connectNotify(VirtualQVideoWidget* self, QMetaMethod* signal) {

	self->QVideoWidget::connectNotify(*signal);
}

void QVideoWidget_virtualbase_disconnectNotify(VirtualQVideoWidget* self, QMetaMethod* signal) {

	self->QVideoWidget::disconnectNotify(*signal);
}

const QMetaObject* QVideoWidget_staticMetaObject() { return &QVideoWidget::staticMetaObject; }

const QVideoWidget_VTable* QVideoWidget_vtbl(const VirtualQVideoWidget* self) { return self->vtbl; }
void* QVideoWidget_vdata(const VirtualQVideoWidget* self) { return self->vdata; }
void QVideoWidget_setVdata(VirtualQVideoWidget* self, void* vdata) { self->vdata = vdata; }

void QVideoWidget_protectedbase_updateMicroFocus(VirtualQVideoWidget* self) {
	self->updateMicroFocus();
}

void QVideoWidget_protectedbase_create(VirtualQVideoWidget* self) {
	self->create();
}

void QVideoWidget_protectedbase_destroy(VirtualQVideoWidget* self) {
	self->destroy();
}

bool QVideoWidget_protectedbase_focusNextChild(VirtualQVideoWidget* self) {
	return self->focusNextChild();
}

bool QVideoWidget_protectedbase_focusPreviousChild(VirtualQVideoWidget* self) {
	return self->focusPreviousChild();
}

QObject* QVideoWidget_protectedbase_sender(const VirtualQVideoWidget* self) {
	return self->sender();
}

int QVideoWidget_protectedbase_senderSignalIndex(const VirtualQVideoWidget* self) {
	return self->senderSignalIndex();
}

int QVideoWidget_protectedbase_receivers(const VirtualQVideoWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QVideoWidget_protectedbase_isSignalConnected(const VirtualQVideoWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QVideoWidget_delete(QVideoWidget* self) {
	delete self;
}

