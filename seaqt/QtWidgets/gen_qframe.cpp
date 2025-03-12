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
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qframe.h>
#include "gen_qframe.h"
class VirtualQFrame final : public QFrame {
	const QFrame_VTable* vtbl;
	void* vdata;
public:
	friend const QFrame_VTable* QFrame_vtbl(const VirtualQFrame* self);
	friend void* QFrame_vdata(const VirtualQFrame* self);
	friend void QFrame_setVdata(VirtualQFrame* self, void* vdata);

	VirtualQFrame(const QFrame_VTable* vtbl, void* vdata, QWidget* parent): QFrame(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQFrame(const QFrame_VTable* vtbl, void* vdata): QFrame(), vtbl(vtbl), vdata(vdata) {}
	VirtualQFrame(const QFrame_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags f): QFrame(parent, f), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFrame() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFrame::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QFrame_virtualbase_metaObject(const VirtualQFrame* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFrame::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QFrame_virtualbase_metacast(VirtualQFrame* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFrame::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFrame_virtualbase_metacall(VirtualQFrame* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFrame::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFrame_virtualbase_sizeHint(const VirtualQFrame* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QFrame::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QFrame_virtualbase_event(VirtualQFrame* self, QEvent* e);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QFrame::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_paintEvent(VirtualQFrame* self, QPaintEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QFrame::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_changeEvent(VirtualQFrame* self, QEvent* param1);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QFrame::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QFrame_virtualbase_initStyleOption(const VirtualQFrame* self, QStyleOptionFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFrame::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFrame_virtualbase_devType(const VirtualQFrame* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFrame::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QFrame_virtualbase_setVisible(VirtualQFrame* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFrame::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFrame_virtualbase_minimumSizeHint(const VirtualQFrame* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFrame::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFrame_virtualbase_heightForWidth(const VirtualQFrame* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFrame::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QFrame_virtualbase_hasHeightForWidth(const VirtualQFrame* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFrame::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QFrame_virtualbase_paintEngine(const VirtualQFrame* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QFrame::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_mousePressEvent(VirtualQFrame* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFrame::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_mouseReleaseEvent(VirtualQFrame* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFrame::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_mouseDoubleClickEvent(VirtualQFrame* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFrame::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_mouseMoveEvent(VirtualQFrame* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QFrame::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_wheelEvent(VirtualQFrame* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QFrame::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_keyPressEvent(VirtualQFrame* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFrame::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_keyReleaseEvent(VirtualQFrame* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QFrame::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_focusInEvent(VirtualQFrame* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QFrame::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_focusOutEvent(VirtualQFrame* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFrame::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_enterEvent(VirtualQFrame* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFrame::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_leaveEvent(VirtualQFrame* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFrame::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_moveEvent(VirtualQFrame* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QFrame::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_resizeEvent(VirtualQFrame* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QFrame::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_closeEvent(VirtualQFrame* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QFrame::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_contextMenuEvent(VirtualQFrame* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFrame::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_tabletEvent(VirtualQFrame* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFrame::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_actionEvent(VirtualQFrame* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFrame::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_dragEnterEvent(VirtualQFrame* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFrame::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_dragMoveEvent(VirtualQFrame* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFrame::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_dragLeaveEvent(VirtualQFrame* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFrame::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_dropEvent(VirtualQFrame* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QFrame::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_showEvent(VirtualQFrame* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QFrame::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_hideEvent(VirtualQFrame* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFrame::nativeEvent(eventType, message, result);
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

	friend bool QFrame_virtualbase_nativeEvent(VirtualQFrame* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFrame::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFrame_virtualbase_metric(const VirtualQFrame* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFrame::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QFrame_virtualbase_initPainter(const VirtualQFrame* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFrame::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QFrame_virtualbase_redirected(const VirtualQFrame* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFrame::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QFrame_virtualbase_sharedPainter(const VirtualQFrame* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFrame::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_inputMethodEvent(VirtualQFrame* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFrame::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QFrame_virtualbase_inputMethodQuery(const VirtualQFrame* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFrame::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QFrame_virtualbase_focusNextPrevChild(VirtualQFrame* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFrame::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFrame_virtualbase_eventFilter(VirtualQFrame* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFrame::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_timerEvent(VirtualQFrame* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFrame::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_childEvent(VirtualQFrame* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFrame::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QFrame_virtualbase_customEvent(VirtualQFrame* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFrame::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QFrame_virtualbase_connectNotify(VirtualQFrame* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFrame::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QFrame_virtualbase_disconnectNotify(VirtualQFrame* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QFrame_protectedbase_drawFrame(VirtualQFrame* self, QPainter* param1);
	friend void QFrame_protectedbase_updateMicroFocus(VirtualQFrame* self);
	friend void QFrame_protectedbase_create(VirtualQFrame* self);
	friend void QFrame_protectedbase_destroy(VirtualQFrame* self);
	friend bool QFrame_protectedbase_focusNextChild(VirtualQFrame* self);
	friend bool QFrame_protectedbase_focusPreviousChild(VirtualQFrame* self);
	friend QObject* QFrame_protectedbase_sender(const VirtualQFrame* self);
	friend int QFrame_protectedbase_senderSignalIndex(const VirtualQFrame* self);
	friend int QFrame_protectedbase_receivers(const VirtualQFrame* self, const char* signal);
	friend bool QFrame_protectedbase_isSignalConnected(const VirtualQFrame* self, QMetaMethod* signal);
};

VirtualQFrame* QFrame_new(const QFrame_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQFrame(vtbl, vdata, parent);
}

VirtualQFrame* QFrame_new2(const QFrame_VTable* vtbl, void* vdata) {
	return new VirtualQFrame(vtbl, vdata);
}

VirtualQFrame* QFrame_new3(const QFrame_VTable* vtbl, void* vdata, QWidget* parent, int f) {
	return new VirtualQFrame(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(f));
}

void QFrame_virtbase(QFrame* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QFrame_metaObject(const QFrame* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFrame_metacast(QFrame* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFrame_metacall(QFrame* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFrame_tr(const char* s) {
	QString _ret = QFrame::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QFrame_frameStyle(const QFrame* self) {
	return self->frameStyle();
}

void QFrame_setFrameStyle(QFrame* self, int frameStyle) {
	self->setFrameStyle(static_cast<int>(frameStyle));
}

int QFrame_frameWidth(const QFrame* self) {
	return self->frameWidth();
}

QSize* QFrame_sizeHint(const QFrame* self) {
	return new QSize(self->sizeHint());
}

int QFrame_frameShape(const QFrame* self) {
	QFrame::Shape _ret = self->frameShape();
	return static_cast<int>(_ret);
}

void QFrame_setFrameShape(QFrame* self, int frameShape) {
	self->setFrameShape(static_cast<QFrame::Shape>(frameShape));
}

int QFrame_frameShadow(const QFrame* self) {
	QFrame::Shadow _ret = self->frameShadow();
	return static_cast<int>(_ret);
}

void QFrame_setFrameShadow(QFrame* self, int frameShadow) {
	self->setFrameShadow(static_cast<QFrame::Shadow>(frameShadow));
}

int QFrame_lineWidth(const QFrame* self) {
	return self->lineWidth();
}

void QFrame_setLineWidth(QFrame* self, int lineWidth) {
	self->setLineWidth(static_cast<int>(lineWidth));
}

int QFrame_midLineWidth(const QFrame* self) {
	return self->midLineWidth();
}

void QFrame_setMidLineWidth(QFrame* self, int midLineWidth) {
	self->setMidLineWidth(static_cast<int>(midLineWidth));
}

QRect* QFrame_frameRect(const QFrame* self) {
	return new QRect(self->frameRect());
}

void QFrame_setFrameRect(QFrame* self, QRect* frameRect) {
	self->setFrameRect(*frameRect);
}

struct miqt_string QFrame_tr2(const char* s, const char* c) {
	QString _ret = QFrame::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFrame_tr3(const char* s, const char* c, int n) {
	QString _ret = QFrame::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFrame_virtualbase_metaObject(const VirtualQFrame* self) {

	return (QMetaObject*) self->QFrame::metaObject();
}

void* QFrame_virtualbase_metacast(VirtualQFrame* self, const char* param1) {

	return self->QFrame::qt_metacast(param1);
}

int QFrame_virtualbase_metacall(VirtualQFrame* self, int param1, int param2, void** param3) {

	return self->QFrame::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QFrame_virtualbase_sizeHint(const VirtualQFrame* self) {

	return new QSize(self->QFrame::sizeHint());
}

bool QFrame_virtualbase_event(VirtualQFrame* self, QEvent* e) {

	return self->QFrame::event(e);
}

void QFrame_virtualbase_paintEvent(VirtualQFrame* self, QPaintEvent* param1) {

	self->QFrame::paintEvent(param1);
}

void QFrame_virtualbase_changeEvent(VirtualQFrame* self, QEvent* param1) {

	self->QFrame::changeEvent(param1);
}

void QFrame_virtualbase_initStyleOption(const VirtualQFrame* self, QStyleOptionFrame* option) {

	self->QFrame::initStyleOption(option);
}

int QFrame_virtualbase_devType(const VirtualQFrame* self) {

	return self->QFrame::devType();
}

void QFrame_virtualbase_setVisible(VirtualQFrame* self, bool visible) {

	self->QFrame::setVisible(visible);
}

QSize* QFrame_virtualbase_minimumSizeHint(const VirtualQFrame* self) {

	return new QSize(self->QFrame::minimumSizeHint());
}

int QFrame_virtualbase_heightForWidth(const VirtualQFrame* self, int param1) {

	return self->QFrame::heightForWidth(static_cast<int>(param1));
}

bool QFrame_virtualbase_hasHeightForWidth(const VirtualQFrame* self) {

	return self->QFrame::hasHeightForWidth();
}

QPaintEngine* QFrame_virtualbase_paintEngine(const VirtualQFrame* self) {

	return self->QFrame::paintEngine();
}

void QFrame_virtualbase_mousePressEvent(VirtualQFrame* self, QMouseEvent* event) {

	self->QFrame::mousePressEvent(event);
}

void QFrame_virtualbase_mouseReleaseEvent(VirtualQFrame* self, QMouseEvent* event) {

	self->QFrame::mouseReleaseEvent(event);
}

void QFrame_virtualbase_mouseDoubleClickEvent(VirtualQFrame* self, QMouseEvent* event) {

	self->QFrame::mouseDoubleClickEvent(event);
}

void QFrame_virtualbase_mouseMoveEvent(VirtualQFrame* self, QMouseEvent* event) {

	self->QFrame::mouseMoveEvent(event);
}

void QFrame_virtualbase_wheelEvent(VirtualQFrame* self, QWheelEvent* event) {

	self->QFrame::wheelEvent(event);
}

void QFrame_virtualbase_keyPressEvent(VirtualQFrame* self, QKeyEvent* event) {

	self->QFrame::keyPressEvent(event);
}

void QFrame_virtualbase_keyReleaseEvent(VirtualQFrame* self, QKeyEvent* event) {

	self->QFrame::keyReleaseEvent(event);
}

void QFrame_virtualbase_focusInEvent(VirtualQFrame* self, QFocusEvent* event) {

	self->QFrame::focusInEvent(event);
}

void QFrame_virtualbase_focusOutEvent(VirtualQFrame* self, QFocusEvent* event) {

	self->QFrame::focusOutEvent(event);
}

void QFrame_virtualbase_enterEvent(VirtualQFrame* self, QEnterEvent* event) {

	self->QFrame::enterEvent(event);
}

void QFrame_virtualbase_leaveEvent(VirtualQFrame* self, QEvent* event) {

	self->QFrame::leaveEvent(event);
}

void QFrame_virtualbase_moveEvent(VirtualQFrame* self, QMoveEvent* event) {

	self->QFrame::moveEvent(event);
}

void QFrame_virtualbase_resizeEvent(VirtualQFrame* self, QResizeEvent* event) {

	self->QFrame::resizeEvent(event);
}

void QFrame_virtualbase_closeEvent(VirtualQFrame* self, QCloseEvent* event) {

	self->QFrame::closeEvent(event);
}

void QFrame_virtualbase_contextMenuEvent(VirtualQFrame* self, QContextMenuEvent* event) {

	self->QFrame::contextMenuEvent(event);
}

void QFrame_virtualbase_tabletEvent(VirtualQFrame* self, QTabletEvent* event) {

	self->QFrame::tabletEvent(event);
}

void QFrame_virtualbase_actionEvent(VirtualQFrame* self, QActionEvent* event) {

	self->QFrame::actionEvent(event);
}

void QFrame_virtualbase_dragEnterEvent(VirtualQFrame* self, QDragEnterEvent* event) {

	self->QFrame::dragEnterEvent(event);
}

void QFrame_virtualbase_dragMoveEvent(VirtualQFrame* self, QDragMoveEvent* event) {

	self->QFrame::dragMoveEvent(event);
}

void QFrame_virtualbase_dragLeaveEvent(VirtualQFrame* self, QDragLeaveEvent* event) {

	self->QFrame::dragLeaveEvent(event);
}

void QFrame_virtualbase_dropEvent(VirtualQFrame* self, QDropEvent* event) {

	self->QFrame::dropEvent(event);
}

void QFrame_virtualbase_showEvent(VirtualQFrame* self, QShowEvent* event) {

	self->QFrame::showEvent(event);
}

void QFrame_virtualbase_hideEvent(VirtualQFrame* self, QHideEvent* event) {

	self->QFrame::hideEvent(event);
}

bool QFrame_virtualbase_nativeEvent(VirtualQFrame* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QFrame::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QFrame_virtualbase_metric(const VirtualQFrame* self, int param1) {

	return self->QFrame::metric(static_cast<VirtualQFrame::PaintDeviceMetric>(param1));
}

void QFrame_virtualbase_initPainter(const VirtualQFrame* self, QPainter* painter) {

	self->QFrame::initPainter(painter);
}

QPaintDevice* QFrame_virtualbase_redirected(const VirtualQFrame* self, QPoint* offset) {

	return self->QFrame::redirected(offset);
}

QPainter* QFrame_virtualbase_sharedPainter(const VirtualQFrame* self) {

	return self->QFrame::sharedPainter();
}

void QFrame_virtualbase_inputMethodEvent(VirtualQFrame* self, QInputMethodEvent* param1) {

	self->QFrame::inputMethodEvent(param1);
}

QVariant* QFrame_virtualbase_inputMethodQuery(const VirtualQFrame* self, int param1) {

	return new QVariant(self->QFrame::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QFrame_virtualbase_focusNextPrevChild(VirtualQFrame* self, bool next) {

	return self->QFrame::focusNextPrevChild(next);
}

bool QFrame_virtualbase_eventFilter(VirtualQFrame* self, QObject* watched, QEvent* event) {

	return self->QFrame::eventFilter(watched, event);
}

void QFrame_virtualbase_timerEvent(VirtualQFrame* self, QTimerEvent* event) {

	self->QFrame::timerEvent(event);
}

void QFrame_virtualbase_childEvent(VirtualQFrame* self, QChildEvent* event) {

	self->QFrame::childEvent(event);
}

void QFrame_virtualbase_customEvent(VirtualQFrame* self, QEvent* event) {

	self->QFrame::customEvent(event);
}

void QFrame_virtualbase_connectNotify(VirtualQFrame* self, QMetaMethod* signal) {

	self->QFrame::connectNotify(*signal);
}

void QFrame_virtualbase_disconnectNotify(VirtualQFrame* self, QMetaMethod* signal) {

	self->QFrame::disconnectNotify(*signal);
}

const QMetaObject* QFrame_staticMetaObject() { return &QFrame::staticMetaObject; }

const QFrame_VTable* QFrame_vtbl(const VirtualQFrame* self) { return self->vtbl; }
void* QFrame_vdata(const VirtualQFrame* self) { return self->vdata; }
void QFrame_setVdata(VirtualQFrame* self, void* vdata) { self->vdata = vdata; }

void QFrame_protectedbase_drawFrame(VirtualQFrame* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QFrame_protectedbase_updateMicroFocus(VirtualQFrame* self) {
	self->updateMicroFocus();
}

void QFrame_protectedbase_create(VirtualQFrame* self) {
	self->create();
}

void QFrame_protectedbase_destroy(VirtualQFrame* self) {
	self->destroy();
}

bool QFrame_protectedbase_focusNextChild(VirtualQFrame* self) {
	return self->focusNextChild();
}

bool QFrame_protectedbase_focusPreviousChild(VirtualQFrame* self) {
	return self->focusPreviousChild();
}

QObject* QFrame_protectedbase_sender(const VirtualQFrame* self) {
	return self->sender();
}

int QFrame_protectedbase_senderSignalIndex(const VirtualQFrame* self) {
	return self->senderSignalIndex();
}

int QFrame_protectedbase_receivers(const VirtualQFrame* self, const char* signal) {
	return self->receivers(signal);
}

bool QFrame_protectedbase_isSignalConnected(const VirtualQFrame* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QFrame_delete(QFrame* self) {
	delete self;
}

