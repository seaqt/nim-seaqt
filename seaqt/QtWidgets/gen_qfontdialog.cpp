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
#include <QFont>
#include <QFontDialog>
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
#include <qfontdialog.h>
#include "gen_qfontdialog.h"
class VirtualQFontDialog final : public QFontDialog {
	const QFontDialog_VTable* vtbl;
	void* vdata;
public:
	friend const QFontDialog_VTable* QFontDialog_vtbl(const VirtualQFontDialog* self);
	friend void* QFontDialog_vdata(const VirtualQFontDialog* self);
	friend void QFontDialog_setVdata(VirtualQFontDialog* self, void* vdata);

	VirtualQFontDialog(const QFontDialog_VTable* vtbl, void* vdata, QWidget* parent): QFontDialog(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQFontDialog(const QFontDialog_VTable* vtbl, void* vdata): QFontDialog(), vtbl(vtbl), vdata(vdata) {}
	VirtualQFontDialog(const QFontDialog_VTable* vtbl, void* vdata, const QFont& initial): QFontDialog(initial), vtbl(vtbl), vdata(vdata) {}
	VirtualQFontDialog(const QFontDialog_VTable* vtbl, void* vdata, const QFont& initial, QWidget* parent): QFontDialog(initial, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFontDialog() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFontDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QFontDialog_virtualbase_metaObject(const VirtualQFontDialog* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFontDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QFontDialog_virtualbase_metacast(VirtualQFontDialog* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFontDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_metacall(VirtualQFontDialog* self, int param1, int param2, void** param3);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFontDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QFontDialog_virtualbase_setVisible(VirtualQFontDialog* self, bool visible);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QFontDialog::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_changeEvent(VirtualQFontDialog* self, QEvent* event);

	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QFontDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(this, sigval1);

	}

	friend void QFontDialog_virtualbase_done(VirtualQFontDialog* self, int result);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFontDialog::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFontDialog_virtualbase_eventFilter(VirtualQFontDialog* self, QObject* object, QEvent* event);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFontDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFontDialog_virtualbase_sizeHint(const VirtualQFontDialog* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFontDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFontDialog_virtualbase_minimumSizeHint(const VirtualQFontDialog* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QFontDialog::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QFontDialog_virtualbase_open(VirtualQFontDialog* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QFontDialog::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_exec(VirtualQFontDialog* self);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QFontDialog::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QFontDialog_virtualbase_accept(VirtualQFontDialog* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QFontDialog::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QFontDialog_virtualbase_reject(VirtualQFontDialog* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QFontDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_keyPressEvent(VirtualQFontDialog* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QFontDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_closeEvent(VirtualQFontDialog* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QFontDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_showEvent(VirtualQFontDialog* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QFontDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_resizeEvent(VirtualQFontDialog* self, QResizeEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QFontDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_contextMenuEvent(VirtualQFontDialog* self, QContextMenuEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFontDialog::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_devType(const VirtualQFontDialog* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFontDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_heightForWidth(const VirtualQFontDialog* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFontDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QFontDialog_virtualbase_hasHeightForWidth(const VirtualQFontDialog* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFontDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QFontDialog_virtualbase_paintEngine(const VirtualQFontDialog* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFontDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QFontDialog_virtualbase_event(VirtualQFontDialog* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QFontDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_mousePressEvent(VirtualQFontDialog* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFontDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_mouseReleaseEvent(VirtualQFontDialog* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFontDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_mouseDoubleClickEvent(VirtualQFontDialog* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFontDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_mouseMoveEvent(VirtualQFontDialog* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QFontDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_wheelEvent(VirtualQFontDialog* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFontDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_keyReleaseEvent(VirtualQFontDialog* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QFontDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_focusInEvent(VirtualQFontDialog* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QFontDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_focusOutEvent(VirtualQFontDialog* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFontDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_enterEvent(VirtualQFontDialog* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFontDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_leaveEvent(VirtualQFontDialog* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QFontDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_paintEvent(VirtualQFontDialog* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFontDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_moveEvent(VirtualQFontDialog* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFontDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_tabletEvent(VirtualQFontDialog* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFontDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_actionEvent(VirtualQFontDialog* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFontDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_dragEnterEvent(VirtualQFontDialog* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFontDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_dragMoveEvent(VirtualQFontDialog* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFontDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_dragLeaveEvent(VirtualQFontDialog* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFontDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_dropEvent(VirtualQFontDialog* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QFontDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_hideEvent(VirtualQFontDialog* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFontDialog::nativeEvent(eventType, message, result);
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

	friend bool QFontDialog_virtualbase_nativeEvent(VirtualQFontDialog* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFontDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_metric(const VirtualQFontDialog* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFontDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QFontDialog_virtualbase_initPainter(const VirtualQFontDialog* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFontDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QFontDialog_virtualbase_redirected(const VirtualQFontDialog* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFontDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QFontDialog_virtualbase_sharedPainter(const VirtualQFontDialog* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFontDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_inputMethodEvent(VirtualQFontDialog* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFontDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QFontDialog_virtualbase_inputMethodQuery(const VirtualQFontDialog* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFontDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QFontDialog_virtualbase_focusNextPrevChild(VirtualQFontDialog* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFontDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_timerEvent(VirtualQFontDialog* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFontDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_childEvent(VirtualQFontDialog* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFontDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QFontDialog_virtualbase_customEvent(VirtualQFontDialog* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFontDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QFontDialog_virtualbase_connectNotify(VirtualQFontDialog* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFontDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QFontDialog_virtualbase_disconnectNotify(VirtualQFontDialog* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QFontDialog_protectedbase_adjustPosition(VirtualQFontDialog* self, QWidget* param1);
	friend void QFontDialog_protectedbase_updateMicroFocus(VirtualQFontDialog* self);
	friend void QFontDialog_protectedbase_create(VirtualQFontDialog* self);
	friend void QFontDialog_protectedbase_destroy(VirtualQFontDialog* self);
	friend bool QFontDialog_protectedbase_focusNextChild(VirtualQFontDialog* self);
	friend bool QFontDialog_protectedbase_focusPreviousChild(VirtualQFontDialog* self);
	friend QObject* QFontDialog_protectedbase_sender(const VirtualQFontDialog* self);
	friend int QFontDialog_protectedbase_senderSignalIndex(const VirtualQFontDialog* self);
	friend int QFontDialog_protectedbase_receivers(const VirtualQFontDialog* self, const char* signal);
	friend bool QFontDialog_protectedbase_isSignalConnected(const VirtualQFontDialog* self, QMetaMethod* signal);
};

VirtualQFontDialog* QFontDialog_new(const QFontDialog_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQFontDialog(vtbl, vdata, parent);
}

VirtualQFontDialog* QFontDialog_new2(const QFontDialog_VTable* vtbl, void* vdata) {
	return new VirtualQFontDialog(vtbl, vdata);
}

VirtualQFontDialog* QFontDialog_new3(const QFontDialog_VTable* vtbl, void* vdata, QFont* initial) {
	return new VirtualQFontDialog(vtbl, vdata, *initial);
}

VirtualQFontDialog* QFontDialog_new4(const QFontDialog_VTable* vtbl, void* vdata, QFont* initial, QWidget* parent) {
	return new VirtualQFontDialog(vtbl, vdata, *initial, parent);
}

void QFontDialog_virtbase(QFontDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QFontDialog_metaObject(const QFontDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFontDialog_metacast(QFontDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFontDialog_metacall(QFontDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFontDialog_tr(const char* s) {
	QString _ret = QFontDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontDialog_trUtf8(const char* s) {
	QString _ret = QFontDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFontDialog_setCurrentFont(QFontDialog* self, QFont* font) {
	self->setCurrentFont(*font);
}

QFont* QFontDialog_currentFont(const QFontDialog* self) {
	return new QFont(self->currentFont());
}

QFont* QFontDialog_selectedFont(const QFontDialog* self) {
	return new QFont(self->selectedFont());
}

void QFontDialog_setOption(QFontDialog* self, int option) {
	self->setOption(static_cast<QFontDialog::FontDialogOption>(option));
}

bool QFontDialog_testOption(const QFontDialog* self, int option) {
	return self->testOption(static_cast<QFontDialog::FontDialogOption>(option));
}

void QFontDialog_setOptions(QFontDialog* self, int options) {
	self->setOptions(static_cast<QFontDialog::FontDialogOptions>(options));
}

int QFontDialog_options(const QFontDialog* self) {
	QFontDialog::FontDialogOptions _ret = self->options();
	return static_cast<int>(_ret);
}

void QFontDialog_setVisible(QFontDialog* self, bool visible) {
	self->setVisible(visible);
}

QFont* QFontDialog_getFont(bool* ok) {
	return new QFont(QFontDialog::getFont(ok));
}

QFont* QFontDialog_getFont2(bool* ok, QFont* initial) {
	return new QFont(QFontDialog::getFont(ok, *initial));
}

void QFontDialog_currentFontChanged(QFontDialog* self, QFont* font) {
	self->currentFontChanged(*font);
}

void QFontDialog_connect_currentFontChanged(VirtualQFontDialog* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QFont*);
		void operator()(const QFont& font) {
			const QFont& font_ret = font;
			// Cast returned reference into pointer
			QFont* sigval1 = const_cast<QFont*>(&font_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQFontDialog::connect(self, static_cast<void (QFontDialog::*)(const QFont&)>(&QFontDialog::currentFontChanged), self, local_caller{slot, callback, release});
}

void QFontDialog_fontSelected(QFontDialog* self, QFont* font) {
	self->fontSelected(*font);
}

void QFontDialog_connect_fontSelected(VirtualQFontDialog* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QFont*);
		void operator()(const QFont& font) {
			const QFont& font_ret = font;
			// Cast returned reference into pointer
			QFont* sigval1 = const_cast<QFont*>(&font_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQFontDialog::connect(self, static_cast<void (QFontDialog::*)(const QFont&)>(&QFontDialog::fontSelected), self, local_caller{slot, callback, release});
}

struct miqt_string QFontDialog_tr2(const char* s, const char* c) {
	QString _ret = QFontDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QFontDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QFontDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QFontDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFontDialog_setOption2(QFontDialog* self, int option, bool on) {
	self->setOption(static_cast<QFontDialog::FontDialogOption>(option), on);
}

QFont* QFontDialog_getFont22(bool* ok, QWidget* parent) {
	return new QFont(QFontDialog::getFont(ok, parent));
}

QFont* QFontDialog_getFont3(bool* ok, QFont* initial, QWidget* parent) {
	return new QFont(QFontDialog::getFont(ok, *initial, parent));
}

QFont* QFontDialog_getFont4(bool* ok, QFont* initial, QWidget* parent, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new QFont(QFontDialog::getFont(ok, *initial, parent, title_QString));
}

QFont* QFontDialog_getFont5(bool* ok, QFont* initial, QWidget* parent, struct miqt_string title, int options) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new QFont(QFontDialog::getFont(ok, *initial, parent, title_QString, static_cast<QFontDialog::FontDialogOptions>(options)));
}

QMetaObject* QFontDialog_virtualbase_metaObject(const VirtualQFontDialog* self) {

	return (QMetaObject*) self->QFontDialog::metaObject();
}

void* QFontDialog_virtualbase_metacast(VirtualQFontDialog* self, const char* param1) {

	return self->QFontDialog::qt_metacast(param1);
}

int QFontDialog_virtualbase_metacall(VirtualQFontDialog* self, int param1, int param2, void** param3) {

	return self->QFontDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QFontDialog_virtualbase_setVisible(VirtualQFontDialog* self, bool visible) {

	self->QFontDialog::setVisible(visible);
}

void QFontDialog_virtualbase_changeEvent(VirtualQFontDialog* self, QEvent* event) {

	self->QFontDialog::changeEvent(event);
}

void QFontDialog_virtualbase_done(VirtualQFontDialog* self, int result) {

	self->QFontDialog::done(static_cast<int>(result));
}

bool QFontDialog_virtualbase_eventFilter(VirtualQFontDialog* self, QObject* object, QEvent* event) {

	return self->QFontDialog::eventFilter(object, event);
}

QSize* QFontDialog_virtualbase_sizeHint(const VirtualQFontDialog* self) {

	return new QSize(self->QFontDialog::sizeHint());
}

QSize* QFontDialog_virtualbase_minimumSizeHint(const VirtualQFontDialog* self) {

	return new QSize(self->QFontDialog::minimumSizeHint());
}

void QFontDialog_virtualbase_open(VirtualQFontDialog* self) {

	self->QFontDialog::open();
}

int QFontDialog_virtualbase_exec(VirtualQFontDialog* self) {

	return self->QFontDialog::exec();
}

void QFontDialog_virtualbase_accept(VirtualQFontDialog* self) {

	self->QFontDialog::accept();
}

void QFontDialog_virtualbase_reject(VirtualQFontDialog* self) {

	self->QFontDialog::reject();
}

void QFontDialog_virtualbase_keyPressEvent(VirtualQFontDialog* self, QKeyEvent* param1) {

	self->QFontDialog::keyPressEvent(param1);
}

void QFontDialog_virtualbase_closeEvent(VirtualQFontDialog* self, QCloseEvent* param1) {

	self->QFontDialog::closeEvent(param1);
}

void QFontDialog_virtualbase_showEvent(VirtualQFontDialog* self, QShowEvent* param1) {

	self->QFontDialog::showEvent(param1);
}

void QFontDialog_virtualbase_resizeEvent(VirtualQFontDialog* self, QResizeEvent* param1) {

	self->QFontDialog::resizeEvent(param1);
}

void QFontDialog_virtualbase_contextMenuEvent(VirtualQFontDialog* self, QContextMenuEvent* param1) {

	self->QFontDialog::contextMenuEvent(param1);
}

int QFontDialog_virtualbase_devType(const VirtualQFontDialog* self) {

	return self->QFontDialog::devType();
}

int QFontDialog_virtualbase_heightForWidth(const VirtualQFontDialog* self, int param1) {

	return self->QFontDialog::heightForWidth(static_cast<int>(param1));
}

bool QFontDialog_virtualbase_hasHeightForWidth(const VirtualQFontDialog* self) {

	return self->QFontDialog::hasHeightForWidth();
}

QPaintEngine* QFontDialog_virtualbase_paintEngine(const VirtualQFontDialog* self) {

	return self->QFontDialog::paintEngine();
}

bool QFontDialog_virtualbase_event(VirtualQFontDialog* self, QEvent* event) {

	return self->QFontDialog::event(event);
}

void QFontDialog_virtualbase_mousePressEvent(VirtualQFontDialog* self, QMouseEvent* event) {

	self->QFontDialog::mousePressEvent(event);
}

void QFontDialog_virtualbase_mouseReleaseEvent(VirtualQFontDialog* self, QMouseEvent* event) {

	self->QFontDialog::mouseReleaseEvent(event);
}

void QFontDialog_virtualbase_mouseDoubleClickEvent(VirtualQFontDialog* self, QMouseEvent* event) {

	self->QFontDialog::mouseDoubleClickEvent(event);
}

void QFontDialog_virtualbase_mouseMoveEvent(VirtualQFontDialog* self, QMouseEvent* event) {

	self->QFontDialog::mouseMoveEvent(event);
}

void QFontDialog_virtualbase_wheelEvent(VirtualQFontDialog* self, QWheelEvent* event) {

	self->QFontDialog::wheelEvent(event);
}

void QFontDialog_virtualbase_keyReleaseEvent(VirtualQFontDialog* self, QKeyEvent* event) {

	self->QFontDialog::keyReleaseEvent(event);
}

void QFontDialog_virtualbase_focusInEvent(VirtualQFontDialog* self, QFocusEvent* event) {

	self->QFontDialog::focusInEvent(event);
}

void QFontDialog_virtualbase_focusOutEvent(VirtualQFontDialog* self, QFocusEvent* event) {

	self->QFontDialog::focusOutEvent(event);
}

void QFontDialog_virtualbase_enterEvent(VirtualQFontDialog* self, QEvent* event) {

	self->QFontDialog::enterEvent(event);
}

void QFontDialog_virtualbase_leaveEvent(VirtualQFontDialog* self, QEvent* event) {

	self->QFontDialog::leaveEvent(event);
}

void QFontDialog_virtualbase_paintEvent(VirtualQFontDialog* self, QPaintEvent* event) {

	self->QFontDialog::paintEvent(event);
}

void QFontDialog_virtualbase_moveEvent(VirtualQFontDialog* self, QMoveEvent* event) {

	self->QFontDialog::moveEvent(event);
}

void QFontDialog_virtualbase_tabletEvent(VirtualQFontDialog* self, QTabletEvent* event) {

	self->QFontDialog::tabletEvent(event);
}

void QFontDialog_virtualbase_actionEvent(VirtualQFontDialog* self, QActionEvent* event) {

	self->QFontDialog::actionEvent(event);
}

void QFontDialog_virtualbase_dragEnterEvent(VirtualQFontDialog* self, QDragEnterEvent* event) {

	self->QFontDialog::dragEnterEvent(event);
}

void QFontDialog_virtualbase_dragMoveEvent(VirtualQFontDialog* self, QDragMoveEvent* event) {

	self->QFontDialog::dragMoveEvent(event);
}

void QFontDialog_virtualbase_dragLeaveEvent(VirtualQFontDialog* self, QDragLeaveEvent* event) {

	self->QFontDialog::dragLeaveEvent(event);
}

void QFontDialog_virtualbase_dropEvent(VirtualQFontDialog* self, QDropEvent* event) {

	self->QFontDialog::dropEvent(event);
}

void QFontDialog_virtualbase_hideEvent(VirtualQFontDialog* self, QHideEvent* event) {

	self->QFontDialog::hideEvent(event);
}

bool QFontDialog_virtualbase_nativeEvent(VirtualQFontDialog* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QFontDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QFontDialog_virtualbase_metric(const VirtualQFontDialog* self, int param1) {

	return self->QFontDialog::metric(static_cast<VirtualQFontDialog::PaintDeviceMetric>(param1));
}

void QFontDialog_virtualbase_initPainter(const VirtualQFontDialog* self, QPainter* painter) {

	self->QFontDialog::initPainter(painter);
}

QPaintDevice* QFontDialog_virtualbase_redirected(const VirtualQFontDialog* self, QPoint* offset) {

	return self->QFontDialog::redirected(offset);
}

QPainter* QFontDialog_virtualbase_sharedPainter(const VirtualQFontDialog* self) {

	return self->QFontDialog::sharedPainter();
}

void QFontDialog_virtualbase_inputMethodEvent(VirtualQFontDialog* self, QInputMethodEvent* param1) {

	self->QFontDialog::inputMethodEvent(param1);
}

QVariant* QFontDialog_virtualbase_inputMethodQuery(const VirtualQFontDialog* self, int param1) {

	return new QVariant(self->QFontDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QFontDialog_virtualbase_focusNextPrevChild(VirtualQFontDialog* self, bool next) {

	return self->QFontDialog::focusNextPrevChild(next);
}

void QFontDialog_virtualbase_timerEvent(VirtualQFontDialog* self, QTimerEvent* event) {

	self->QFontDialog::timerEvent(event);
}

void QFontDialog_virtualbase_childEvent(VirtualQFontDialog* self, QChildEvent* event) {

	self->QFontDialog::childEvent(event);
}

void QFontDialog_virtualbase_customEvent(VirtualQFontDialog* self, QEvent* event) {

	self->QFontDialog::customEvent(event);
}

void QFontDialog_virtualbase_connectNotify(VirtualQFontDialog* self, QMetaMethod* signal) {

	self->QFontDialog::connectNotify(*signal);
}

void QFontDialog_virtualbase_disconnectNotify(VirtualQFontDialog* self, QMetaMethod* signal) {

	self->QFontDialog::disconnectNotify(*signal);
}

const QMetaObject* QFontDialog_staticMetaObject() { return &QFontDialog::staticMetaObject; }

const QFontDialog_VTable* QFontDialog_vtbl(const VirtualQFontDialog* self) { return self->vtbl; }
void* QFontDialog_vdata(const VirtualQFontDialog* self) { return self->vdata; }
void QFontDialog_setVdata(VirtualQFontDialog* self, void* vdata) { self->vdata = vdata; }

void QFontDialog_protectedbase_adjustPosition(VirtualQFontDialog* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QFontDialog_protectedbase_updateMicroFocus(VirtualQFontDialog* self) {
	self->updateMicroFocus();
}

void QFontDialog_protectedbase_create(VirtualQFontDialog* self) {
	self->create();
}

void QFontDialog_protectedbase_destroy(VirtualQFontDialog* self) {
	self->destroy();
}

bool QFontDialog_protectedbase_focusNextChild(VirtualQFontDialog* self) {
	return self->focusNextChild();
}

bool QFontDialog_protectedbase_focusPreviousChild(VirtualQFontDialog* self) {
	return self->focusPreviousChild();
}

QObject* QFontDialog_protectedbase_sender(const VirtualQFontDialog* self) {
	return self->sender();
}

int QFontDialog_protectedbase_senderSignalIndex(const VirtualQFontDialog* self) {
	return self->senderSignalIndex();
}

int QFontDialog_protectedbase_receivers(const VirtualQFontDialog* self, const char* signal) {
	return self->receivers(signal);
}

bool QFontDialog_protectedbase_isSignalConnected(const VirtualQFontDialog* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QFontDialog_delete(QFontDialog* self) {
	delete self;
}

