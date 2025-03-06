#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QColor>
#include <QColorDialog>
#include <QContextMenuEvent>
#include <QDialog>
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
#include <QWheelEvent>
#include <QWidget>
#include <qcolordialog.h>
#include "gen_qcolordialog.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQColorDialog final : public QColorDialog {
	struct QColorDialog_VTable* vtbl;
public:

	VirtualQColorDialog(struct QColorDialog_VTable* vtbl, QWidget* parent): QColorDialog(parent), vtbl(vtbl) {};
	VirtualQColorDialog(struct QColorDialog_VTable* vtbl): QColorDialog(), vtbl(vtbl) {};
	VirtualQColorDialog(struct QColorDialog_VTable* vtbl, const QColor& initial): QColorDialog(initial), vtbl(vtbl) {};
	VirtualQColorDialog(struct QColorDialog_VTable* vtbl, const QColor& initial, QWidget* parent): QColorDialog(initial, parent), vtbl(vtbl) {};

	virtual ~VirtualQColorDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QColorDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QColorDialog_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QColorDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QColorDialog_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QColorDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QColorDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QColorDialog::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QColorDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_done(void* self, int result);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QColorDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QColorDialog_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QColorDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QColorDialog_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QColorDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	friend void QColorDialog_virtualbase_open(void* self);

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QColorDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_exec(void* self);

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QColorDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	friend void QColorDialog_virtualbase_accept(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QColorDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	friend void QColorDialog_virtualbase_reject(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QColorDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QColorDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QColorDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QColorDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QColorDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QColorDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QColorDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QColorDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QColorDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QColorDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QColorDialog_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QColorDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QColorDialog_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QColorDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QColorDialog_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QColorDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QColorDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QColorDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QColorDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QColorDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QColorDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QColorDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QColorDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QColorDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QColorDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QColorDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QColorDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QColorDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QColorDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QColorDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QColorDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QColorDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QColorDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QColorDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QColorDialog::nativeEvent(eventType, message, result);
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

	friend bool QColorDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QColorDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QColorDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QColorDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QColorDialog_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QColorDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QColorDialog_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QColorDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QColorDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QColorDialog_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QColorDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QColorDialog_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QColorDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QColorDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QColorDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QColorDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QColorDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QColorDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QColorDialog_protectedbase_adjustPosition(void* self, QWidget* param1);
	friend void QColorDialog_protectedbase_updateMicroFocus(void* self);
	friend void QColorDialog_protectedbase_create(void* self);
	friend void QColorDialog_protectedbase_destroy(void* self);
	friend bool QColorDialog_protectedbase_focusNextChild(void* self);
	friend bool QColorDialog_protectedbase_focusPreviousChild(void* self);
	friend QObject* QColorDialog_protectedbase_sender(const void* self);
	friend int QColorDialog_protectedbase_senderSignalIndex(const void* self);
	friend int QColorDialog_protectedbase_receivers(const void* self, const char* signal);
	friend bool QColorDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QColorDialog* QColorDialog_new(struct QColorDialog_VTable* vtbl, QWidget* parent) {
	return new VirtualQColorDialog(vtbl, parent);
}

QColorDialog* QColorDialog_new2(struct QColorDialog_VTable* vtbl) {
	return new VirtualQColorDialog(vtbl);
}

QColorDialog* QColorDialog_new3(struct QColorDialog_VTable* vtbl, QColor* initial) {
	return new VirtualQColorDialog(vtbl, *initial);
}

QColorDialog* QColorDialog_new4(struct QColorDialog_VTable* vtbl, QColor* initial, QWidget* parent) {
	return new VirtualQColorDialog(vtbl, *initial, parent);
}

void QColorDialog_virtbase(QColorDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QColorDialog_metaObject(const QColorDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QColorDialog_metacast(QColorDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QColorDialog_metacall(QColorDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QColorDialog_tr(const char* s) {
	QString _ret = QColorDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QColorDialog_setCurrentColor(QColorDialog* self, QColor* color) {
	self->setCurrentColor(*color);
}

QColor* QColorDialog_currentColor(const QColorDialog* self) {
	return new QColor(self->currentColor());
}

QColor* QColorDialog_selectedColor(const QColorDialog* self) {
	return new QColor(self->selectedColor());
}

void QColorDialog_setOption(QColorDialog* self, int option) {
	self->setOption(static_cast<QColorDialog::ColorDialogOption>(option));
}

bool QColorDialog_testOption(const QColorDialog* self, int option) {
	return self->testOption(static_cast<QColorDialog::ColorDialogOption>(option));
}

void QColorDialog_setOptions(QColorDialog* self, int options) {
	self->setOptions(static_cast<QColorDialog::ColorDialogOptions>(options));
}

int QColorDialog_options(const QColorDialog* self) {
	QColorDialog::ColorDialogOptions _ret = self->options();
	return static_cast<int>(_ret);
}

void QColorDialog_setVisible(QColorDialog* self, bool visible) {
	self->setVisible(visible);
}

QColor* QColorDialog_getColor() {
	return new QColor(QColorDialog::getColor());
}

int QColorDialog_customCount() {
	return QColorDialog::customCount();
}

QColor* QColorDialog_customColor(int index) {
	return new QColor(QColorDialog::customColor(static_cast<int>(index)));
}

void QColorDialog_setCustomColor(int index, QColor* color) {
	QColorDialog::setCustomColor(static_cast<int>(index), *color);
}

QColor* QColorDialog_standardColor(int index) {
	return new QColor(QColorDialog::standardColor(static_cast<int>(index)));
}

void QColorDialog_setStandardColor(int index, QColor* color) {
	QColorDialog::setStandardColor(static_cast<int>(index), *color);
}

void QColorDialog_currentColorChanged(QColorDialog* self, QColor* color) {
	self->currentColorChanged(*color);
}

void QColorDialog_connect_currentColorChanged(QColorDialog* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QColor*);
		void operator()(const QColor& color) {
			const QColor& color_ret = color;
			// Cast returned reference into pointer
			QColor* sigval1 = const_cast<QColor*>(&color_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQColorDialog::connect(self, static_cast<void (QColorDialog::*)(const QColor&)>(&QColorDialog::currentColorChanged), self, local_caller{slot, callback, release});
}

void QColorDialog_colorSelected(QColorDialog* self, QColor* color) {
	self->colorSelected(*color);
}

void QColorDialog_connect_colorSelected(QColorDialog* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QColor*);
		void operator()(const QColor& color) {
			const QColor& color_ret = color;
			// Cast returned reference into pointer
			QColor* sigval1 = const_cast<QColor*>(&color_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQColorDialog::connect(self, static_cast<void (QColorDialog::*)(const QColor&)>(&QColorDialog::colorSelected), self, local_caller{slot, callback, release});
}

struct miqt_string QColorDialog_tr2(const char* s, const char* c) {
	QString _ret = QColorDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QColorDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QColorDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QColorDialog_setOption2(QColorDialog* self, int option, bool on) {
	self->setOption(static_cast<QColorDialog::ColorDialogOption>(option), on);
}

QColor* QColorDialog_getColor1(QColor* initial) {
	return new QColor(QColorDialog::getColor(*initial));
}

QColor* QColorDialog_getColor2(QColor* initial, QWidget* parent) {
	return new QColor(QColorDialog::getColor(*initial, parent));
}

QColor* QColorDialog_getColor3(QColor* initial, QWidget* parent, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new QColor(QColorDialog::getColor(*initial, parent, title_QString));
}

QColor* QColorDialog_getColor4(QColor* initial, QWidget* parent, struct miqt_string title, int options) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new QColor(QColorDialog::getColor(*initial, parent, title_QString, static_cast<QColorDialog::ColorDialogOptions>(options)));
}

QMetaObject* QColorDialog_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQColorDialog*)(self) )->QColorDialog::metaObject();

}

void* QColorDialog_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQColorDialog*)(self) )->QColorDialog::qt_metacast(param1);

}

int QColorDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQColorDialog*)(self) )->QColorDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QColorDialog_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::setVisible(visible);

}

