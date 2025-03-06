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
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLabel>
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
#include <QProgressBar>
#include <QProgressDialog>
#include <QPushButton>
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
#include <qprogressdialog.h>
#include "gen_qprogressdialog.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQProgressDialog final : public QProgressDialog {
	struct QProgressDialog_VTable* vtbl;
public:

	VirtualQProgressDialog(struct QProgressDialog_VTable* vtbl, QWidget* parent): QProgressDialog(parent), vtbl(vtbl) {};
	VirtualQProgressDialog(struct QProgressDialog_VTable* vtbl): QProgressDialog(), vtbl(vtbl) {};
	VirtualQProgressDialog(struct QProgressDialog_VTable* vtbl, const QString& labelText, const QString& cancelButtonText, int minimum, int maximum): QProgressDialog(labelText, cancelButtonText, minimum, maximum), vtbl(vtbl) {};
	VirtualQProgressDialog(struct QProgressDialog_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QProgressDialog(parent, flags), vtbl(vtbl) {};
	VirtualQProgressDialog(struct QProgressDialog_VTable* vtbl, const QString& labelText, const QString& cancelButtonText, int minimum, int maximum, QWidget* parent): QProgressDialog(labelText, cancelButtonText, minimum, maximum, parent), vtbl(vtbl) {};
	VirtualQProgressDialog(struct QProgressDialog_VTable* vtbl, const QString& labelText, const QString& cancelButtonText, int minimum, int maximum, QWidget* parent, Qt::WindowFlags flags): QProgressDialog(labelText, cancelButtonText, minimum, maximum, parent, flags), vtbl(vtbl) {};

	virtual ~VirtualQProgressDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QProgressDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QProgressDialog_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QProgressDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QProgressDialog_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QProgressDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QProgressDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QProgressDialog_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QProgressDialog::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QProgressDialog::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QProgressDialog::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QProgressDialog::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QProgressDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QProgressDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QProgressDialog_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QProgressDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	friend void QProgressDialog_virtualbase_open(void* self);

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QProgressDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_exec(void* self);

	// Subclass to allow providing a Go implementation
	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QProgressDialog::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_done(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QProgressDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	friend void QProgressDialog_virtualbase_accept(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QProgressDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	friend void QProgressDialog_virtualbase_reject(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QProgressDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QProgressDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QProgressDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QProgressDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QProgressDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QProgressDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QProgressDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QProgressDialog_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QProgressDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QProgressDialog_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QProgressDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QProgressDialog_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QProgressDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QProgressDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QProgressDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QProgressDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QProgressDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QProgressDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QProgressDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QProgressDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QProgressDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QProgressDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QProgressDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QProgressDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QProgressDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QProgressDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QProgressDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QProgressDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QProgressDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QProgressDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QProgressDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QProgressDialog::nativeEvent(eventType, message, result);
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

	friend bool QProgressDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QProgressDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressDialog_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QProgressDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QProgressDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QProgressDialog_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QProgressDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QProgressDialog_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QProgressDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QProgressDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QProgressDialog_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QProgressDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QProgressDialog_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QProgressDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QProgressDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QProgressDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QProgressDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QProgressDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QProgressDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QProgressDialog_protectedbase_forceShow(void* self);
	friend void QProgressDialog_protectedbase_adjustPosition(void* self, QWidget* param1);
	friend void QProgressDialog_protectedbase_updateMicroFocus(void* self);
	friend void QProgressDialog_protectedbase_create(void* self);
	friend void QProgressDialog_protectedbase_destroy(void* self);
	friend bool QProgressDialog_protectedbase_focusNextChild(void* self);
	friend bool QProgressDialog_protectedbase_focusPreviousChild(void* self);
	friend QObject* QProgressDialog_protectedbase_sender(const void* self);
	friend int QProgressDialog_protectedbase_senderSignalIndex(const void* self);
	friend int QProgressDialog_protectedbase_receivers(const void* self, const char* signal);
	friend bool QProgressDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QProgressDialog* QProgressDialog_new(struct QProgressDialog_VTable* vtbl, QWidget* parent) {
	return new VirtualQProgressDialog(vtbl, parent);
}

QProgressDialog* QProgressDialog_new2(struct QProgressDialog_VTable* vtbl) {
	return new VirtualQProgressDialog(vtbl);
}

QProgressDialog* QProgressDialog_new3(struct QProgressDialog_VTable* vtbl, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	QString cancelButtonText_QString = QString::fromUtf8(cancelButtonText.data, cancelButtonText.len);
	return new VirtualQProgressDialog(vtbl, labelText_QString, cancelButtonText_QString, static_cast<int>(minimum), static_cast<int>(maximum));
}

QProgressDialog* QProgressDialog_new4(struct QProgressDialog_VTable* vtbl, QWidget* parent, int flags) {
	return new VirtualQProgressDialog(vtbl, parent, static_cast<Qt::WindowFlags>(flags));
}

QProgressDialog* QProgressDialog_new5(struct QProgressDialog_VTable* vtbl, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum, QWidget* parent) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	QString cancelButtonText_QString = QString::fromUtf8(cancelButtonText.data, cancelButtonText.len);
	return new VirtualQProgressDialog(vtbl, labelText_QString, cancelButtonText_QString, static_cast<int>(minimum), static_cast<int>(maximum), parent);
}

QProgressDialog* QProgressDialog_new6(struct QProgressDialog_VTable* vtbl, struct miqt_string labelText, struct miqt_string cancelButtonText, int minimum, int maximum, QWidget* parent, int flags) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	QString cancelButtonText_QString = QString::fromUtf8(cancelButtonText.data, cancelButtonText.len);
	return new VirtualQProgressDialog(vtbl, labelText_QString, cancelButtonText_QString, static_cast<int>(minimum), static_cast<int>(maximum), parent, static_cast<Qt::WindowFlags>(flags));
}

void QProgressDialog_virtbase(QProgressDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QProgressDialog_metaObject(const QProgressDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QProgressDialog_metacast(QProgressDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QProgressDialog_metacall(QProgressDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QProgressDialog_tr(const char* s) {
	QString _ret = QProgressDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressDialog_trUtf8(const char* s) {
	QString _ret = QProgressDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProgressDialog_setLabel(QProgressDialog* self, QLabel* label) {
	self->setLabel(label);
}

void QProgressDialog_setCancelButton(QProgressDialog* self, QPushButton* button) {
	self->setCancelButton(button);
}

void QProgressDialog_setBar(QProgressDialog* self, QProgressBar* bar) {
	self->setBar(bar);
}

bool QProgressDialog_wasCanceled(const QProgressDialog* self) {
	return self->wasCanceled();
}

int QProgressDialog_minimum(const QProgressDialog* self) {
	return self->minimum();
}

int QProgressDialog_maximum(const QProgressDialog* self) {
	return self->maximum();
}

int QProgressDialog_value(const QProgressDialog* self) {
	return self->value();
}

QSize* QProgressDialog_sizeHint(const QProgressDialog* self) {
	return new QSize(self->sizeHint());
}

struct miqt_string QProgressDialog_labelText(const QProgressDialog* self) {
	QString _ret = self->labelText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QProgressDialog_minimumDuration(const QProgressDialog* self) {
	return self->minimumDuration();
}

void QProgressDialog_setAutoReset(QProgressDialog* self, bool reset) {
	self->setAutoReset(reset);
}

bool QProgressDialog_autoReset(const QProgressDialog* self) {
	return self->autoReset();
}

void QProgressDialog_setAutoClose(QProgressDialog* self, bool close) {
	self->setAutoClose(close);
}

bool QProgressDialog_autoClose(const QProgressDialog* self) {
	return self->autoClose();
}

void QProgressDialog_cancel(QProgressDialog* self) {
	self->cancel();
}

void QProgressDialog_reset(QProgressDialog* self) {
	self->reset();
}

void QProgressDialog_setMaximum(QProgressDialog* self, int maximum) {
	self->setMaximum(static_cast<int>(maximum));
}

void QProgressDialog_setMinimum(QProgressDialog* self, int minimum) {
	self->setMinimum(static_cast<int>(minimum));
}

void QProgressDialog_setRange(QProgressDialog* self, int minimum, int maximum) {
	self->setRange(static_cast<int>(minimum), static_cast<int>(maximum));
}

void QProgressDialog_setValue(QProgressDialog* self, int progress) {
	self->setValue(static_cast<int>(progress));
}

void QProgressDialog_setLabelText(QProgressDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setLabelText(text_QString);
}

void QProgressDialog_setCancelButtonText(QProgressDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setCancelButtonText(text_QString);
}

void QProgressDialog_setMinimumDuration(QProgressDialog* self, int ms) {
	self->setMinimumDuration(static_cast<int>(ms));
}

void QProgressDialog_canceled(QProgressDialog* self) {
	self->canceled();
}

void QProgressDialog_connect_canceled(QProgressDialog* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQProgressDialog::connect(self, static_cast<void (QProgressDialog::*)()>(&QProgressDialog::canceled), self, local_caller{slot, callback, release});
}

struct miqt_string QProgressDialog_tr2(const char* s, const char* c) {
	QString _ret = QProgressDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QProgressDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QProgressDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QProgressDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QProgressDialog_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQProgressDialog*)(self) )->QProgressDialog::metaObject();

}

void* QProgressDialog_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQProgressDialog*)(self) )->QProgressDialog::qt_metacast(param1);

}

int QProgressDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQProgressDialog*)(self) )->QProgressDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QProgressDialog_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQProgressDialog*)(self) )->QProgressDialog::sizeHint());

}

