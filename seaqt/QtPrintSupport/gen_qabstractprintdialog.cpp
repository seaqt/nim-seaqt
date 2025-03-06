#include <QAbstractPrintDialog>
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
#include <QList>
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
#include <qabstractprintdialog.h>
#include "gen_qabstractprintdialog.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAbstractPrintDialog final : public QAbstractPrintDialog {
	struct QAbstractPrintDialog_VTable* vtbl;
public:

	VirtualQAbstractPrintDialog(struct QAbstractPrintDialog_VTable* vtbl, QPrinter* printer): QAbstractPrintDialog(printer), vtbl(vtbl) {};
	VirtualQAbstractPrintDialog(struct QAbstractPrintDialog_VTable* vtbl, QPrinter* printer, QWidget* parent): QAbstractPrintDialog(printer, parent), vtbl(vtbl) {};

	virtual ~VirtualQAbstractPrintDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractPrintDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractPrintDialog_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractPrintDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractPrintDialog_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractPrintDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractPrintDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractPrintDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QAbstractPrintDialog_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractPrintDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QAbstractPrintDialog_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QAbstractPrintDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	friend void QAbstractPrintDialog_virtualbase_open(void* self);

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QAbstractPrintDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_exec(void* self);

	// Subclass to allow providing a Go implementation
	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QAbstractPrintDialog::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_done(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QAbstractPrintDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	friend void QAbstractPrintDialog_virtualbase_accept(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QAbstractPrintDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	friend void QAbstractPrintDialog_virtualbase_reject(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractPrintDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QAbstractPrintDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QAbstractPrintDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractPrintDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractPrintDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractPrintDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractPrintDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractPrintDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractPrintDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractPrintDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QAbstractPrintDialog_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractPrintDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractPrintDialog_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractPrintDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractPrintDialog_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractPrintDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractPrintDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractPrintDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractPrintDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractPrintDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractPrintDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractPrintDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractPrintDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractPrintDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractPrintDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QAbstractPrintDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractPrintDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractPrintDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractPrintDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractPrintDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractPrintDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractPrintDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractPrintDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractPrintDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractPrintDialog::nativeEvent(eventType, message, result);
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

	friend bool QAbstractPrintDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QAbstractPrintDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractPrintDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractPrintDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractPrintDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractPrintDialog_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractPrintDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QAbstractPrintDialog_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractPrintDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractPrintDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QAbstractPrintDialog_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractPrintDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractPrintDialog_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractPrintDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractPrintDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractPrintDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractPrintDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractPrintDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractPrintDialog_protectedbase_adjustPosition(void* self, QWidget* param1);
	friend void QAbstractPrintDialog_protectedbase_updateMicroFocus(void* self);
	friend void QAbstractPrintDialog_protectedbase_create(void* self);
	friend void QAbstractPrintDialog_protectedbase_destroy(void* self);
	friend bool QAbstractPrintDialog_protectedbase_focusNextChild(void* self);
	friend bool QAbstractPrintDialog_protectedbase_focusPreviousChild(void* self);
	friend QObject* QAbstractPrintDialog_protectedbase_sender(const void* self);
	friend int QAbstractPrintDialog_protectedbase_senderSignalIndex(const void* self);
	friend int QAbstractPrintDialog_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAbstractPrintDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAbstractPrintDialog* QAbstractPrintDialog_new(struct QAbstractPrintDialog_VTable* vtbl, QPrinter* printer) {
	return new VirtualQAbstractPrintDialog(vtbl, printer);
}

QAbstractPrintDialog* QAbstractPrintDialog_new2(struct QAbstractPrintDialog_VTable* vtbl, QPrinter* printer, QWidget* parent) {
	return new VirtualQAbstractPrintDialog(vtbl, printer, parent);
}

void QAbstractPrintDialog_virtbase(QAbstractPrintDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QAbstractPrintDialog_metaObject(const QAbstractPrintDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractPrintDialog_metacast(QAbstractPrintDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractPrintDialog_metacall(QAbstractPrintDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractPrintDialog_tr(const char* s) {
	QString _ret = QAbstractPrintDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractPrintDialog_setOptionTabs(QAbstractPrintDialog* self, struct miqt_array /* of QWidget* */  tabs) {
	QList<QWidget *> tabs_QList;
	tabs_QList.reserve(tabs.len);
	QWidget** tabs_arr = static_cast<QWidget**>(tabs.data);
	for(size_t i = 0; i < tabs.len; ++i) {
		tabs_QList.push_back(tabs_arr[i]);
	}
	self->setOptionTabs(tabs_QList);
}

void QAbstractPrintDialog_setPrintRange(QAbstractPrintDialog* self, int range) {
	self->setPrintRange(static_cast<QAbstractPrintDialog::PrintRange>(range));
}

int QAbstractPrintDialog_printRange(const QAbstractPrintDialog* self) {
	QAbstractPrintDialog::PrintRange _ret = self->printRange();
	return static_cast<int>(_ret);
}

void QAbstractPrintDialog_setMinMax(QAbstractPrintDialog* self, int min, int max) {
	self->setMinMax(static_cast<int>(min), static_cast<int>(max));
}

int QAbstractPrintDialog_minPage(const QAbstractPrintDialog* self) {
	return self->minPage();
}

int QAbstractPrintDialog_maxPage(const QAbstractPrintDialog* self) {
	return self->maxPage();
}

void QAbstractPrintDialog_setFromTo(QAbstractPrintDialog* self, int fromPage, int toPage) {
	self->setFromTo(static_cast<int>(fromPage), static_cast<int>(toPage));
}

int QAbstractPrintDialog_fromPage(const QAbstractPrintDialog* self) {
	return self->fromPage();
}

int QAbstractPrintDialog_toPage(const QAbstractPrintDialog* self) {
	return self->toPage();
}

QPrinter* QAbstractPrintDialog_printer(const QAbstractPrintDialog* self) {
	return self->printer();
}

struct miqt_string QAbstractPrintDialog_tr2(const char* s, const char* c) {
	QString _ret = QAbstractPrintDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractPrintDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractPrintDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractPrintDialog_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::metaObject();

}

void* QAbstractPrintDialog_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::qt_metacast(param1);

}

int QAbstractPrintDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QAbstractPrintDialog_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::setVisible(visible);

}

QSize* QAbstractPrintDialog_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::sizeHint());

}

QSize* QAbstractPrintDialog_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::minimumSizeHint());

}

void QAbstractPrintDialog_virtualbase_open(void* self) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::open();

}

int QAbstractPrintDialog_virtualbase_exec(void* self) {

	return ( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::exec();

}

void QAbstractPrintDialog_virtualbase_done(void* self, int param1) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::done(static_cast<int>(param1));

}

void QAbstractPrintDialog_virtualbase_accept(void* self) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::accept();

}

