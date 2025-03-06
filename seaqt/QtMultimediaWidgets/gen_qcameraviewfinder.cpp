#include <QActionEvent>
#include <QByteArray>
#include <QCameraViewfinder>
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
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMediaBindableInterface>
#include <QMediaObject>
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
#include <QVideoWidget>
#include <QWheelEvent>
#include <QWidget>
#include <qcameraviewfinder.h>
#include "gen_qcameraviewfinder.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQCameraViewfinder final : public QCameraViewfinder {
	struct QCameraViewfinder_VTable* vtbl;
public:

	VirtualQCameraViewfinder(struct QCameraViewfinder_VTable* vtbl, QWidget* parent): QCameraViewfinder(parent), vtbl(vtbl) {};
	VirtualQCameraViewfinder(struct QCameraViewfinder_VTable* vtbl): QCameraViewfinder(), vtbl(vtbl) {};

	virtual ~VirtualQCameraViewfinder() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCameraViewfinder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QCameraViewfinder_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCameraViewfinder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QCameraViewfinder_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCameraViewfinder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCameraViewfinder_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QMediaObject* mediaObject() const override {
		if (vtbl->mediaObject == 0) {
			return QCameraViewfinder::mediaObject();
		}


		QMediaObject* callback_return_value = vtbl->mediaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMediaObject* QCameraViewfinder_virtualbase_mediaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool setMediaObject(QMediaObject* object) override {
		if (vtbl->setMediaObject == 0) {
			return QCameraViewfinder::setMediaObject(object);
		}

		QMediaObject* sigval1 = object;

		bool callback_return_value = vtbl->setMediaObject(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_setMediaObject(void* self, QMediaObject* object);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCameraViewfinder::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QCameraViewfinder_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QCameraViewfinder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCameraViewfinder::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCameraViewfinder::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCameraViewfinder::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCameraViewfinder::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QCameraViewfinder::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCameraViewfinder::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QCameraViewfinder_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCameraViewfinder::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCameraViewfinder::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QCameraViewfinder_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCameraViewfinder::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCameraViewfinder_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCameraViewfinder::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCameraViewfinder::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QCameraViewfinder_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QCameraViewfinder::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCameraViewfinder::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCameraViewfinder::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCameraViewfinder::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCameraViewfinder::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QCameraViewfinder::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCameraViewfinder::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QCameraViewfinder::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QCameraViewfinder::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCameraViewfinder::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCameraViewfinder::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCameraViewfinder::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCameraViewfinder::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCameraViewfinder::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCameraViewfinder::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCameraViewfinder::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCameraViewfinder::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCameraViewfinder::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCameraViewfinder::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QCameraViewfinder::nativeEvent(eventType, message, result);
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

	friend bool QCameraViewfinder_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QCameraViewfinder::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCameraViewfinder::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCameraViewfinder_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCameraViewfinder::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCameraViewfinder::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QCameraViewfinder_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCameraViewfinder::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QCameraViewfinder_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCameraViewfinder::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCameraViewfinder::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QCameraViewfinder_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCameraViewfinder::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCameraViewfinder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCameraViewfinder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCameraViewfinder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCameraViewfinder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCameraViewfinder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCameraViewfinder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QCameraViewfinder_protectedbase_updateMicroFocus(void* self);
	friend void QCameraViewfinder_protectedbase_create(void* self);
	friend void QCameraViewfinder_protectedbase_destroy(void* self);
	friend bool QCameraViewfinder_protectedbase_focusNextChild(void* self);
	friend bool QCameraViewfinder_protectedbase_focusPreviousChild(void* self);
	friend QObject* QCameraViewfinder_protectedbase_sender(const void* self);
	friend int QCameraViewfinder_protectedbase_senderSignalIndex(const void* self);
	friend int QCameraViewfinder_protectedbase_receivers(const void* self, const char* signal);
	friend bool QCameraViewfinder_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QCameraViewfinder* QCameraViewfinder_new(struct QCameraViewfinder_VTable* vtbl, QWidget* parent) {
	return new VirtualQCameraViewfinder(vtbl, parent);
}

QCameraViewfinder* QCameraViewfinder_new2(struct QCameraViewfinder_VTable* vtbl) {
	return new VirtualQCameraViewfinder(vtbl);
}

void QCameraViewfinder_virtbase(QCameraViewfinder* src, QVideoWidget** outptr_QVideoWidget) {
	*outptr_QVideoWidget = static_cast<QVideoWidget*>(src);
}

QMetaObject* QCameraViewfinder_metaObject(const QCameraViewfinder* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCameraViewfinder_metacast(QCameraViewfinder* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCameraViewfinder_metacall(QCameraViewfinder* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCameraViewfinder_tr(const char* s) {
	QString _ret = QCameraViewfinder::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCameraViewfinder_trUtf8(const char* s) {
	QString _ret = QCameraViewfinder::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMediaObject* QCameraViewfinder_mediaObject(const QCameraViewfinder* self) {
	return self->mediaObject();
}

struct miqt_string QCameraViewfinder_tr2(const char* s, const char* c) {
	QString _ret = QCameraViewfinder::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCameraViewfinder_tr3(const char* s, const char* c, int n) {
	QString _ret = QCameraViewfinder::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCameraViewfinder_trUtf82(const char* s, const char* c) {
	QString _ret = QCameraViewfinder::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCameraViewfinder_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QCameraViewfinder::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QCameraViewfinder_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::metaObject();

}

void* QCameraViewfinder_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::qt_metacast(param1);

}

int QCameraViewfinder_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QMediaObject* QCameraViewfinder_virtualbase_mediaObject(const void* self) {

	return ( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::mediaObject();

}

bool QCameraViewfinder_virtualbase_setMediaObject(void* self, QMediaObject* object) {

	return ( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::setMediaObject(object);

}

QSize* QCameraViewfinder_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::sizeHint());

}

bool QCameraViewfinder_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::event(event);

}

void QCameraViewfinder_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::showEvent(event);

}

void QCameraViewfinder_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::hideEvent(event);

}

void QCameraViewfinder_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::resizeEvent(event);

}

void QCameraViewfinder_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::moveEvent(event);

}

void QCameraViewfinder_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::paintEvent(event);

}

int QCameraViewfinder_virtualbase_devType(const void* self) {

	return ( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::devType();

}

void QCameraViewfinder_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::setVisible(visible);

}

QSize* QCameraViewfinder_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::minimumSizeHint());

}

int QCameraViewfinder_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::heightForWidth(static_cast<int>(param1));

}