void QProgressDialog_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::resizeEvent(event);

}

void QProgressDialog_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::closeEvent(event);

}

void QProgressDialog_virtualbase_changeEvent(void* self, QEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::changeEvent(event);

}

void QProgressDialog_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::showEvent(event);

}

void QProgressDialog_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::setVisible(visible);

}

QSize* QProgressDialog_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQProgressDialog*)(self) )->QProgressDialog::minimumSizeHint());

}

void QProgressDialog_virtualbase_open(void* self) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::open();

}

int QProgressDialog_virtualbase_exec(void* self) {

	return ( (VirtualQProgressDialog*)(self) )->QProgressDialog::exec();

}

void QProgressDialog_virtualbase_done(void* self, int param1) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::done(static_cast<int>(param1));

}

void QProgressDialog_virtualbase_accept(void* self) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::accept();

}

void QProgressDialog_virtualbase_reject(void* self) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::reject();

}

void QProgressDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::keyPressEvent(param1);

}

void QProgressDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::contextMenuEvent(param1);

}

bool QProgressDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQProgressDialog*)(self) )->QProgressDialog::eventFilter(param1, param2);

}

int QProgressDialog_virtualbase_devType(const void* self) {

	return ( (const VirtualQProgressDialog*)(self) )->QProgressDialog::devType();

}

