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
class VirtualQAbstractPrintDialog final : public QAbstractPrintDialog {
	const QAbstractPrintDialog_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractPrintDialog_VTable* QAbstractPrintDialog_vtbl(const VirtualQAbstractPrintDialog* self);
	friend void* QAbstractPrintDialog_vdata(const VirtualQAbstractPrintDialog* self);
	friend void QAbstractPrintDialog_setVdata(VirtualQAbstractPrintDialog* self, void* vdata);

	VirtualQAbstractPrintDialog(const QAbstractPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer): QAbstractPrintDialog(printer), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractPrintDialog(const QAbstractPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent): QAbstractPrintDialog(printer, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractPrintDialog() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractPrintDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractPrintDialog_virtualbase_metaObject(const VirtualQAbstractPrintDialog* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractPrintDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractPrintDialog_virtualbase_metacast(VirtualQAbstractPrintDialog* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractPrintDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_metacall(VirtualQAbstractPrintDialog* self, int param1, int param2, void** param3);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractPrintDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_setVisible(VirtualQAbstractPrintDialog* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractPrintDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractPrintDialog_virtualbase_sizeHint(const VirtualQAbstractPrintDialog* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractPrintDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractPrintDialog_virtualbase_minimumSizeHint(const VirtualQAbstractPrintDialog* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QAbstractPrintDialog::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QAbstractPrintDialog_virtualbase_open(VirtualQAbstractPrintDialog* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QAbstractPrintDialog::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_exec(VirtualQAbstractPrintDialog* self);

	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QAbstractPrintDialog::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_done(VirtualQAbstractPrintDialog* self, int param1);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QAbstractPrintDialog::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QAbstractPrintDialog_virtualbase_accept(VirtualQAbstractPrintDialog* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QAbstractPrintDialog::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QAbstractPrintDialog_virtualbase_reject(VirtualQAbstractPrintDialog* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractPrintDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_keyPressEvent(VirtualQAbstractPrintDialog* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QAbstractPrintDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_closeEvent(VirtualQAbstractPrintDialog* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QAbstractPrintDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_showEvent(VirtualQAbstractPrintDialog* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractPrintDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_resizeEvent(VirtualQAbstractPrintDialog* self, QResizeEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractPrintDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_contextMenuEvent(VirtualQAbstractPrintDialog* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractPrintDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractPrintDialog_virtualbase_eventFilter(VirtualQAbstractPrintDialog* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractPrintDialog::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_devType(const VirtualQAbstractPrintDialog* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractPrintDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_heightForWidth(const VirtualQAbstractPrintDialog* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractPrintDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QAbstractPrintDialog_virtualbase_hasHeightForWidth(const VirtualQAbstractPrintDialog* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractPrintDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractPrintDialog_virtualbase_paintEngine(const VirtualQAbstractPrintDialog* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractPrintDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractPrintDialog_virtualbase_event(VirtualQAbstractPrintDialog* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractPrintDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_mousePressEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractPrintDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_mouseReleaseEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractPrintDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractPrintDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_mouseMoveEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractPrintDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_wheelEvent(VirtualQAbstractPrintDialog* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractPrintDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_keyReleaseEvent(VirtualQAbstractPrintDialog* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractPrintDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_focusInEvent(VirtualQAbstractPrintDialog* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractPrintDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_focusOutEvent(VirtualQAbstractPrintDialog* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractPrintDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_enterEvent(VirtualQAbstractPrintDialog* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractPrintDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_leaveEvent(VirtualQAbstractPrintDialog* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QAbstractPrintDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_paintEvent(VirtualQAbstractPrintDialog* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractPrintDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_moveEvent(VirtualQAbstractPrintDialog* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractPrintDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_tabletEvent(VirtualQAbstractPrintDialog* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractPrintDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_actionEvent(VirtualQAbstractPrintDialog* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractPrintDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_dragEnterEvent(VirtualQAbstractPrintDialog* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractPrintDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_dragMoveEvent(VirtualQAbstractPrintDialog* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractPrintDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_dragLeaveEvent(VirtualQAbstractPrintDialog* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractPrintDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_dropEvent(VirtualQAbstractPrintDialog* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractPrintDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_hideEvent(VirtualQAbstractPrintDialog* self, QHideEvent* event);

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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractPrintDialog_virtualbase_nativeEvent(VirtualQAbstractPrintDialog* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QAbstractPrintDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_changeEvent(VirtualQAbstractPrintDialog* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractPrintDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractPrintDialog_virtualbase_metric(const VirtualQAbstractPrintDialog* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractPrintDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_initPainter(const VirtualQAbstractPrintDialog* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractPrintDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractPrintDialog_virtualbase_redirected(const VirtualQAbstractPrintDialog* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractPrintDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QAbstractPrintDialog_virtualbase_sharedPainter(const VirtualQAbstractPrintDialog* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractPrintDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_inputMethodEvent(VirtualQAbstractPrintDialog* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractPrintDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractPrintDialog_virtualbase_inputMethodQuery(const VirtualQAbstractPrintDialog* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractPrintDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractPrintDialog_virtualbase_focusNextPrevChild(VirtualQAbstractPrintDialog* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractPrintDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_timerEvent(VirtualQAbstractPrintDialog* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractPrintDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_childEvent(VirtualQAbstractPrintDialog* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractPrintDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_customEvent(VirtualQAbstractPrintDialog* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractPrintDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_connectNotify(VirtualQAbstractPrintDialog* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractPrintDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractPrintDialog_virtualbase_disconnectNotify(VirtualQAbstractPrintDialog* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractPrintDialog_protectedbase_adjustPosition(VirtualQAbstractPrintDialog* self, QWidget* param1);
	friend void QAbstractPrintDialog_protectedbase_updateMicroFocus(VirtualQAbstractPrintDialog* self);
	friend void QAbstractPrintDialog_protectedbase_create(VirtualQAbstractPrintDialog* self);
	friend void QAbstractPrintDialog_protectedbase_destroy(VirtualQAbstractPrintDialog* self);
	friend bool QAbstractPrintDialog_protectedbase_focusNextChild(VirtualQAbstractPrintDialog* self);
	friend bool QAbstractPrintDialog_protectedbase_focusPreviousChild(VirtualQAbstractPrintDialog* self);
	friend QObject* QAbstractPrintDialog_protectedbase_sender(const VirtualQAbstractPrintDialog* self);
	friend int QAbstractPrintDialog_protectedbase_senderSignalIndex(const VirtualQAbstractPrintDialog* self);
	friend int QAbstractPrintDialog_protectedbase_receivers(const VirtualQAbstractPrintDialog* self, const char* signal);
	friend bool QAbstractPrintDialog_protectedbase_isSignalConnected(const VirtualQAbstractPrintDialog* self, QMetaMethod* signal);
};

VirtualQAbstractPrintDialog* QAbstractPrintDialog_new(const QAbstractPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer) {
	return new VirtualQAbstractPrintDialog(vtbl, vdata, printer);
}

VirtualQAbstractPrintDialog* QAbstractPrintDialog_new2(const QAbstractPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent) {
	return new VirtualQAbstractPrintDialog(vtbl, vdata, printer, parent);
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

QMetaObject* QAbstractPrintDialog_virtualbase_metaObject(const VirtualQAbstractPrintDialog* self) {

	return (QMetaObject*) self->QAbstractPrintDialog::metaObject();
}

void* QAbstractPrintDialog_virtualbase_metacast(VirtualQAbstractPrintDialog* self, const char* param1) {

	return self->QAbstractPrintDialog::qt_metacast(param1);
}

int QAbstractPrintDialog_virtualbase_metacall(VirtualQAbstractPrintDialog* self, int param1, int param2, void** param3) {

	return self->QAbstractPrintDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QAbstractPrintDialog_virtualbase_setVisible(VirtualQAbstractPrintDialog* self, bool visible) {

	self->QAbstractPrintDialog::setVisible(visible);
}

QSize* QAbstractPrintDialog_virtualbase_sizeHint(const VirtualQAbstractPrintDialog* self) {

	return new QSize(self->QAbstractPrintDialog::sizeHint());
}

QSize* QAbstractPrintDialog_virtualbase_minimumSizeHint(const VirtualQAbstractPrintDialog* self) {

	return new QSize(self->QAbstractPrintDialog::minimumSizeHint());
}

void QAbstractPrintDialog_virtualbase_open(VirtualQAbstractPrintDialog* self) {

	self->QAbstractPrintDialog::open();
}

int QAbstractPrintDialog_virtualbase_exec(VirtualQAbstractPrintDialog* self) {

	return self->QAbstractPrintDialog::exec();
}

void QAbstractPrintDialog_virtualbase_done(VirtualQAbstractPrintDialog* self, int param1) {

	self->QAbstractPrintDialog::done(static_cast<int>(param1));
}

void QAbstractPrintDialog_virtualbase_accept(VirtualQAbstractPrintDialog* self) {

	self->QAbstractPrintDialog::accept();
}

void QAbstractPrintDialog_virtualbase_reject(VirtualQAbstractPrintDialog* self) {

	self->QAbstractPrintDialog::reject();
}

void QAbstractPrintDialog_virtualbase_keyPressEvent(VirtualQAbstractPrintDialog* self, QKeyEvent* param1) {

	self->QAbstractPrintDialog::keyPressEvent(param1);
}

void QAbstractPrintDialog_virtualbase_closeEvent(VirtualQAbstractPrintDialog* self, QCloseEvent* param1) {

	self->QAbstractPrintDialog::closeEvent(param1);
}

void QAbstractPrintDialog_virtualbase_showEvent(VirtualQAbstractPrintDialog* self, QShowEvent* param1) {

	self->QAbstractPrintDialog::showEvent(param1);
}

void QAbstractPrintDialog_virtualbase_resizeEvent(VirtualQAbstractPrintDialog* self, QResizeEvent* param1) {

	self->QAbstractPrintDialog::resizeEvent(param1);
}

void QAbstractPrintDialog_virtualbase_contextMenuEvent(VirtualQAbstractPrintDialog* self, QContextMenuEvent* param1) {

	self->QAbstractPrintDialog::contextMenuEvent(param1);
}

bool QAbstractPrintDialog_virtualbase_eventFilter(VirtualQAbstractPrintDialog* self, QObject* param1, QEvent* param2) {

	return self->QAbstractPrintDialog::eventFilter(param1, param2);
}

int QAbstractPrintDialog_virtualbase_devType(const VirtualQAbstractPrintDialog* self) {

	return self->QAbstractPrintDialog::devType();
}

int QAbstractPrintDialog_virtualbase_heightForWidth(const VirtualQAbstractPrintDialog* self, int param1) {

	return self->QAbstractPrintDialog::heightForWidth(static_cast<int>(param1));
}

bool QAbstractPrintDialog_virtualbase_hasHeightForWidth(const VirtualQAbstractPrintDialog* self) {

	return self->QAbstractPrintDialog::hasHeightForWidth();
}

QPaintEngine* QAbstractPrintDialog_virtualbase_paintEngine(const VirtualQAbstractPrintDialog* self) {

	return self->QAbstractPrintDialog::paintEngine();
}

bool QAbstractPrintDialog_virtualbase_event(VirtualQAbstractPrintDialog* self, QEvent* event) {

	return self->QAbstractPrintDialog::event(event);
}

void QAbstractPrintDialog_virtualbase_mousePressEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event) {

	self->QAbstractPrintDialog::mousePressEvent(event);
}

void QAbstractPrintDialog_virtualbase_mouseReleaseEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event) {

	self->QAbstractPrintDialog::mouseReleaseEvent(event);
}

void QAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event) {

	self->QAbstractPrintDialog::mouseDoubleClickEvent(event);
}

void QAbstractPrintDialog_virtualbase_mouseMoveEvent(VirtualQAbstractPrintDialog* self, QMouseEvent* event) {

	self->QAbstractPrintDialog::mouseMoveEvent(event);
}

void QAbstractPrintDialog_virtualbase_wheelEvent(VirtualQAbstractPrintDialog* self, QWheelEvent* event) {

	self->QAbstractPrintDialog::wheelEvent(event);
}

void QAbstractPrintDialog_virtualbase_keyReleaseEvent(VirtualQAbstractPrintDialog* self, QKeyEvent* event) {

	self->QAbstractPrintDialog::keyReleaseEvent(event);
}

void QAbstractPrintDialog_virtualbase_focusInEvent(VirtualQAbstractPrintDialog* self, QFocusEvent* event) {

	self->QAbstractPrintDialog::focusInEvent(event);
}

void QAbstractPrintDialog_virtualbase_focusOutEvent(VirtualQAbstractPrintDialog* self, QFocusEvent* event) {

	self->QAbstractPrintDialog::focusOutEvent(event);
}

void QAbstractPrintDialog_virtualbase_enterEvent(VirtualQAbstractPrintDialog* self, QEnterEvent* event) {

	self->QAbstractPrintDialog::enterEvent(event);
}

void QAbstractPrintDialog_virtualbase_leaveEvent(VirtualQAbstractPrintDialog* self, QEvent* event) {

	self->QAbstractPrintDialog::leaveEvent(event);
}

void QAbstractPrintDialog_virtualbase_paintEvent(VirtualQAbstractPrintDialog* self, QPaintEvent* event) {

	self->QAbstractPrintDialog::paintEvent(event);
}

void QAbstractPrintDialog_virtualbase_moveEvent(VirtualQAbstractPrintDialog* self, QMoveEvent* event) {

	self->QAbstractPrintDialog::moveEvent(event);
}

void QAbstractPrintDialog_virtualbase_tabletEvent(VirtualQAbstractPrintDialog* self, QTabletEvent* event) {

	self->QAbstractPrintDialog::tabletEvent(event);
}

void QAbstractPrintDialog_virtualbase_actionEvent(VirtualQAbstractPrintDialog* self, QActionEvent* event) {

	self->QAbstractPrintDialog::actionEvent(event);
}

void QAbstractPrintDialog_virtualbase_dragEnterEvent(VirtualQAbstractPrintDialog* self, QDragEnterEvent* event) {

	self->QAbstractPrintDialog::dragEnterEvent(event);
}

void QAbstractPrintDialog_virtualbase_dragMoveEvent(VirtualQAbstractPrintDialog* self, QDragMoveEvent* event) {

	self->QAbstractPrintDialog::dragMoveEvent(event);
}

void QAbstractPrintDialog_virtualbase_dragLeaveEvent(VirtualQAbstractPrintDialog* self, QDragLeaveEvent* event) {

	self->QAbstractPrintDialog::dragLeaveEvent(event);
}

void QAbstractPrintDialog_virtualbase_dropEvent(VirtualQAbstractPrintDialog* self, QDropEvent* event) {

	self->QAbstractPrintDialog::dropEvent(event);
}

void QAbstractPrintDialog_virtualbase_hideEvent(VirtualQAbstractPrintDialog* self, QHideEvent* event) {

	self->QAbstractPrintDialog::hideEvent(event);
}

bool QAbstractPrintDialog_virtualbase_nativeEvent(VirtualQAbstractPrintDialog* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QAbstractPrintDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QAbstractPrintDialog_virtualbase_changeEvent(VirtualQAbstractPrintDialog* self, QEvent* param1) {

	self->QAbstractPrintDialog::changeEvent(param1);
}

int QAbstractPrintDialog_virtualbase_metric(const VirtualQAbstractPrintDialog* self, int param1) {

	return self->QAbstractPrintDialog::metric(static_cast<VirtualQAbstractPrintDialog::PaintDeviceMetric>(param1));
}

void QAbstractPrintDialog_virtualbase_initPainter(const VirtualQAbstractPrintDialog* self, QPainter* painter) {

	self->QAbstractPrintDialog::initPainter(painter);
}

QPaintDevice* QAbstractPrintDialog_virtualbase_redirected(const VirtualQAbstractPrintDialog* self, QPoint* offset) {

	return self->QAbstractPrintDialog::redirected(offset);
}

QPainter* QAbstractPrintDialog_virtualbase_sharedPainter(const VirtualQAbstractPrintDialog* self) {

	return self->QAbstractPrintDialog::sharedPainter();
}

void QAbstractPrintDialog_virtualbase_inputMethodEvent(VirtualQAbstractPrintDialog* self, QInputMethodEvent* param1) {

	self->QAbstractPrintDialog::inputMethodEvent(param1);
}

QVariant* QAbstractPrintDialog_virtualbase_inputMethodQuery(const VirtualQAbstractPrintDialog* self, int param1) {

	return new QVariant(self->QAbstractPrintDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QAbstractPrintDialog_virtualbase_focusNextPrevChild(VirtualQAbstractPrintDialog* self, bool next) {

	return self->QAbstractPrintDialog::focusNextPrevChild(next);
}

void QAbstractPrintDialog_virtualbase_timerEvent(VirtualQAbstractPrintDialog* self, QTimerEvent* event) {

	self->QAbstractPrintDialog::timerEvent(event);
}

void QAbstractPrintDialog_virtualbase_childEvent(VirtualQAbstractPrintDialog* self, QChildEvent* event) {

	self->QAbstractPrintDialog::childEvent(event);
}

void QAbstractPrintDialog_virtualbase_customEvent(VirtualQAbstractPrintDialog* self, QEvent* event) {

	self->QAbstractPrintDialog::customEvent(event);
}

void QAbstractPrintDialog_virtualbase_connectNotify(VirtualQAbstractPrintDialog* self, QMetaMethod* signal) {

	self->QAbstractPrintDialog::connectNotify(*signal);
}

void QAbstractPrintDialog_virtualbase_disconnectNotify(VirtualQAbstractPrintDialog* self, QMetaMethod* signal) {

	self->QAbstractPrintDialog::disconnectNotify(*signal);
}

const QMetaObject* QAbstractPrintDialog_staticMetaObject() { return &QAbstractPrintDialog::staticMetaObject; }

const QAbstractPrintDialog_VTable* QAbstractPrintDialog_vtbl(const VirtualQAbstractPrintDialog* self) { return self->vtbl; }
void* QAbstractPrintDialog_vdata(const VirtualQAbstractPrintDialog* self) { return self->vdata; }
void QAbstractPrintDialog_setVdata(VirtualQAbstractPrintDialog* self, void* vdata) { self->vdata = vdata; }

void QAbstractPrintDialog_protectedbase_adjustPosition(VirtualQAbstractPrintDialog* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QAbstractPrintDialog_protectedbase_updateMicroFocus(VirtualQAbstractPrintDialog* self) {
	self->updateMicroFocus();
}

void QAbstractPrintDialog_protectedbase_create(VirtualQAbstractPrintDialog* self) {
	self->create();
}

void QAbstractPrintDialog_protectedbase_destroy(VirtualQAbstractPrintDialog* self) {
	self->destroy();
}

bool QAbstractPrintDialog_protectedbase_focusNextChild(VirtualQAbstractPrintDialog* self) {
	return self->focusNextChild();
}

bool QAbstractPrintDialog_protectedbase_focusPreviousChild(VirtualQAbstractPrintDialog* self) {
	return self->focusPreviousChild();
}

QObject* QAbstractPrintDialog_protectedbase_sender(const VirtualQAbstractPrintDialog* self) {
	return self->sender();
}

int QAbstractPrintDialog_protectedbase_senderSignalIndex(const VirtualQAbstractPrintDialog* self) {
	return self->senderSignalIndex();
}

int QAbstractPrintDialog_protectedbase_receivers(const VirtualQAbstractPrintDialog* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractPrintDialog_protectedbase_isSignalConnected(const VirtualQAbstractPrintDialog* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractPrintDialog_delete(QAbstractPrintDialog* self) {
	delete self;
}