void QAbstractPrintDialog_virtualbase_reject(void* self) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::reject();

}

void QAbstractPrintDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::keyPressEvent(param1);

}

void QAbstractPrintDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::closeEvent(param1);

}

void QAbstractPrintDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::showEvent(param1);

}

void QAbstractPrintDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::resizeEvent(param1);

}

void QAbstractPrintDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::contextMenuEvent(param1);

}

bool QAbstractPrintDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::eventFilter(param1, param2);

}

int QAbstractPrintDialog_virtualbase_devType(const void* self) {

	return ( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::devType();

}

int QAbstractPrintDialog_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::heightForWidth(static_cast<int>(param1));

}

bool QAbstractPrintDialog_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::hasHeightForWidth();

}

QPaintEngine* QAbstractPrintDialog_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::paintEngine();

}

bool QAbstractPrintDialog_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::event(event);

}

void QAbstractPrintDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::mousePressEvent(event);

}

void QAbstractPrintDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::mouseReleaseEvent(event);

}

void QAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::mouseDoubleClickEvent(event);

}

void QAbstractPrintDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::mouseMoveEvent(event);

}

void QAbstractPrintDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::wheelEvent(event);

}

void QAbstractPrintDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::keyReleaseEvent(event);

}

void QAbstractPrintDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::focusInEvent(event);

}

void QAbstractPrintDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::focusOutEvent(event);

}

void QAbstractPrintDialog_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::enterEvent(event);

}

void QAbstractPrintDialog_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::leaveEvent(event);

}

void QAbstractPrintDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::paintEvent(event);

}

void QAbstractPrintDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::moveEvent(event);

}

void QAbstractPrintDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::tabletEvent(event);

}

void QAbstractPrintDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::actionEvent(event);

}

void QAbstractPrintDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::dragEnterEvent(event);

}

void QAbstractPrintDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::dragMoveEvent(event);

}

void QAbstractPrintDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::dragLeaveEvent(event);

}

void QAbstractPrintDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::dropEvent(event);

}

void QAbstractPrintDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::hideEvent(event);

}

bool QAbstractPrintDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

void QAbstractPrintDialog_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::changeEvent(param1);

}

int QAbstractPrintDialog_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::metric(static_cast<VirtualQAbstractPrintDialog::PaintDeviceMetric>(param1));

}

void QAbstractPrintDialog_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::initPainter(painter);

}

QPaintDevice* QAbstractPrintDialog_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::redirected(offset);

}

QPainter* QAbstractPrintDialog_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::sharedPainter();

}

void QAbstractPrintDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::inputMethodEvent(param1);

}

QVariant* QAbstractPrintDialog_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QAbstractPrintDialog_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::focusNextPrevChild(next);

}

void QAbstractPrintDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::timerEvent(event);

}

void QAbstractPrintDialog_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::childEvent(event);

}

void QAbstractPrintDialog_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::customEvent(event);

}

void QAbstractPrintDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::connectNotify(*signal);

}

void QAbstractPrintDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractPrintDialog*)(self) )->QAbstractPrintDialog::disconnectNotify(*signal);

}

const QMetaObject* QAbstractPrintDialog_staticMetaObject() { return &QAbstractPrintDialog::staticMetaObject; }
void QAbstractPrintDialog_protectedbase_adjustPosition(void* self, QWidget* param1) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	self_cast->adjustPosition(param1);

}

void QAbstractPrintDialog_protectedbase_updateMicroFocus(void* self) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	self_cast->updateMicroFocus();

}

void QAbstractPrintDialog_protectedbase_create(void* self) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	self_cast->create();

}

void QAbstractPrintDialog_protectedbase_destroy(void* self) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	self_cast->destroy();

}

bool QAbstractPrintDialog_protectedbase_focusNextChild(void* self) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	return self_cast->focusNextChild();

}

bool QAbstractPrintDialog_protectedbase_focusPreviousChild(void* self) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QAbstractPrintDialog_protectedbase_sender(const void* self) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	return self_cast->sender();

}

int QAbstractPrintDialog_protectedbase_senderSignalIndex(const void* self) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAbstractPrintDialog_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAbstractPrintDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQAbstractPrintDialog* self_cast = static_cast<VirtualQAbstractPrintDialog*>( (QAbstractPrintDialog*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractPrintDialog_delete(QAbstractPrintDialog* self) {
	delete self;
}

