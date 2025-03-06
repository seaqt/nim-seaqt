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
#include <QRect>
#include <QResizeEvent>
#include <QRubberBand>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionRubberBand>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qrubberband.h>
#include "gen_qrubberband.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQRubberBand final : public QRubberBand {
	struct QRubberBand_VTable* vtbl;
public:

	VirtualQRubberBand(struct QRubberBand_VTable* vtbl, QRubberBand::Shape param1): QRubberBand(param1), vtbl(vtbl) {};
	VirtualQRubberBand(struct QRubberBand_VTable* vtbl, QRubberBand::Shape param1, QWidget* param2): QRubberBand(param1, param2), vtbl(vtbl) {};

	virtual ~VirtualQRubberBand() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRubberBand::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QRubberBand_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRubberBand::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QRubberBand_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRubberBand::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRubberBand_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QRubberBand::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRubberBand_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QRubberBand::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QRubberBand::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QRubberBand::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QRubberBand::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* param1) override {
		if (vtbl->moveEvent == 0) {
			QRubberBand::moveEvent(param1);
			return;
		}

		QMoveEvent* sigval1 = param1;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_moveEvent(void* self, QMoveEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionRubberBand* option) const override {
		if (vtbl->initStyleOption == 0) {
			QRubberBand::initStyleOption(option);
			return;
		}

		QStyleOptionRubberBand* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_initStyleOption(const void* self, QStyleOptionRubberBand* option);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QRubberBand::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QRubberBand_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QRubberBand::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QRubberBand::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QRubberBand_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QRubberBand::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QRubberBand_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QRubberBand::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRubberBand_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QRubberBand::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QRubberBand_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QRubberBand::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QRubberBand_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QRubberBand::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QRubberBand::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QRubberBand::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QRubberBand::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QRubberBand::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QRubberBand::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QRubberBand::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QRubberBand::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QRubberBand::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QRubberBand::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QRubberBand::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QRubberBand::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QRubberBand::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QRubberBand::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QRubberBand::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QRubberBand::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QRubberBand::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QRubberBand::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QRubberBand::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QRubberBand::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QRubberBand::nativeEvent(eventType, message, result);
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

	friend bool QRubberBand_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QRubberBand::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRubberBand_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QRubberBand::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QRubberBand::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QRubberBand_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QRubberBand::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QRubberBand_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QRubberBand::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QRubberBand::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QRubberBand_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QRubberBand::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRubberBand_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRubberBand::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRubberBand_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRubberBand::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRubberBand::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRubberBand::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRubberBand::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRubberBand::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QRubberBand_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QRubberBand_protectedbase_updateMicroFocus(void* self);
	friend void QRubberBand_protectedbase_create(void* self);
	friend void QRubberBand_protectedbase_destroy(void* self);
	friend bool QRubberBand_protectedbase_focusNextChild(void* self);
	friend bool QRubberBand_protectedbase_focusPreviousChild(void* self);
	friend QObject* QRubberBand_protectedbase_sender(const void* self);
	friend int QRubberBand_protectedbase_senderSignalIndex(const void* self);
	friend int QRubberBand_protectedbase_receivers(const void* self, const char* signal);
	friend bool QRubberBand_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QRubberBand* QRubberBand_new(struct QRubberBand_VTable* vtbl, int param1) {
	return new VirtualQRubberBand(vtbl, static_cast<QRubberBand::Shape>(param1));
}

QRubberBand* QRubberBand_new2(struct QRubberBand_VTable* vtbl, int param1, QWidget* param2) {
	return new VirtualQRubberBand(vtbl, static_cast<QRubberBand::Shape>(param1), param2);
}

void QRubberBand_virtbase(QRubberBand* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QRubberBand_metaObject(const QRubberBand* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRubberBand_metacast(QRubberBand* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRubberBand_metacall(QRubberBand* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QRubberBand_tr(const char* s) {
	QString _ret = QRubberBand::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRubberBand_shape(const QRubberBand* self) {
	QRubberBand::Shape _ret = self->shape();
	return static_cast<int>(_ret);
}

void QRubberBand_setGeometry(QRubberBand* self, QRect* r) {
	self->setGeometry(*r);
}

void QRubberBand_setGeometry2(QRubberBand* self, int x, int y, int w, int h) {
	self->setGeometry(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QRubberBand_move(QRubberBand* self, int x, int y) {
	self->move(static_cast<int>(x), static_cast<int>(y));
}

void QRubberBand_moveWithQPoint(QRubberBand* self, QPoint* p) {
	self->move(*p);
}

void QRubberBand_resize(QRubberBand* self, int w, int h) {
	self->resize(static_cast<int>(w), static_cast<int>(h));
}

void QRubberBand_resizeWithQSize(QRubberBand* self, QSize* s) {
	self->resize(*s);
}

struct miqt_string QRubberBand_tr2(const char* s, const char* c) {
	QString _ret = QRubberBand::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRubberBand_tr3(const char* s, const char* c, int n) {
	QString _ret = QRubberBand::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QRubberBand_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQRubberBand*)(self) )->QRubberBand::metaObject();

}

void* QRubberBand_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQRubberBand*)(self) )->QRubberBand::qt_metacast(param1);

}

int QRubberBand_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQRubberBand*)(self) )->QRubberBand::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QRubberBand_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQRubberBand*)(self) )->QRubberBand::event(e);

}

void QRubberBand_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::paintEvent(param1);

}

void QRubberBand_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::changeEvent(param1);

}

void QRubberBand_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::showEvent(param1);

}