bool QCameraViewfinder_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::hasHeightForWidth();

}

QPaintEngine* QCameraViewfinder_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::paintEngine();

}

void QCameraViewfinder_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::mousePressEvent(event);

}

void QCameraViewfinder_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::mouseReleaseEvent(event);

}

void QCameraViewfinder_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::mouseDoubleClickEvent(event);

}

void QCameraViewfinder_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::mouseMoveEvent(event);

}

void QCameraViewfinder_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::wheelEvent(event);

}

void QCameraViewfinder_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::keyPressEvent(event);

}

void QCameraViewfinder_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::keyReleaseEvent(event);

}

void QCameraViewfinder_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::focusInEvent(event);

}

void QCameraViewfinder_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::focusOutEvent(event);

}

void QCameraViewfinder_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::enterEvent(event);

}

void QCameraViewfinder_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::leaveEvent(event);

}

void QCameraViewfinder_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::closeEvent(event);

}

void QCameraViewfinder_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::contextMenuEvent(event);

}

void QCameraViewfinder_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::tabletEvent(event);

}

void QCameraViewfinder_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::actionEvent(event);

}

void QCameraViewfinder_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::dragEnterEvent(event);

}

void QCameraViewfinder_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::dragMoveEvent(event);

}

void QCameraViewfinder_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::dragLeaveEvent(event);

}

void QCameraViewfinder_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::dropEvent(event);

}

bool QCameraViewfinder_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

void QCameraViewfinder_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::changeEvent(param1);

}

int QCameraViewfinder_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::metric(static_cast<VirtualQCameraViewfinder::PaintDeviceMetric>(param1));

}

void QCameraViewfinder_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::initPainter(painter);

}

QPaintDevice* QCameraViewfinder_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::redirected(offset);

}

QPainter* QCameraViewfinder_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::sharedPainter();

}

void QCameraViewfinder_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::inputMethodEvent(param1);

}

QVariant* QCameraViewfinder_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QCameraViewfinder_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::focusNextPrevChild(next);

}

bool QCameraViewfinder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::eventFilter(watched, event);

}

void QCameraViewfinder_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::timerEvent(event);

}

void QCameraViewfinder_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::childEvent(event);

}

void QCameraViewfinder_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::customEvent(event);

}

void QCameraViewfinder_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::connectNotify(*signal);

}

void QCameraViewfinder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCameraViewfinder*)(self) )->QCameraViewfinder::disconnectNotify(*signal);

}

const QMetaObject* QCameraViewfinder_staticMetaObject() { return &QCameraViewfinder::staticMetaObject; }
void QCameraViewfinder_protectedbase_updateMicroFocus(void* self) {
	VirtualQCameraViewfinder* self_cast = static_cast<VirtualQCameraViewfinder*>( (QCameraViewfinder*)(self) );
	
	self_cast->updateMicroFocus();

}

void QCameraViewfinder_protectedbase_create(void* self) {
	VirtualQCameraViewfinder* self_cast = static_cast<VirtualQCameraViewfinder*>( (QCameraViewfinder*)(self) );
	
	self_cast->create();

}

void QCameraViewfinder_protectedbase_destroy(void* self) {
	VirtualQCameraViewfinder* self_cast = static_cast<VirtualQCameraViewfinder*>( (QCameraViewfinder*)(self) );
	
	self_cast->destroy();

}

bool QCameraViewfinder_protectedbase_focusNextChild(void* self) {
	VirtualQCameraViewfinder* self_cast = static_cast<VirtualQCameraViewfinder*>( (QCameraViewfinder*)(self) );
	
	return self_cast->focusNextChild();

}

bool QCameraViewfinder_protectedbase_focusPreviousChild(void* self) {
	VirtualQCameraViewfinder* self_cast = static_cast<VirtualQCameraViewfinder*>( (QCameraViewfinder*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QCameraViewfinder_protectedbase_sender(const void* self) {
	VirtualQCameraViewfinder* self_cast = static_cast<VirtualQCameraViewfinder*>( (QCameraViewfinder*)(self) );
	
	return self_cast->sender();

}

int QCameraViewfinder_protectedbase_senderSignalIndex(const void* self) {
	VirtualQCameraViewfinder* self_cast = static_cast<VirtualQCameraViewfinder*>( (QCameraViewfinder*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QCameraViewfinder_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQCameraViewfinder* self_cast = static_cast<VirtualQCameraViewfinder*>( (QCameraViewfinder*)(self) );
	
	return self_cast->receivers(signal);

}

bool QCameraViewfinder_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQCameraViewfinder* self_cast = static_cast<VirtualQCameraViewfinder*>( (QCameraViewfinder*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QCameraViewfinder_delete(QCameraViewfinder* self) {
	delete self;
}