void QColorDialog_virtualbase_changeEvent(void* self, QEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::changeEvent(event);

}

void QColorDialog_virtualbase_done(void* self, int result) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::done(static_cast<int>(result));

}

QSize* QColorDialog_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQColorDialog*)(self) )->QColorDialog::sizeHint());

}

QSize* QColorDialog_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQColorDialog*)(self) )->QColorDialog::minimumSizeHint());

}

void QColorDialog_virtualbase_open(void* self) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::open();

}

int QColorDialog_virtualbase_exec(void* self) {

	return ( (VirtualQColorDialog*)(self) )->QColorDialog::exec();

}

void QColorDialog_virtualbase_accept(void* self) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::accept();

}

void QColorDialog_virtualbase_reject(void* self) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::reject();

}

void QColorDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::keyPressEvent(param1);

}

void QColorDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::closeEvent(param1);

}

void QColorDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::showEvent(param1);

}

void QColorDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::resizeEvent(param1);

}

void QColorDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::contextMenuEvent(param1);

}

bool QColorDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQColorDialog*)(self) )->QColorDialog::eventFilter(param1, param2);

}

int QColorDialog_virtualbase_devType(const void* self) {

	return ( (const VirtualQColorDialog*)(self) )->QColorDialog::devType();

}

int QColorDialog_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQColorDialog*)(self) )->QColorDialog::heightForWidth(static_cast<int>(param1));

}

