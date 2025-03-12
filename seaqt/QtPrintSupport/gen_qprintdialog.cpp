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
#include <QPrintDialog>
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
#include <qprintdialog.h>
#include "gen_qprintdialog.h"
class VirtualQPrintDialog final : public QPrintDialog {
	const QPrintDialog_VTable* vtbl;
	void* vdata;
public:
	friend const QPrintDialog_VTable* QPrintDialog_vtbl(const VirtualQPrintDialog* self);
	friend void* QPrintDialog_vdata(const VirtualQPrintDialog* self);
	friend void QPrintDialog_setVdata(VirtualQPrintDialog* self, void* vdata);

	VirtualQPrintDialog(const QPrintDialog_VTable* vtbl, void* vdata, QWidget* parent): QPrintDialog(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintDialog(const QPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer): QPrintDialog(printer), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintDialog(const QPrintDialog_VTable* vtbl, void* vdata): QPrintDialog(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrintDialog(const QPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent): QPrintDialog(printer, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPrintDialog() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPrintDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPrintDialog_virtualbase_metaObject(const VirtualQPrintDialog* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPrintDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPrintDialog_virtualbase_metacast(VirtualQPrintDialog* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPrintDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintDialog_virtualbase_metacall(VirtualQPrintDialog* self, int param1, int param2, void** param3);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QPrintDialog::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintDialog_virtualbase_exec(VirtualQPrintDialog* self);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QPrintDialog::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QPrintDialog_virtualbase_accept(VirtualQPrintDialog* self);

	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QPrintDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_done(VirtualQPrintDialog* self, int result);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPrintDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_setVisible(VirtualQPrintDialog* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPrintDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPrintDialog_virtualbase_sizeHint(const VirtualQPrintDialog* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPrintDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPrintDialog_virtualbase_minimumSizeHint(const VirtualQPrintDialog* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QPrintDialog::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QPrintDialog_virtualbase_open(VirtualQPrintDialog* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QPrintDialog::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QPrintDialog_virtualbase_reject(VirtualQPrintDialog* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPrintDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_keyPressEvent(VirtualQPrintDialog* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QPrintDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_closeEvent(VirtualQPrintDialog* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QPrintDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_showEvent(VirtualQPrintDialog* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QPrintDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_resizeEvent(VirtualQPrintDialog* self, QResizeEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QPrintDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_contextMenuEvent(VirtualQPrintDialog* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QPrintDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPrintDialog_virtualbase_eventFilter(VirtualQPrintDialog* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPrintDialog::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintDialog_virtualbase_devType(const VirtualQPrintDialog* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPrintDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintDialog_virtualbase_heightForWidth(const VirtualQPrintDialog* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPrintDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QPrintDialog_virtualbase_hasHeightForWidth(const VirtualQPrintDialog* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPrintDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QPrintDialog_virtualbase_paintEngine(const VirtualQPrintDialog* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPrintDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintDialog_virtualbase_event(VirtualQPrintDialog* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPrintDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_mousePressEvent(VirtualQPrintDialog* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPrintDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_mouseReleaseEvent(VirtualQPrintDialog* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPrintDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_mouseDoubleClickEvent(VirtualQPrintDialog* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPrintDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_mouseMoveEvent(VirtualQPrintDialog* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPrintDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_wheelEvent(VirtualQPrintDialog* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPrintDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_keyReleaseEvent(VirtualQPrintDialog* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPrintDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_focusInEvent(VirtualQPrintDialog* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPrintDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_focusOutEvent(VirtualQPrintDialog* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPrintDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_enterEvent(VirtualQPrintDialog* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPrintDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_leaveEvent(VirtualQPrintDialog* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPrintDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_paintEvent(VirtualQPrintDialog* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPrintDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_moveEvent(VirtualQPrintDialog* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPrintDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_tabletEvent(VirtualQPrintDialog* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPrintDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_actionEvent(VirtualQPrintDialog* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPrintDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_dragEnterEvent(VirtualQPrintDialog* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPrintDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_dragMoveEvent(VirtualQPrintDialog* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPrintDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_dragLeaveEvent(VirtualQPrintDialog* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPrintDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_dropEvent(VirtualQPrintDialog* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPrintDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_hideEvent(VirtualQPrintDialog* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPrintDialog::nativeEvent(eventType, message, result);
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

	friend bool QPrintDialog_virtualbase_nativeEvent(VirtualQPrintDialog* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPrintDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_changeEvent(VirtualQPrintDialog* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPrintDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrintDialog_virtualbase_metric(const VirtualQPrintDialog* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPrintDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_initPainter(const VirtualQPrintDialog* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPrintDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPrintDialog_virtualbase_redirected(const VirtualQPrintDialog* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPrintDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPrintDialog_virtualbase_sharedPainter(const VirtualQPrintDialog* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPrintDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_inputMethodEvent(VirtualQPrintDialog* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPrintDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QPrintDialog_virtualbase_inputMethodQuery(const VirtualQPrintDialog* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPrintDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QPrintDialog_virtualbase_focusNextPrevChild(VirtualQPrintDialog* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPrintDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_timerEvent(VirtualQPrintDialog* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPrintDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_childEvent(VirtualQPrintDialog* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPrintDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_customEvent(VirtualQPrintDialog* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPrintDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_connectNotify(VirtualQPrintDialog* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPrintDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPrintDialog_virtualbase_disconnectNotify(VirtualQPrintDialog* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPrintDialog_protectedbase_adjustPosition(VirtualQPrintDialog* self, QWidget* param1);
	friend void QPrintDialog_protectedbase_updateMicroFocus(VirtualQPrintDialog* self);
	friend void QPrintDialog_protectedbase_create(VirtualQPrintDialog* self);
	friend void QPrintDialog_protectedbase_destroy(VirtualQPrintDialog* self);
	friend bool QPrintDialog_protectedbase_focusNextChild(VirtualQPrintDialog* self);
	friend bool QPrintDialog_protectedbase_focusPreviousChild(VirtualQPrintDialog* self);
	friend QObject* QPrintDialog_protectedbase_sender(const VirtualQPrintDialog* self);
	friend int QPrintDialog_protectedbase_senderSignalIndex(const VirtualQPrintDialog* self);
	friend int QPrintDialog_protectedbase_receivers(const VirtualQPrintDialog* self, const char* signal);
	friend bool QPrintDialog_protectedbase_isSignalConnected(const VirtualQPrintDialog* self, QMetaMethod* signal);
};

VirtualQPrintDialog* QPrintDialog_new(const QPrintDialog_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQPrintDialog(vtbl, vdata, parent);
}

VirtualQPrintDialog* QPrintDialog_new2(const QPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer) {
	return new VirtualQPrintDialog(vtbl, vdata, printer);
}

VirtualQPrintDialog* QPrintDialog_new3(const QPrintDialog_VTable* vtbl, void* vdata) {
	return new VirtualQPrintDialog(vtbl, vdata);
}

VirtualQPrintDialog* QPrintDialog_new4(const QPrintDialog_VTable* vtbl, void* vdata, QPrinter* printer, QWidget* parent) {
	return new VirtualQPrintDialog(vtbl, vdata, printer, parent);
}

void QPrintDialog_virtbase(QPrintDialog* src, QAbstractPrintDialog** outptr_QAbstractPrintDialog) {
	*outptr_QAbstractPrintDialog = static_cast<QAbstractPrintDialog*>(src);
}

QMetaObject* QPrintDialog_metaObject(const QPrintDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPrintDialog_metacast(QPrintDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPrintDialog_metacall(QPrintDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPrintDialog_tr(const char* s) {
	QString _ret = QPrintDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintDialog_trUtf8(const char* s) {
	QString _ret = QPrintDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPrintDialog_exec(QPrintDialog* self) {
	return self->exec();
}

void QPrintDialog_accept(QPrintDialog* self) {
	self->accept();
}

void QPrintDialog_done(QPrintDialog* self, int result) {
	self->done(static_cast<int>(result));
}

void QPrintDialog_setOption(QPrintDialog* self, int option) {
	self->setOption(static_cast<QAbstractPrintDialog::PrintDialogOption>(option));
}

bool QPrintDialog_testOption(const QPrintDialog* self, int option) {
	return self->testOption(static_cast<QAbstractPrintDialog::PrintDialogOption>(option));
}

void QPrintDialog_setOptions(QPrintDialog* self, int options) {
	self->setOptions(static_cast<QAbstractPrintDialog::PrintDialogOptions>(options));
}

int QPrintDialog_options(const QPrintDialog* self) {
	QAbstractPrintDialog::PrintDialogOptions _ret = self->options();
	return static_cast<int>(_ret);
}

void QPrintDialog_setVisible(QPrintDialog* self, bool visible) {
	self->setVisible(visible);
}

void QPrintDialog_accepted(QPrintDialog* self, QPrinter* printer) {
	self->accepted(printer);
}

void QPrintDialog_connect_accepted(VirtualQPrintDialog* self, intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QPrinter*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QPrinter*);
		void operator()(QPrinter* printer) {
			QPrinter* sigval1 = printer;
			callback(slot, sigval1);
		}
	};
	VirtualQPrintDialog::connect(self, static_cast<void (QPrintDialog::*)(QPrinter*)>(&QPrintDialog::accepted), self, local_caller{slot, callback, release});
}

struct miqt_string QPrintDialog_tr2(const char* s, const char* c) {
	QString _ret = QPrintDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QPrintDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QPrintDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPrintDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrintDialog_setOption2(QPrintDialog* self, int option, bool on) {
	self->setOption(static_cast<QAbstractPrintDialog::PrintDialogOption>(option), on);
}

QMetaObject* QPrintDialog_virtualbase_metaObject(const VirtualQPrintDialog* self) {

	return (QMetaObject*) self->QPrintDialog::metaObject();
}

void* QPrintDialog_virtualbase_metacast(VirtualQPrintDialog* self, const char* param1) {

	return self->QPrintDialog::qt_metacast(param1);
}

int QPrintDialog_virtualbase_metacall(VirtualQPrintDialog* self, int param1, int param2, void** param3) {

	return self->QPrintDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QPrintDialog_virtualbase_exec(VirtualQPrintDialog* self) {

	return self->QPrintDialog::exec();
}

void QPrintDialog_virtualbase_accept(VirtualQPrintDialog* self) {

	self->QPrintDialog::accept();
}

void QPrintDialog_virtualbase_done(VirtualQPrintDialog* self, int result) {

	self->QPrintDialog::done(static_cast<int>(result));
}

void QPrintDialog_virtualbase_setVisible(VirtualQPrintDialog* self, bool visible) {

	self->QPrintDialog::setVisible(visible);
}

QSize* QPrintDialog_virtualbase_sizeHint(const VirtualQPrintDialog* self) {

	return new QSize(self->QPrintDialog::sizeHint());
}

QSize* QPrintDialog_virtualbase_minimumSizeHint(const VirtualQPrintDialog* self) {

	return new QSize(self->QPrintDialog::minimumSizeHint());
}

void QPrintDialog_virtualbase_open(VirtualQPrintDialog* self) {

	self->QPrintDialog::open();
}

void QPrintDialog_virtualbase_reject(VirtualQPrintDialog* self) {

	self->QPrintDialog::reject();
}

void QPrintDialog_virtualbase_keyPressEvent(VirtualQPrintDialog* self, QKeyEvent* param1) {

	self->QPrintDialog::keyPressEvent(param1);
}

void QPrintDialog_virtualbase_closeEvent(VirtualQPrintDialog* self, QCloseEvent* param1) {

	self->QPrintDialog::closeEvent(param1);
}

void QPrintDialog_virtualbase_showEvent(VirtualQPrintDialog* self, QShowEvent* param1) {

	self->QPrintDialog::showEvent(param1);
}

void QPrintDialog_virtualbase_resizeEvent(VirtualQPrintDialog* self, QResizeEvent* param1) {

	self->QPrintDialog::resizeEvent(param1);
}

void QPrintDialog_virtualbase_contextMenuEvent(VirtualQPrintDialog* self, QContextMenuEvent* param1) {

	self->QPrintDialog::contextMenuEvent(param1);
}

bool QPrintDialog_virtualbase_eventFilter(VirtualQPrintDialog* self, QObject* param1, QEvent* param2) {

	return self->QPrintDialog::eventFilter(param1, param2);
}

int QPrintDialog_virtualbase_devType(const VirtualQPrintDialog* self) {

	return self->QPrintDialog::devType();
}

int QPrintDialog_virtualbase_heightForWidth(const VirtualQPrintDialog* self, int param1) {

	return self->QPrintDialog::heightForWidth(static_cast<int>(param1));
}

bool QPrintDialog_virtualbase_hasHeightForWidth(const VirtualQPrintDialog* self) {

	return self->QPrintDialog::hasHeightForWidth();
}

QPaintEngine* QPrintDialog_virtualbase_paintEngine(const VirtualQPrintDialog* self) {

	return self->QPrintDialog::paintEngine();
}

bool QPrintDialog_virtualbase_event(VirtualQPrintDialog* self, QEvent* event) {

	return self->QPrintDialog::event(event);
}

void QPrintDialog_virtualbase_mousePressEvent(VirtualQPrintDialog* self, QMouseEvent* event) {

	self->QPrintDialog::mousePressEvent(event);
}

void QPrintDialog_virtualbase_mouseReleaseEvent(VirtualQPrintDialog* self, QMouseEvent* event) {

	self->QPrintDialog::mouseReleaseEvent(event);
}

void QPrintDialog_virtualbase_mouseDoubleClickEvent(VirtualQPrintDialog* self, QMouseEvent* event) {

	self->QPrintDialog::mouseDoubleClickEvent(event);
}

void QPrintDialog_virtualbase_mouseMoveEvent(VirtualQPrintDialog* self, QMouseEvent* event) {

	self->QPrintDialog::mouseMoveEvent(event);
}

void QPrintDialog_virtualbase_wheelEvent(VirtualQPrintDialog* self, QWheelEvent* event) {

	self->QPrintDialog::wheelEvent(event);
}

void QPrintDialog_virtualbase_keyReleaseEvent(VirtualQPrintDialog* self, QKeyEvent* event) {

	self->QPrintDialog::keyReleaseEvent(event);
}

void QPrintDialog_virtualbase_focusInEvent(VirtualQPrintDialog* self, QFocusEvent* event) {

	self->QPrintDialog::focusInEvent(event);
}

void QPrintDialog_virtualbase_focusOutEvent(VirtualQPrintDialog* self, QFocusEvent* event) {

	self->QPrintDialog::focusOutEvent(event);
}

void QPrintDialog_virtualbase_enterEvent(VirtualQPrintDialog* self, QEvent* event) {

	self->QPrintDialog::enterEvent(event);
}

void QPrintDialog_virtualbase_leaveEvent(VirtualQPrintDialog* self, QEvent* event) {

	self->QPrintDialog::leaveEvent(event);
}

void QPrintDialog_virtualbase_paintEvent(VirtualQPrintDialog* self, QPaintEvent* event) {

	self->QPrintDialog::paintEvent(event);
}

void QPrintDialog_virtualbase_moveEvent(VirtualQPrintDialog* self, QMoveEvent* event) {

	self->QPrintDialog::moveEvent(event);
}

void QPrintDialog_virtualbase_tabletEvent(VirtualQPrintDialog* self, QTabletEvent* event) {

	self->QPrintDialog::tabletEvent(event);
}

void QPrintDialog_virtualbase_actionEvent(VirtualQPrintDialog* self, QActionEvent* event) {

	self->QPrintDialog::actionEvent(event);
}

void QPrintDialog_virtualbase_dragEnterEvent(VirtualQPrintDialog* self, QDragEnterEvent* event) {

	self->QPrintDialog::dragEnterEvent(event);
}

void QPrintDialog_virtualbase_dragMoveEvent(VirtualQPrintDialog* self, QDragMoveEvent* event) {

	self->QPrintDialog::dragMoveEvent(event);
}

void QPrintDialog_virtualbase_dragLeaveEvent(VirtualQPrintDialog* self, QDragLeaveEvent* event) {

	self->QPrintDialog::dragLeaveEvent(event);
}

void QPrintDialog_virtualbase_dropEvent(VirtualQPrintDialog* self, QDropEvent* event) {

	self->QPrintDialog::dropEvent(event);
}

void QPrintDialog_virtualbase_hideEvent(VirtualQPrintDialog* self, QHideEvent* event) {

	self->QPrintDialog::hideEvent(event);
}

bool QPrintDialog_virtualbase_nativeEvent(VirtualQPrintDialog* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QPrintDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QPrintDialog_virtualbase_changeEvent(VirtualQPrintDialog* self, QEvent* param1) {

	self->QPrintDialog::changeEvent(param1);
}

int QPrintDialog_virtualbase_metric(const VirtualQPrintDialog* self, int param1) {

	return self->QPrintDialog::metric(static_cast<VirtualQPrintDialog::PaintDeviceMetric>(param1));
}

void QPrintDialog_virtualbase_initPainter(const VirtualQPrintDialog* self, QPainter* painter) {

	self->QPrintDialog::initPainter(painter);
}

QPaintDevice* QPrintDialog_virtualbase_redirected(const VirtualQPrintDialog* self, QPoint* offset) {

	return self->QPrintDialog::redirected(offset);
}

QPainter* QPrintDialog_virtualbase_sharedPainter(const VirtualQPrintDialog* self) {

	return self->QPrintDialog::sharedPainter();
}

void QPrintDialog_virtualbase_inputMethodEvent(VirtualQPrintDialog* self, QInputMethodEvent* param1) {

	self->QPrintDialog::inputMethodEvent(param1);
}

QVariant* QPrintDialog_virtualbase_inputMethodQuery(const VirtualQPrintDialog* self, int param1) {

	return new QVariant(self->QPrintDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QPrintDialog_virtualbase_focusNextPrevChild(VirtualQPrintDialog* self, bool next) {

	return self->QPrintDialog::focusNextPrevChild(next);
}

void QPrintDialog_virtualbase_timerEvent(VirtualQPrintDialog* self, QTimerEvent* event) {

	self->QPrintDialog::timerEvent(event);
}

void QPrintDialog_virtualbase_childEvent(VirtualQPrintDialog* self, QChildEvent* event) {

	self->QPrintDialog::childEvent(event);
}

void QPrintDialog_virtualbase_customEvent(VirtualQPrintDialog* self, QEvent* event) {

	self->QPrintDialog::customEvent(event);
}

void QPrintDialog_virtualbase_connectNotify(VirtualQPrintDialog* self, QMetaMethod* signal) {

	self->QPrintDialog::connectNotify(*signal);
}

void QPrintDialog_virtualbase_disconnectNotify(VirtualQPrintDialog* self, QMetaMethod* signal) {

	self->QPrintDialog::disconnectNotify(*signal);
}

const QMetaObject* QPrintDialog_staticMetaObject() { return &QPrintDialog::staticMetaObject; }

const QPrintDialog_VTable* QPrintDialog_vtbl(const VirtualQPrintDialog* self) { return self->vtbl; }
void* QPrintDialog_vdata(const VirtualQPrintDialog* self) { return self->vdata; }
void QPrintDialog_setVdata(VirtualQPrintDialog* self, void* vdata) { self->vdata = vdata; }

void QPrintDialog_protectedbase_adjustPosition(VirtualQPrintDialog* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QPrintDialog_protectedbase_updateMicroFocus(VirtualQPrintDialog* self) {
	self->updateMicroFocus();
}

void QPrintDialog_protectedbase_create(VirtualQPrintDialog* self) {
	self->create();
}

void QPrintDialog_protectedbase_destroy(VirtualQPrintDialog* self) {
	self->destroy();
}

bool QPrintDialog_protectedbase_focusNextChild(VirtualQPrintDialog* self) {
	return self->focusNextChild();
}

bool QPrintDialog_protectedbase_focusPreviousChild(VirtualQPrintDialog* self) {
	return self->focusPreviousChild();
}

QObject* QPrintDialog_protectedbase_sender(const VirtualQPrintDialog* self) {
	return self->sender();
}

int QPrintDialog_protectedbase_senderSignalIndex(const VirtualQPrintDialog* self) {
	return self->senderSignalIndex();
}

int QPrintDialog_protectedbase_receivers(const VirtualQPrintDialog* self, const char* signal) {
	return self->receivers(signal);
}

bool QPrintDialog_protectedbase_isSignalConnected(const VirtualQPrintDialog* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPrintDialog_delete(QPrintDialog* self) {
	delete self;
}

