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
class VirtualQColorDialog final : public QColorDialog {
	const QColorDialog_VTable* vtbl;
	void* vdata;
public:
	friend const QColorDialog_VTable* QColorDialog_vtbl(const VirtualQColorDialog* self);
	friend void* QColorDialog_vdata(const VirtualQColorDialog* self);
	friend void QColorDialog_setVdata(VirtualQColorDialog* self, void* vdata);

	VirtualQColorDialog(const QColorDialog_VTable* vtbl, void* vdata, QWidget* parent): QColorDialog(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQColorDialog(const QColorDialog_VTable* vtbl, void* vdata): QColorDialog(), vtbl(vtbl), vdata(vdata) {}
	VirtualQColorDialog(const QColorDialog_VTable* vtbl, void* vdata, const QColor& initial): QColorDialog(initial), vtbl(vtbl), vdata(vdata) {}
	VirtualQColorDialog(const QColorDialog_VTable* vtbl, void* vdata, const QColor& initial, QWidget* parent): QColorDialog(initial, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQColorDialog() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QColorDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QColorDialog_virtualbase_metaObject(const VirtualQColorDialog* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QColorDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QColorDialog_virtualbase_metacast(VirtualQColorDialog* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QColorDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_metacall(VirtualQColorDialog* self, int param1, int param2, void** param3);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QColorDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QColorDialog_virtualbase_setVisible(VirtualQColorDialog* self, bool visible);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QColorDialog::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_changeEvent(VirtualQColorDialog* self, QEvent* event);

	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QColorDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(this, sigval1);

	}

	friend void QColorDialog_virtualbase_done(VirtualQColorDialog* self, int result);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QColorDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QColorDialog_virtualbase_sizeHint(const VirtualQColorDialog* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QColorDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QColorDialog_virtualbase_minimumSizeHint(const VirtualQColorDialog* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QColorDialog::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QColorDialog_virtualbase_open(VirtualQColorDialog* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QColorDialog::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_exec(VirtualQColorDialog* self);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QColorDialog::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QColorDialog_virtualbase_accept(VirtualQColorDialog* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QColorDialog::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QColorDialog_virtualbase_reject(VirtualQColorDialog* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QColorDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_keyPressEvent(VirtualQColorDialog* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QColorDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_closeEvent(VirtualQColorDialog* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QColorDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_showEvent(VirtualQColorDialog* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QColorDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_resizeEvent(VirtualQColorDialog* self, QResizeEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QColorDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_contextMenuEvent(VirtualQColorDialog* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QColorDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QColorDialog_virtualbase_eventFilter(VirtualQColorDialog* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QColorDialog::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_devType(const VirtualQColorDialog* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QColorDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_heightForWidth(const VirtualQColorDialog* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QColorDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QColorDialog_virtualbase_hasHeightForWidth(const VirtualQColorDialog* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QColorDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QColorDialog_virtualbase_paintEngine(const VirtualQColorDialog* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QColorDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QColorDialog_virtualbase_event(VirtualQColorDialog* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QColorDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_mousePressEvent(VirtualQColorDialog* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QColorDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_mouseReleaseEvent(VirtualQColorDialog* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QColorDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_mouseDoubleClickEvent(VirtualQColorDialog* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QColorDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_mouseMoveEvent(VirtualQColorDialog* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QColorDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_wheelEvent(VirtualQColorDialog* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QColorDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_keyReleaseEvent(VirtualQColorDialog* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QColorDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_focusInEvent(VirtualQColorDialog* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QColorDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_focusOutEvent(VirtualQColorDialog* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QColorDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_enterEvent(VirtualQColorDialog* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QColorDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_leaveEvent(VirtualQColorDialog* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QColorDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_paintEvent(VirtualQColorDialog* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QColorDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_moveEvent(VirtualQColorDialog* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QColorDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_tabletEvent(VirtualQColorDialog* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QColorDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_actionEvent(VirtualQColorDialog* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QColorDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_dragEnterEvent(VirtualQColorDialog* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QColorDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_dragMoveEvent(VirtualQColorDialog* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QColorDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_dragLeaveEvent(VirtualQColorDialog* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QColorDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_dropEvent(VirtualQColorDialog* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QColorDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_hideEvent(VirtualQColorDialog* self, QHideEvent* event);

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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QColorDialog_virtualbase_nativeEvent(VirtualQColorDialog* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QColorDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QColorDialog_virtualbase_metric(const VirtualQColorDialog* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QColorDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QColorDialog_virtualbase_initPainter(const VirtualQColorDialog* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QColorDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QColorDialog_virtualbase_redirected(const VirtualQColorDialog* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QColorDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QColorDialog_virtualbase_sharedPainter(const VirtualQColorDialog* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QColorDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_inputMethodEvent(VirtualQColorDialog* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QColorDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QColorDialog_virtualbase_inputMethodQuery(const VirtualQColorDialog* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QColorDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QColorDialog_virtualbase_focusNextPrevChild(VirtualQColorDialog* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QColorDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_timerEvent(VirtualQColorDialog* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QColorDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_childEvent(VirtualQColorDialog* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QColorDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QColorDialog_virtualbase_customEvent(VirtualQColorDialog* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QColorDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QColorDialog_virtualbase_connectNotify(VirtualQColorDialog* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QColorDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QColorDialog_virtualbase_disconnectNotify(VirtualQColorDialog* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QColorDialog_protectedbase_adjustPosition(VirtualQColorDialog* self, QWidget* param1);
	friend void QColorDialog_protectedbase_updateMicroFocus(VirtualQColorDialog* self);
	friend void QColorDialog_protectedbase_create(VirtualQColorDialog* self);
	friend void QColorDialog_protectedbase_destroy(VirtualQColorDialog* self);
	friend bool QColorDialog_protectedbase_focusNextChild(VirtualQColorDialog* self);
	friend bool QColorDialog_protectedbase_focusPreviousChild(VirtualQColorDialog* self);
	friend QObject* QColorDialog_protectedbase_sender(const VirtualQColorDialog* self);
	friend int QColorDialog_protectedbase_senderSignalIndex(const VirtualQColorDialog* self);
	friend int QColorDialog_protectedbase_receivers(const VirtualQColorDialog* self, const char* signal);
	friend bool QColorDialog_protectedbase_isSignalConnected(const VirtualQColorDialog* self, QMetaMethod* signal);
};

VirtualQColorDialog* QColorDialog_new(const QColorDialog_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQColorDialog(vtbl, vdata, parent);
}

VirtualQColorDialog* QColorDialog_new2(const QColorDialog_VTable* vtbl, void* vdata) {
	return new VirtualQColorDialog(vtbl, vdata);
}

VirtualQColorDialog* QColorDialog_new3(const QColorDialog_VTable* vtbl, void* vdata, QColor* initial) {
	return new VirtualQColorDialog(vtbl, vdata, *initial);
}

VirtualQColorDialog* QColorDialog_new4(const QColorDialog_VTable* vtbl, void* vdata, QColor* initial, QWidget* parent) {
	return new VirtualQColorDialog(vtbl, vdata, *initial, parent);
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

void QColorDialog_connect_currentColorChanged(VirtualQColorDialog* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) {
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

void QColorDialog_connect_colorSelected(VirtualQColorDialog* self, intptr_t slot, void (*callback)(intptr_t, QColor*), void (*release)(intptr_t)) {
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

QMetaObject* QColorDialog_virtualbase_metaObject(const VirtualQColorDialog* self) {

	return (QMetaObject*) self->QColorDialog::metaObject();
}

void* QColorDialog_virtualbase_metacast(VirtualQColorDialog* self, const char* param1) {

	return self->QColorDialog::qt_metacast(param1);
}

int QColorDialog_virtualbase_metacall(VirtualQColorDialog* self, int param1, int param2, void** param3) {

	return self->QColorDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QColorDialog_virtualbase_setVisible(VirtualQColorDialog* self, bool visible) {

	self->QColorDialog::setVisible(visible);
}

void QColorDialog_virtualbase_changeEvent(VirtualQColorDialog* self, QEvent* event) {

	self->QColorDialog::changeEvent(event);
}

void QColorDialog_virtualbase_done(VirtualQColorDialog* self, int result) {

	self->QColorDialog::done(static_cast<int>(result));
}

QSize* QColorDialog_virtualbase_sizeHint(const VirtualQColorDialog* self) {

	return new QSize(self->QColorDialog::sizeHint());
}

QSize* QColorDialog_virtualbase_minimumSizeHint(const VirtualQColorDialog* self) {

	return new QSize(self->QColorDialog::minimumSizeHint());
}

void QColorDialog_virtualbase_open(VirtualQColorDialog* self) {

	self->QColorDialog::open();
}

int QColorDialog_virtualbase_exec(VirtualQColorDialog* self) {

	return self->QColorDialog::exec();
}

void QColorDialog_virtualbase_accept(VirtualQColorDialog* self) {

	self->QColorDialog::accept();
}

void QColorDialog_virtualbase_reject(VirtualQColorDialog* self) {

	self->QColorDialog::reject();
}

void QColorDialog_virtualbase_keyPressEvent(VirtualQColorDialog* self, QKeyEvent* param1) {

	self->QColorDialog::keyPressEvent(param1);
}

void QColorDialog_virtualbase_closeEvent(VirtualQColorDialog* self, QCloseEvent* param1) {

	self->QColorDialog::closeEvent(param1);
}

void QColorDialog_virtualbase_showEvent(VirtualQColorDialog* self, QShowEvent* param1) {

	self->QColorDialog::showEvent(param1);
}

void QColorDialog_virtualbase_resizeEvent(VirtualQColorDialog* self, QResizeEvent* param1) {

	self->QColorDialog::resizeEvent(param1);
}

void QColorDialog_virtualbase_contextMenuEvent(VirtualQColorDialog* self, QContextMenuEvent* param1) {

	self->QColorDialog::contextMenuEvent(param1);
}

bool QColorDialog_virtualbase_eventFilter(VirtualQColorDialog* self, QObject* param1, QEvent* param2) {

	return self->QColorDialog::eventFilter(param1, param2);
}

int QColorDialog_virtualbase_devType(const VirtualQColorDialog* self) {

	return self->QColorDialog::devType();
}

int QColorDialog_virtualbase_heightForWidth(const VirtualQColorDialog* self, int param1) {

	return self->QColorDialog::heightForWidth(static_cast<int>(param1));
}

bool QColorDialog_virtualbase_hasHeightForWidth(const VirtualQColorDialog* self) {

	return self->QColorDialog::hasHeightForWidth();
}

QPaintEngine* QColorDialog_virtualbase_paintEngine(const VirtualQColorDialog* self) {

	return self->QColorDialog::paintEngine();
}

bool QColorDialog_virtualbase_event(VirtualQColorDialog* self, QEvent* event) {

	return self->QColorDialog::event(event);
}

void QColorDialog_virtualbase_mousePressEvent(VirtualQColorDialog* self, QMouseEvent* event) {

	self->QColorDialog::mousePressEvent(event);
}

void QColorDialog_virtualbase_mouseReleaseEvent(VirtualQColorDialog* self, QMouseEvent* event) {

	self->QColorDialog::mouseReleaseEvent(event);
}

void QColorDialog_virtualbase_mouseDoubleClickEvent(VirtualQColorDialog* self, QMouseEvent* event) {

	self->QColorDialog::mouseDoubleClickEvent(event);
}

void QColorDialog_virtualbase_mouseMoveEvent(VirtualQColorDialog* self, QMouseEvent* event) {

	self->QColorDialog::mouseMoveEvent(event);
}

void QColorDialog_virtualbase_wheelEvent(VirtualQColorDialog* self, QWheelEvent* event) {

	self->QColorDialog::wheelEvent(event);
}

void QColorDialog_virtualbase_keyReleaseEvent(VirtualQColorDialog* self, QKeyEvent* event) {

	self->QColorDialog::keyReleaseEvent(event);
}

void QColorDialog_virtualbase_focusInEvent(VirtualQColorDialog* self, QFocusEvent* event) {

	self->QColorDialog::focusInEvent(event);
}

void QColorDialog_virtualbase_focusOutEvent(VirtualQColorDialog* self, QFocusEvent* event) {

	self->QColorDialog::focusOutEvent(event);
}

void QColorDialog_virtualbase_enterEvent(VirtualQColorDialog* self, QEnterEvent* event) {

	self->QColorDialog::enterEvent(event);
}

void QColorDialog_virtualbase_leaveEvent(VirtualQColorDialog* self, QEvent* event) {

	self->QColorDialog::leaveEvent(event);
}

void QColorDialog_virtualbase_paintEvent(VirtualQColorDialog* self, QPaintEvent* event) {

	self->QColorDialog::paintEvent(event);
}

void QColorDialog_virtualbase_moveEvent(VirtualQColorDialog* self, QMoveEvent* event) {

	self->QColorDialog::moveEvent(event);
}

void QColorDialog_virtualbase_tabletEvent(VirtualQColorDialog* self, QTabletEvent* event) {

	self->QColorDialog::tabletEvent(event);
}

void QColorDialog_virtualbase_actionEvent(VirtualQColorDialog* self, QActionEvent* event) {

	self->QColorDialog::actionEvent(event);
}

void QColorDialog_virtualbase_dragEnterEvent(VirtualQColorDialog* self, QDragEnterEvent* event) {

	self->QColorDialog::dragEnterEvent(event);
}

void QColorDialog_virtualbase_dragMoveEvent(VirtualQColorDialog* self, QDragMoveEvent* event) {

	self->QColorDialog::dragMoveEvent(event);
}

void QColorDialog_virtualbase_dragLeaveEvent(VirtualQColorDialog* self, QDragLeaveEvent* event) {

	self->QColorDialog::dragLeaveEvent(event);
}

void QColorDialog_virtualbase_dropEvent(VirtualQColorDialog* self, QDropEvent* event) {

	self->QColorDialog::dropEvent(event);
}

void QColorDialog_virtualbase_hideEvent(VirtualQColorDialog* self, QHideEvent* event) {

	self->QColorDialog::hideEvent(event);
}

bool QColorDialog_virtualbase_nativeEvent(VirtualQColorDialog* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QColorDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QColorDialog_virtualbase_metric(const VirtualQColorDialog* self, int param1) {

	return self->QColorDialog::metric(static_cast<VirtualQColorDialog::PaintDeviceMetric>(param1));
}

void QColorDialog_virtualbase_initPainter(const VirtualQColorDialog* self, QPainter* painter) {

	self->QColorDialog::initPainter(painter);
}

QPaintDevice* QColorDialog_virtualbase_redirected(const VirtualQColorDialog* self, QPoint* offset) {

	return self->QColorDialog::redirected(offset);
}

QPainter* QColorDialog_virtualbase_sharedPainter(const VirtualQColorDialog* self) {

	return self->QColorDialog::sharedPainter();
}

void QColorDialog_virtualbase_inputMethodEvent(VirtualQColorDialog* self, QInputMethodEvent* param1) {

	self->QColorDialog::inputMethodEvent(param1);
}

QVariant* QColorDialog_virtualbase_inputMethodQuery(const VirtualQColorDialog* self, int param1) {

	return new QVariant(self->QColorDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QColorDialog_virtualbase_focusNextPrevChild(VirtualQColorDialog* self, bool next) {

	return self->QColorDialog::focusNextPrevChild(next);
}

void QColorDialog_virtualbase_timerEvent(VirtualQColorDialog* self, QTimerEvent* event) {

	self->QColorDialog::timerEvent(event);
}

void QColorDialog_virtualbase_childEvent(VirtualQColorDialog* self, QChildEvent* event) {

	self->QColorDialog::childEvent(event);
}

void QColorDialog_virtualbase_customEvent(VirtualQColorDialog* self, QEvent* event) {

	self->QColorDialog::customEvent(event);
}

void QColorDialog_virtualbase_connectNotify(VirtualQColorDialog* self, QMetaMethod* signal) {

	self->QColorDialog::connectNotify(*signal);
}

void QColorDialog_virtualbase_disconnectNotify(VirtualQColorDialog* self, QMetaMethod* signal) {

	self->QColorDialog::disconnectNotify(*signal);
}

const QMetaObject* QColorDialog_staticMetaObject() { return &QColorDialog::staticMetaObject; }

const QColorDialog_VTable* QColorDialog_vtbl(const VirtualQColorDialog* self) { return self->vtbl; }
void* QColorDialog_vdata(const VirtualQColorDialog* self) { return self->vdata; }
void QColorDialog_setVdata(VirtualQColorDialog* self, void* vdata) { self->vdata = vdata; }

void QColorDialog_protectedbase_adjustPosition(VirtualQColorDialog* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QColorDialog_protectedbase_updateMicroFocus(VirtualQColorDialog* self) {
	self->updateMicroFocus();
}

void QColorDialog_protectedbase_create(VirtualQColorDialog* self) {
	self->create();
}

void QColorDialog_protectedbase_destroy(VirtualQColorDialog* self) {
	self->destroy();
}

bool QColorDialog_protectedbase_focusNextChild(VirtualQColorDialog* self) {
	return self->focusNextChild();
}

bool QColorDialog_protectedbase_focusPreviousChild(VirtualQColorDialog* self) {
	return self->focusPreviousChild();
}

QObject* QColorDialog_protectedbase_sender(const VirtualQColorDialog* self) {
	return self->sender();
}

int QColorDialog_protectedbase_senderSignalIndex(const VirtualQColorDialog* self) {
	return self->senderSignalIndex();
}

int QColorDialog_protectedbase_receivers(const VirtualQColorDialog* self, const char* signal) {
	return self->receivers(signal);
}

bool QColorDialog_protectedbase_isSignalConnected(const VirtualQColorDialog* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QColorDialog_delete(QColorDialog* self) {
	delete self;
}