bool QColorDialog_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQColorDialog*)(self) )->QColorDialog::hasHeightForWidth();

}

QPaintEngine* QColorDialog_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQColorDialog*)(self) )->QColorDialog::paintEngine();

}

bool QColorDialog_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQColorDialog*)(self) )->QColorDialog::event(event);

}

void QColorDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::mousePressEvent(event);

}

void QColorDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::mouseReleaseEvent(event);

}

void QColorDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::mouseDoubleClickEvent(event);

}

void QColorDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::mouseMoveEvent(event);

}

void QColorDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::wheelEvent(event);

}

void QColorDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::keyReleaseEvent(event);

}

void QColorDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::focusInEvent(event);

}

void QColorDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::focusOutEvent(event);

}

void QColorDialog_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::enterEvent(event);

}

void QColorDialog_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::leaveEvent(event);

}

void QColorDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::paintEvent(event);

}

void QColorDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::moveEvent(event);

}

void QColorDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::tabletEvent(event);

}

void QColorDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::actionEvent(event);

}

void QColorDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::dragEnterEvent(event);

}

void QColorDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::dragMoveEvent(event);

}

void QColorDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::dragLeaveEvent(event);

}

void QColorDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::dropEvent(event);

}

void QColorDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::hideEvent(event);

}

bool QColorDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQColorDialog*)(self) )->QColorDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QColorDialog_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQColorDialog*)(self) )->QColorDialog::metric(static_cast<VirtualQColorDialog::PaintDeviceMetric>(param1));

}

void QColorDialog_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQColorDialog*)(self) )->QColorDialog::initPainter(painter);

}

QPaintDevice* QColorDialog_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQColorDialog*)(self) )->QColorDialog::redirected(offset);

}

QPainter* QColorDialog_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQColorDialog*)(self) )->QColorDialog::sharedPainter();

}

void QColorDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::inputMethodEvent(param1);

}

QVariant* QColorDialog_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQColorDialog*)(self) )->QColorDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QColorDialog_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQColorDialog*)(self) )->QColorDialog::focusNextPrevChild(next);

}

void QColorDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::timerEvent(event);

}

void QColorDialog_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::childEvent(event);

}

void QColorDialog_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::customEvent(event);

}

void QColorDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::connectNotify(*signal);

}

void QColorDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQColorDialog*)(self) )->QColorDialog::disconnectNotify(*signal);

}

const QMetaObject* QColorDialog_staticMetaObject() { return &QColorDialog::staticMetaObject; }
void QColorDialog_protectedbase_adjustPosition(void* self, QWidget* param1) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	self_cast->adjustPosition(param1);

}

void QColorDialog_protectedbase_updateMicroFocus(void* self) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	self_cast->updateMicroFocus();

}

void QColorDialog_protectedbase_create(void* self) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	self_cast->create();

}

void QColorDialog_protectedbase_destroy(void* self) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	self_cast->destroy();

}

bool QColorDialog_protectedbase_focusNextChild(void* self) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	return self_cast->focusNextChild();

}

bool QColorDialog_protectedbase_focusPreviousChild(void* self) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QColorDialog_protectedbase_sender(const void* self) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	return self_cast->sender();

}

int QColorDialog_protectedbase_senderSignalIndex(const void* self) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QColorDialog_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	return self_cast->receivers(signal);

}

bool QColorDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQColorDialog* self_cast = static_cast<VirtualQColorDialog*>( (QColorDialog*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QColorDialog_delete(QColorDialog* self) {
	delete self;
}

