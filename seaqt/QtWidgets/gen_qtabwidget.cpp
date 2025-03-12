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
#include <QStyleOptionTabWidgetFrame>
#include <QTabBar>
#include <QTabWidget>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtabwidget.h>
#include "gen_qtabwidget.h"
class VirtualQTabWidget final : public QTabWidget {
	const QTabWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QTabWidget_VTable* QTabWidget_vtbl(const VirtualQTabWidget* self);
	friend void* QTabWidget_vdata(const VirtualQTabWidget* self);
	friend void QTabWidget_setVdata(VirtualQTabWidget* self, void* vdata);

	VirtualQTabWidget(const QTabWidget_VTable* vtbl, void* vdata, QWidget* parent): QTabWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQTabWidget(const QTabWidget_VTable* vtbl, void* vdata): QTabWidget(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTabWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTabWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTabWidget_virtualbase_metaObject(const VirtualQTabWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTabWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTabWidget_virtualbase_metacast(VirtualQTabWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTabWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabWidget_virtualbase_metacall(VirtualQTabWidget* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTabWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTabWidget_virtualbase_sizeHint(const VirtualQTabWidget* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTabWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTabWidget_virtualbase_minimumSizeHint(const VirtualQTabWidget* self);

	virtual int heightForWidth(int width) const override {
		if (vtbl->heightForWidth == 0) {
			return QTabWidget::heightForWidth(width);
		}

		int sigval1 = width;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabWidget_virtualbase_heightForWidth(const VirtualQTabWidget* self, int width);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTabWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QTabWidget_virtualbase_hasHeightForWidth(const VirtualQTabWidget* self);

	virtual void tabInserted(int index) override {
		if (vtbl->tabInserted == 0) {
			QTabWidget::tabInserted(index);
			return;
		}

		int sigval1 = index;

		vtbl->tabInserted(this, sigval1);

	}

	friend void QTabWidget_virtualbase_tabInserted(VirtualQTabWidget* self, int index);

	virtual void tabRemoved(int index) override {
		if (vtbl->tabRemoved == 0) {
			QTabWidget::tabRemoved(index);
			return;
		}

		int sigval1 = index;

		vtbl->tabRemoved(this, sigval1);

	}

	friend void QTabWidget_virtualbase_tabRemoved(VirtualQTabWidget* self, int index);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QTabWidget::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_showEvent(VirtualQTabWidget* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QTabWidget::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_resizeEvent(VirtualQTabWidget* self, QResizeEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QTabWidget::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_keyPressEvent(VirtualQTabWidget* self, QKeyEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QTabWidget::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_paintEvent(VirtualQTabWidget* self, QPaintEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QTabWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_changeEvent(VirtualQTabWidget* self, QEvent* param1);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QTabWidget::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTabWidget_virtualbase_event(VirtualQTabWidget* self, QEvent* param1);

	virtual void initStyleOption(QStyleOptionTabWidgetFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QTabWidget::initStyleOption(option);
			return;
		}

		QStyleOptionTabWidgetFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QTabWidget_virtualbase_initStyleOption(const VirtualQTabWidget* self, QStyleOptionTabWidgetFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTabWidget::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabWidget_virtualbase_devType(const VirtualQTabWidget* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTabWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QTabWidget_virtualbase_setVisible(VirtualQTabWidget* self, bool visible);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTabWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QTabWidget_virtualbase_paintEngine(const VirtualQTabWidget* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTabWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_mousePressEvent(VirtualQTabWidget* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTabWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_mouseReleaseEvent(VirtualQTabWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTabWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_mouseDoubleClickEvent(VirtualQTabWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTabWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_mouseMoveEvent(VirtualQTabWidget* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QTabWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_wheelEvent(VirtualQTabWidget* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTabWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_keyReleaseEvent(VirtualQTabWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTabWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_focusInEvent(VirtualQTabWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTabWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_focusOutEvent(VirtualQTabWidget* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTabWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_enterEvent(VirtualQTabWidget* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTabWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_leaveEvent(VirtualQTabWidget* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTabWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_moveEvent(VirtualQTabWidget* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTabWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_closeEvent(VirtualQTabWidget* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QTabWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_contextMenuEvent(VirtualQTabWidget* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTabWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_tabletEvent(VirtualQTabWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTabWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_actionEvent(VirtualQTabWidget* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTabWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_dragEnterEvent(VirtualQTabWidget* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTabWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_dragMoveEvent(VirtualQTabWidget* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTabWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_dragLeaveEvent(VirtualQTabWidget* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTabWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_dropEvent(VirtualQTabWidget* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTabWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_hideEvent(VirtualQTabWidget* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTabWidget::nativeEvent(eventType, message, result);
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

	friend bool QTabWidget_virtualbase_nativeEvent(VirtualQTabWidget* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTabWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabWidget_virtualbase_metric(const VirtualQTabWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTabWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QTabWidget_virtualbase_initPainter(const VirtualQTabWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTabWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTabWidget_virtualbase_redirected(const VirtualQTabWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTabWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QTabWidget_virtualbase_sharedPainter(const VirtualQTabWidget* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QTabWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_inputMethodEvent(VirtualQTabWidget* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTabWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTabWidget_virtualbase_inputMethodQuery(const VirtualQTabWidget* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTabWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QTabWidget_virtualbase_focusNextPrevChild(VirtualQTabWidget* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTabWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTabWidget_virtualbase_eventFilter(VirtualQTabWidget* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTabWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_timerEvent(VirtualQTabWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTabWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_childEvent(VirtualQTabWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTabWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTabWidget_virtualbase_customEvent(VirtualQTabWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTabWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTabWidget_virtualbase_connectNotify(VirtualQTabWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTabWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTabWidget_virtualbase_disconnectNotify(VirtualQTabWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTabWidget_protectedbase_setTabBar(VirtualQTabWidget* self, QTabBar* tabBar);
	friend void QTabWidget_protectedbase_updateMicroFocus(VirtualQTabWidget* self);
	friend void QTabWidget_protectedbase_create(VirtualQTabWidget* self);
	friend void QTabWidget_protectedbase_destroy(VirtualQTabWidget* self);
	friend bool QTabWidget_protectedbase_focusNextChild(VirtualQTabWidget* self);
	friend bool QTabWidget_protectedbase_focusPreviousChild(VirtualQTabWidget* self);
	friend QObject* QTabWidget_protectedbase_sender(const VirtualQTabWidget* self);
	friend int QTabWidget_protectedbase_senderSignalIndex(const VirtualQTabWidget* self);
	friend int QTabWidget_protectedbase_receivers(const VirtualQTabWidget* self, const char* signal);
	friend bool QTabWidget_protectedbase_isSignalConnected(const VirtualQTabWidget* self, QMetaMethod* signal);
};

VirtualQTabWidget* QTabWidget_new(const QTabWidget_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQTabWidget(vtbl, vdata, parent);
}

VirtualQTabWidget* QTabWidget_new2(const QTabWidget_VTable* vtbl, void* vdata) {
	return new VirtualQTabWidget(vtbl, vdata);
}

void QTabWidget_virtbase(QTabWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QTabWidget_metaObject(const QTabWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTabWidget_metacast(QTabWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTabWidget_metacall(QTabWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTabWidget_tr(const char* s) {
	QString _ret = QTabWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTabWidget_addTab(QTabWidget* self, QWidget* widget, struct miqt_string param2) {
	QString param2_QString = QString::fromUtf8(param2.data, param2.len);
	return self->addTab(widget, param2_QString);
}

int QTabWidget_addTab2(QTabWidget* self, QWidget* widget, QIcon* icon, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return self->addTab(widget, *icon, label_QString);
}

int QTabWidget_insertTab(QTabWidget* self, int index, QWidget* widget, struct miqt_string param3) {
	QString param3_QString = QString::fromUtf8(param3.data, param3.len);
	return self->insertTab(static_cast<int>(index), widget, param3_QString);
}

int QTabWidget_insertTab2(QTabWidget* self, int index, QWidget* widget, QIcon* icon, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return self->insertTab(static_cast<int>(index), widget, *icon, label_QString);
}

void QTabWidget_removeTab(QTabWidget* self, int index) {
	self->removeTab(static_cast<int>(index));
}

bool QTabWidget_isTabEnabled(const QTabWidget* self, int index) {
	return self->isTabEnabled(static_cast<int>(index));
}

void QTabWidget_setTabEnabled(QTabWidget* self, int index, bool enabled) {
	self->setTabEnabled(static_cast<int>(index), enabled);
}

bool QTabWidget_isTabVisible(const QTabWidget* self, int index) {
	return self->isTabVisible(static_cast<int>(index));
}

void QTabWidget_setTabVisible(QTabWidget* self, int index, bool visible) {
	self->setTabVisible(static_cast<int>(index), visible);
}

struct miqt_string QTabWidget_tabText(const QTabWidget* self, int index) {
	QString _ret = self->tabText(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabWidget_setTabText(QTabWidget* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setTabText(static_cast<int>(index), text_QString);
}

QIcon* QTabWidget_tabIcon(const QTabWidget* self, int index) {
	return new QIcon(self->tabIcon(static_cast<int>(index)));
}

void QTabWidget_setTabIcon(QTabWidget* self, int index, QIcon* icon) {
	self->setTabIcon(static_cast<int>(index), *icon);
}

void QTabWidget_setTabToolTip(QTabWidget* self, int index, struct miqt_string tip) {
	QString tip_QString = QString::fromUtf8(tip.data, tip.len);
	self->setTabToolTip(static_cast<int>(index), tip_QString);
}

struct miqt_string QTabWidget_tabToolTip(const QTabWidget* self, int index) {
	QString _ret = self->tabToolTip(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabWidget_setTabWhatsThis(QTabWidget* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setTabWhatsThis(static_cast<int>(index), text_QString);
}

struct miqt_string QTabWidget_tabWhatsThis(const QTabWidget* self, int index) {
	QString _ret = self->tabWhatsThis(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTabWidget_currentIndex(const QTabWidget* self) {
	return self->currentIndex();
}

QWidget* QTabWidget_currentWidget(const QTabWidget* self) {
	return self->currentWidget();
}

QWidget* QTabWidget_widget(const QTabWidget* self, int index) {
	return self->widget(static_cast<int>(index));
}

int QTabWidget_indexOf(const QTabWidget* self, QWidget* widget) {
	return self->indexOf(widget);
}

int QTabWidget_count(const QTabWidget* self) {
	return self->count();
}

int QTabWidget_tabPosition(const QTabWidget* self) {
	QTabWidget::TabPosition _ret = self->tabPosition();
	return static_cast<int>(_ret);
}

void QTabWidget_setTabPosition(QTabWidget* self, int position) {
	self->setTabPosition(static_cast<QTabWidget::TabPosition>(position));
}

bool QTabWidget_tabsClosable(const QTabWidget* self) {
	return self->tabsClosable();
}

void QTabWidget_setTabsClosable(QTabWidget* self, bool closeable) {
	self->setTabsClosable(closeable);
}

bool QTabWidget_isMovable(const QTabWidget* self) {
	return self->isMovable();
}

void QTabWidget_setMovable(QTabWidget* self, bool movable) {
	self->setMovable(movable);
}

int QTabWidget_tabShape(const QTabWidget* self) {
	QTabWidget::TabShape _ret = self->tabShape();
	return static_cast<int>(_ret);
}

void QTabWidget_setTabShape(QTabWidget* self, int s) {
	self->setTabShape(static_cast<QTabWidget::TabShape>(s));
}

QSize* QTabWidget_sizeHint(const QTabWidget* self) {
	return new QSize(self->sizeHint());
}

QSize* QTabWidget_minimumSizeHint(const QTabWidget* self) {
	return new QSize(self->minimumSizeHint());
}

int QTabWidget_heightForWidth(const QTabWidget* self, int width) {
	return self->heightForWidth(static_cast<int>(width));
}

bool QTabWidget_hasHeightForWidth(const QTabWidget* self) {
	return self->hasHeightForWidth();
}

void QTabWidget_setCornerWidget(QTabWidget* self, QWidget* w) {
	self->setCornerWidget(w);
}

QWidget* QTabWidget_cornerWidget(const QTabWidget* self) {
	return self->cornerWidget();
}

int QTabWidget_elideMode(const QTabWidget* self) {
	Qt::TextElideMode _ret = self->elideMode();
	return static_cast<int>(_ret);
}

void QTabWidget_setElideMode(QTabWidget* self, int mode) {
	self->setElideMode(static_cast<Qt::TextElideMode>(mode));
}

QSize* QTabWidget_iconSize(const QTabWidget* self) {
	return new QSize(self->iconSize());
}

void QTabWidget_setIconSize(QTabWidget* self, QSize* size) {
	self->setIconSize(*size);
}

bool QTabWidget_usesScrollButtons(const QTabWidget* self) {
	return self->usesScrollButtons();
}

void QTabWidget_setUsesScrollButtons(QTabWidget* self, bool useButtons) {
	self->setUsesScrollButtons(useButtons);
}

bool QTabWidget_documentMode(const QTabWidget* self) {
	return self->documentMode();
}

void QTabWidget_setDocumentMode(QTabWidget* self, bool set) {
	self->setDocumentMode(set);
}

bool QTabWidget_tabBarAutoHide(const QTabWidget* self) {
	return self->tabBarAutoHide();
}

void QTabWidget_setTabBarAutoHide(QTabWidget* self, bool enabled) {
	self->setTabBarAutoHide(enabled);
}

void QTabWidget_clear(QTabWidget* self) {
	self->clear();
}

QTabBar* QTabWidget_tabBar(const QTabWidget* self) {
	return self->tabBar();
}

void QTabWidget_setCurrentIndex(QTabWidget* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QTabWidget_setCurrentWidget(QTabWidget* self, QWidget* widget) {
	self->setCurrentWidget(widget);
}

void QTabWidget_currentChanged(QTabWidget* self, int index) {
	self->currentChanged(static_cast<int>(index));
}

void QTabWidget_connect_currentChanged(VirtualQTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabWidget::connect(self, static_cast<void (QTabWidget::*)(int)>(&QTabWidget::currentChanged), self, local_caller{slot, callback, release});
}

void QTabWidget_tabCloseRequested(QTabWidget* self, int index) {
	self->tabCloseRequested(static_cast<int>(index));
}

void QTabWidget_connect_tabCloseRequested(VirtualQTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabWidget::connect(self, static_cast<void (QTabWidget::*)(int)>(&QTabWidget::tabCloseRequested), self, local_caller{slot, callback, release});
}

void QTabWidget_tabBarClicked(QTabWidget* self, int index) {
	self->tabBarClicked(static_cast<int>(index));
}

void QTabWidget_connect_tabBarClicked(VirtualQTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabWidget::connect(self, static_cast<void (QTabWidget::*)(int)>(&QTabWidget::tabBarClicked), self, local_caller{slot, callback, release});
}

void QTabWidget_tabBarDoubleClicked(QTabWidget* self, int index) {
	self->tabBarDoubleClicked(static_cast<int>(index));
}

void QTabWidget_connect_tabBarDoubleClicked(VirtualQTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabWidget::connect(self, static_cast<void (QTabWidget::*)(int)>(&QTabWidget::tabBarDoubleClicked), self, local_caller{slot, callback, release});
}

struct miqt_string QTabWidget_tr2(const char* s, const char* c) {
	QString _ret = QTabWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTabWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QTabWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabWidget_setCornerWidget2(QTabWidget* self, QWidget* w, int corner) {
	self->setCornerWidget(w, static_cast<Qt::Corner>(corner));
}

QWidget* QTabWidget_cornerWidget1(const QTabWidget* self, int corner) {
	return self->cornerWidget(static_cast<Qt::Corner>(corner));
}

QMetaObject* QTabWidget_virtualbase_metaObject(const VirtualQTabWidget* self) {

	return (QMetaObject*) self->QTabWidget::metaObject();
}

void* QTabWidget_virtualbase_metacast(VirtualQTabWidget* self, const char* param1) {

	return self->QTabWidget::qt_metacast(param1);
}

int QTabWidget_virtualbase_metacall(VirtualQTabWidget* self, int param1, int param2, void** param3) {

	return self->QTabWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QTabWidget_virtualbase_sizeHint(const VirtualQTabWidget* self) {

	return new QSize(self->QTabWidget::sizeHint());
}

QSize* QTabWidget_virtualbase_minimumSizeHint(const VirtualQTabWidget* self) {

	return new QSize(self->QTabWidget::minimumSizeHint());
}

int QTabWidget_virtualbase_heightForWidth(const VirtualQTabWidget* self, int width) {

	return self->QTabWidget::heightForWidth(static_cast<int>(width));
}

bool QTabWidget_virtualbase_hasHeightForWidth(const VirtualQTabWidget* self) {

	return self->QTabWidget::hasHeightForWidth();
}

void QTabWidget_virtualbase_tabInserted(VirtualQTabWidget* self, int index) {

	self->QTabWidget::tabInserted(static_cast<int>(index));
}

void QTabWidget_virtualbase_tabRemoved(VirtualQTabWidget* self, int index) {

	self->QTabWidget::tabRemoved(static_cast<int>(index));
}

void QTabWidget_virtualbase_showEvent(VirtualQTabWidget* self, QShowEvent* param1) {

	self->QTabWidget::showEvent(param1);
}

void QTabWidget_virtualbase_resizeEvent(VirtualQTabWidget* self, QResizeEvent* param1) {

	self->QTabWidget::resizeEvent(param1);
}

void QTabWidget_virtualbase_keyPressEvent(VirtualQTabWidget* self, QKeyEvent* param1) {

	self->QTabWidget::keyPressEvent(param1);
}

void QTabWidget_virtualbase_paintEvent(VirtualQTabWidget* self, QPaintEvent* param1) {

	self->QTabWidget::paintEvent(param1);
}

void QTabWidget_virtualbase_changeEvent(VirtualQTabWidget* self, QEvent* param1) {

	self->QTabWidget::changeEvent(param1);
}

bool QTabWidget_virtualbase_event(VirtualQTabWidget* self, QEvent* param1) {

	return self->QTabWidget::event(param1);
}

void QTabWidget_virtualbase_initStyleOption(const VirtualQTabWidget* self, QStyleOptionTabWidgetFrame* option) {

	self->QTabWidget::initStyleOption(option);
}

int QTabWidget_virtualbase_devType(const VirtualQTabWidget* self) {

	return self->QTabWidget::devType();
}

void QTabWidget_virtualbase_setVisible(VirtualQTabWidget* self, bool visible) {

	self->QTabWidget::setVisible(visible);
}

QPaintEngine* QTabWidget_virtualbase_paintEngine(const VirtualQTabWidget* self) {

	return self->QTabWidget::paintEngine();
}

void QTabWidget_virtualbase_mousePressEvent(VirtualQTabWidget* self, QMouseEvent* event) {

	self->QTabWidget::mousePressEvent(event);
}

void QTabWidget_virtualbase_mouseReleaseEvent(VirtualQTabWidget* self, QMouseEvent* event) {

	self->QTabWidget::mouseReleaseEvent(event);
}

void QTabWidget_virtualbase_mouseDoubleClickEvent(VirtualQTabWidget* self, QMouseEvent* event) {

	self->QTabWidget::mouseDoubleClickEvent(event);
}

void QTabWidget_virtualbase_mouseMoveEvent(VirtualQTabWidget* self, QMouseEvent* event) {

	self->QTabWidget::mouseMoveEvent(event);
}

void QTabWidget_virtualbase_wheelEvent(VirtualQTabWidget* self, QWheelEvent* event) {

	self->QTabWidget::wheelEvent(event);
}

void QTabWidget_virtualbase_keyReleaseEvent(VirtualQTabWidget* self, QKeyEvent* event) {

	self->QTabWidget::keyReleaseEvent(event);
}

void QTabWidget_virtualbase_focusInEvent(VirtualQTabWidget* self, QFocusEvent* event) {

	self->QTabWidget::focusInEvent(event);
}

void QTabWidget_virtualbase_focusOutEvent(VirtualQTabWidget* self, QFocusEvent* event) {

	self->QTabWidget::focusOutEvent(event);
}

void QTabWidget_virtualbase_enterEvent(VirtualQTabWidget* self, QEnterEvent* event) {

	self->QTabWidget::enterEvent(event);
}

void QTabWidget_virtualbase_leaveEvent(VirtualQTabWidget* self, QEvent* event) {

	self->QTabWidget::leaveEvent(event);
}

void QTabWidget_virtualbase_moveEvent(VirtualQTabWidget* self, QMoveEvent* event) {

	self->QTabWidget::moveEvent(event);
}

void QTabWidget_virtualbase_closeEvent(VirtualQTabWidget* self, QCloseEvent* event) {

	self->QTabWidget::closeEvent(event);
}

void QTabWidget_virtualbase_contextMenuEvent(VirtualQTabWidget* self, QContextMenuEvent* event) {

	self->QTabWidget::contextMenuEvent(event);
}

void QTabWidget_virtualbase_tabletEvent(VirtualQTabWidget* self, QTabletEvent* event) {

	self->QTabWidget::tabletEvent(event);
}

void QTabWidget_virtualbase_actionEvent(VirtualQTabWidget* self, QActionEvent* event) {

	self->QTabWidget::actionEvent(event);
}

void QTabWidget_virtualbase_dragEnterEvent(VirtualQTabWidget* self, QDragEnterEvent* event) {

	self->QTabWidget::dragEnterEvent(event);
}

void QTabWidget_virtualbase_dragMoveEvent(VirtualQTabWidget* self, QDragMoveEvent* event) {

	self->QTabWidget::dragMoveEvent(event);
}

void QTabWidget_virtualbase_dragLeaveEvent(VirtualQTabWidget* self, QDragLeaveEvent* event) {

	self->QTabWidget::dragLeaveEvent(event);
}

void QTabWidget_virtualbase_dropEvent(VirtualQTabWidget* self, QDropEvent* event) {

	self->QTabWidget::dropEvent(event);
}

void QTabWidget_virtualbase_hideEvent(VirtualQTabWidget* self, QHideEvent* event) {

	self->QTabWidget::hideEvent(event);
}

bool QTabWidget_virtualbase_nativeEvent(VirtualQTabWidget* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QTabWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QTabWidget_virtualbase_metric(const VirtualQTabWidget* self, int param1) {

	return self->QTabWidget::metric(static_cast<VirtualQTabWidget::PaintDeviceMetric>(param1));
}

void QTabWidget_virtualbase_initPainter(const VirtualQTabWidget* self, QPainter* painter) {

	self->QTabWidget::initPainter(painter);
}

QPaintDevice* QTabWidget_virtualbase_redirected(const VirtualQTabWidget* self, QPoint* offset) {

	return self->QTabWidget::redirected(offset);
}

QPainter* QTabWidget_virtualbase_sharedPainter(const VirtualQTabWidget* self) {

	return self->QTabWidget::sharedPainter();
}

void QTabWidget_virtualbase_inputMethodEvent(VirtualQTabWidget* self, QInputMethodEvent* param1) {

	self->QTabWidget::inputMethodEvent(param1);
}

QVariant* QTabWidget_virtualbase_inputMethodQuery(const VirtualQTabWidget* self, int param1) {

	return new QVariant(self->QTabWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QTabWidget_virtualbase_focusNextPrevChild(VirtualQTabWidget* self, bool next) {

	return self->QTabWidget::focusNextPrevChild(next);
}

bool QTabWidget_virtualbase_eventFilter(VirtualQTabWidget* self, QObject* watched, QEvent* event) {

	return self->QTabWidget::eventFilter(watched, event);
}

void QTabWidget_virtualbase_timerEvent(VirtualQTabWidget* self, QTimerEvent* event) {

	self->QTabWidget::timerEvent(event);
}

void QTabWidget_virtualbase_childEvent(VirtualQTabWidget* self, QChildEvent* event) {

	self->QTabWidget::childEvent(event);
}

void QTabWidget_virtualbase_customEvent(VirtualQTabWidget* self, QEvent* event) {

	self->QTabWidget::customEvent(event);
}

void QTabWidget_virtualbase_connectNotify(VirtualQTabWidget* self, QMetaMethod* signal) {

	self->QTabWidget::connectNotify(*signal);
}

void QTabWidget_virtualbase_disconnectNotify(VirtualQTabWidget* self, QMetaMethod* signal) {

	self->QTabWidget::disconnectNotify(*signal);
}

const QMetaObject* QTabWidget_staticMetaObject() { return &QTabWidget::staticMetaObject; }

const QTabWidget_VTable* QTabWidget_vtbl(const VirtualQTabWidget* self) { return self->vtbl; }
void* QTabWidget_vdata(const VirtualQTabWidget* self) { return self->vdata; }
void QTabWidget_setVdata(VirtualQTabWidget* self, void* vdata) { self->vdata = vdata; }

void QTabWidget_protectedbase_setTabBar(VirtualQTabWidget* self, QTabBar* tabBar) {
	self->setTabBar(tabBar);
}

void QTabWidget_protectedbase_updateMicroFocus(VirtualQTabWidget* self) {
	self->updateMicroFocus();
}

void QTabWidget_protectedbase_create(VirtualQTabWidget* self) {
	self->create();
}

void QTabWidget_protectedbase_destroy(VirtualQTabWidget* self) {
	self->destroy();
}

bool QTabWidget_protectedbase_focusNextChild(VirtualQTabWidget* self) {
	return self->focusNextChild();
}

bool QTabWidget_protectedbase_focusPreviousChild(VirtualQTabWidget* self) {
	return self->focusPreviousChild();
}

QObject* QTabWidget_protectedbase_sender(const VirtualQTabWidget* self) {
	return self->sender();
}

int QTabWidget_protectedbase_senderSignalIndex(const VirtualQTabWidget* self) {
	return self->senderSignalIndex();
}

int QTabWidget_protectedbase_receivers(const VirtualQTabWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QTabWidget_protectedbase_isSignalConnected(const VirtualQTabWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTabWidget_delete(QTabWidget* self) {
	delete self;
}

