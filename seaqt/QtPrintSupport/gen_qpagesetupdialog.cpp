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
#include <QPageSetupDialog>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QPrinter>
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
#include <qpagesetupdialog.h>
#include "gen_qpagesetupdialog.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQPageSetupDialog final : public QPageSetupDialog {
	struct QPageSetupDialog_VTable* vtbl;
public:

	VirtualQPageSetupDialog(struct QPageSetupDialog_VTable* vtbl, QWidget* parent): QPageSetupDialog(parent), vtbl(vtbl) {};
	VirtualQPageSetupDialog(struct QPageSetupDialog_VTable* vtbl, QPrinter* printer): QPageSetupDialog(printer), vtbl(vtbl) {};
	VirtualQPageSetupDialog(struct QPageSetupDialog_VTable* vtbl): QPageSetupDialog(), vtbl(vtbl) {};
	VirtualQPageSetupDialog(struct QPageSetupDialog_VTable* vtbl, QPrinter* printer, QWidget* parent): QPageSetupDialog(printer, parent), vtbl(vtbl) {};

	virtual ~VirtualQPageSetupDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPageSetupDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QPageSetupDialog_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPageSetupDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QPageSetupDialog_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPageSetupDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QPageSetupDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_exec(void* self);

	// Subclass to allow providing a Go implementation
	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QPageSetupDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_done(void* self, int result);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPageSetupDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPageSetupDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QPageSetupDialog_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPageSetupDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QPageSetupDialog_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QPageSetupDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	friend void QPageSetupDialog_virtualbase_open(void* self);

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QPageSetupDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	friend void QPageSetupDialog_virtualbase_accept(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QPageSetupDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	friend void QPageSetupDialog_virtualbase_reject(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPageSetupDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QPageSetupDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QPageSetupDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QPageSetupDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QPageSetupDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QPageSetupDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPageSetupDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPageSetupDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPageSetupDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPageSetupDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QPageSetupDialog_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPageSetupDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QPageSetupDialog_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPageSetupDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPageSetupDialog_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPageSetupDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPageSetupDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPageSetupDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPageSetupDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPageSetupDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPageSetupDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPageSetupDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPageSetupDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPageSetupDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPageSetupDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPageSetupDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPageSetupDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPageSetupDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPageSetupDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPageSetupDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPageSetupDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPageSetupDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPageSetupDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPageSetupDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPageSetupDialog::nativeEvent(eventType, message, result);
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

	friend bool QPageSetupDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPageSetupDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPageSetupDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPageSetupDialog_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPageSetupDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPageSetupDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPageSetupDialog_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPageSetupDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QPageSetupDialog_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPageSetupDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPageSetupDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QPageSetupDialog_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPageSetupDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPageSetupDialog_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPageSetupDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPageSetupDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPageSetupDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPageSetupDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPageSetupDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QPageSetupDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPageSetupDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
	friend void QPageSetupDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QPageSetupDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QPageSetupDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QPageSetupDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QPageSetupDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QPageSetupDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QPageSetupDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QPageSetupDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QPageSetupDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QPageSetupDialog* QPageSetupDialog_new(struct QPageSetupDialog_VTable* vtbl, QWidget* parent) {
	return new VirtualQPageSetupDialog(vtbl, parent);
}

QPageSetupDialog* QPageSetupDialog_new2(struct QPageSetupDialog_VTable* vtbl, QPrinter* printer) {
	return new VirtualQPageSetupDialog(vtbl, printer);
}

QPageSetupDialog* QPageSetupDialog_new3(struct QPageSetupDialog_VTable* vtbl) {
	return new VirtualQPageSetupDialog(vtbl);
}

QPageSetupDialog* QPageSetupDialog_new4(struct QPageSetupDialog_VTable* vtbl, QPrinter* printer, QWidget* parent) {
	return new VirtualQPageSetupDialog(vtbl, printer, parent);
}

void QPageSetupDialog_virtbase(QPageSetupDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QPageSetupDialog_metaObject(const QPageSetupDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPageSetupDialog_metacast(QPageSetupDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPageSetupDialog_metacall(QPageSetupDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPageSetupDialog_tr(const char* s) {
	QString _ret = QPageSetupDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPageSetupDialog_exec(QPageSetupDialog* self) {
	return self->exec();
}

void QPageSetupDialog_done(QPageSetupDialog* self, int result) {
	self->done(static_cast<int>(result));
}

QPrinter* QPageSetupDialog_printer(QPageSetupDialog* self) {
	return self->printer();
}

struct miqt_string QPageSetupDialog_tr2(const char* s, const char* c) {
	QString _ret = QPageSetupDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPageSetupDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QPageSetupDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPageSetupDialog_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::metaObject();

}

void* QPageSetupDialog_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::qt_metacast(param1);

}

int QPageSetupDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

int QPageSetupDialog_virtualbase_exec(void* self) {

	return ( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::exec();

}

void QPageSetupDialog_virtualbase_done(void* self, int result) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::done(static_cast<int>(result));

}

void QPageSetupDialog_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::setVisible(visible);

}

QSize* QPageSetupDialog_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::sizeHint());

}

QSize* QPageSetupDialog_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::minimumSizeHint());

}

void QPageSetupDialog_virtualbase_open(void* self) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::open();

}

