#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFrame>
#include <QHideEvent>
#include <QIcon>
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
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QToolBox>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtoolbox.h>
#include "gen_qtoolbox.h"
class VirtualQToolBox final : public QToolBox {
	const QToolBox_VTable* vtbl;
	void* vdata;
public:
	friend const QToolBox_VTable* QToolBox_vtbl(const VirtualQToolBox* self);
	friend void* QToolBox_vdata(const VirtualQToolBox* self);
	friend void QToolBox_setVdata(VirtualQToolBox* self, void* vdata);

	VirtualQToolBox(const QToolBox_VTable* vtbl, void* vdata, QWidget* parent): QToolBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQToolBox(const QToolBox_VTable* vtbl, void* vdata): QToolBox(), vtbl(vtbl), vdata(vdata) {}
	VirtualQToolBox(const QToolBox_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags f): QToolBox(parent, f), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQToolBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QToolBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QToolBox_virtualbase_metaObject(const VirtualQToolBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QToolBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QToolBox_virtualbase_metacast(VirtualQToolBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QToolBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBox_virtualbase_metacall(VirtualQToolBox* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QToolBox::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QToolBox_virtualbase_event(VirtualQToolBox* self, QEvent* e);

	virtual void itemInserted(int index) override {
		if (vtbl->itemInserted == 0) {
			QToolBox::itemInserted(index);
			return;
		}

		int sigval1 = index;

		vtbl->itemInserted(this, sigval1);

	}

	friend void QToolBox_virtualbase_itemInserted(VirtualQToolBox* self, int index);

	virtual void itemRemoved(int index) override {
		if (vtbl->itemRemoved == 0) {
			QToolBox::itemRemoved(index);
			return;
		}

		int sigval1 = index;

		vtbl->itemRemoved(this, sigval1);

	}

	friend void QToolBox_virtualbase_itemRemoved(VirtualQToolBox* self, int index);

	virtual void showEvent(QShowEvent* e) override {
		if (vtbl->showEvent == 0) {
			QToolBox::showEvent(e);
			return;
		}

		QShowEvent* sigval1 = e;

		vtbl->showEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_showEvent(VirtualQToolBox* self, QShowEvent* e);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QToolBox::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_changeEvent(VirtualQToolBox* self, QEvent* param1);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QToolBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QToolBox_virtualbase_sizeHint(const VirtualQToolBox* self);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QToolBox::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_paintEvent(VirtualQToolBox* self, QPaintEvent* param1);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QToolBox::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QToolBox_virtualbase_initStyleOption(const VirtualQToolBox* self, QStyleOptionFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QToolBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBox_virtualbase_devType(const VirtualQToolBox* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QToolBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QToolBox_virtualbase_setVisible(VirtualQToolBox* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QToolBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QToolBox_virtualbase_minimumSizeHint(const VirtualQToolBox* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QToolBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBox_virtualbase_heightForWidth(const VirtualQToolBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QToolBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QToolBox_virtualbase_hasHeightForWidth(const VirtualQToolBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QToolBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QToolBox_virtualbase_paintEngine(const VirtualQToolBox* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QToolBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_mousePressEvent(VirtualQToolBox* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QToolBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_mouseReleaseEvent(VirtualQToolBox* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QToolBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_mouseDoubleClickEvent(VirtualQToolBox* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QToolBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_mouseMoveEvent(VirtualQToolBox* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QToolBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_wheelEvent(VirtualQToolBox* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QToolBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_keyPressEvent(VirtualQToolBox* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QToolBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_keyReleaseEvent(VirtualQToolBox* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QToolBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_focusInEvent(VirtualQToolBox* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QToolBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_focusOutEvent(VirtualQToolBox* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QToolBox::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_enterEvent(VirtualQToolBox* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QToolBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_leaveEvent(VirtualQToolBox* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QToolBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_moveEvent(VirtualQToolBox* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QToolBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_resizeEvent(VirtualQToolBox* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QToolBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_closeEvent(VirtualQToolBox* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QToolBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_contextMenuEvent(VirtualQToolBox* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QToolBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_tabletEvent(VirtualQToolBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QToolBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_actionEvent(VirtualQToolBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QToolBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_dragEnterEvent(VirtualQToolBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QToolBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_dragMoveEvent(VirtualQToolBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QToolBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_dragLeaveEvent(VirtualQToolBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QToolBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_dropEvent(VirtualQToolBox* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QToolBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_hideEvent(VirtualQToolBox* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QToolBox::nativeEvent(eventType, message, result);
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

	friend bool QToolBox_virtualbase_nativeEvent(VirtualQToolBox* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QToolBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBox_virtualbase_metric(const VirtualQToolBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QToolBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QToolBox_virtualbase_initPainter(const VirtualQToolBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QToolBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QToolBox_virtualbase_redirected(const VirtualQToolBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QToolBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QToolBox_virtualbase_sharedPainter(const VirtualQToolBox* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QToolBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_inputMethodEvent(VirtualQToolBox* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QToolBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QToolBox_virtualbase_inputMethodQuery(const VirtualQToolBox* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QToolBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QToolBox_virtualbase_focusNextPrevChild(VirtualQToolBox* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QToolBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QToolBox_virtualbase_eventFilter(VirtualQToolBox* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QToolBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_timerEvent(VirtualQToolBox* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QToolBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_childEvent(VirtualQToolBox* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QToolBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QToolBox_virtualbase_customEvent(VirtualQToolBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QToolBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QToolBox_virtualbase_connectNotify(VirtualQToolBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QToolBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QToolBox_virtualbase_disconnectNotify(VirtualQToolBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QToolBox_protectedbase_drawFrame(VirtualQToolBox* self, QPainter* param1);
	friend void QToolBox_protectedbase_updateMicroFocus(VirtualQToolBox* self);
	friend void QToolBox_protectedbase_create(VirtualQToolBox* self);
	friend void QToolBox_protectedbase_destroy(VirtualQToolBox* self);
	friend bool QToolBox_protectedbase_focusNextChild(VirtualQToolBox* self);
	friend bool QToolBox_protectedbase_focusPreviousChild(VirtualQToolBox* self);
	friend QObject* QToolBox_protectedbase_sender(const VirtualQToolBox* self);
	friend int QToolBox_protectedbase_senderSignalIndex(const VirtualQToolBox* self);
	friend int QToolBox_protectedbase_receivers(const VirtualQToolBox* self, const char* signal);
	friend bool QToolBox_protectedbase_isSignalConnected(const VirtualQToolBox* self, QMetaMethod* signal);
};

VirtualQToolBox* QToolBox_new(const QToolBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQToolBox(vtbl, vdata, parent);
}

VirtualQToolBox* QToolBox_new2(const QToolBox_VTable* vtbl, void* vdata) {
	return new VirtualQToolBox(vtbl, vdata);
}

VirtualQToolBox* QToolBox_new3(const QToolBox_VTable* vtbl, void* vdata, QWidget* parent, int f) {
	return new VirtualQToolBox(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(f));
}

void QToolBox_virtbase(QToolBox* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QToolBox_metaObject(const QToolBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QToolBox_metacast(QToolBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QToolBox_metacall(QToolBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QToolBox_tr(const char* s) {
	QString _ret = QToolBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QToolBox_addItem(QToolBox* self, QWidget* widget, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addItem(widget, text_QString);
}

int QToolBox_addItem2(QToolBox* self, QWidget* widget, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addItem(widget, *icon, text_QString);
}

int QToolBox_insertItem(QToolBox* self, int index, QWidget* widget, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertItem(static_cast<int>(index), widget, text_QString);
}

int QToolBox_insertItem2(QToolBox* self, int index, QWidget* widget, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertItem(static_cast<int>(index), widget, *icon, text_QString);
}

void QToolBox_removeItem(QToolBox* self, int index) {
	self->removeItem(static_cast<int>(index));
}

void QToolBox_setItemEnabled(QToolBox* self, int index, bool enabled) {
	self->setItemEnabled(static_cast<int>(index), enabled);
}

bool QToolBox_isItemEnabled(const QToolBox* self, int index) {
	return self->isItemEnabled(static_cast<int>(index));
}

void QToolBox_setItemText(QToolBox* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setItemText(static_cast<int>(index), text_QString);
}

struct miqt_string QToolBox_itemText(const QToolBox* self, int index) {
	QString _ret = self->itemText(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QToolBox_setItemIcon(QToolBox* self, int index, QIcon* icon) {
	self->setItemIcon(static_cast<int>(index), *icon);
}

QIcon* QToolBox_itemIcon(const QToolBox* self, int index) {
	return new QIcon(self->itemIcon(static_cast<int>(index)));
}

void QToolBox_setItemToolTip(QToolBox* self, int index, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setItemToolTip(static_cast<int>(index), toolTip_QString);
}

struct miqt_string QToolBox_itemToolTip(const QToolBox* self, int index) {
	QString _ret = self->itemToolTip(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QToolBox_currentIndex(const QToolBox* self) {
	return self->currentIndex();
}

QWidget* QToolBox_currentWidget(const QToolBox* self) {
	return self->currentWidget();
}

QWidget* QToolBox_widget(const QToolBox* self, int index) {
	return self->widget(static_cast<int>(index));
}

int QToolBox_indexOf(const QToolBox* self, QWidget* widget) {
	return self->indexOf(widget);
}

int QToolBox_count(const QToolBox* self) {
	return self->count();
}

void QToolBox_setCurrentIndex(QToolBox* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QToolBox_setCurrentWidget(QToolBox* self, QWidget* widget) {
	self->setCurrentWidget(widget);
}

void QToolBox_currentChanged(QToolBox* self, int index) {
	self->currentChanged(static_cast<int>(index));
}

void QToolBox_connect_currentChanged(VirtualQToolBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQToolBox::connect(self, static_cast<void (QToolBox::*)(int)>(&QToolBox::currentChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QToolBox_tr2(const char* s, const char* c) {
	QString _ret = QToolBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QToolBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QToolBox_virtualbase_metaObject(const VirtualQToolBox* self) {

	return (QMetaObject*) self->QToolBox::metaObject();
}

void* QToolBox_virtualbase_metacast(VirtualQToolBox* self, const char* param1) {

	return self->QToolBox::qt_metacast(param1);
}

int QToolBox_virtualbase_metacall(VirtualQToolBox* self, int param1, int param2, void** param3) {

	return self->QToolBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QToolBox_virtualbase_event(VirtualQToolBox* self, QEvent* e) {

	return self->QToolBox::event(e);
}

void QToolBox_virtualbase_itemInserted(VirtualQToolBox* self, int index) {

	self->QToolBox::itemInserted(static_cast<int>(index));
}

void QToolBox_virtualbase_itemRemoved(VirtualQToolBox* self, int index) {

	self->QToolBox::itemRemoved(static_cast<int>(index));
}

void QToolBox_virtualbase_showEvent(VirtualQToolBox* self, QShowEvent* e) {

	self->QToolBox::showEvent(e);
}

void QToolBox_virtualbase_changeEvent(VirtualQToolBox* self, QEvent* param1) {

	self->QToolBox::changeEvent(param1);
}

QSize* QToolBox_virtualbase_sizeHint(const VirtualQToolBox* self) {

	return new QSize(self->QToolBox::sizeHint());
}

void QToolBox_virtualbase_paintEvent(VirtualQToolBox* self, QPaintEvent* param1) {

	self->QToolBox::paintEvent(param1);
}

void QToolBox_virtualbase_initStyleOption(const VirtualQToolBox* self, QStyleOptionFrame* option) {

	self->QToolBox::initStyleOption(option);
}

int QToolBox_virtualbase_devType(const VirtualQToolBox* self) {

	return self->QToolBox::devType();
}

void QToolBox_virtualbase_setVisible(VirtualQToolBox* self, bool visible) {

	self->QToolBox::setVisible(visible);
}

QSize* QToolBox_virtualbase_minimumSizeHint(const VirtualQToolBox* self) {

	return new QSize(self->QToolBox::minimumSizeHint());
}

int QToolBox_virtualbase_heightForWidth(const VirtualQToolBox* self, int param1) {

	return self->QToolBox::heightForWidth(static_cast<int>(param1));
}

bool QToolBox_virtualbase_hasHeightForWidth(const VirtualQToolBox* self) {

	return self->QToolBox::hasHeightForWidth();
}

QPaintEngine* QToolBox_virtualbase_paintEngine(const VirtualQToolBox* self) {

	return self->QToolBox::paintEngine();
}

void QToolBox_virtualbase_mousePressEvent(VirtualQToolBox* self, QMouseEvent* event) {

	self->QToolBox::mousePressEvent(event);
}

void QToolBox_virtualbase_mouseReleaseEvent(VirtualQToolBox* self, QMouseEvent* event) {

	self->QToolBox::mouseReleaseEvent(event);
}

void QToolBox_virtualbase_mouseDoubleClickEvent(VirtualQToolBox* self, QMouseEvent* event) {

	self->QToolBox::mouseDoubleClickEvent(event);
}

void QToolBox_virtualbase_mouseMoveEvent(VirtualQToolBox* self, QMouseEvent* event) {

	self->QToolBox::mouseMoveEvent(event);
}

void QToolBox_virtualbase_wheelEvent(VirtualQToolBox* self, QWheelEvent* event) {

	self->QToolBox::wheelEvent(event);
}

void QToolBox_virtualbase_keyPressEvent(VirtualQToolBox* self, QKeyEvent* event) {

	self->QToolBox::keyPressEvent(event);
}

void QToolBox_virtualbase_keyReleaseEvent(VirtualQToolBox* self, QKeyEvent* event) {

	self->QToolBox::keyReleaseEvent(event);
}

void QToolBox_virtualbase_focusInEvent(VirtualQToolBox* self, QFocusEvent* event) {

	self->QToolBox::focusInEvent(event);
}

void QToolBox_virtualbase_focusOutEvent(VirtualQToolBox* self, QFocusEvent* event) {

	self->QToolBox::focusOutEvent(event);
}

void QToolBox_virtualbase_enterEvent(VirtualQToolBox* self, QEnterEvent* event) {

	self->QToolBox::enterEvent(event);
}

void QToolBox_virtualbase_leaveEvent(VirtualQToolBox* self, QEvent* event) {

	self->QToolBox::leaveEvent(event);
}

void QToolBox_virtualbase_moveEvent(VirtualQToolBox* self, QMoveEvent* event) {

	self->QToolBox::moveEvent(event);
}

void QToolBox_virtualbase_resizeEvent(VirtualQToolBox* self, QResizeEvent* event) {

	self->QToolBox::resizeEvent(event);
}

void QToolBox_virtualbase_closeEvent(VirtualQToolBox* self, QCloseEvent* event) {

	self->QToolBox::closeEvent(event);
}

void QToolBox_virtualbase_contextMenuEvent(VirtualQToolBox* self, QContextMenuEvent* event) {

	self->QToolBox::contextMenuEvent(event);
}

void QToolBox_virtualbase_tabletEvent(VirtualQToolBox* self, QTabletEvent* event) {

	self->QToolBox::tabletEvent(event);
}

void QToolBox_virtualbase_actionEvent(VirtualQToolBox* self, QActionEvent* event) {

	self->QToolBox::actionEvent(event);
}

void QToolBox_virtualbase_dragEnterEvent(VirtualQToolBox* self, QDragEnterEvent* event) {

	self->QToolBox::dragEnterEvent(event);
}

void QToolBox_virtualbase_dragMoveEvent(VirtualQToolBox* self, QDragMoveEvent* event) {

	self->QToolBox::dragMoveEvent(event);
}

void QToolBox_virtualbase_dragLeaveEvent(VirtualQToolBox* self, QDragLeaveEvent* event) {

	self->QToolBox::dragLeaveEvent(event);
}

void QToolBox_virtualbase_dropEvent(VirtualQToolBox* self, QDropEvent* event) {

	self->QToolBox::dropEvent(event);
}

void QToolBox_virtualbase_hideEvent(VirtualQToolBox* self, QHideEvent* event) {

	self->QToolBox::hideEvent(event);
}

bool QToolBox_virtualbase_nativeEvent(VirtualQToolBox* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QToolBox::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QToolBox_virtualbase_metric(const VirtualQToolBox* self, int param1) {

	return self->QToolBox::metric(static_cast<VirtualQToolBox::PaintDeviceMetric>(param1));
}

void QToolBox_virtualbase_initPainter(const VirtualQToolBox* self, QPainter* painter) {

	self->QToolBox::initPainter(painter);
}

QPaintDevice* QToolBox_virtualbase_redirected(const VirtualQToolBox* self, QPoint* offset) {

	return self->QToolBox::redirected(offset);
}

QPainter* QToolBox_virtualbase_sharedPainter(const VirtualQToolBox* self) {

	return self->QToolBox::sharedPainter();
}

void QToolBox_virtualbase_inputMethodEvent(VirtualQToolBox* self, QInputMethodEvent* param1) {

	self->QToolBox::inputMethodEvent(param1);
}

QVariant* QToolBox_virtualbase_inputMethodQuery(const VirtualQToolBox* self, int param1) {

	return new QVariant(self->QToolBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QToolBox_virtualbase_focusNextPrevChild(VirtualQToolBox* self, bool next) {

	return self->QToolBox::focusNextPrevChild(next);
}

bool QToolBox_virtualbase_eventFilter(VirtualQToolBox* self, QObject* watched, QEvent* event) {

	return self->QToolBox::eventFilter(watched, event);
}

void QToolBox_virtualbase_timerEvent(VirtualQToolBox* self, QTimerEvent* event) {

	self->QToolBox::timerEvent(event);
}

void QToolBox_virtualbase_childEvent(VirtualQToolBox* self, QChildEvent* event) {

	self->QToolBox::childEvent(event);
}

void QToolBox_virtualbase_customEvent(VirtualQToolBox* self, QEvent* event) {

	self->QToolBox::customEvent(event);
}

void QToolBox_virtualbase_connectNotify(VirtualQToolBox* self, QMetaMethod* signal) {

	self->QToolBox::connectNotify(*signal);
}

void QToolBox_virtualbase_disconnectNotify(VirtualQToolBox* self, QMetaMethod* signal) {

	self->QToolBox::disconnectNotify(*signal);
}

const QMetaObject* QToolBox_staticMetaObject() { return &QToolBox::staticMetaObject; }

const QToolBox_VTable* QToolBox_vtbl(const VirtualQToolBox* self) { return self->vtbl; }
void* QToolBox_vdata(const VirtualQToolBox* self) { return self->vdata; }
void QToolBox_setVdata(VirtualQToolBox* self, void* vdata) { self->vdata = vdata; }

void QToolBox_protectedbase_drawFrame(VirtualQToolBox* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QToolBox_protectedbase_updateMicroFocus(VirtualQToolBox* self) {
	self->updateMicroFocus();
}

void QToolBox_protectedbase_create(VirtualQToolBox* self) {
	self->create();
}

void QToolBox_protectedbase_destroy(VirtualQToolBox* self) {
	self->destroy();
}

bool QToolBox_protectedbase_focusNextChild(VirtualQToolBox* self) {
	return self->focusNextChild();
}

bool QToolBox_protectedbase_focusPreviousChild(VirtualQToolBox* self) {
	return self->focusPreviousChild();
}

QObject* QToolBox_protectedbase_sender(const VirtualQToolBox* self) {
	return self->sender();
}

int QToolBox_protectedbase_senderSignalIndex(const VirtualQToolBox* self) {
	return self->senderSignalIndex();
}

int QToolBox_protectedbase_receivers(const VirtualQToolBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QToolBox_protectedbase_isSignalConnected(const VirtualQToolBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QToolBox_delete(QToolBox* self) {
	delete self;
}

