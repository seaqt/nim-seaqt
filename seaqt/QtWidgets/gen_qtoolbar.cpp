#include <QAction>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
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
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionToolBar>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QToolBar>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtoolbar.h>
#include "gen_qtoolbar.h"
class VirtualQToolBar final : public QToolBar {
	const QToolBar_VTable* vtbl;
	void* vdata;
public:
	friend const QToolBar_VTable* QToolBar_vtbl(const VirtualQToolBar* self);
	friend void* QToolBar_vdata(const VirtualQToolBar* self);
	friend void QToolBar_setVdata(VirtualQToolBar* self, void* vdata);

	VirtualQToolBar(const QToolBar_VTable* vtbl, void* vdata, QWidget* parent): QToolBar(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQToolBar(const QToolBar_VTable* vtbl, void* vdata, const QString& title): QToolBar(title), vtbl(vtbl), vdata(vdata) {}
	VirtualQToolBar(const QToolBar_VTable* vtbl, void* vdata): QToolBar(), vtbl(vtbl), vdata(vdata) {}
	VirtualQToolBar(const QToolBar_VTable* vtbl, void* vdata, const QString& title, QWidget* parent): QToolBar(title, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQToolBar() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QToolBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QToolBar_virtualbase_metaObject(const VirtualQToolBar* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QToolBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QToolBar_virtualbase_metacast(VirtualQToolBar* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QToolBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBar_virtualbase_metacall(VirtualQToolBar* self, int param1, int param2, void** param3);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QToolBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_actionEvent(VirtualQToolBar* self, QActionEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QToolBar::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_changeEvent(VirtualQToolBar* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QToolBar::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_paintEvent(VirtualQToolBar* self, QPaintEvent* event);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QToolBar::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QToolBar_virtualbase_event(VirtualQToolBar* self, QEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QToolBar::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBar_virtualbase_devType(const VirtualQToolBar* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QToolBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QToolBar_virtualbase_setVisible(VirtualQToolBar* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QToolBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QToolBar_virtualbase_sizeHint(const VirtualQToolBar* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QToolBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QToolBar_virtualbase_minimumSizeHint(const VirtualQToolBar* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QToolBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBar_virtualbase_heightForWidth(const VirtualQToolBar* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QToolBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QToolBar_virtualbase_hasHeightForWidth(const VirtualQToolBar* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QToolBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QToolBar_virtualbase_paintEngine(const VirtualQToolBar* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QToolBar::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_mousePressEvent(VirtualQToolBar* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QToolBar::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_mouseReleaseEvent(VirtualQToolBar* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QToolBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_mouseDoubleClickEvent(VirtualQToolBar* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QToolBar::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_mouseMoveEvent(VirtualQToolBar* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QToolBar::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_wheelEvent(VirtualQToolBar* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QToolBar::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_keyPressEvent(VirtualQToolBar* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QToolBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_keyReleaseEvent(VirtualQToolBar* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QToolBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_focusInEvent(VirtualQToolBar* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QToolBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_focusOutEvent(VirtualQToolBar* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QToolBar::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_enterEvent(VirtualQToolBar* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QToolBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_leaveEvent(VirtualQToolBar* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QToolBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_moveEvent(VirtualQToolBar* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QToolBar::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_resizeEvent(VirtualQToolBar* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QToolBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_closeEvent(VirtualQToolBar* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QToolBar::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_contextMenuEvent(VirtualQToolBar* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QToolBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_tabletEvent(VirtualQToolBar* self, QTabletEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QToolBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_dragEnterEvent(VirtualQToolBar* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QToolBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_dragMoveEvent(VirtualQToolBar* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QToolBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_dragLeaveEvent(VirtualQToolBar* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QToolBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_dropEvent(VirtualQToolBar* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QToolBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_showEvent(VirtualQToolBar* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QToolBar::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_hideEvent(VirtualQToolBar* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QToolBar::nativeEvent(eventType, message, result);
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

	friend bool QToolBar_virtualbase_nativeEvent(VirtualQToolBar* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QToolBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QToolBar_virtualbase_metric(const VirtualQToolBar* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QToolBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QToolBar_virtualbase_initPainter(const VirtualQToolBar* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QToolBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QToolBar_virtualbase_redirected(const VirtualQToolBar* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QToolBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QToolBar_virtualbase_sharedPainter(const VirtualQToolBar* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QToolBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_inputMethodEvent(VirtualQToolBar* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QToolBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QToolBar_virtualbase_inputMethodQuery(const VirtualQToolBar* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QToolBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QToolBar_virtualbase_focusNextPrevChild(VirtualQToolBar* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QToolBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QToolBar_virtualbase_eventFilter(VirtualQToolBar* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QToolBar::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_timerEvent(VirtualQToolBar* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QToolBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_childEvent(VirtualQToolBar* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QToolBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QToolBar_virtualbase_customEvent(VirtualQToolBar* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QToolBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QToolBar_virtualbase_connectNotify(VirtualQToolBar* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QToolBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QToolBar_virtualbase_disconnectNotify(VirtualQToolBar* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QToolBar_protectedbase_initStyleOption(const VirtualQToolBar* self, QStyleOptionToolBar* option);
	friend void QToolBar_protectedbase_updateMicroFocus(VirtualQToolBar* self);
	friend void QToolBar_protectedbase_create(VirtualQToolBar* self);
	friend void QToolBar_protectedbase_destroy(VirtualQToolBar* self);
	friend bool QToolBar_protectedbase_focusNextChild(VirtualQToolBar* self);
	friend bool QToolBar_protectedbase_focusPreviousChild(VirtualQToolBar* self);
	friend QObject* QToolBar_protectedbase_sender(const VirtualQToolBar* self);
	friend int QToolBar_protectedbase_senderSignalIndex(const VirtualQToolBar* self);
	friend int QToolBar_protectedbase_receivers(const VirtualQToolBar* self, const char* signal);
	friend bool QToolBar_protectedbase_isSignalConnected(const VirtualQToolBar* self, QMetaMethod* signal);
};

VirtualQToolBar* QToolBar_new(const QToolBar_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQToolBar(vtbl, vdata, parent);
}

VirtualQToolBar* QToolBar_new2(const QToolBar_VTable* vtbl, void* vdata, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQToolBar(vtbl, vdata, title_QString);
}

VirtualQToolBar* QToolBar_new3(const QToolBar_VTable* vtbl, void* vdata) {
	return new VirtualQToolBar(vtbl, vdata);
}

VirtualQToolBar* QToolBar_new4(const QToolBar_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQToolBar(vtbl, vdata, title_QString, parent);
}

void QToolBar_virtbase(QToolBar* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QToolBar_metaObject(const QToolBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QToolBar_metacast(QToolBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QToolBar_metacall(QToolBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QToolBar_tr(const char* s) {
	QString _ret = QToolBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBar_trUtf8(const char* s) {
	QString _ret = QToolBar::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QToolBar_setMovable(QToolBar* self, bool movable) {
	self->setMovable(movable);
}

bool QToolBar_isMovable(const QToolBar* self) {
	return self->isMovable();
}

void QToolBar_setAllowedAreas(QToolBar* self, int areas) {
	self->setAllowedAreas(static_cast<Qt::ToolBarAreas>(areas));
}

int QToolBar_allowedAreas(const QToolBar* self) {
	Qt::ToolBarAreas _ret = self->allowedAreas();
	return static_cast<int>(_ret);
}

bool QToolBar_isAreaAllowed(const QToolBar* self, int area) {
	return self->isAreaAllowed(static_cast<Qt::ToolBarArea>(area));
}

void QToolBar_setOrientation(QToolBar* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QToolBar_orientation(const QToolBar* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QToolBar_clear(QToolBar* self) {
	self->clear();
}

QAction* QToolBar_addAction(QToolBar* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addAction(text_QString);
}

QAction* QToolBar_addAction2(QToolBar* self, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addAction(*icon, text_QString);
}

QAction* QToolBar_addSeparator(QToolBar* self) {
	return self->addSeparator();
}

QAction* QToolBar_insertSeparator(QToolBar* self, QAction* before) {
	return self->insertSeparator(before);
}

QAction* QToolBar_addWidget(QToolBar* self, QWidget* widget) {
	return self->addWidget(widget);
}

QAction* QToolBar_insertWidget(QToolBar* self, QAction* before, QWidget* widget) {
	return self->insertWidget(before, widget);
}

QRect* QToolBar_actionGeometry(const QToolBar* self, QAction* action) {
	return new QRect(self->actionGeometry(action));
}

QAction* QToolBar_actionAt(const QToolBar* self, QPoint* p) {
	return self->actionAt(*p);
}

QAction* QToolBar_actionAt2(const QToolBar* self, int x, int y) {
	return self->actionAt(static_cast<int>(x), static_cast<int>(y));
}

QAction* QToolBar_toggleViewAction(const QToolBar* self) {
	return self->toggleViewAction();
}

QSize* QToolBar_iconSize(const QToolBar* self) {
	return new QSize(self->iconSize());
}

int QToolBar_toolButtonStyle(const QToolBar* self) {
	Qt::ToolButtonStyle _ret = self->toolButtonStyle();
	return static_cast<int>(_ret);
}

QWidget* QToolBar_widgetForAction(const QToolBar* self, QAction* action) {
	return self->widgetForAction(action);
}

bool QToolBar_isFloatable(const QToolBar* self) {
	return self->isFloatable();
}

void QToolBar_setFloatable(QToolBar* self, bool floatable) {
	self->setFloatable(floatable);
}

bool QToolBar_isFloating(const QToolBar* self) {
	return self->isFloating();
}

void QToolBar_setIconSize(QToolBar* self, QSize* iconSize) {
	self->setIconSize(*iconSize);
}

void QToolBar_setToolButtonStyle(QToolBar* self, int toolButtonStyle) {
	self->setToolButtonStyle(static_cast<Qt::ToolButtonStyle>(toolButtonStyle));
}

void QToolBar_actionTriggered(QToolBar* self, QAction* action) {
	self->actionTriggered(action);
}

void QToolBar_connect_actionTriggered(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(QAction*)>(&QToolBar::actionTriggered), self, local_caller{slot, callback, release});
}

void QToolBar_movableChanged(QToolBar* self, bool movable) {
	self->movableChanged(movable);
}

void QToolBar_connect_movableChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool movable) {
			bool sigval1 = movable;
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(bool)>(&QToolBar::movableChanged), self, local_caller{slot, callback, release});
}

void QToolBar_allowedAreasChanged(QToolBar* self, int allowedAreas) {
	self->allowedAreasChanged(static_cast<Qt::ToolBarAreas>(allowedAreas));
}

void QToolBar_connect_allowedAreasChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::ToolBarAreas allowedAreas) {
			Qt::ToolBarAreas allowedAreas_ret = allowedAreas;
			int sigval1 = static_cast<int>(allowedAreas_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(Qt::ToolBarAreas)>(&QToolBar::allowedAreasChanged), self, local_caller{slot, callback, release});
}

void QToolBar_orientationChanged(QToolBar* self, int orientation) {
	self->orientationChanged(static_cast<Qt::Orientation>(orientation));
}

void QToolBar_connect_orientationChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::Orientation orientation) {
			Qt::Orientation orientation_ret = orientation;
			int sigval1 = static_cast<int>(orientation_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(Qt::Orientation)>(&QToolBar::orientationChanged), self, local_caller{slot, callback, release});
}

void QToolBar_iconSizeChanged(QToolBar* self, QSize* iconSize) {
	self->iconSizeChanged(*iconSize);
}

void QToolBar_connect_iconSizeChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSize*);
		void operator()(const QSize& iconSize) {
			const QSize& iconSize_ret = iconSize;
			// Cast returned reference into pointer
			QSize* sigval1 = const_cast<QSize*>(&iconSize_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(const QSize&)>(&QToolBar::iconSizeChanged), self, local_caller{slot, callback, release});
}

void QToolBar_toolButtonStyleChanged(QToolBar* self, int toolButtonStyle) {
	self->toolButtonStyleChanged(static_cast<Qt::ToolButtonStyle>(toolButtonStyle));
}

void QToolBar_connect_toolButtonStyleChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::ToolButtonStyle toolButtonStyle) {
			Qt::ToolButtonStyle toolButtonStyle_ret = toolButtonStyle;
			int sigval1 = static_cast<int>(toolButtonStyle_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(Qt::ToolButtonStyle)>(&QToolBar::toolButtonStyleChanged), self, local_caller{slot, callback, release});
}

void QToolBar_topLevelChanged(QToolBar* self, bool topLevel) {
	self->topLevelChanged(topLevel);
}

void QToolBar_connect_topLevelChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool topLevel) {
			bool sigval1 = topLevel;
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(bool)>(&QToolBar::topLevelChanged), self, local_caller{slot, callback, release});
}

void QToolBar_visibilityChanged(QToolBar* self, bool visible) {
	self->visibilityChanged(visible);
}

void QToolBar_connect_visibilityChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool visible) {
			bool sigval1 = visible;
			callback(slot, sigval1);
		}
	};
	VirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(bool)>(&QToolBar::visibilityChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QToolBar_tr2(const char* s, const char* c) {
	QString _ret = QToolBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QToolBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBar_trUtf82(const char* s, const char* c) {
	QString _ret = QToolBar::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBar_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QToolBar::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QToolBar_virtualbase_metaObject(const VirtualQToolBar* self) {

	return (QMetaObject*) self->QToolBar::metaObject();
}

void* QToolBar_virtualbase_metacast(VirtualQToolBar* self, const char* param1) {

	return self->QToolBar::qt_metacast(param1);
}

int QToolBar_virtualbase_metacall(VirtualQToolBar* self, int param1, int param2, void** param3) {

	return self->QToolBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QToolBar_virtualbase_actionEvent(VirtualQToolBar* self, QActionEvent* event) {

	self->QToolBar::actionEvent(event);
}

void QToolBar_virtualbase_changeEvent(VirtualQToolBar* self, QEvent* event) {

	self->QToolBar::changeEvent(event);
}

void QToolBar_virtualbase_paintEvent(VirtualQToolBar* self, QPaintEvent* event) {

	self->QToolBar::paintEvent(event);
}

bool QToolBar_virtualbase_event(VirtualQToolBar* self, QEvent* event) {

	return self->QToolBar::event(event);
}

int QToolBar_virtualbase_devType(const VirtualQToolBar* self) {

	return self->QToolBar::devType();
}

void QToolBar_virtualbase_setVisible(VirtualQToolBar* self, bool visible) {

	self->QToolBar::setVisible(visible);
}

QSize* QToolBar_virtualbase_sizeHint(const VirtualQToolBar* self) {

	return new QSize(self->QToolBar::sizeHint());
}

QSize* QToolBar_virtualbase_minimumSizeHint(const VirtualQToolBar* self) {

	return new QSize(self->QToolBar::minimumSizeHint());
}

int QToolBar_virtualbase_heightForWidth(const VirtualQToolBar* self, int param1) {

	return self->QToolBar::heightForWidth(static_cast<int>(param1));
}

bool QToolBar_virtualbase_hasHeightForWidth(const VirtualQToolBar* self) {

	return self->QToolBar::hasHeightForWidth();
}

QPaintEngine* QToolBar_virtualbase_paintEngine(const VirtualQToolBar* self) {

	return self->QToolBar::paintEngine();
}

void QToolBar_virtualbase_mousePressEvent(VirtualQToolBar* self, QMouseEvent* event) {

	self->QToolBar::mousePressEvent(event);
}

void QToolBar_virtualbase_mouseReleaseEvent(VirtualQToolBar* self, QMouseEvent* event) {

	self->QToolBar::mouseReleaseEvent(event);
}

void QToolBar_virtualbase_mouseDoubleClickEvent(VirtualQToolBar* self, QMouseEvent* event) {

	self->QToolBar::mouseDoubleClickEvent(event);
}

void QToolBar_virtualbase_mouseMoveEvent(VirtualQToolBar* self, QMouseEvent* event) {

	self->QToolBar::mouseMoveEvent(event);
}

void QToolBar_virtualbase_wheelEvent(VirtualQToolBar* self, QWheelEvent* event) {

	self->QToolBar::wheelEvent(event);
}

void QToolBar_virtualbase_keyPressEvent(VirtualQToolBar* self, QKeyEvent* event) {

	self->QToolBar::keyPressEvent(event);
}

void QToolBar_virtualbase_keyReleaseEvent(VirtualQToolBar* self, QKeyEvent* event) {

	self->QToolBar::keyReleaseEvent(event);
}

void QToolBar_virtualbase_focusInEvent(VirtualQToolBar* self, QFocusEvent* event) {

	self->QToolBar::focusInEvent(event);
}

void QToolBar_virtualbase_focusOutEvent(VirtualQToolBar* self, QFocusEvent* event) {

	self->QToolBar::focusOutEvent(event);
}

void QToolBar_virtualbase_enterEvent(VirtualQToolBar* self, QEvent* event) {

	self->QToolBar::enterEvent(event);
}

void QToolBar_virtualbase_leaveEvent(VirtualQToolBar* self, QEvent* event) {

	self->QToolBar::leaveEvent(event);
}

void QToolBar_virtualbase_moveEvent(VirtualQToolBar* self, QMoveEvent* event) {

	self->QToolBar::moveEvent(event);
}

void QToolBar_virtualbase_resizeEvent(VirtualQToolBar* self, QResizeEvent* event) {

	self->QToolBar::resizeEvent(event);
}

void QToolBar_virtualbase_closeEvent(VirtualQToolBar* self, QCloseEvent* event) {

	self->QToolBar::closeEvent(event);
}

void QToolBar_virtualbase_contextMenuEvent(VirtualQToolBar* self, QContextMenuEvent* event) {

	self->QToolBar::contextMenuEvent(event);
}

void QToolBar_virtualbase_tabletEvent(VirtualQToolBar* self, QTabletEvent* event) {

	self->QToolBar::tabletEvent(event);
}

void QToolBar_virtualbase_dragEnterEvent(VirtualQToolBar* self, QDragEnterEvent* event) {

	self->QToolBar::dragEnterEvent(event);
}

void QToolBar_virtualbase_dragMoveEvent(VirtualQToolBar* self, QDragMoveEvent* event) {

	self->QToolBar::dragMoveEvent(event);
}

void QToolBar_virtualbase_dragLeaveEvent(VirtualQToolBar* self, QDragLeaveEvent* event) {

	self->QToolBar::dragLeaveEvent(event);
}

void QToolBar_virtualbase_dropEvent(VirtualQToolBar* self, QDropEvent* event) {

	self->QToolBar::dropEvent(event);
}

void QToolBar_virtualbase_showEvent(VirtualQToolBar* self, QShowEvent* event) {

	self->QToolBar::showEvent(event);
}

void QToolBar_virtualbase_hideEvent(VirtualQToolBar* self, QHideEvent* event) {

	self->QToolBar::hideEvent(event);
}

bool QToolBar_virtualbase_nativeEvent(VirtualQToolBar* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QToolBar::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QToolBar_virtualbase_metric(const VirtualQToolBar* self, int param1) {

	return self->QToolBar::metric(static_cast<VirtualQToolBar::PaintDeviceMetric>(param1));
}

void QToolBar_virtualbase_initPainter(const VirtualQToolBar* self, QPainter* painter) {

	self->QToolBar::initPainter(painter);
}

QPaintDevice* QToolBar_virtualbase_redirected(const VirtualQToolBar* self, QPoint* offset) {

	return self->QToolBar::redirected(offset);
}

QPainter* QToolBar_virtualbase_sharedPainter(const VirtualQToolBar* self) {

	return self->QToolBar::sharedPainter();
}

void QToolBar_virtualbase_inputMethodEvent(VirtualQToolBar* self, QInputMethodEvent* param1) {

	self->QToolBar::inputMethodEvent(param1);
}

QVariant* QToolBar_virtualbase_inputMethodQuery(const VirtualQToolBar* self, int param1) {

	return new QVariant(self->QToolBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QToolBar_virtualbase_focusNextPrevChild(VirtualQToolBar* self, bool next) {

	return self->QToolBar::focusNextPrevChild(next);
}

bool QToolBar_virtualbase_eventFilter(VirtualQToolBar* self, QObject* watched, QEvent* event) {

	return self->QToolBar::eventFilter(watched, event);
}

void QToolBar_virtualbase_timerEvent(VirtualQToolBar* self, QTimerEvent* event) {

	self->QToolBar::timerEvent(event);
}

void QToolBar_virtualbase_childEvent(VirtualQToolBar* self, QChildEvent* event) {

	self->QToolBar::childEvent(event);
}

void QToolBar_virtualbase_customEvent(VirtualQToolBar* self, QEvent* event) {

	self->QToolBar::customEvent(event);
}

void QToolBar_virtualbase_connectNotify(VirtualQToolBar* self, QMetaMethod* signal) {

	self->QToolBar::connectNotify(*signal);
}

void QToolBar_virtualbase_disconnectNotify(VirtualQToolBar* self, QMetaMethod* signal) {

	self->QToolBar::disconnectNotify(*signal);
}

const QMetaObject* QToolBar_staticMetaObject() { return &QToolBar::staticMetaObject; }

const QToolBar_VTable* QToolBar_vtbl(const VirtualQToolBar* self) { return self->vtbl; }
void* QToolBar_vdata(const VirtualQToolBar* self) { return self->vdata; }
void QToolBar_setVdata(VirtualQToolBar* self, void* vdata) { self->vdata = vdata; }

void QToolBar_protectedbase_initStyleOption(const VirtualQToolBar* self, QStyleOptionToolBar* option) {
	self->initStyleOption(option);
}

void QToolBar_protectedbase_updateMicroFocus(VirtualQToolBar* self) {
	self->updateMicroFocus();
}

void QToolBar_protectedbase_create(VirtualQToolBar* self) {
	self->create();
}

void QToolBar_protectedbase_destroy(VirtualQToolBar* self) {
	self->destroy();
}

bool QToolBar_protectedbase_focusNextChild(VirtualQToolBar* self) {
	return self->focusNextChild();
}

bool QToolBar_protectedbase_focusPreviousChild(VirtualQToolBar* self) {
	return self->focusPreviousChild();
}

QObject* QToolBar_protectedbase_sender(const VirtualQToolBar* self) {
	return self->sender();
}

int QToolBar_protectedbase_senderSignalIndex(const VirtualQToolBar* self) {
	return self->senderSignalIndex();
}

int QToolBar_protectedbase_receivers(const VirtualQToolBar* self, const char* signal) {
	return self->receivers(signal);
}

bool QToolBar_protectedbase_isSignalConnected(const VirtualQToolBar* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QToolBar_delete(QToolBar* self) {
	delete self;
}

