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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQVideoWidget final : public QVideoWidget {
	struct QVideoWidget_VTable* vtbl;
public:

	VirtualQVideoWidget(struct QVideoWidget_VTable* vtbl, QWidget* parent): QVideoWidget(parent), vtbl(vtbl) {};
	VirtualQVideoWidget(struct QVideoWidget_VTable* vtbl): QVideoWidget(), vtbl(vtbl) {};

	virtual ~VirtualQVideoWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVideoWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QVideoWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVideoWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QVideoWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVideoWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QVideoWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QVideoWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVideoWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QVideoWidget_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QVideoWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QVideoWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QVideoWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QVideoWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QVideoWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QVideoWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QVideoWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QVideoWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QVideoWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoWidget_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QVideoWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QVideoWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QVideoWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QVideoWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QVideoWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QVideoWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QVideoWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QVideoWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QVideoWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QVideoWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QVideoWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QVideoWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QVideoWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QVideoWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QVideoWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QVideoWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QVideoWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QVideoWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QVideoWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QVideoWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QVideoWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QVideoWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QVideoWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QVideoWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
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

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QVideoWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QVideoWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QVideoWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVideoWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QVideoWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QVideoWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QVideoWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QVideoWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QVideoWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QVideoWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QVideoWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QVideoWidget_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QVideoWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QVideoWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVideoWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QVideoWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVideoWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QVideoWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVideoWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVideoWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVideoWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QVideoWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QVideoWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QVideoWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QVideoWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QVideoWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QVideoWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QVideoWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QVideoWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QVideoWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QVideoWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QVideoWidget* QVideoWidget_new(struct QVideoWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQVideoWidget(vtbl, parent);
}

QVideoWidget* QVideoWidget_new2(struct QVideoWidget_VTable* vtbl) {
	return new VirtualQVideoWidget(vtbl);
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

void QVideoWidget_connect_fullScreenChanged(QVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
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

void QVideoWidget_connect_aspectRatioModeChanged(QVideoWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

QMetaObject* QVideoWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQVideoWidget*)(self) )->QVideoWidget::metaObject();

}

void* QVideoWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQVideoWidget*)(self) )->QVideoWidget::qt_metacast(param1);

}

int QVideoWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQVideoWidget*)(self) )->QVideoWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QVideoWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQVideoWidget*)(self) )->QVideoWidget::sizeHint());

}

bool QVideoWidget_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQVideoWidget*)(self) )->QVideoWidget::event(event);

}

void QVideoWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::showEvent(event);

}

void QVideoWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::hideEvent(event);

}

void QVideoWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::resizeEvent(event);

}

void QVideoWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::moveEvent(event);

}

int QVideoWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQVideoWidget*)(self) )->QVideoWidget::devType();

}

void QVideoWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::setVisible(visible);

}

QSize* QVideoWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQVideoWidget*)(self) )->QVideoWidget::minimumSizeHint());

}

int QVideoWidget_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQVideoWidget*)(self) )->QVideoWidget::heightForWidth(static_cast<int>(param1));

}

bool QVideoWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQVideoWidget*)(self) )->QVideoWidget::hasHeightForWidth();

}

QPaintEngine* QVideoWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQVideoWidget*)(self) )->QVideoWidget::paintEngine();

}

void QVideoWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::mousePressEvent(event);

}

void QVideoWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::mouseReleaseEvent(event);

}

void QVideoWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::mouseDoubleClickEvent(event);

}

void QVideoWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::mouseMoveEvent(event);

}

void QVideoWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::wheelEvent(event);

}

void QVideoWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::keyPressEvent(event);

}

void QVideoWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::keyReleaseEvent(event);

}

void QVideoWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::focusInEvent(event);

}

void QVideoWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::focusOutEvent(event);

}

void QVideoWidget_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::enterEvent(event);

}

void QVideoWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::leaveEvent(event);

}

void QVideoWidget_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::paintEvent(event);

}

void QVideoWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::closeEvent(event);

}

void QVideoWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::contextMenuEvent(event);

}

void QVideoWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::tabletEvent(event);

}

void QVideoWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::actionEvent(event);

}

void QVideoWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::dragEnterEvent(event);

}

void QVideoWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::dragMoveEvent(event);

}

void QVideoWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::dragLeaveEvent(event);

}

void QVideoWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::dropEvent(event);

}

bool QVideoWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQVideoWidget*)(self) )->QVideoWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

void QVideoWidget_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::changeEvent(param1);

}

int QVideoWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQVideoWidget*)(self) )->QVideoWidget::metric(static_cast<VirtualQVideoWidget::PaintDeviceMetric>(param1));

}

void QVideoWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQVideoWidget*)(self) )->QVideoWidget::initPainter(painter);

}

QPaintDevice* QVideoWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQVideoWidget*)(self) )->QVideoWidget::redirected(offset);

}

QPainter* QVideoWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQVideoWidget*)(self) )->QVideoWidget::sharedPainter();

}

void QVideoWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::inputMethodEvent(param1);

}

QVariant* QVideoWidget_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQVideoWidget*)(self) )->QVideoWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QVideoWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQVideoWidget*)(self) )->QVideoWidget::focusNextPrevChild(next);

}

bool QVideoWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQVideoWidget*)(self) )->QVideoWidget::eventFilter(watched, event);

}

void QVideoWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::timerEvent(event);

}

void QVideoWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::childEvent(event);

}

void QVideoWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::customEvent(event);

}

void QVideoWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::connectNotify(*signal);

}

void QVideoWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQVideoWidget*)(self) )->QVideoWidget::disconnectNotify(*signal);

}

const QMetaObject* QVideoWidget_staticMetaObject() { return &QVideoWidget::staticMetaObject; }
void QVideoWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQVideoWidget* self_cast = dynamic_cast<VirtualQVideoWidget*>( (QVideoWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QVideoWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQVideoWidget* self_cast = dynamic_cast<VirtualQVideoWidget*>( (QVideoWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QVideoWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQVideoWidget* self_cast = dynamic_cast<VirtualQVideoWidget*>( (QVideoWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QVideoWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQVideoWidget* self_cast = dynamic_cast<VirtualQVideoWidget*>( (QVideoWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QVideoWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQVideoWidget* self_cast = dynamic_cast<VirtualQVideoWidget*>( (QVideoWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QVideoWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQVideoWidget* self_cast = dynamic_cast<VirtualQVideoWidget*>( (QVideoWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QVideoWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQVideoWidget* self_cast = dynamic_cast<VirtualQVideoWidget*>( (QVideoWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QVideoWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQVideoWidget* self_cast = dynamic_cast<VirtualQVideoWidget*>( (QVideoWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QVideoWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQVideoWidget* self_cast = dynamic_cast<VirtualQVideoWidget*>( (QVideoWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QVideoWidget_delete(QVideoWidget* self) {
	delete self;
}

