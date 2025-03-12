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
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMenu>
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
#include <QStyleOptionMenuItem>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qmenu.h>
#include "gen_qmenu.h"
class VirtualQMenu final : public QMenu {
	const QMenu_VTable* vtbl;
	void* vdata;
public:
	friend const QMenu_VTable* QMenu_vtbl(const VirtualQMenu* self);
	friend void* QMenu_vdata(const VirtualQMenu* self);
	friend void QMenu_setVdata(VirtualQMenu* self, void* vdata);

	VirtualQMenu(const QMenu_VTable* vtbl, void* vdata, QWidget* parent): QMenu(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQMenu(const QMenu_VTable* vtbl, void* vdata): QMenu(), vtbl(vtbl), vdata(vdata) {}
	VirtualQMenu(const QMenu_VTable* vtbl, void* vdata, const QString& title): QMenu(title), vtbl(vtbl), vdata(vdata) {}
	VirtualQMenu(const QMenu_VTable* vtbl, void* vdata, const QString& title, QWidget* parent): QMenu(title, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMenu() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMenu::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMenu_virtualbase_metaObject(const VirtualQMenu* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMenu::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMenu_virtualbase_metacast(VirtualQMenu* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMenu::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenu_virtualbase_metacall(VirtualQMenu* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMenu::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMenu_virtualbase_sizeHint(const VirtualQMenu* self);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QMenu::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_changeEvent(VirtualQMenu* self, QEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QMenu::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_keyPressEvent(VirtualQMenu* self, QKeyEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMenu::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_mouseReleaseEvent(VirtualQMenu* self, QMouseEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QMenu::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_mousePressEvent(VirtualQMenu* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMenu::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_mouseMoveEvent(VirtualQMenu* self, QMouseEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QMenu::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_wheelEvent(VirtualQMenu* self, QWheelEvent* param1);

	virtual void enterEvent(QEnterEvent* param1) override {
		if (vtbl->enterEvent == 0) {
			QMenu::enterEvent(param1);
			return;
		}

		QEnterEvent* sigval1 = param1;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_enterEvent(VirtualQMenu* self, QEnterEvent* param1);

	virtual void leaveEvent(QEvent* param1) override {
		if (vtbl->leaveEvent == 0) {
			QMenu::leaveEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_leaveEvent(VirtualQMenu* self, QEvent* param1);

	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QMenu::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_hideEvent(VirtualQMenu* self, QHideEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QMenu::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_paintEvent(VirtualQMenu* self, QPaintEvent* param1);

	virtual void actionEvent(QActionEvent* param1) override {
		if (vtbl->actionEvent == 0) {
			QMenu::actionEvent(param1);
			return;
		}

		QActionEvent* sigval1 = param1;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_actionEvent(VirtualQMenu* self, QActionEvent* param1);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QMenu::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_timerEvent(VirtualQMenu* self, QTimerEvent* param1);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QMenu::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMenu_virtualbase_event(VirtualQMenu* self, QEvent* param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMenu::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QMenu_virtualbase_focusNextPrevChild(VirtualQMenu* self, bool next);

	virtual void initStyleOption(QStyleOptionMenuItem* option, const QAction* action) const override {
		if (vtbl->initStyleOption == 0) {
			QMenu::initStyleOption(option, action);
			return;
		}

		QStyleOptionMenuItem* sigval1 = option;
		QAction* sigval2 = (QAction*) action;

		vtbl->initStyleOption(this, sigval1, sigval2);

	}

	friend void QMenu_virtualbase_initStyleOption(const VirtualQMenu* self, QStyleOptionMenuItem* option, QAction* action);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMenu::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenu_virtualbase_devType(const VirtualQMenu* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMenu::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QMenu_virtualbase_setVisible(VirtualQMenu* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMenu::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMenu_virtualbase_minimumSizeHint(const VirtualQMenu* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMenu::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenu_virtualbase_heightForWidth(const VirtualQMenu* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMenu::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QMenu_virtualbase_hasHeightForWidth(const VirtualQMenu* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMenu::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QMenu_virtualbase_paintEngine(const VirtualQMenu* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMenu::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_mouseDoubleClickEvent(VirtualQMenu* self, QMouseEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMenu::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_keyReleaseEvent(VirtualQMenu* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QMenu::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_focusInEvent(VirtualQMenu* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QMenu::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_focusOutEvent(VirtualQMenu* self, QFocusEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMenu::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_moveEvent(VirtualQMenu* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QMenu::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_resizeEvent(VirtualQMenu* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMenu::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_closeEvent(VirtualQMenu* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QMenu::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_contextMenuEvent(VirtualQMenu* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMenu::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_tabletEvent(VirtualQMenu* self, QTabletEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QMenu::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_dragEnterEvent(VirtualQMenu* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QMenu::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_dragMoveEvent(VirtualQMenu* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMenu::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_dragLeaveEvent(VirtualQMenu* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QMenu::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_dropEvent(VirtualQMenu* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QMenu::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_showEvent(VirtualQMenu* self, QShowEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMenu::nativeEvent(eventType, message, result);
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

	friend bool QMenu_virtualbase_nativeEvent(VirtualQMenu* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMenu::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMenu_virtualbase_metric(const VirtualQMenu* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMenu::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QMenu_virtualbase_initPainter(const VirtualQMenu* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMenu::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMenu_virtualbase_redirected(const VirtualQMenu* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMenu::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QMenu_virtualbase_sharedPainter(const VirtualQMenu* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMenu::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_inputMethodEvent(VirtualQMenu* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMenu::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QMenu_virtualbase_inputMethodQuery(const VirtualQMenu* self, int param1);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMenu::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMenu_virtualbase_eventFilter(VirtualQMenu* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMenu::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_childEvent(VirtualQMenu* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMenu::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMenu_virtualbase_customEvent(VirtualQMenu* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMenu::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMenu_virtualbase_connectNotify(VirtualQMenu* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMenu::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMenu_virtualbase_disconnectNotify(VirtualQMenu* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend int QMenu_protectedbase_columnCount(const VirtualQMenu* self);
	friend void QMenu_protectedbase_updateMicroFocus(VirtualQMenu* self);
	friend void QMenu_protectedbase_create(VirtualQMenu* self);
	friend void QMenu_protectedbase_destroy(VirtualQMenu* self);
	friend bool QMenu_protectedbase_focusNextChild(VirtualQMenu* self);
	friend bool QMenu_protectedbase_focusPreviousChild(VirtualQMenu* self);
	friend QObject* QMenu_protectedbase_sender(const VirtualQMenu* self);
	friend int QMenu_protectedbase_senderSignalIndex(const VirtualQMenu* self);
	friend int QMenu_protectedbase_receivers(const VirtualQMenu* self, const char* signal);
	friend bool QMenu_protectedbase_isSignalConnected(const VirtualQMenu* self, QMetaMethod* signal);
};

VirtualQMenu* QMenu_new(const QMenu_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQMenu(vtbl, vdata, parent);
}

VirtualQMenu* QMenu_new2(const QMenu_VTable* vtbl, void* vdata) {
	return new VirtualQMenu(vtbl, vdata);
}

VirtualQMenu* QMenu_new3(const QMenu_VTable* vtbl, void* vdata, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQMenu(vtbl, vdata, title_QString);
}

VirtualQMenu* QMenu_new4(const QMenu_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQMenu(vtbl, vdata, title_QString, parent);
}

void QMenu_virtbase(QMenu* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QMenu_metaObject(const QMenu* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMenu_metacast(QMenu* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMenu_metacall(QMenu* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMenu_tr(const char* s) {
	QString _ret = QMenu::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QMenu_addMenu(QMenu* self, QMenu* menu) {
	return self->addMenu(menu);
}

QMenu* QMenu_addMenuWithTitle(QMenu* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addMenu(title_QString);
}

QMenu* QMenu_addMenu2(QMenu* self, QIcon* icon, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return self->addMenu(*icon, title_QString);
}

QAction* QMenu_addSeparator(QMenu* self) {
	return self->addSeparator();
}

QAction* QMenu_addSection(QMenu* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addSection(text_QString);
}

QAction* QMenu_addSection2(QMenu* self, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addSection(*icon, text_QString);
}

QAction* QMenu_insertMenu(QMenu* self, QAction* before, QMenu* menu) {
	return self->insertMenu(before, menu);
}

QAction* QMenu_insertSeparator(QMenu* self, QAction* before) {
	return self->insertSeparator(before);
}

QAction* QMenu_insertSection(QMenu* self, QAction* before, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertSection(before, text_QString);
}

QAction* QMenu_insertSection2(QMenu* self, QAction* before, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertSection(before, *icon, text_QString);
}

bool QMenu_isEmpty(const QMenu* self) {
	return self->isEmpty();
}

void QMenu_clear(QMenu* self) {
	self->clear();
}

void QMenu_setTearOffEnabled(QMenu* self, bool tearOffEnabled) {
	self->setTearOffEnabled(tearOffEnabled);
}

bool QMenu_isTearOffEnabled(const QMenu* self) {
	return self->isTearOffEnabled();
}

bool QMenu_isTearOffMenuVisible(const QMenu* self) {
	return self->isTearOffMenuVisible();
}

void QMenu_showTearOffMenu(QMenu* self) {
	self->showTearOffMenu();
}

void QMenu_showTearOffMenuWithPos(QMenu* self, QPoint* pos) {
	self->showTearOffMenu(*pos);
}

void QMenu_hideTearOffMenu(QMenu* self) {
	self->hideTearOffMenu();
}

void QMenu_setDefaultAction(QMenu* self, QAction* defaultAction) {
	self->setDefaultAction(defaultAction);
}

QAction* QMenu_defaultAction(const QMenu* self) {
	return self->defaultAction();
}

void QMenu_setActiveAction(QMenu* self, QAction* act) {
	self->setActiveAction(act);
}

QAction* QMenu_activeAction(const QMenu* self) {
	return self->activeAction();
}

void QMenu_popup(QMenu* self, QPoint* pos) {
	self->popup(*pos);
}

QAction* QMenu_exec(QMenu* self) {
	return self->exec();
}

QAction* QMenu_execWithPos(QMenu* self, QPoint* pos) {
	return self->exec(*pos);
}

QAction* QMenu_exec2(struct miqt_array /* of QAction* */  actions, QPoint* pos) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	return QMenu::exec(actions_QList, *pos);
}

QSize* QMenu_sizeHint(const QMenu* self) {
	return new QSize(self->sizeHint());
}

QRect* QMenu_actionGeometry(const QMenu* self, QAction* param1) {
	return new QRect(self->actionGeometry(param1));
}

QAction* QMenu_actionAt(const QMenu* self, QPoint* param1) {
	return self->actionAt(*param1);
}

QAction* QMenu_menuAction(const QMenu* self) {
	return self->menuAction();
}

QMenu* QMenu_menuInAction(QAction* action) {
	return QMenu::menuInAction(action);
}

struct miqt_string QMenu_title(const QMenu* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMenu_setTitle(QMenu* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setTitle(title_QString);
}

QIcon* QMenu_icon(const QMenu* self) {
	return new QIcon(self->icon());
}

void QMenu_setIcon(QMenu* self, QIcon* icon) {
	self->setIcon(*icon);
}

void QMenu_setNoReplayFor(QMenu* self, QWidget* widget) {
	self->setNoReplayFor(widget);
}

bool QMenu_separatorsCollapsible(const QMenu* self) {
	return self->separatorsCollapsible();
}

void QMenu_setSeparatorsCollapsible(QMenu* self, bool collapse) {
	self->setSeparatorsCollapsible(collapse);
}

bool QMenu_toolTipsVisible(const QMenu* self) {
	return self->toolTipsVisible();
}

void QMenu_setToolTipsVisible(QMenu* self, bool visible) {
	self->setToolTipsVisible(visible);
}

void QMenu_aboutToShow(QMenu* self) {
	self->aboutToShow();
}

void QMenu_connect_aboutToShow(VirtualQMenu* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMenu::connect(self, static_cast<void (QMenu::*)()>(&QMenu::aboutToShow), self, local_caller{slot, callback, release});
}

void QMenu_aboutToHide(QMenu* self) {
	self->aboutToHide();
}

void QMenu_connect_aboutToHide(VirtualQMenu* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMenu::connect(self, static_cast<void (QMenu::*)()>(&QMenu::aboutToHide), self, local_caller{slot, callback, release});
}

void QMenu_triggered(QMenu* self, QAction* action) {
	self->triggered(action);
}

void QMenu_connect_triggered(VirtualQMenu* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQMenu::connect(self, static_cast<void (QMenu::*)(QAction*)>(&QMenu::triggered), self, local_caller{slot, callback, release});
}

void QMenu_hovered(QMenu* self, QAction* action) {
	self->hovered(action);
}

void QMenu_connect_hovered(VirtualQMenu* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* action) {
			QAction* sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQMenu::connect(self, static_cast<void (QMenu::*)(QAction*)>(&QMenu::hovered), self, local_caller{slot, callback, release});
}

struct miqt_string QMenu_tr2(const char* s, const char* c) {
	QString _ret = QMenu::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMenu_tr3(const char* s, const char* c, int n) {
	QString _ret = QMenu::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMenu_popup2(QMenu* self, QPoint* pos, QAction* at) {
	self->popup(*pos, at);
}

QAction* QMenu_exec22(QMenu* self, QPoint* pos, QAction* at) {
	return self->exec(*pos, at);
}

QAction* QMenu_exec3(struct miqt_array /* of QAction* */  actions, QPoint* pos, QAction* at) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	return QMenu::exec(actions_QList, *pos, at);
}

QAction* QMenu_exec4(struct miqt_array /* of QAction* */  actions, QPoint* pos, QAction* at, QWidget* parent) {
	QList<QAction *> actions_QList;
	actions_QList.reserve(actions.len);
	QAction** actions_arr = static_cast<QAction**>(actions.data);
	for(size_t i = 0; i < actions.len; ++i) {
		actions_QList.push_back(actions_arr[i]);
	}
	return QMenu::exec(actions_QList, *pos, at, parent);
}

QMetaObject* QMenu_virtualbase_metaObject(const VirtualQMenu* self) {

	return (QMetaObject*) self->QMenu::metaObject();
}

void* QMenu_virtualbase_metacast(VirtualQMenu* self, const char* param1) {

	return self->QMenu::qt_metacast(param1);
}

int QMenu_virtualbase_metacall(VirtualQMenu* self, int param1, int param2, void** param3) {

	return self->QMenu::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QMenu_virtualbase_sizeHint(const VirtualQMenu* self) {

	return new QSize(self->QMenu::sizeHint());
}

void QMenu_virtualbase_changeEvent(VirtualQMenu* self, QEvent* param1) {

	self->QMenu::changeEvent(param1);
}

void QMenu_virtualbase_keyPressEvent(VirtualQMenu* self, QKeyEvent* param1) {

	self->QMenu::keyPressEvent(param1);
}

void QMenu_virtualbase_mouseReleaseEvent(VirtualQMenu* self, QMouseEvent* param1) {

	self->QMenu::mouseReleaseEvent(param1);
}

void QMenu_virtualbase_mousePressEvent(VirtualQMenu* self, QMouseEvent* param1) {

	self->QMenu::mousePressEvent(param1);
}

void QMenu_virtualbase_mouseMoveEvent(VirtualQMenu* self, QMouseEvent* param1) {

	self->QMenu::mouseMoveEvent(param1);
}

void QMenu_virtualbase_wheelEvent(VirtualQMenu* self, QWheelEvent* param1) {

	self->QMenu::wheelEvent(param1);
}

void QMenu_virtualbase_enterEvent(VirtualQMenu* self, QEnterEvent* param1) {

	self->QMenu::enterEvent(param1);
}

void QMenu_virtualbase_leaveEvent(VirtualQMenu* self, QEvent* param1) {

	self->QMenu::leaveEvent(param1);
}

void QMenu_virtualbase_hideEvent(VirtualQMenu* self, QHideEvent* param1) {

	self->QMenu::hideEvent(param1);
}

void QMenu_virtualbase_paintEvent(VirtualQMenu* self, QPaintEvent* param1) {

	self->QMenu::paintEvent(param1);
}

void QMenu_virtualbase_actionEvent(VirtualQMenu* self, QActionEvent* param1) {

	self->QMenu::actionEvent(param1);
}

void QMenu_virtualbase_timerEvent(VirtualQMenu* self, QTimerEvent* param1) {

	self->QMenu::timerEvent(param1);
}

bool QMenu_virtualbase_event(VirtualQMenu* self, QEvent* param1) {

	return self->QMenu::event(param1);
}

bool QMenu_virtualbase_focusNextPrevChild(VirtualQMenu* self, bool next) {

	return self->QMenu::focusNextPrevChild(next);
}

void QMenu_virtualbase_initStyleOption(const VirtualQMenu* self, QStyleOptionMenuItem* option, QAction* action) {

	self->QMenu::initStyleOption(option, action);
}

int QMenu_virtualbase_devType(const VirtualQMenu* self) {

	return self->QMenu::devType();
}

void QMenu_virtualbase_setVisible(VirtualQMenu* self, bool visible) {

	self->QMenu::setVisible(visible);
}

QSize* QMenu_virtualbase_minimumSizeHint(const VirtualQMenu* self) {

	return new QSize(self->QMenu::minimumSizeHint());
}

int QMenu_virtualbase_heightForWidth(const VirtualQMenu* self, int param1) {

	return self->QMenu::heightForWidth(static_cast<int>(param1));
}

bool QMenu_virtualbase_hasHeightForWidth(const VirtualQMenu* self) {

	return self->QMenu::hasHeightForWidth();
}

QPaintEngine* QMenu_virtualbase_paintEngine(const VirtualQMenu* self) {

	return self->QMenu::paintEngine();
}

void QMenu_virtualbase_mouseDoubleClickEvent(VirtualQMenu* self, QMouseEvent* event) {

	self->QMenu::mouseDoubleClickEvent(event);
}

void QMenu_virtualbase_keyReleaseEvent(VirtualQMenu* self, QKeyEvent* event) {

	self->QMenu::keyReleaseEvent(event);
}

void QMenu_virtualbase_focusInEvent(VirtualQMenu* self, QFocusEvent* event) {

	self->QMenu::focusInEvent(event);
}

void QMenu_virtualbase_focusOutEvent(VirtualQMenu* self, QFocusEvent* event) {

	self->QMenu::focusOutEvent(event);
}

void QMenu_virtualbase_moveEvent(VirtualQMenu* self, QMoveEvent* event) {

	self->QMenu::moveEvent(event);
}

void QMenu_virtualbase_resizeEvent(VirtualQMenu* self, QResizeEvent* event) {

	self->QMenu::resizeEvent(event);
}

void QMenu_virtualbase_closeEvent(VirtualQMenu* self, QCloseEvent* event) {

	self->QMenu::closeEvent(event);
}

void QMenu_virtualbase_contextMenuEvent(VirtualQMenu* self, QContextMenuEvent* event) {

	self->QMenu::contextMenuEvent(event);
}

void QMenu_virtualbase_tabletEvent(VirtualQMenu* self, QTabletEvent* event) {

	self->QMenu::tabletEvent(event);
}

void QMenu_virtualbase_dragEnterEvent(VirtualQMenu* self, QDragEnterEvent* event) {

	self->QMenu::dragEnterEvent(event);
}

void QMenu_virtualbase_dragMoveEvent(VirtualQMenu* self, QDragMoveEvent* event) {

	self->QMenu::dragMoveEvent(event);
}

void QMenu_virtualbase_dragLeaveEvent(VirtualQMenu* self, QDragLeaveEvent* event) {

	self->QMenu::dragLeaveEvent(event);
}

void QMenu_virtualbase_dropEvent(VirtualQMenu* self, QDropEvent* event) {

	self->QMenu::dropEvent(event);
}

void QMenu_virtualbase_showEvent(VirtualQMenu* self, QShowEvent* event) {

	self->QMenu::showEvent(event);
}

bool QMenu_virtualbase_nativeEvent(VirtualQMenu* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QMenu::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QMenu_virtualbase_metric(const VirtualQMenu* self, int param1) {

	return self->QMenu::metric(static_cast<VirtualQMenu::PaintDeviceMetric>(param1));
}

void QMenu_virtualbase_initPainter(const VirtualQMenu* self, QPainter* painter) {

	self->QMenu::initPainter(painter);
}

QPaintDevice* QMenu_virtualbase_redirected(const VirtualQMenu* self, QPoint* offset) {

	return self->QMenu::redirected(offset);
}

QPainter* QMenu_virtualbase_sharedPainter(const VirtualQMenu* self) {

	return self->QMenu::sharedPainter();
}

void QMenu_virtualbase_inputMethodEvent(VirtualQMenu* self, QInputMethodEvent* param1) {

	self->QMenu::inputMethodEvent(param1);
}

QVariant* QMenu_virtualbase_inputMethodQuery(const VirtualQMenu* self, int param1) {

	return new QVariant(self->QMenu::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QMenu_virtualbase_eventFilter(VirtualQMenu* self, QObject* watched, QEvent* event) {

	return self->QMenu::eventFilter(watched, event);
}

void QMenu_virtualbase_childEvent(VirtualQMenu* self, QChildEvent* event) {

	self->QMenu::childEvent(event);
}

void QMenu_virtualbase_customEvent(VirtualQMenu* self, QEvent* event) {

	self->QMenu::customEvent(event);
}

void QMenu_virtualbase_connectNotify(VirtualQMenu* self, QMetaMethod* signal) {

	self->QMenu::connectNotify(*signal);
}

void QMenu_virtualbase_disconnectNotify(VirtualQMenu* self, QMetaMethod* signal) {

	self->QMenu::disconnectNotify(*signal);
}

const QMetaObject* QMenu_staticMetaObject() { return &QMenu::staticMetaObject; }

const QMenu_VTable* QMenu_vtbl(const VirtualQMenu* self) { return self->vtbl; }
void* QMenu_vdata(const VirtualQMenu* self) { return self->vdata; }
void QMenu_setVdata(VirtualQMenu* self, void* vdata) { self->vdata = vdata; }

int QMenu_protectedbase_columnCount(const VirtualQMenu* self) {
	return self->columnCount();
}

void QMenu_protectedbase_updateMicroFocus(VirtualQMenu* self) {
	self->updateMicroFocus();
}

void QMenu_protectedbase_create(VirtualQMenu* self) {
	self->create();
}

void QMenu_protectedbase_destroy(VirtualQMenu* self) {
	self->destroy();
}

bool QMenu_protectedbase_focusNextChild(VirtualQMenu* self) {
	return self->focusNextChild();
}

bool QMenu_protectedbase_focusPreviousChild(VirtualQMenu* self) {
	return self->focusPreviousChild();
}

QObject* QMenu_protectedbase_sender(const VirtualQMenu* self) {
	return self->sender();
}

int QMenu_protectedbase_senderSignalIndex(const VirtualQMenu* self) {
	return self->senderSignalIndex();
}

int QMenu_protectedbase_receivers(const VirtualQMenu* self, const char* signal) {
	return self->receivers(signal);
}

bool QMenu_protectedbase_isSignalConnected(const VirtualQMenu* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMenu_delete(QMenu* self) {
	delete self;
}

