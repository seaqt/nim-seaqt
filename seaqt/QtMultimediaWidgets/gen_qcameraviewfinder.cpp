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
class VirtualQCameraViewfinder final : public QCameraViewfinder {
	const QCameraViewfinder_VTable* vtbl;
	void* vdata;
public:
	friend const QCameraViewfinder_VTable* QCameraViewfinder_vtbl(const VirtualQCameraViewfinder* self);
	friend void* QCameraViewfinder_vdata(const VirtualQCameraViewfinder* self);
	friend void QCameraViewfinder_setVdata(VirtualQCameraViewfinder* self, void* vdata);

	VirtualQCameraViewfinder(const QCameraViewfinder_VTable* vtbl, void* vdata, QWidget* parent): QCameraViewfinder(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQCameraViewfinder(const QCameraViewfinder_VTable* vtbl, void* vdata): QCameraViewfinder(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQCameraViewfinder() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCameraViewfinder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QCameraViewfinder_virtualbase_metaObject(const VirtualQCameraViewfinder* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCameraViewfinder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QCameraViewfinder_virtualbase_metacast(VirtualQCameraViewfinder* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCameraViewfinder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCameraViewfinder_virtualbase_metacall(VirtualQCameraViewfinder* self, int param1, int param2, void** param3);

	virtual QMediaObject* mediaObject() const override {
		if (vtbl->mediaObject == 0) {
			return QCameraViewfinder::mediaObject();
		}


		QMediaObject* callback_return_value = vtbl->mediaObject(this);

		return callback_return_value;
	}

	friend QMediaObject* QCameraViewfinder_virtualbase_mediaObject(const VirtualQCameraViewfinder* self);

	virtual bool setMediaObject(QMediaObject* object) override {
		if (vtbl->setMediaObject == 0) {
			return QCameraViewfinder::setMediaObject(object);
		}

		QMediaObject* sigval1 = object;

		bool callback_return_value = vtbl->setMediaObject(this, sigval1);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_setMediaObject(VirtualQCameraViewfinder* self, QMediaObject* object);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCameraViewfinder::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QCameraViewfinder_virtualbase_sizeHint(const VirtualQCameraViewfinder* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QCameraViewfinder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_event(VirtualQCameraViewfinder* self, QEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCameraViewfinder::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_showEvent(VirtualQCameraViewfinder* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCameraViewfinder::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_hideEvent(VirtualQCameraViewfinder* self, QHideEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCameraViewfinder::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_resizeEvent(VirtualQCameraViewfinder* self, QResizeEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCameraViewfinder::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_moveEvent(VirtualQCameraViewfinder* self, QMoveEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QCameraViewfinder::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_paintEvent(VirtualQCameraViewfinder* self, QPaintEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCameraViewfinder::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QCameraViewfinder_virtualbase_devType(const VirtualQCameraViewfinder* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCameraViewfinder::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_setVisible(VirtualQCameraViewfinder* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCameraViewfinder::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QCameraViewfinder_virtualbase_minimumSizeHint(const VirtualQCameraViewfinder* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCameraViewfinder::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCameraViewfinder_virtualbase_heightForWidth(const VirtualQCameraViewfinder* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCameraViewfinder::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_hasHeightForWidth(const VirtualQCameraViewfinder* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCameraViewfinder::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QCameraViewfinder_virtualbase_paintEngine(const VirtualQCameraViewfinder* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QCameraViewfinder::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_mousePressEvent(VirtualQCameraViewfinder* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCameraViewfinder::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_mouseReleaseEvent(VirtualQCameraViewfinder* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCameraViewfinder::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_mouseDoubleClickEvent(VirtualQCameraViewfinder* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCameraViewfinder::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_mouseMoveEvent(VirtualQCameraViewfinder* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCameraViewfinder::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_wheelEvent(VirtualQCameraViewfinder* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QCameraViewfinder::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_keyPressEvent(VirtualQCameraViewfinder* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCameraViewfinder::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_keyReleaseEvent(VirtualQCameraViewfinder* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QCameraViewfinder::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_focusInEvent(VirtualQCameraViewfinder* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QCameraViewfinder::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_focusOutEvent(VirtualQCameraViewfinder* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCameraViewfinder::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_enterEvent(VirtualQCameraViewfinder* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCameraViewfinder::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_leaveEvent(VirtualQCameraViewfinder* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCameraViewfinder::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_closeEvent(VirtualQCameraViewfinder* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCameraViewfinder::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_contextMenuEvent(VirtualQCameraViewfinder* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCameraViewfinder::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_tabletEvent(VirtualQCameraViewfinder* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCameraViewfinder::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_actionEvent(VirtualQCameraViewfinder* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCameraViewfinder::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_dragEnterEvent(VirtualQCameraViewfinder* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCameraViewfinder::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_dragMoveEvent(VirtualQCameraViewfinder* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCameraViewfinder::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_dragLeaveEvent(VirtualQCameraViewfinder* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCameraViewfinder::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_dropEvent(VirtualQCameraViewfinder* self, QDropEvent* event);

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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_nativeEvent(VirtualQCameraViewfinder* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QCameraViewfinder::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_changeEvent(VirtualQCameraViewfinder* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCameraViewfinder::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCameraViewfinder_virtualbase_metric(const VirtualQCameraViewfinder* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCameraViewfinder::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_initPainter(const VirtualQCameraViewfinder* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCameraViewfinder::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QCameraViewfinder_virtualbase_redirected(const VirtualQCameraViewfinder* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCameraViewfinder::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QCameraViewfinder_virtualbase_sharedPainter(const VirtualQCameraViewfinder* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCameraViewfinder::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_inputMethodEvent(VirtualQCameraViewfinder* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCameraViewfinder::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QCameraViewfinder_virtualbase_inputMethodQuery(const VirtualQCameraViewfinder* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCameraViewfinder::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_focusNextPrevChild(VirtualQCameraViewfinder* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCameraViewfinder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCameraViewfinder_virtualbase_eventFilter(VirtualQCameraViewfinder* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCameraViewfinder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_timerEvent(VirtualQCameraViewfinder* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCameraViewfinder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_childEvent(VirtualQCameraViewfinder* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCameraViewfinder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_customEvent(VirtualQCameraViewfinder* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCameraViewfinder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_connectNotify(VirtualQCameraViewfinder* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCameraViewfinder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QCameraViewfinder_virtualbase_disconnectNotify(VirtualQCameraViewfinder* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QCameraViewfinder_protectedbase_updateMicroFocus(VirtualQCameraViewfinder* self);
	friend void QCameraViewfinder_protectedbase_create(VirtualQCameraViewfinder* self);
	friend void QCameraViewfinder_protectedbase_destroy(VirtualQCameraViewfinder* self);
	friend bool QCameraViewfinder_protectedbase_focusNextChild(VirtualQCameraViewfinder* self);
	friend bool QCameraViewfinder_protectedbase_focusPreviousChild(VirtualQCameraViewfinder* self);
	friend QObject* QCameraViewfinder_protectedbase_sender(const VirtualQCameraViewfinder* self);
	friend int QCameraViewfinder_protectedbase_senderSignalIndex(const VirtualQCameraViewfinder* self);
	friend int QCameraViewfinder_protectedbase_receivers(const VirtualQCameraViewfinder* self, const char* signal);
	friend bool QCameraViewfinder_protectedbase_isSignalConnected(const VirtualQCameraViewfinder* self, QMetaMethod* signal);
};

VirtualQCameraViewfinder* QCameraViewfinder_new(const QCameraViewfinder_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQCameraViewfinder(vtbl, vdata, parent);
}

VirtualQCameraViewfinder* QCameraViewfinder_new2(const QCameraViewfinder_VTable* vtbl, void* vdata) {
	return new VirtualQCameraViewfinder(vtbl, vdata);
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

QMetaObject* QCameraViewfinder_virtualbase_metaObject(const VirtualQCameraViewfinder* self) {

	return (QMetaObject*) self->QCameraViewfinder::metaObject();
}

void* QCameraViewfinder_virtualbase_metacast(VirtualQCameraViewfinder* self, const char* param1) {

	return self->QCameraViewfinder::qt_metacast(param1);
}

int QCameraViewfinder_virtualbase_metacall(VirtualQCameraViewfinder* self, int param1, int param2, void** param3) {

	return self->QCameraViewfinder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QMediaObject* QCameraViewfinder_virtualbase_mediaObject(const VirtualQCameraViewfinder* self) {

	return self->QCameraViewfinder::mediaObject();
}

bool QCameraViewfinder_virtualbase_setMediaObject(VirtualQCameraViewfinder* self, QMediaObject* object) {

	return self->QCameraViewfinder::setMediaObject(object);
}

QSize* QCameraViewfinder_virtualbase_sizeHint(const VirtualQCameraViewfinder* self) {

	return new QSize(self->QCameraViewfinder::sizeHint());
}

bool QCameraViewfinder_virtualbase_event(VirtualQCameraViewfinder* self, QEvent* event) {

	return self->QCameraViewfinder::event(event);
}

void QCameraViewfinder_virtualbase_showEvent(VirtualQCameraViewfinder* self, QShowEvent* event) {

	self->QCameraViewfinder::showEvent(event);
}

void QCameraViewfinder_virtualbase_hideEvent(VirtualQCameraViewfinder* self, QHideEvent* event) {

	self->QCameraViewfinder::hideEvent(event);
}

void QCameraViewfinder_virtualbase_resizeEvent(VirtualQCameraViewfinder* self, QResizeEvent* event) {

	self->QCameraViewfinder::resizeEvent(event);
}

void QCameraViewfinder_virtualbase_moveEvent(VirtualQCameraViewfinder* self, QMoveEvent* event) {

	self->QCameraViewfinder::moveEvent(event);
}

void QCameraViewfinder_virtualbase_paintEvent(VirtualQCameraViewfinder* self, QPaintEvent* event) {

	self->QCameraViewfinder::paintEvent(event);
}

int QCameraViewfinder_virtualbase_devType(const VirtualQCameraViewfinder* self) {

	return self->QCameraViewfinder::devType();
}

void QCameraViewfinder_virtualbase_setVisible(VirtualQCameraViewfinder* self, bool visible) {

	self->QCameraViewfinder::setVisible(visible);
}

QSize* QCameraViewfinder_virtualbase_minimumSizeHint(const VirtualQCameraViewfinder* self) {

	return new QSize(self->QCameraViewfinder::minimumSizeHint());
}

int QCameraViewfinder_virtualbase_heightForWidth(const VirtualQCameraViewfinder* self, int param1) {

	return self->QCameraViewfinder::heightForWidth(static_cast<int>(param1));
}

bool QCameraViewfinder_virtualbase_hasHeightForWidth(const VirtualQCameraViewfinder* self) {

	return self->QCameraViewfinder::hasHeightForWidth();
}

QPaintEngine* QCameraViewfinder_virtualbase_paintEngine(const VirtualQCameraViewfinder* self) {

	return self->QCameraViewfinder::paintEngine();
}

void QCameraViewfinder_virtualbase_mousePressEvent(VirtualQCameraViewfinder* self, QMouseEvent* event) {

	self->QCameraViewfinder::mousePressEvent(event);
}

void QCameraViewfinder_virtualbase_mouseReleaseEvent(VirtualQCameraViewfinder* self, QMouseEvent* event) {

	self->QCameraViewfinder::mouseReleaseEvent(event);
}

void QCameraViewfinder_virtualbase_mouseDoubleClickEvent(VirtualQCameraViewfinder* self, QMouseEvent* event) {

	self->QCameraViewfinder::mouseDoubleClickEvent(event);
}

void QCameraViewfinder_virtualbase_mouseMoveEvent(VirtualQCameraViewfinder* self, QMouseEvent* event) {

	self->QCameraViewfinder::mouseMoveEvent(event);
}

void QCameraViewfinder_virtualbase_wheelEvent(VirtualQCameraViewfinder* self, QWheelEvent* event) {

	self->QCameraViewfinder::wheelEvent(event);
}

void QCameraViewfinder_virtualbase_keyPressEvent(VirtualQCameraViewfinder* self, QKeyEvent* event) {

	self->QCameraViewfinder::keyPressEvent(event);
}

void QCameraViewfinder_virtualbase_keyReleaseEvent(VirtualQCameraViewfinder* self, QKeyEvent* event) {

	self->QCameraViewfinder::keyReleaseEvent(event);
}

void QCameraViewfinder_virtualbase_focusInEvent(VirtualQCameraViewfinder* self, QFocusEvent* event) {

	self->QCameraViewfinder::focusInEvent(event);
}

void QCameraViewfinder_virtualbase_focusOutEvent(VirtualQCameraViewfinder* self, QFocusEvent* event) {

	self->QCameraViewfinder::focusOutEvent(event);
}

void QCameraViewfinder_virtualbase_enterEvent(VirtualQCameraViewfinder* self, QEvent* event) {

	self->QCameraViewfinder::enterEvent(event);
}

void QCameraViewfinder_virtualbase_leaveEvent(VirtualQCameraViewfinder* self, QEvent* event) {

	self->QCameraViewfinder::leaveEvent(event);
}

void QCameraViewfinder_virtualbase_closeEvent(VirtualQCameraViewfinder* self, QCloseEvent* event) {

	self->QCameraViewfinder::closeEvent(event);
}

void QCameraViewfinder_virtualbase_contextMenuEvent(VirtualQCameraViewfinder* self, QContextMenuEvent* event) {

	self->QCameraViewfinder::contextMenuEvent(event);
}

void QCameraViewfinder_virtualbase_tabletEvent(VirtualQCameraViewfinder* self, QTabletEvent* event) {

	self->QCameraViewfinder::tabletEvent(event);
}

void QCameraViewfinder_virtualbase_actionEvent(VirtualQCameraViewfinder* self, QActionEvent* event) {

	self->QCameraViewfinder::actionEvent(event);
}

void QCameraViewfinder_virtualbase_dragEnterEvent(VirtualQCameraViewfinder* self, QDragEnterEvent* event) {

	self->QCameraViewfinder::dragEnterEvent(event);
}

void QCameraViewfinder_virtualbase_dragMoveEvent(VirtualQCameraViewfinder* self, QDragMoveEvent* event) {

	self->QCameraViewfinder::dragMoveEvent(event);
}

void QCameraViewfinder_virtualbase_dragLeaveEvent(VirtualQCameraViewfinder* self, QDragLeaveEvent* event) {

	self->QCameraViewfinder::dragLeaveEvent(event);
}

void QCameraViewfinder_virtualbase_dropEvent(VirtualQCameraViewfinder* self, QDropEvent* event) {

	self->QCameraViewfinder::dropEvent(event);
}

bool QCameraViewfinder_virtualbase_nativeEvent(VirtualQCameraViewfinder* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QCameraViewfinder::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QCameraViewfinder_virtualbase_changeEvent(VirtualQCameraViewfinder* self, QEvent* param1) {

	self->QCameraViewfinder::changeEvent(param1);
}

int QCameraViewfinder_virtualbase_metric(const VirtualQCameraViewfinder* self, int param1) {

	return self->QCameraViewfinder::metric(static_cast<VirtualQCameraViewfinder::PaintDeviceMetric>(param1));
}

void QCameraViewfinder_virtualbase_initPainter(const VirtualQCameraViewfinder* self, QPainter* painter) {

	self->QCameraViewfinder::initPainter(painter);
}

QPaintDevice* QCameraViewfinder_virtualbase_redirected(const VirtualQCameraViewfinder* self, QPoint* offset) {

	return self->QCameraViewfinder::redirected(offset);
}

QPainter* QCameraViewfinder_virtualbase_sharedPainter(const VirtualQCameraViewfinder* self) {

	return self->QCameraViewfinder::sharedPainter();
}

void QCameraViewfinder_virtualbase_inputMethodEvent(VirtualQCameraViewfinder* self, QInputMethodEvent* param1) {

	self->QCameraViewfinder::inputMethodEvent(param1);
}

QVariant* QCameraViewfinder_virtualbase_inputMethodQuery(const VirtualQCameraViewfinder* self, int param1) {

	return new QVariant(self->QCameraViewfinder::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QCameraViewfinder_virtualbase_focusNextPrevChild(VirtualQCameraViewfinder* self, bool next) {

	return self->QCameraViewfinder::focusNextPrevChild(next);
}

bool QCameraViewfinder_virtualbase_eventFilter(VirtualQCameraViewfinder* self, QObject* watched, QEvent* event) {

	return self->QCameraViewfinder::eventFilter(watched, event);
}

void QCameraViewfinder_virtualbase_timerEvent(VirtualQCameraViewfinder* self, QTimerEvent* event) {

	self->QCameraViewfinder::timerEvent(event);
}

void QCameraViewfinder_virtualbase_childEvent(VirtualQCameraViewfinder* self, QChildEvent* event) {

	self->QCameraViewfinder::childEvent(event);
}

void QCameraViewfinder_virtualbase_customEvent(VirtualQCameraViewfinder* self, QEvent* event) {

	self->QCameraViewfinder::customEvent(event);
}

void QCameraViewfinder_virtualbase_connectNotify(VirtualQCameraViewfinder* self, QMetaMethod* signal) {

	self->QCameraViewfinder::connectNotify(*signal);
}

void QCameraViewfinder_virtualbase_disconnectNotify(VirtualQCameraViewfinder* self, QMetaMethod* signal) {

	self->QCameraViewfinder::disconnectNotify(*signal);
}

const QMetaObject* QCameraViewfinder_staticMetaObject() { return &QCameraViewfinder::staticMetaObject; }

const QCameraViewfinder_VTable* QCameraViewfinder_vtbl(const VirtualQCameraViewfinder* self) { return self->vtbl; }
void* QCameraViewfinder_vdata(const VirtualQCameraViewfinder* self) { return self->vdata; }
void QCameraViewfinder_setVdata(VirtualQCameraViewfinder* self, void* vdata) { self->vdata = vdata; }

void QCameraViewfinder_protectedbase_updateMicroFocus(VirtualQCameraViewfinder* self) {
	self->updateMicroFocus();
}

void QCameraViewfinder_protectedbase_create(VirtualQCameraViewfinder* self) {
	self->create();
}

void QCameraViewfinder_protectedbase_destroy(VirtualQCameraViewfinder* self) {
	self->destroy();
}

bool QCameraViewfinder_protectedbase_focusNextChild(VirtualQCameraViewfinder* self) {
	return self->focusNextChild();
}

bool QCameraViewfinder_protectedbase_focusPreviousChild(VirtualQCameraViewfinder* self) {
	return self->focusPreviousChild();
}

QObject* QCameraViewfinder_protectedbase_sender(const VirtualQCameraViewfinder* self) {
	return self->sender();
}

int QCameraViewfinder_protectedbase_senderSignalIndex(const VirtualQCameraViewfinder* self) {
	return self->senderSignalIndex();
}

int QCameraViewfinder_protectedbase_receivers(const VirtualQCameraViewfinder* self, const char* signal) {
	return self->receivers(signal);
}

bool QCameraViewfinder_protectedbase_isSignalConnected(const VirtualQCameraViewfinder* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QCameraViewfinder_delete(QCameraViewfinder* self) {
	delete self;
}

