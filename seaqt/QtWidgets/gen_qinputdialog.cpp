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
#include <QInputDialog>
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
#include <qinputdialog.h>
#include "gen_qinputdialog.h"
class VirtualQInputDialog final : public QInputDialog {
	const QInputDialog_VTable* vtbl;
	void* vdata;
public:
	friend const QInputDialog_VTable* QInputDialog_vtbl(const VirtualQInputDialog* self);
	friend void* QInputDialog_vdata(const VirtualQInputDialog* self);
	friend void QInputDialog_setVdata(VirtualQInputDialog* self, void* vdata);

	VirtualQInputDialog(const QInputDialog_VTable* vtbl, void* vdata, QWidget* parent): QInputDialog(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQInputDialog(const QInputDialog_VTable* vtbl, void* vdata): QInputDialog(), vtbl(vtbl), vdata(vdata) {}
	VirtualQInputDialog(const QInputDialog_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags flags): QInputDialog(parent, flags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQInputDialog() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QInputDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QInputDialog_virtualbase_metaObject(const VirtualQInputDialog* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QInputDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QInputDialog_virtualbase_metacast(VirtualQInputDialog* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QInputDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QInputDialog_virtualbase_metacall(VirtualQInputDialog* self, int param1, int param2, void** param3);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QInputDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QInputDialog_virtualbase_minimumSizeHint(const VirtualQInputDialog* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QInputDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QInputDialog_virtualbase_sizeHint(const VirtualQInputDialog* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QInputDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QInputDialog_virtualbase_setVisible(VirtualQInputDialog* self, bool visible);

	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QInputDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(this, sigval1);

	}

	friend void QInputDialog_virtualbase_done(VirtualQInputDialog* self, int result);

	virtual void open() override {
		if (vtbl->open == 0) {
			QInputDialog::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QInputDialog_virtualbase_open(VirtualQInputDialog* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QInputDialog::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QInputDialog_virtualbase_exec(VirtualQInputDialog* self);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QInputDialog::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QInputDialog_virtualbase_accept(VirtualQInputDialog* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QInputDialog::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QInputDialog_virtualbase_reject(VirtualQInputDialog* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QInputDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_keyPressEvent(VirtualQInputDialog* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QInputDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_closeEvent(VirtualQInputDialog* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QInputDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_showEvent(VirtualQInputDialog* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QInputDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_resizeEvent(VirtualQInputDialog* self, QResizeEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QInputDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_contextMenuEvent(VirtualQInputDialog* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QInputDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QInputDialog_virtualbase_eventFilter(VirtualQInputDialog* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QInputDialog::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QInputDialog_virtualbase_devType(const VirtualQInputDialog* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QInputDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QInputDialog_virtualbase_heightForWidth(const VirtualQInputDialog* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QInputDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QInputDialog_virtualbase_hasHeightForWidth(const VirtualQInputDialog* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QInputDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QInputDialog_virtualbase_paintEngine(const VirtualQInputDialog* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QInputDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QInputDialog_virtualbase_event(VirtualQInputDialog* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QInputDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_mousePressEvent(VirtualQInputDialog* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QInputDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_mouseReleaseEvent(VirtualQInputDialog* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QInputDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_mouseDoubleClickEvent(VirtualQInputDialog* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QInputDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_mouseMoveEvent(VirtualQInputDialog* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QInputDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_wheelEvent(VirtualQInputDialog* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QInputDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_keyReleaseEvent(VirtualQInputDialog* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QInputDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_focusInEvent(VirtualQInputDialog* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QInputDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_focusOutEvent(VirtualQInputDialog* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QInputDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_enterEvent(VirtualQInputDialog* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QInputDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_leaveEvent(VirtualQInputDialog* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QInputDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_paintEvent(VirtualQInputDialog* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QInputDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_moveEvent(VirtualQInputDialog* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QInputDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_tabletEvent(VirtualQInputDialog* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QInputDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_actionEvent(VirtualQInputDialog* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QInputDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_dragEnterEvent(VirtualQInputDialog* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QInputDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_dragMoveEvent(VirtualQInputDialog* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QInputDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_dragLeaveEvent(VirtualQInputDialog* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QInputDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_dropEvent(VirtualQInputDialog* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QInputDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_hideEvent(VirtualQInputDialog* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QInputDialog::nativeEvent(eventType, message, result);
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

	friend bool QInputDialog_virtualbase_nativeEvent(VirtualQInputDialog* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QInputDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_changeEvent(VirtualQInputDialog* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QInputDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QInputDialog_virtualbase_metric(const VirtualQInputDialog* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QInputDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QInputDialog_virtualbase_initPainter(const VirtualQInputDialog* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QInputDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QInputDialog_virtualbase_redirected(const VirtualQInputDialog* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QInputDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QInputDialog_virtualbase_sharedPainter(const VirtualQInputDialog* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QInputDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_inputMethodEvent(VirtualQInputDialog* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QInputDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QInputDialog_virtualbase_inputMethodQuery(const VirtualQInputDialog* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QInputDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QInputDialog_virtualbase_focusNextPrevChild(VirtualQInputDialog* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QInputDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_timerEvent(VirtualQInputDialog* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QInputDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_childEvent(VirtualQInputDialog* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QInputDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QInputDialog_virtualbase_customEvent(VirtualQInputDialog* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QInputDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QInputDialog_virtualbase_connectNotify(VirtualQInputDialog* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QInputDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QInputDialog_virtualbase_disconnectNotify(VirtualQInputDialog* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QInputDialog_protectedbase_adjustPosition(VirtualQInputDialog* self, QWidget* param1);
	friend void QInputDialog_protectedbase_updateMicroFocus(VirtualQInputDialog* self);
	friend void QInputDialog_protectedbase_create(VirtualQInputDialog* self);
	friend void QInputDialog_protectedbase_destroy(VirtualQInputDialog* self);
	friend bool QInputDialog_protectedbase_focusNextChild(VirtualQInputDialog* self);
	friend bool QInputDialog_protectedbase_focusPreviousChild(VirtualQInputDialog* self);
	friend QObject* QInputDialog_protectedbase_sender(const VirtualQInputDialog* self);
	friend int QInputDialog_protectedbase_senderSignalIndex(const VirtualQInputDialog* self);
	friend int QInputDialog_protectedbase_receivers(const VirtualQInputDialog* self, const char* signal);
	friend bool QInputDialog_protectedbase_isSignalConnected(const VirtualQInputDialog* self, QMetaMethod* signal);
};

VirtualQInputDialog* QInputDialog_new(const QInputDialog_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQInputDialog(vtbl, vdata, parent);
}

VirtualQInputDialog* QInputDialog_new2(const QInputDialog_VTable* vtbl, void* vdata) {
	return new VirtualQInputDialog(vtbl, vdata);
}

VirtualQInputDialog* QInputDialog_new3(const QInputDialog_VTable* vtbl, void* vdata, QWidget* parent, int flags) {
	return new VirtualQInputDialog(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(flags));
}

void QInputDialog_virtbase(QInputDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QInputDialog_metaObject(const QInputDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QInputDialog_metacast(QInputDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QInputDialog_metacall(QInputDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QInputDialog_tr(const char* s) {
	QString _ret = QInputDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_trUtf8(const char* s) {
	QString _ret = QInputDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setInputMode(QInputDialog* self, int mode) {
	self->setInputMode(static_cast<QInputDialog::InputMode>(mode));
}

int QInputDialog_inputMode(const QInputDialog* self) {
	QInputDialog::InputMode _ret = self->inputMode();
	return static_cast<int>(_ret);
}

void QInputDialog_setLabelText(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setLabelText(text_QString);
}

struct miqt_string QInputDialog_labelText(const QInputDialog* self) {
	QString _ret = self->labelText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setOption(QInputDialog* self, int option) {
	self->setOption(static_cast<QInputDialog::InputDialogOption>(option));
}

bool QInputDialog_testOption(const QInputDialog* self, int option) {
	return self->testOption(static_cast<QInputDialog::InputDialogOption>(option));
}

void QInputDialog_setOptions(QInputDialog* self, int options) {
	self->setOptions(static_cast<QInputDialog::InputDialogOptions>(options));
}

int QInputDialog_options(const QInputDialog* self) {
	QInputDialog::InputDialogOptions _ret = self->options();
	return static_cast<int>(_ret);
}

void QInputDialog_setTextValue(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setTextValue(text_QString);
}

struct miqt_string QInputDialog_textValue(const QInputDialog* self) {
	QString _ret = self->textValue();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setTextEchoMode(QInputDialog* self, int mode) {
	self->setTextEchoMode(static_cast<QLineEdit::EchoMode>(mode));
}

int QInputDialog_textEchoMode(const QInputDialog* self) {
	QLineEdit::EchoMode _ret = self->textEchoMode();
	return static_cast<int>(_ret);
}

void QInputDialog_setComboBoxEditable(QInputDialog* self, bool editable) {
	self->setComboBoxEditable(editable);
}

bool QInputDialog_isComboBoxEditable(const QInputDialog* self) {
	return self->isComboBoxEditable();
}

void QInputDialog_setComboBoxItems(QInputDialog* self, struct miqt_array /* of struct miqt_string */  items) {
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	self->setComboBoxItems(items_QList);
}

struct miqt_array /* of struct miqt_string */  QInputDialog_comboBoxItems(const QInputDialog* self) {
	QStringList _ret = self->comboBoxItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QInputDialog_setIntValue(QInputDialog* self, int value) {
	self->setIntValue(static_cast<int>(value));
}

int QInputDialog_intValue(const QInputDialog* self) {
	return self->intValue();
}

void QInputDialog_setIntMinimum(QInputDialog* self, int min) {
	self->setIntMinimum(static_cast<int>(min));
}

int QInputDialog_intMinimum(const QInputDialog* self) {
	return self->intMinimum();
}

void QInputDialog_setIntMaximum(QInputDialog* self, int max) {
	self->setIntMaximum(static_cast<int>(max));
}

int QInputDialog_intMaximum(const QInputDialog* self) {
	return self->intMaximum();
}

void QInputDialog_setIntRange(QInputDialog* self, int min, int max) {
	self->setIntRange(static_cast<int>(min), static_cast<int>(max));
}

void QInputDialog_setIntStep(QInputDialog* self, int step) {
	self->setIntStep(static_cast<int>(step));
}

int QInputDialog_intStep(const QInputDialog* self) {
	return self->intStep();
}

void QInputDialog_setDoubleValue(QInputDialog* self, double value) {
	self->setDoubleValue(static_cast<double>(value));
}

double QInputDialog_doubleValue(const QInputDialog* self) {
	return self->doubleValue();
}

void QInputDialog_setDoubleMinimum(QInputDialog* self, double min) {
	self->setDoubleMinimum(static_cast<double>(min));
}

double QInputDialog_doubleMinimum(const QInputDialog* self) {
	return self->doubleMinimum();
}

void QInputDialog_setDoubleMaximum(QInputDialog* self, double max) {
	self->setDoubleMaximum(static_cast<double>(max));
}

double QInputDialog_doubleMaximum(const QInputDialog* self) {
	return self->doubleMaximum();
}

void QInputDialog_setDoubleRange(QInputDialog* self, double min, double max) {
	self->setDoubleRange(static_cast<double>(min), static_cast<double>(max));
}

void QInputDialog_setDoubleDecimals(QInputDialog* self, int decimals) {
	self->setDoubleDecimals(static_cast<int>(decimals));
}

int QInputDialog_doubleDecimals(const QInputDialog* self) {
	return self->doubleDecimals();
}

void QInputDialog_setOkButtonText(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setOkButtonText(text_QString);
}

struct miqt_string QInputDialog_okButtonText(const QInputDialog* self) {
	QString _ret = self->okButtonText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setCancelButtonText(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setCancelButtonText(text_QString);
}

struct miqt_string QInputDialog_cancelButtonText(const QInputDialog* self) {
	QString _ret = self->cancelButtonText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QInputDialog_minimumSizeHint(const QInputDialog* self) {
	return new QSize(self->minimumSizeHint());
}

QSize* QInputDialog_sizeHint(const QInputDialog* self) {
	return new QSize(self->sizeHint());
}

void QInputDialog_setVisible(QInputDialog* self, bool visible) {
	self->setVisible(visible);
}

struct miqt_string QInputDialog_getText(QWidget* parent, struct miqt_string title, struct miqt_string label) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText(QWidget* parent, struct miqt_string title, struct miqt_string label) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QInputDialog_getInt(QWidget* parent, struct miqt_string title, struct miqt_string label) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString);
}

double QInputDialog_getDouble(QWidget* parent, struct miqt_string title, struct miqt_string label) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString);
}

double QInputDialog_getDouble2(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok, int flags, double step) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue), static_cast<int>(decimals), ok, static_cast<Qt::WindowFlags>(flags), static_cast<double>(step));
}

void QInputDialog_setDoubleStep(QInputDialog* self, double step) {
	self->setDoubleStep(static_cast<double>(step));
}

double QInputDialog_doubleStep(const QInputDialog* self) {
	return self->doubleStep();
}

void QInputDialog_textValueChanged(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->textValueChanged(text_QString);
}

void QInputDialog_connect_textValueChanged(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& text) {
			const QString text_ret = text;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray text_b = text_ret.toUtf8();
			struct miqt_string text_ms;
			text_ms.len = text_b.length();
			text_ms.data = static_cast<char*>(malloc(text_ms.len));
			memcpy(text_ms.data, text_b.data(), text_ms.len);
			struct miqt_string sigval1 = text_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(const QString&)>(&QInputDialog::textValueChanged), self, local_caller{slot, callback, release});
}

void QInputDialog_textValueSelected(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->textValueSelected(text_QString);
}

void QInputDialog_connect_textValueSelected(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& text) {
			const QString text_ret = text;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray text_b = text_ret.toUtf8();
			struct miqt_string text_ms;
			text_ms.len = text_b.length();
			text_ms.data = static_cast<char*>(malloc(text_ms.len));
			memcpy(text_ms.data, text_b.data(), text_ms.len);
			struct miqt_string sigval1 = text_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(const QString&)>(&QInputDialog::textValueSelected), self, local_caller{slot, callback, release});
}

void QInputDialog_intValueChanged(QInputDialog* self, int value) {
	self->intValueChanged(static_cast<int>(value));
}

void QInputDialog_connect_intValueChanged(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int value) {
			int sigval1 = value;
			callback(slot, sigval1);
		}
	};
	VirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(int)>(&QInputDialog::intValueChanged), self, local_caller{slot, callback, release});
}

void QInputDialog_intValueSelected(QInputDialog* self, int value) {
	self->intValueSelected(static_cast<int>(value));
}

void QInputDialog_connect_intValueSelected(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int value) {
			int sigval1 = value;
			callback(slot, sigval1);
		}
	};
	VirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(int)>(&QInputDialog::intValueSelected), self, local_caller{slot, callback, release});
}

void QInputDialog_doubleValueChanged(QInputDialog* self, double value) {
	self->doubleValueChanged(static_cast<double>(value));
}

void QInputDialog_connect_doubleValueChanged(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(double value) {
			double sigval1 = value;
			callback(slot, sigval1);
		}
	};
	VirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(double)>(&QInputDialog::doubleValueChanged), self, local_caller{slot, callback, release});
}

void QInputDialog_doubleValueSelected(QInputDialog* self, double value) {
	self->doubleValueSelected(static_cast<double>(value));
}

void QInputDialog_connect_doubleValueSelected(VirtualQInputDialog* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(double value) {
			double sigval1 = value;
			callback(slot, sigval1);
		}
	};
	VirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(double)>(&QInputDialog::doubleValueSelected), self, local_caller{slot, callback, release});
}

void QInputDialog_done(QInputDialog* self, int result) {
	self->done(static_cast<int>(result));
}

struct miqt_string QInputDialog_tr2(const char* s, const char* c) {
	QString _ret = QInputDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QInputDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QInputDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QInputDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setOption2(QInputDialog* self, int option, bool on) {
	self->setOption(static_cast<QInputDialog::InputDialogOption>(option), on);
}

struct miqt_string QInputDialog_getText4(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getText5(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo), text_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getText6(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo), text_QString, ok);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getText7(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo), text_QString, ok, static_cast<Qt::WindowFlags>(flags));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getText8(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text, bool* ok, int flags, int inputMethodHints) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo), text_QString, ok, static_cast<Qt::WindowFlags>(flags), static_cast<Qt::InputMethodHints>(inputMethodHints));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText4(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString, text_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText5(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString, text_QString, ok);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText6(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString, text_QString, ok, static_cast<Qt::WindowFlags>(flags));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText7(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text, bool* ok, int flags, int inputMethodHints) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString, text_QString, ok, static_cast<Qt::WindowFlags>(flags), static_cast<Qt::InputMethodHints>(inputMethodHints));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem5(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem6(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current), editable);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem7(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current), editable, ok);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem8(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current), editable, ok, static_cast<Qt::WindowFlags>(flags));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem9(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable, bool* ok, int flags, int inputMethodHints) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current), editable, ok, static_cast<Qt::WindowFlags>(flags), static_cast<Qt::InputMethodHints>(inputMethodHints));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QInputDialog_getInt4(QWidget* parent, struct miqt_string title, struct miqt_string label, int value) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value));
}

int QInputDialog_getInt5(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue));
}

int QInputDialog_getInt6(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue), static_cast<int>(maxValue));
}

int QInputDialog_getInt7(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue, int step) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue), static_cast<int>(maxValue), static_cast<int>(step));
}

int QInputDialog_getInt8(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue, int step, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue), static_cast<int>(maxValue), static_cast<int>(step), ok);
}

int QInputDialog_getInt9(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue, int step, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue), static_cast<int>(maxValue), static_cast<int>(step), ok, static_cast<Qt::WindowFlags>(flags));
}

double QInputDialog_getDouble4(QWidget* parent, struct miqt_string title, struct miqt_string label, double value) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value));
}

double QInputDialog_getDouble5(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue));
}

double QInputDialog_getDouble6(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue));
}

double QInputDialog_getDouble7(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue), static_cast<int>(decimals));
}

double QInputDialog_getDouble8(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue), static_cast<int>(decimals), ok);
}

double QInputDialog_getDouble9(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue), static_cast<int>(decimals), ok, static_cast<Qt::WindowFlags>(flags));
}

QMetaObject* QInputDialog_virtualbase_metaObject(const VirtualQInputDialog* self) {

	return (QMetaObject*) self->QInputDialog::metaObject();
}

void* QInputDialog_virtualbase_metacast(VirtualQInputDialog* self, const char* param1) {

	return self->QInputDialog::qt_metacast(param1);
}

int QInputDialog_virtualbase_metacall(VirtualQInputDialog* self, int param1, int param2, void** param3) {

	return self->QInputDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QInputDialog_virtualbase_minimumSizeHint(const VirtualQInputDialog* self) {

	return new QSize(self->QInputDialog::minimumSizeHint());
}

QSize* QInputDialog_virtualbase_sizeHint(const VirtualQInputDialog* self) {

	return new QSize(self->QInputDialog::sizeHint());
}

void QInputDialog_virtualbase_setVisible(VirtualQInputDialog* self, bool visible) {

	self->QInputDialog::setVisible(visible);
}

void QInputDialog_virtualbase_done(VirtualQInputDialog* self, int result) {

	self->QInputDialog::done(static_cast<int>(result));
}

void QInputDialog_virtualbase_open(VirtualQInputDialog* self) {

	self->QInputDialog::open();
}

int QInputDialog_virtualbase_exec(VirtualQInputDialog* self) {

	return self->QInputDialog::exec();
}

void QInputDialog_virtualbase_accept(VirtualQInputDialog* self) {

	self->QInputDialog::accept();
}

void QInputDialog_virtualbase_reject(VirtualQInputDialog* self) {

	self->QInputDialog::reject();
}

void QInputDialog_virtualbase_keyPressEvent(VirtualQInputDialog* self, QKeyEvent* param1) {

	self->QInputDialog::keyPressEvent(param1);
}

void QInputDialog_virtualbase_closeEvent(VirtualQInputDialog* self, QCloseEvent* param1) {

	self->QInputDialog::closeEvent(param1);
}

void QInputDialog_virtualbase_showEvent(VirtualQInputDialog* self, QShowEvent* param1) {

	self->QInputDialog::showEvent(param1);
}

void QInputDialog_virtualbase_resizeEvent(VirtualQInputDialog* self, QResizeEvent* param1) {

	self->QInputDialog::resizeEvent(param1);
}

void QInputDialog_virtualbase_contextMenuEvent(VirtualQInputDialog* self, QContextMenuEvent* param1) {

	self->QInputDialog::contextMenuEvent(param1);
}

bool QInputDialog_virtualbase_eventFilter(VirtualQInputDialog* self, QObject* param1, QEvent* param2) {

	return self->QInputDialog::eventFilter(param1, param2);
}

int QInputDialog_virtualbase_devType(const VirtualQInputDialog* self) {

	return self->QInputDialog::devType();
}

int QInputDialog_virtualbase_heightForWidth(const VirtualQInputDialog* self, int param1) {

	return self->QInputDialog::heightForWidth(static_cast<int>(param1));
}

bool QInputDialog_virtualbase_hasHeightForWidth(const VirtualQInputDialog* self) {

	return self->QInputDialog::hasHeightForWidth();
}

QPaintEngine* QInputDialog_virtualbase_paintEngine(const VirtualQInputDialog* self) {

	return self->QInputDialog::paintEngine();
}

bool QInputDialog_virtualbase_event(VirtualQInputDialog* self, QEvent* event) {

	return self->QInputDialog::event(event);
}

void QInputDialog_virtualbase_mousePressEvent(VirtualQInputDialog* self, QMouseEvent* event) {

	self->QInputDialog::mousePressEvent(event);
}

void QInputDialog_virtualbase_mouseReleaseEvent(VirtualQInputDialog* self, QMouseEvent* event) {

	self->QInputDialog::mouseReleaseEvent(event);
}

void QInputDialog_virtualbase_mouseDoubleClickEvent(VirtualQInputDialog* self, QMouseEvent* event) {

	self->QInputDialog::mouseDoubleClickEvent(event);
}

void QInputDialog_virtualbase_mouseMoveEvent(VirtualQInputDialog* self, QMouseEvent* event) {

	self->QInputDialog::mouseMoveEvent(event);
}

void QInputDialog_virtualbase_wheelEvent(VirtualQInputDialog* self, QWheelEvent* event) {

	self->QInputDialog::wheelEvent(event);
}

void QInputDialog_virtualbase_keyReleaseEvent(VirtualQInputDialog* self, QKeyEvent* event) {

	self->QInputDialog::keyReleaseEvent(event);
}

void QInputDialog_virtualbase_focusInEvent(VirtualQInputDialog* self, QFocusEvent* event) {

	self->QInputDialog::focusInEvent(event);
}

void QInputDialog_virtualbase_focusOutEvent(VirtualQInputDialog* self, QFocusEvent* event) {

	self->QInputDialog::focusOutEvent(event);
}

void QInputDialog_virtualbase_enterEvent(VirtualQInputDialog* self, QEvent* event) {

	self->QInputDialog::enterEvent(event);
}

void QInputDialog_virtualbase_leaveEvent(VirtualQInputDialog* self, QEvent* event) {

	self->QInputDialog::leaveEvent(event);
}

void QInputDialog_virtualbase_paintEvent(VirtualQInputDialog* self, QPaintEvent* event) {

	self->QInputDialog::paintEvent(event);
}

void QInputDialog_virtualbase_moveEvent(VirtualQInputDialog* self, QMoveEvent* event) {

	self->QInputDialog::moveEvent(event);
}

void QInputDialog_virtualbase_tabletEvent(VirtualQInputDialog* self, QTabletEvent* event) {

	self->QInputDialog::tabletEvent(event);
}

void QInputDialog_virtualbase_actionEvent(VirtualQInputDialog* self, QActionEvent* event) {

	self->QInputDialog::actionEvent(event);
}

void QInputDialog_virtualbase_dragEnterEvent(VirtualQInputDialog* self, QDragEnterEvent* event) {

	self->QInputDialog::dragEnterEvent(event);
}

void QInputDialog_virtualbase_dragMoveEvent(VirtualQInputDialog* self, QDragMoveEvent* event) {

	self->QInputDialog::dragMoveEvent(event);
}

void QInputDialog_virtualbase_dragLeaveEvent(VirtualQInputDialog* self, QDragLeaveEvent* event) {

	self->QInputDialog::dragLeaveEvent(event);
}

void QInputDialog_virtualbase_dropEvent(VirtualQInputDialog* self, QDropEvent* event) {

	self->QInputDialog::dropEvent(event);
}

void QInputDialog_virtualbase_hideEvent(VirtualQInputDialog* self, QHideEvent* event) {

	self->QInputDialog::hideEvent(event);
}

bool QInputDialog_virtualbase_nativeEvent(VirtualQInputDialog* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QInputDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QInputDialog_virtualbase_changeEvent(VirtualQInputDialog* self, QEvent* param1) {

	self->QInputDialog::changeEvent(param1);
}

int QInputDialog_virtualbase_metric(const VirtualQInputDialog* self, int param1) {

	return self->QInputDialog::metric(static_cast<VirtualQInputDialog::PaintDeviceMetric>(param1));
}

void QInputDialog_virtualbase_initPainter(const VirtualQInputDialog* self, QPainter* painter) {

	self->QInputDialog::initPainter(painter);
}

QPaintDevice* QInputDialog_virtualbase_redirected(const VirtualQInputDialog* self, QPoint* offset) {

	return self->QInputDialog::redirected(offset);
}

QPainter* QInputDialog_virtualbase_sharedPainter(const VirtualQInputDialog* self) {

	return self->QInputDialog::sharedPainter();
}

void QInputDialog_virtualbase_inputMethodEvent(VirtualQInputDialog* self, QInputMethodEvent* param1) {

	self->QInputDialog::inputMethodEvent(param1);
}

QVariant* QInputDialog_virtualbase_inputMethodQuery(const VirtualQInputDialog* self, int param1) {

	return new QVariant(self->QInputDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QInputDialog_virtualbase_focusNextPrevChild(VirtualQInputDialog* self, bool next) {

	return self->QInputDialog::focusNextPrevChild(next);
}

void QInputDialog_virtualbase_timerEvent(VirtualQInputDialog* self, QTimerEvent* event) {

	self->QInputDialog::timerEvent(event);
}

void QInputDialog_virtualbase_childEvent(VirtualQInputDialog* self, QChildEvent* event) {

	self->QInputDialog::childEvent(event);
}

void QInputDialog_virtualbase_customEvent(VirtualQInputDialog* self, QEvent* event) {

	self->QInputDialog::customEvent(event);
}

void QInputDialog_virtualbase_connectNotify(VirtualQInputDialog* self, QMetaMethod* signal) {

	self->QInputDialog::connectNotify(*signal);
}

void QInputDialog_virtualbase_disconnectNotify(VirtualQInputDialog* self, QMetaMethod* signal) {

	self->QInputDialog::disconnectNotify(*signal);
}

const QMetaObject* QInputDialog_staticMetaObject() { return &QInputDialog::staticMetaObject; }

const QInputDialog_VTable* QInputDialog_vtbl(const VirtualQInputDialog* self) { return self->vtbl; }
void* QInputDialog_vdata(const VirtualQInputDialog* self) { return self->vdata; }
void QInputDialog_setVdata(VirtualQInputDialog* self, void* vdata) { self->vdata = vdata; }

void QInputDialog_protectedbase_adjustPosition(VirtualQInputDialog* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QInputDialog_protectedbase_updateMicroFocus(VirtualQInputDialog* self) {
	self->updateMicroFocus();
}

void QInputDialog_protectedbase_create(VirtualQInputDialog* self) {
	self->create();
}

void QInputDialog_protectedbase_destroy(VirtualQInputDialog* self) {
	self->destroy();
}

bool QInputDialog_protectedbase_focusNextChild(VirtualQInputDialog* self) {
	return self->focusNextChild();
}

bool QInputDialog_protectedbase_focusPreviousChild(VirtualQInputDialog* self) {
	return self->focusPreviousChild();
}

QObject* QInputDialog_protectedbase_sender(const VirtualQInputDialog* self) {
	return self->sender();
}

int QInputDialog_protectedbase_senderSignalIndex(const VirtualQInputDialog* self) {
	return self->senderSignalIndex();
}

int QInputDialog_protectedbase_receivers(const VirtualQInputDialog* self, const char* signal) {
	return self->receivers(signal);
}

bool QInputDialog_protectedbase_isSignalConnected(const VirtualQInputDialog* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QInputDialog_delete(QInputDialog* self) {
	delete self;
}