void QRubberBand_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::resizeEvent(param1);

}

void QRubberBand_virtualbase_moveEvent(void* self, QMoveEvent* param1) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::moveEvent(param1);

}

void QRubberBand_virtualbase_initStyleOption(const void* self, QStyleOptionRubberBand* option) {

	( (const VirtualQRubberBand*)(self) )->QRubberBand::initStyleOption(option);

}

int QRubberBand_virtualbase_devType(const void* self) {

	return ( (const VirtualQRubberBand*)(self) )->QRubberBand::devType();

}

void QRubberBand_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::setVisible(visible);

}

QSize* QRubberBand_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQRubberBand*)(self) )->QRubberBand::sizeHint());

}

QSize* QRubberBand_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQRubberBand*)(self) )->QRubberBand::minimumSizeHint());

}

int QRubberBand_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQRubberBand*)(self) )->QRubberBand::heightForWidth(static_cast<int>(param1));

}

bool QRubberBand_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQRubberBand*)(self) )->QRubberBand::hasHeightForWidth();

}

QPaintEngine* QRubberBand_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQRubberBand*)(self) )->QRubberBand::paintEngine();

}

void QRubberBand_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::mousePressEvent(event);

}

void QRubberBand_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::mouseReleaseEvent(event);

}

void QRubberBand_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::mouseDoubleClickEvent(event);

}

void QRubberBand_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::mouseMoveEvent(event);

}

void QRubberBand_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::wheelEvent(event);

}

void QRubberBand_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::keyPressEvent(event);

}

void QRubberBand_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::keyReleaseEvent(event);

}

void QRubberBand_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::focusInEvent(event);

}

void QRubberBand_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::focusOutEvent(event);

}

void QRubberBand_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::enterEvent(event);

}

void QRubberBand_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::leaveEvent(event);

}

void QRubberBand_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::closeEvent(event);

}

void QRubberBand_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::contextMenuEvent(event);

}

void QRubberBand_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::tabletEvent(event);

}

void QRubberBand_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::actionEvent(event);

}

void QRubberBand_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::dragEnterEvent(event);

}

void QRubberBand_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::dragMoveEvent(event);

}

void QRubberBand_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::dragLeaveEvent(event);

}

void QRubberBand_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::dropEvent(event);

}

void QRubberBand_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::hideEvent(event);

}

bool QRubberBand_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQRubberBand*)(self) )->QRubberBand::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QRubberBand_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQRubberBand*)(self) )->QRubberBand::metric(static_cast<VirtualQRubberBand::PaintDeviceMetric>(param1));

}

void QRubberBand_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQRubberBand*)(self) )->QRubberBand::initPainter(painter);

}

QPaintDevice* QRubberBand_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQRubberBand*)(self) )->QRubberBand::redirected(offset);

}

QPainter* QRubberBand_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQRubberBand*)(self) )->QRubberBand::sharedPainter();

}

void QRubberBand_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::inputMethodEvent(param1);

}

QVariant* QRubberBand_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQRubberBand*)(self) )->QRubberBand::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QRubberBand_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQRubberBand*)(self) )->QRubberBand::focusNextPrevChild(next);

}

bool QRubberBand_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQRubberBand*)(self) )->QRubberBand::eventFilter(watched, event);

}

void QRubberBand_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::timerEvent(event);

}

void QRubberBand_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::childEvent(event);

}

void QRubberBand_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::customEvent(event);

}

void QRubberBand_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::connectNotify(*signal);

}

void QRubberBand_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRubberBand*)(self) )->QRubberBand::disconnectNotify(*signal);

}

const QMetaObject* QRubberBand_staticMetaObject() { return &QRubberBand::staticMetaObject; }
void QRubberBand_protectedbase_updateMicroFocus(void* self) {
	VirtualQRubberBand* self_cast = static_cast<VirtualQRubberBand*>( (QRubberBand*)(self) );
	
	self_cast->updateMicroFocus();

}

void QRubberBand_protectedbase_create(void* self) {
	VirtualQRubberBand* self_cast = static_cast<VirtualQRubberBand*>( (QRubberBand*)(self) );
	
	self_cast->create();

}

void QRubberBand_protectedbase_destroy(void* self) {
	VirtualQRubberBand* self_cast = static_cast<VirtualQRubberBand*>( (QRubberBand*)(self) );
	
	self_cast->destroy();

}

bool QRubberBand_protectedbase_focusNextChild(void* self) {
	VirtualQRubberBand* self_cast = static_cast<VirtualQRubberBand*>( (QRubberBand*)(self) );
	
	return self_cast->focusNextChild();

}

bool QRubberBand_protectedbase_focusPreviousChild(void* self) {
	VirtualQRubberBand* self_cast = static_cast<VirtualQRubberBand*>( (QRubberBand*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QRubberBand_protectedbase_sender(const void* self) {
	VirtualQRubberBand* self_cast = static_cast<VirtualQRubberBand*>( (QRubberBand*)(self) );
	
	return self_cast->sender();

}

int QRubberBand_protectedbase_senderSignalIndex(const void* self) {
	VirtualQRubberBand* self_cast = static_cast<VirtualQRubberBand*>( (QRubberBand*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QRubberBand_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQRubberBand* self_cast = static_cast<VirtualQRubberBand*>( (QRubberBand*)(self) );
	
	return self_cast->receivers(signal);

}

bool QRubberBand_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQRubberBand* self_cast = static_cast<VirtualQRubberBand*>( (QRubberBand*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QRubberBand_delete(QRubberBand* self) {
	delete self;
}

