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
#include <qdialog.h>
#include "gen_qdialog.h"
class VirtualQDialog final : public QDialog {
	const QDialog_VTable* vtbl;
	void* vdata;
public:
	friend const QDialog_VTable* QDialog_vtbl(const VirtualQDialog* self);
	friend void* QDialog_vdata(const VirtualQDialog* self);
	friend void QDialog_setVdata(VirtualQDialog* self, void* vdata);

	VirtualQDialog(const QDialog_VTable* vtbl, void* vdata, QWidget* parent): QDialog(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDialog(const QDialog_VTable* vtbl, void* vdata): QDialog(), vtbl(vtbl), vdata(vdata) {}
	VirtualQDialog(const QDialog_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags f): QDialog(parent, f), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDialog() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDialog_virtualbase_metaObject(const VirtualQDialog* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDialog_virtualbase_metacast(VirtualQDialog* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_metacall(VirtualQDialog* self, int param1, int param2, void** param3);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QDialog_virtualbase_setVisible(VirtualQDialog* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDialog_virtualbase_sizeHint(const VirtualQDialog* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDialog_virtualbase_minimumSizeHint(const VirtualQDialog* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QDialog::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QDialog_virtualbase_open(VirtualQDialog* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QDialog::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_exec(VirtualQDialog* self);

	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QDialog::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(this, sigval1);

	}

	friend void QDialog_virtualbase_done(VirtualQDialog* self, int param1);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QDialog::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QDialog_virtualbase_accept(VirtualQDialog* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QDialog::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QDialog_virtualbase_reject(VirtualQDialog* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_keyPressEvent(VirtualQDialog* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_closeEvent(VirtualQDialog* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_showEvent(VirtualQDialog* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_resizeEvent(VirtualQDialog* self, QResizeEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_contextMenuEvent(VirtualQDialog* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDialog_virtualbase_eventFilter(VirtualQDialog* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDialog::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_devType(const VirtualQDialog* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_heightForWidth(const VirtualQDialog* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QDialog_virtualbase_hasHeightForWidth(const VirtualQDialog* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QDialog_virtualbase_paintEngine(const VirtualQDialog* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDialog_virtualbase_event(VirtualQDialog* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_mousePressEvent(VirtualQDialog* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_mouseReleaseEvent(VirtualQDialog* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_mouseDoubleClickEvent(VirtualQDialog* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_mouseMoveEvent(VirtualQDialog* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_wheelEvent(VirtualQDialog* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_keyReleaseEvent(VirtualQDialog* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_focusInEvent(VirtualQDialog* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_focusOutEvent(VirtualQDialog* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_enterEvent(VirtualQDialog* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_leaveEvent(VirtualQDialog* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_paintEvent(VirtualQDialog* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_moveEvent(VirtualQDialog* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_tabletEvent(VirtualQDialog* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_actionEvent(VirtualQDialog* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_dragEnterEvent(VirtualQDialog* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_dragMoveEvent(VirtualQDialog* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_dragLeaveEvent(VirtualQDialog* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_dropEvent(VirtualQDialog* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_hideEvent(VirtualQDialog* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDialog::nativeEvent(eventType, message, result);
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

	friend bool QDialog_virtualbase_nativeEvent(VirtualQDialog* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_changeEvent(VirtualQDialog* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_metric(const VirtualQDialog* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QDialog_virtualbase_initPainter(const VirtualQDialog* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDialog_virtualbase_redirected(const VirtualQDialog* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QDialog_virtualbase_sharedPainter(const VirtualQDialog* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_inputMethodEvent(VirtualQDialog* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QDialog_virtualbase_inputMethodQuery(const VirtualQDialog* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QDialog_virtualbase_focusNextPrevChild(VirtualQDialog* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_timerEvent(VirtualQDialog* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_childEvent(VirtualQDialog* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDialog_virtualbase_customEvent(VirtualQDialog* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDialog_virtualbase_connectNotify(VirtualQDialog* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDialog_virtualbase_disconnectNotify(VirtualQDialog* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDialog_protectedbase_adjustPosition(VirtualQDialog* self, QWidget* param1);
	friend void QDialog_protectedbase_updateMicroFocus(VirtualQDialog* self);
	friend void QDialog_protectedbase_create(VirtualQDialog* self);
	friend void QDialog_protectedbase_destroy(VirtualQDialog* self);
	friend bool QDialog_protectedbase_focusNextChild(VirtualQDialog* self);
	friend bool QDialog_protectedbase_focusPreviousChild(VirtualQDialog* self);
	friend QObject* QDialog_protectedbase_sender(const VirtualQDialog* self);
	friend int QDialog_protectedbase_senderSignalIndex(const VirtualQDialog* self);
	friend int QDialog_protectedbase_receivers(const VirtualQDialog* self, const char* signal);
	friend bool QDialog_protectedbase_isSignalConnected(const VirtualQDialog* self, QMetaMethod* signal);
};

VirtualQDialog* QDialog_new(const QDialog_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQDialog(vtbl, vdata, parent);
}

VirtualQDialog* QDialog_new2(const QDialog_VTable* vtbl, void* vdata) {
	return new VirtualQDialog(vtbl, vdata);
}

VirtualQDialog* QDialog_new3(const QDialog_VTable* vtbl, void* vdata, QWidget* parent, int f) {
	return new VirtualQDialog(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(f));
}

void QDialog_virtbase(QDialog* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDialog_metaObject(const QDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDialog_metacast(QDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDialog_metacall(QDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDialog_tr(const char* s) {
	QString _ret = QDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialog_trUtf8(const char* s) {
	QString _ret = QDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDialog_result(const QDialog* self) {
	return self->result();
}

void QDialog_setVisible(QDialog* self, bool visible) {
	self->setVisible(visible);
}

void QDialog_setOrientation(QDialog* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QDialog_orientation(const QDialog* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QDialog_setExtension(QDialog* self, QWidget* extension) {
	self->setExtension(extension);
}

QWidget* QDialog_extension(const QDialog* self) {
	return self->extension();
}

QSize* QDialog_sizeHint(const QDialog* self) {
	return new QSize(self->sizeHint());
}

QSize* QDialog_minimumSizeHint(const QDialog* self) {
	return new QSize(self->minimumSizeHint());
}

void QDialog_setSizeGripEnabled(QDialog* self, bool sizeGripEnabled) {
	self->setSizeGripEnabled(sizeGripEnabled);
}

bool QDialog_isSizeGripEnabled(const QDialog* self) {
	return self->isSizeGripEnabled();
}

void QDialog_setModal(QDialog* self, bool modal) {
	self->setModal(modal);
}

void QDialog_setResult(QDialog* self, int r) {
	self->setResult(static_cast<int>(r));
}

void QDialog_finished(QDialog* self, int result) {
	self->finished(static_cast<int>(result));
}

void QDialog_connect_finished(VirtualQDialog* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int result) {
			int sigval1 = result;
			callback(slot, sigval1);
		}
	};
	VirtualQDialog::connect(self, static_cast<void (QDialog::*)(int)>(&QDialog::finished), self, local_caller{slot, callback, release});
}

void QDialog_accepted(QDialog* self) {
	self->accepted();
}

void QDialog_connect_accepted(VirtualQDialog* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQDialog::connect(self, static_cast<void (QDialog::*)()>(&QDialog::accepted), self, local_caller{slot, callback, release});
}

void QDialog_rejected(QDialog* self) {
	self->rejected();
}

void QDialog_connect_rejected(VirtualQDialog* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQDialog::connect(self, static_cast<void (QDialog::*)()>(&QDialog::rejected), self, local_caller{slot, callback, release});
}

void QDialog_open(QDialog* self) {
	self->open();
}

int QDialog_exec(QDialog* self) {
	return self->exec();
}

void QDialog_done(QDialog* self, int param1) {
	self->done(static_cast<int>(param1));
}

void QDialog_accept(QDialog* self) {
	self->accept();
}

void QDialog_reject(QDialog* self) {
	self->reject();
}

void QDialog_showExtension(QDialog* self, bool param1) {
	self->showExtension(param1);
}

struct miqt_string QDialog_tr2(const char* s, const char* c) {
	QString _ret = QDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDialog_virtualbase_metaObject(const VirtualQDialog* self) {

	return (QMetaObject*) self->QDialog::metaObject();
}

void* QDialog_virtualbase_metacast(VirtualQDialog* self, const char* param1) {

	return self->QDialog::qt_metacast(param1);
}

int QDialog_virtualbase_metacall(VirtualQDialog* self, int param1, int param2, void** param3) {

	return self->QDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QDialog_virtualbase_setVisible(VirtualQDialog* self, bool visible) {

	self->QDialog::setVisible(visible);
}

QSize* QDialog_virtualbase_sizeHint(const VirtualQDialog* self) {

	return new QSize(self->QDialog::sizeHint());
}

QSize* QDialog_virtualbase_minimumSizeHint(const VirtualQDialog* self) {

	return new QSize(self->QDialog::minimumSizeHint());
}

void QDialog_virtualbase_open(VirtualQDialog* self) {

	self->QDialog::open();
}

int QDialog_virtualbase_exec(VirtualQDialog* self) {

	return self->QDialog::exec();
}

void QDialog_virtualbase_done(VirtualQDialog* self, int param1) {

	self->QDialog::done(static_cast<int>(param1));
}

void QDialog_virtualbase_accept(VirtualQDialog* self) {

	self->QDialog::accept();
}

void QDialog_virtualbase_reject(VirtualQDialog* self) {

	self->QDialog::reject();
}

void QDialog_virtualbase_keyPressEvent(VirtualQDialog* self, QKeyEvent* param1) {

	self->QDialog::keyPressEvent(param1);
}

void QDialog_virtualbase_closeEvent(VirtualQDialog* self, QCloseEvent* param1) {

	self->QDialog::closeEvent(param1);
}

void QDialog_virtualbase_showEvent(VirtualQDialog* self, QShowEvent* param1) {

	self->QDialog::showEvent(param1);
}

void QDialog_virtualbase_resizeEvent(VirtualQDialog* self, QResizeEvent* param1) {

	self->QDialog::resizeEvent(param1);
}

void QDialog_virtualbase_contextMenuEvent(VirtualQDialog* self, QContextMenuEvent* param1) {

	self->QDialog::contextMenuEvent(param1);
}

bool QDialog_virtualbase_eventFilter(VirtualQDialog* self, QObject* param1, QEvent* param2) {

	return self->QDialog::eventFilter(param1, param2);
}

int QDialog_virtualbase_devType(const VirtualQDialog* self) {

	return self->QDialog::devType();
}

int QDialog_virtualbase_heightForWidth(const VirtualQDialog* self, int param1) {

	return self->QDialog::heightForWidth(static_cast<int>(param1));
}

bool QDialog_virtualbase_hasHeightForWidth(const VirtualQDialog* self) {

	return self->QDialog::hasHeightForWidth();
}

QPaintEngine* QDialog_virtualbase_paintEngine(const VirtualQDialog* self) {

	return self->QDialog::paintEngine();
}

bool QDialog_virtualbase_event(VirtualQDialog* self, QEvent* event) {

	return self->QDialog::event(event);
}

void QDialog_virtualbase_mousePressEvent(VirtualQDialog* self, QMouseEvent* event) {

	self->QDialog::mousePressEvent(event);
}

void QDialog_virtualbase_mouseReleaseEvent(VirtualQDialog* self, QMouseEvent* event) {

	self->QDialog::mouseReleaseEvent(event);
}

void QDialog_virtualbase_mouseDoubleClickEvent(VirtualQDialog* self, QMouseEvent* event) {

	self->QDialog::mouseDoubleClickEvent(event);
}

void QDialog_virtualbase_mouseMoveEvent(VirtualQDialog* self, QMouseEvent* event) {

	self->QDialog::mouseMoveEvent(event);
}

void QDialog_virtualbase_wheelEvent(VirtualQDialog* self, QWheelEvent* event) {

	self->QDialog::wheelEvent(event);
}

void QDialog_virtualbase_keyReleaseEvent(VirtualQDialog* self, QKeyEvent* event) {

	self->QDialog::keyReleaseEvent(event);
}

void QDialog_virtualbase_focusInEvent(VirtualQDialog* self, QFocusEvent* event) {

	self->QDialog::focusInEvent(event);
}

void QDialog_virtualbase_focusOutEvent(VirtualQDialog* self, QFocusEvent* event) {

	self->QDialog::focusOutEvent(event);
}

void QDialog_virtualbase_enterEvent(VirtualQDialog* self, QEvent* event) {

	self->QDialog::enterEvent(event);
}

void QDialog_virtualbase_leaveEvent(VirtualQDialog* self, QEvent* event) {

	self->QDialog::leaveEvent(event);
}

void QDialog_virtualbase_paintEvent(VirtualQDialog* self, QPaintEvent* event) {

	self->QDialog::paintEvent(event);
}

void QDialog_virtualbase_moveEvent(VirtualQDialog* self, QMoveEvent* event) {

	self->QDialog::moveEvent(event);
}

void QDialog_virtualbase_tabletEvent(VirtualQDialog* self, QTabletEvent* event) {

	self->QDialog::tabletEvent(event);
}

void QDialog_virtualbase_actionEvent(VirtualQDialog* self, QActionEvent* event) {

	self->QDialog::actionEvent(event);
}

void QDialog_virtualbase_dragEnterEvent(VirtualQDialog* self, QDragEnterEvent* event) {

	self->QDialog::dragEnterEvent(event);
}

void QDialog_virtualbase_dragMoveEvent(VirtualQDialog* self, QDragMoveEvent* event) {

	self->QDialog::dragMoveEvent(event);
}

void QDialog_virtualbase_dragLeaveEvent(VirtualQDialog* self, QDragLeaveEvent* event) {

	self->QDialog::dragLeaveEvent(event);
}

void QDialog_virtualbase_dropEvent(VirtualQDialog* self, QDropEvent* event) {

	self->QDialog::dropEvent(event);
}

void QDialog_virtualbase_hideEvent(VirtualQDialog* self, QHideEvent* event) {

	self->QDialog::hideEvent(event);
}

bool QDialog_virtualbase_nativeEvent(VirtualQDialog* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QDialog_virtualbase_changeEvent(VirtualQDialog* self, QEvent* param1) {

	self->QDialog::changeEvent(param1);
}

int QDialog_virtualbase_metric(const VirtualQDialog* self, int param1) {

	return self->QDialog::metric(static_cast<VirtualQDialog::PaintDeviceMetric>(param1));
}

void QDialog_virtualbase_initPainter(const VirtualQDialog* self, QPainter* painter) {

	self->QDialog::initPainter(painter);
}

QPaintDevice* QDialog_virtualbase_redirected(const VirtualQDialog* self, QPoint* offset) {

	return self->QDialog::redirected(offset);
}

QPainter* QDialog_virtualbase_sharedPainter(const VirtualQDialog* self) {

	return self->QDialog::sharedPainter();
}

void QDialog_virtualbase_inputMethodEvent(VirtualQDialog* self, QInputMethodEvent* param1) {

	self->QDialog::inputMethodEvent(param1);
}

QVariant* QDialog_virtualbase_inputMethodQuery(const VirtualQDialog* self, int param1) {

	return new QVariant(self->QDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDialog_virtualbase_focusNextPrevChild(VirtualQDialog* self, bool next) {

	return self->QDialog::focusNextPrevChild(next);
}

void QDialog_virtualbase_timerEvent(VirtualQDialog* self, QTimerEvent* event) {

	self->QDialog::timerEvent(event);
}

void QDialog_virtualbase_childEvent(VirtualQDialog* self, QChildEvent* event) {

	self->QDialog::childEvent(event);
}

void QDialog_virtualbase_customEvent(VirtualQDialog* self, QEvent* event) {

	self->QDialog::customEvent(event);
}

void QDialog_virtualbase_connectNotify(VirtualQDialog* self, QMetaMethod* signal) {

	self->QDialog::connectNotify(*signal);
}

void QDialog_virtualbase_disconnectNotify(VirtualQDialog* self, QMetaMethod* signal) {

	self->QDialog::disconnectNotify(*signal);
}

const QMetaObject* QDialog_staticMetaObject() { return &QDialog::staticMetaObject; }

const QDialog_VTable* QDialog_vtbl(const VirtualQDialog* self) { return self->vtbl; }
void* QDialog_vdata(const VirtualQDialog* self) { return self->vdata; }
void QDialog_setVdata(VirtualQDialog* self, void* vdata) { self->vdata = vdata; }

void QDialog_protectedbase_adjustPosition(VirtualQDialog* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QDialog_protectedbase_updateMicroFocus(VirtualQDialog* self) {
	self->updateMicroFocus();
}

void QDialog_protectedbase_create(VirtualQDialog* self) {
	self->create();
}

void QDialog_protectedbase_destroy(VirtualQDialog* self) {
	self->destroy();
}

bool QDialog_protectedbase_focusNextChild(VirtualQDialog* self) {
	return self->focusNextChild();
}

bool QDialog_protectedbase_focusPreviousChild(VirtualQDialog* self) {
	return self->focusPreviousChild();
}

QObject* QDialog_protectedbase_sender(const VirtualQDialog* self) {
	return self->sender();
}

int QDialog_protectedbase_senderSignalIndex(const VirtualQDialog* self) {
	return self->senderSignalIndex();
}

int QDialog_protectedbase_receivers(const VirtualQDialog* self, const char* signal) {
	return self->receivers(signal);
}

bool QDialog_protectedbase_isSignalConnected(const VirtualQDialog* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDialog_delete(QDialog* self) {
	delete self;
}