void QPageSetupDialog_virtualbase_accept(void* self) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::accept();

}

void QPageSetupDialog_virtualbase_reject(void* self) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::reject();

}

void QPageSetupDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::keyPressEvent(param1);

}

void QPageSetupDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::closeEvent(param1);

}

void QPageSetupDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::showEvent(param1);

}

void QPageSetupDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::resizeEvent(param1);

}

void QPageSetupDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::contextMenuEvent(param1);

}

bool QPageSetupDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::eventFilter(param1, param2);

}

int QPageSetupDialog_virtualbase_devType(const void* self) {

	return ( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::devType();

}

int QPageSetupDialog_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::heightForWidth(static_cast<int>(param1));

}

bool QPageSetupDialog_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::hasHeightForWidth();

}

QPaintEngine* QPageSetupDialog_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::paintEngine();

}

bool QPageSetupDialog_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::event(event);

}

void QPageSetupDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::mousePressEvent(event);

}

void QPageSetupDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::mouseReleaseEvent(event);

}

void QPageSetupDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::mouseDoubleClickEvent(event);

}

void QPageSetupDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::mouseMoveEvent(event);

}

void QPageSetupDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::wheelEvent(event);

}

void QPageSetupDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::keyReleaseEvent(event);

}

void QPageSetupDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::focusInEvent(event);

}

void QPageSetupDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::focusOutEvent(event);

}

void QPageSetupDialog_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::enterEvent(event);

}

void QPageSetupDialog_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::leaveEvent(event);

}

void QPageSetupDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::paintEvent(event);

}

void QPageSetupDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::moveEvent(event);

}

void QPageSetupDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::tabletEvent(event);

}

void QPageSetupDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::actionEvent(event);

}

void QPageSetupDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::dragEnterEvent(event);

}

void QPageSetupDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::dragMoveEvent(event);

}

void QPageSetupDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::dragLeaveEvent(event);

}

void QPageSetupDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::dropEvent(event);

}

void QPageSetupDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::hideEvent(event);

}

bool QPageSetupDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

void QPageSetupDialog_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::changeEvent(param1);

}

int QPageSetupDialog_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::metric(static_cast<VirtualQPageSetupDialog::PaintDeviceMetric>(param1));

}

void QPageSetupDialog_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::initPainter(painter);

}

QPaintDevice* QPageSetupDialog_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::redirected(offset);

}

QPainter* QPageSetupDialog_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::sharedPainter();

}

void QPageSetupDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::inputMethodEvent(param1);

}

QVariant* QPageSetupDialog_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QPageSetupDialog_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::focusNextPrevChild(next);

}

void QPageSetupDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::timerEvent(event);

}

void QPageSetupDialog_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::childEvent(event);

}

void QPageSetupDialog_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::customEvent(event);

}

void QPageSetupDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::connectNotify(*signal);

}

void QPageSetupDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPageSetupDialog*)(self) )->QPageSetupDialog::disconnectNotify(*signal);

}

const QMetaObject* QPageSetupDialog_staticMetaObject() { return &QPageSetupDialog::staticMetaObject; }
void QPageSetupDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->adjustPosition(param1);

}

void QPageSetupDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QPageSetupDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QPageSetupDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QPageSetupDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QPageSetupDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QPageSetupDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QPageSetupDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QPageSetupDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QPageSetupDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQPageSetupDialog* self_cast = dynamic_cast<VirtualQPageSetupDialog*>( (QPageSetupDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QPageSetupDialog_delete(QPageSetupDialog* self) {
	delete self;
}