int QProgressDialog_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQProgressDialog*)(self) )->QProgressDialog::heightForWidth(static_cast<int>(param1));

}

bool QProgressDialog_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQProgressDialog*)(self) )->QProgressDialog::hasHeightForWidth();

}

QPaintEngine* QProgressDialog_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQProgressDialog*)(self) )->QProgressDialog::paintEngine();

}

bool QProgressDialog_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQProgressDialog*)(self) )->QProgressDialog::event(event);

}

void QProgressDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::mousePressEvent(event);

}

void QProgressDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::mouseReleaseEvent(event);

}

void QProgressDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::mouseDoubleClickEvent(event);

}

void QProgressDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::mouseMoveEvent(event);

}

void QProgressDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::wheelEvent(event);

}

void QProgressDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::keyReleaseEvent(event);

}

void QProgressDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::focusInEvent(event);

}

void QProgressDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::focusOutEvent(event);

}

void QProgressDialog_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::enterEvent(event);

}

void QProgressDialog_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::leaveEvent(event);

}

void QProgressDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::paintEvent(event);

}

void QProgressDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::moveEvent(event);

}

void QProgressDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::tabletEvent(event);

}

void QProgressDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::actionEvent(event);

}

void QProgressDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::dragEnterEvent(event);

}

void QProgressDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::dragMoveEvent(event);

}

void QProgressDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::dragLeaveEvent(event);

}

void QProgressDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::dropEvent(event);

}

void QProgressDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::hideEvent(event);

}

bool QProgressDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQProgressDialog*)(self) )->QProgressDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QProgressDialog_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQProgressDialog*)(self) )->QProgressDialog::metric(static_cast<VirtualQProgressDialog::PaintDeviceMetric>(param1));

}

void QProgressDialog_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQProgressDialog*)(self) )->QProgressDialog::initPainter(painter);

}

QPaintDevice* QProgressDialog_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQProgressDialog*)(self) )->QProgressDialog::redirected(offset);

}

QPainter* QProgressDialog_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQProgressDialog*)(self) )->QProgressDialog::sharedPainter();

}

void QProgressDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::inputMethodEvent(param1);

}

QVariant* QProgressDialog_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQProgressDialog*)(self) )->QProgressDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QProgressDialog_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQProgressDialog*)(self) )->QProgressDialog::focusNextPrevChild(next);

}

void QProgressDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::timerEvent(event);

}

void QProgressDialog_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::childEvent(event);

}

void QProgressDialog_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::customEvent(event);

}

void QProgressDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::connectNotify(*signal);

}

void QProgressDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQProgressDialog*)(self) )->QProgressDialog::disconnectNotify(*signal);

}

const QMetaObject* QProgressDialog_staticMetaObject() { return &QProgressDialog::staticMetaObject; }
void QProgressDialog_protectedbase_forceShow(void* self) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	self_cast->forceShow();

}

void QProgressDialog_protectedbase_adjustPosition(void* self, QWidget* param1) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	self_cast->adjustPosition(param1);

}

void QProgressDialog_protectedbase_updateMicroFocus(void* self) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	self_cast->updateMicroFocus();

}

void QProgressDialog_protectedbase_create(void* self) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	self_cast->create();

}

void QProgressDialog_protectedbase_destroy(void* self) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	self_cast->destroy();

}

bool QProgressDialog_protectedbase_focusNextChild(void* self) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	return self_cast->focusNextChild();

}

bool QProgressDialog_protectedbase_focusPreviousChild(void* self) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QProgressDialog_protectedbase_sender(const void* self) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	return self_cast->sender();

}

int QProgressDialog_protectedbase_senderSignalIndex(const void* self) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QProgressDialog_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	return self_cast->receivers(signal);

}

bool QProgressDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQProgressDialog* self_cast = static_cast<VirtualQProgressDialog*>( (QProgressDialog*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QProgressDialog_delete(QProgressDialog* self) {
	delete self;
}

