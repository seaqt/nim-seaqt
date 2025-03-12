#include <QAction>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDockWidget>
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
#include <QStyleOptionDockWidget>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qdockwidget.h>
#include "gen_qdockwidget.h"
class VirtualQDockWidget final : public QDockWidget {
	const QDockWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QDockWidget_VTable* QDockWidget_vtbl(const VirtualQDockWidget* self);
	friend void* QDockWidget_vdata(const VirtualQDockWidget* self);
	friend void QDockWidget_setVdata(VirtualQDockWidget* self, void* vdata);

	VirtualQDockWidget(const QDockWidget_VTable* vtbl, void* vdata, QWidget* parent): QDockWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDockWidget(const QDockWidget_VTable* vtbl, void* vdata, const QString& title): QDockWidget(title), vtbl(vtbl), vdata(vdata) {}
	VirtualQDockWidget(const QDockWidget_VTable* vtbl, void* vdata): QDockWidget(), vtbl(vtbl), vdata(vdata) {}
	VirtualQDockWidget(const QDockWidget_VTable* vtbl, void* vdata, const QString& title, QWidget* parent): QDockWidget(title, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDockWidget(const QDockWidget_VTable* vtbl, void* vdata, const QString& title, QWidget* parent, Qt::WindowFlags flags): QDockWidget(title, parent, flags), vtbl(vtbl), vdata(vdata) {}
	VirtualQDockWidget(const QDockWidget_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags flags): QDockWidget(parent, flags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDockWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDockWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDockWidget_virtualbase_metaObject(const VirtualQDockWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDockWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDockWidget_virtualbase_metacast(VirtualQDockWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDockWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDockWidget_virtualbase_metacall(VirtualQDockWidget* self, int param1, int param2, void** param3);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QDockWidget::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_changeEvent(VirtualQDockWidget* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDockWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_closeEvent(VirtualQDockWidget* self, QCloseEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDockWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_paintEvent(VirtualQDockWidget* self, QPaintEvent* event);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDockWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDockWidget_virtualbase_event(VirtualQDockWidget* self, QEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDockWidget::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDockWidget_virtualbase_devType(const VirtualQDockWidget* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDockWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QDockWidget_virtualbase_setVisible(VirtualQDockWidget* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDockWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDockWidget_virtualbase_sizeHint(const VirtualQDockWidget* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDockWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDockWidget_virtualbase_minimumSizeHint(const VirtualQDockWidget* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDockWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDockWidget_virtualbase_heightForWidth(const VirtualQDockWidget* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDockWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QDockWidget_virtualbase_hasHeightForWidth(const VirtualQDockWidget* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDockWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QDockWidget_virtualbase_paintEngine(const VirtualQDockWidget* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDockWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_mousePressEvent(VirtualQDockWidget* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDockWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_mouseReleaseEvent(VirtualQDockWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDockWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_mouseDoubleClickEvent(VirtualQDockWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDockWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_mouseMoveEvent(VirtualQDockWidget* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDockWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_wheelEvent(VirtualQDockWidget* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDockWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_keyPressEvent(VirtualQDockWidget* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDockWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_keyReleaseEvent(VirtualQDockWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDockWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_focusInEvent(VirtualQDockWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDockWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_focusOutEvent(VirtualQDockWidget* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDockWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_enterEvent(VirtualQDockWidget* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDockWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_leaveEvent(VirtualQDockWidget* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDockWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_moveEvent(VirtualQDockWidget* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDockWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_resizeEvent(VirtualQDockWidget* self, QResizeEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDockWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_contextMenuEvent(VirtualQDockWidget* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDockWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_tabletEvent(VirtualQDockWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDockWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_actionEvent(VirtualQDockWidget* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDockWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_dragEnterEvent(VirtualQDockWidget* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDockWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_dragMoveEvent(VirtualQDockWidget* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDockWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_dragLeaveEvent(VirtualQDockWidget* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDockWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_dropEvent(VirtualQDockWidget* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDockWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_showEvent(VirtualQDockWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDockWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_hideEvent(VirtualQDockWidget* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDockWidget::nativeEvent(eventType, message, result);
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

	friend bool QDockWidget_virtualbase_nativeEvent(VirtualQDockWidget* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDockWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDockWidget_virtualbase_metric(const VirtualQDockWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDockWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QDockWidget_virtualbase_initPainter(const VirtualQDockWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDockWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDockWidget_virtualbase_redirected(const VirtualQDockWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDockWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QDockWidget_virtualbase_sharedPainter(const VirtualQDockWidget* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDockWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_inputMethodEvent(VirtualQDockWidget* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDockWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QDockWidget_virtualbase_inputMethodQuery(const VirtualQDockWidget* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDockWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QDockWidget_virtualbase_focusNextPrevChild(VirtualQDockWidget* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDockWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDockWidget_virtualbase_eventFilter(VirtualQDockWidget* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDockWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_timerEvent(VirtualQDockWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDockWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_childEvent(VirtualQDockWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDockWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDockWidget_virtualbase_customEvent(VirtualQDockWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDockWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDockWidget_virtualbase_connectNotify(VirtualQDockWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDockWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDockWidget_virtualbase_disconnectNotify(VirtualQDockWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDockWidget_protectedbase_initStyleOption(const VirtualQDockWidget* self, QStyleOptionDockWidget* option);
	friend void QDockWidget_protectedbase_updateMicroFocus(VirtualQDockWidget* self);
	friend void QDockWidget_protectedbase_create(VirtualQDockWidget* self);
	friend void QDockWidget_protectedbase_destroy(VirtualQDockWidget* self);
	friend bool QDockWidget_protectedbase_focusNextChild(VirtualQDockWidget* self);
	friend bool QDockWidget_protectedbase_focusPreviousChild(VirtualQDockWidget* self);
	friend QObject* QDockWidget_protectedbase_sender(const VirtualQDockWidget* self);
	friend int QDockWidget_protectedbase_senderSignalIndex(const VirtualQDockWidget* self);
	friend int QDockWidget_protectedbase_receivers(const VirtualQDockWidget* self, const char* signal);
	friend bool QDockWidget_protectedbase_isSignalConnected(const VirtualQDockWidget* self, QMetaMethod* signal);
};

VirtualQDockWidget* QDockWidget_new(const QDockWidget_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQDockWidget(vtbl, vdata, parent);
}

VirtualQDockWidget* QDockWidget_new2(const QDockWidget_VTable* vtbl, void* vdata, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQDockWidget(vtbl, vdata, title_QString);
}

VirtualQDockWidget* QDockWidget_new3(const QDockWidget_VTable* vtbl, void* vdata) {
	return new VirtualQDockWidget(vtbl, vdata);
}

VirtualQDockWidget* QDockWidget_new4(const QDockWidget_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQDockWidget(vtbl, vdata, title_QString, parent);
}

VirtualQDockWidget* QDockWidget_new5(const QDockWidget_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new VirtualQDockWidget(vtbl, vdata, title_QString, parent, static_cast<Qt::WindowFlags>(flags));
}

VirtualQDockWidget* QDockWidget_new6(const QDockWidget_VTable* vtbl, void* vdata, QWidget* parent, int flags) {
	return new VirtualQDockWidget(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(flags));
}

void QDockWidget_virtbase(QDockWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDockWidget_metaObject(const QDockWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDockWidget_metacast(QDockWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDockWidget_metacall(QDockWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDockWidget_tr(const char* s) {
	QString _ret = QDockWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDockWidget_trUtf8(const char* s) {
	QString _ret = QDockWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWidget* QDockWidget_widget(const QDockWidget* self) {
	return self->widget();
}

void QDockWidget_setWidget(QDockWidget* self, QWidget* widget) {
	self->setWidget(widget);
}

void QDockWidget_setFeatures(QDockWidget* self, int features) {
	self->setFeatures(static_cast<QDockWidget::DockWidgetFeatures>(features));
}

int QDockWidget_features(const QDockWidget* self) {
	QDockWidget::DockWidgetFeatures _ret = self->features();
	return static_cast<int>(_ret);
}

void QDockWidget_setFloating(QDockWidget* self, bool floating) {
	self->setFloating(floating);
}

bool QDockWidget_isFloating(const QDockWidget* self) {
	return self->isFloating();
}

void QDockWidget_setAllowedAreas(QDockWidget* self, int areas) {
	self->setAllowedAreas(static_cast<Qt::DockWidgetAreas>(areas));
}

int QDockWidget_allowedAreas(const QDockWidget* self) {
	Qt::DockWidgetAreas _ret = self->allowedAreas();
	return static_cast<int>(_ret);
}

void QDockWidget_setTitleBarWidget(QDockWidget* self, QWidget* widget) {
	self->setTitleBarWidget(widget);
}

QWidget* QDockWidget_titleBarWidget(const QDockWidget* self) {
	return self->titleBarWidget();
}

bool QDockWidget_isAreaAllowed(const QDockWidget* self, int area) {
	return self->isAreaAllowed(static_cast<Qt::DockWidgetArea>(area));
}

QAction* QDockWidget_toggleViewAction(const QDockWidget* self) {
	return self->toggleViewAction();
}

void QDockWidget_featuresChanged(QDockWidget* self, int features) {
	self->featuresChanged(static_cast<QDockWidget::DockWidgetFeatures>(features));
}

void QDockWidget_connect_featuresChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QDockWidget::DockWidgetFeatures features) {
			QDockWidget::DockWidgetFeatures features_ret = features;
			int sigval1 = static_cast<int>(features_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(QDockWidget::DockWidgetFeatures)>(&QDockWidget::featuresChanged), self, local_caller{slot, callback, release});
}

void QDockWidget_topLevelChanged(QDockWidget* self, bool topLevel) {
	self->topLevelChanged(topLevel);
}

void QDockWidget_connect_topLevelChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool topLevel) {
			bool sigval1 = topLevel;
			callback(slot, sigval1);
		}
	};
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(bool)>(&QDockWidget::topLevelChanged), self, local_caller{slot, callback, release});
}

void QDockWidget_allowedAreasChanged(QDockWidget* self, int allowedAreas) {
	self->allowedAreasChanged(static_cast<Qt::DockWidgetAreas>(allowedAreas));
}

void QDockWidget_connect_allowedAreasChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::DockWidgetAreas allowedAreas) {
			Qt::DockWidgetAreas allowedAreas_ret = allowedAreas;
			int sigval1 = static_cast<int>(allowedAreas_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(Qt::DockWidgetAreas)>(&QDockWidget::allowedAreasChanged), self, local_caller{slot, callback, release});
}

void QDockWidget_visibilityChanged(QDockWidget* self, bool visible) {
	self->visibilityChanged(visible);
}

void QDockWidget_connect_visibilityChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool visible) {
			bool sigval1 = visible;
			callback(slot, sigval1);
		}
	};
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(bool)>(&QDockWidget::visibilityChanged), self, local_caller{slot, callback, release});
}

void QDockWidget_dockLocationChanged(QDockWidget* self, int area) {
	self->dockLocationChanged(static_cast<Qt::DockWidgetArea>(area));
}

void QDockWidget_connect_dockLocationChanged(VirtualQDockWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::DockWidgetArea area) {
			Qt::DockWidgetArea area_ret = area;
			int sigval1 = static_cast<int>(area_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQDockWidget::connect(self, static_cast<void (QDockWidget::*)(Qt::DockWidgetArea)>(&QDockWidget::dockLocationChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QDockWidget_tr2(const char* s, const char* c) {
	QString _ret = QDockWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDockWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QDockWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDockWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QDockWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDockWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDockWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDockWidget_virtualbase_metaObject(const VirtualQDockWidget* self) {

	return (QMetaObject*) self->QDockWidget::metaObject();
}

void* QDockWidget_virtualbase_metacast(VirtualQDockWidget* self, const char* param1) {

	return self->QDockWidget::qt_metacast(param1);
}

int QDockWidget_virtualbase_metacall(VirtualQDockWidget* self, int param1, int param2, void** param3) {

	return self->QDockWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QDockWidget_virtualbase_changeEvent(VirtualQDockWidget* self, QEvent* event) {

	self->QDockWidget::changeEvent(event);
}

void QDockWidget_virtualbase_closeEvent(VirtualQDockWidget* self, QCloseEvent* event) {

	self->QDockWidget::closeEvent(event);
}

void QDockWidget_virtualbase_paintEvent(VirtualQDockWidget* self, QPaintEvent* event) {

	self->QDockWidget::paintEvent(event);
}

bool QDockWidget_virtualbase_event(VirtualQDockWidget* self, QEvent* event) {

	return self->QDockWidget::event(event);
}

int QDockWidget_virtualbase_devType(const VirtualQDockWidget* self) {

	return self->QDockWidget::devType();
}

void QDockWidget_virtualbase_setVisible(VirtualQDockWidget* self, bool visible) {

	self->QDockWidget::setVisible(visible);
}

QSize* QDockWidget_virtualbase_sizeHint(const VirtualQDockWidget* self) {

	return new QSize(self->QDockWidget::sizeHint());
}

QSize* QDockWidget_virtualbase_minimumSizeHint(const VirtualQDockWidget* self) {

	return new QSize(self->QDockWidget::minimumSizeHint());
}

int QDockWidget_virtualbase_heightForWidth(const VirtualQDockWidget* self, int param1) {

	return self->QDockWidget::heightForWidth(static_cast<int>(param1));
}

bool QDockWidget_virtualbase_hasHeightForWidth(const VirtualQDockWidget* self) {

	return self->QDockWidget::hasHeightForWidth();
}

QPaintEngine* QDockWidget_virtualbase_paintEngine(const VirtualQDockWidget* self) {

	return self->QDockWidget::paintEngine();
}

void QDockWidget_virtualbase_mousePressEvent(VirtualQDockWidget* self, QMouseEvent* event) {

	self->QDockWidget::mousePressEvent(event);
}

void QDockWidget_virtualbase_mouseReleaseEvent(VirtualQDockWidget* self, QMouseEvent* event) {

	self->QDockWidget::mouseReleaseEvent(event);
}

void QDockWidget_virtualbase_mouseDoubleClickEvent(VirtualQDockWidget* self, QMouseEvent* event) {

	self->QDockWidget::mouseDoubleClickEvent(event);
}

void QDockWidget_virtualbase_mouseMoveEvent(VirtualQDockWidget* self, QMouseEvent* event) {

	self->QDockWidget::mouseMoveEvent(event);
}

void QDockWidget_virtualbase_wheelEvent(VirtualQDockWidget* self, QWheelEvent* event) {

	self->QDockWidget::wheelEvent(event);
}

void QDockWidget_virtualbase_keyPressEvent(VirtualQDockWidget* self, QKeyEvent* event) {

	self->QDockWidget::keyPressEvent(event);
}

void QDockWidget_virtualbase_keyReleaseEvent(VirtualQDockWidget* self, QKeyEvent* event) {

	self->QDockWidget::keyReleaseEvent(event);
}

void QDockWidget_virtualbase_focusInEvent(VirtualQDockWidget* self, QFocusEvent* event) {

	self->QDockWidget::focusInEvent(event);
}

void QDockWidget_virtualbase_focusOutEvent(VirtualQDockWidget* self, QFocusEvent* event) {

	self->QDockWidget::focusOutEvent(event);
}

void QDockWidget_virtualbase_enterEvent(VirtualQDockWidget* self, QEvent* event) {

	self->QDockWidget::enterEvent(event);
}

void QDockWidget_virtualbase_leaveEvent(VirtualQDockWidget* self, QEvent* event) {

	self->QDockWidget::leaveEvent(event);
}

void QDockWidget_virtualbase_moveEvent(VirtualQDockWidget* self, QMoveEvent* event) {

	self->QDockWidget::moveEvent(event);
}

void QDockWidget_virtualbase_resizeEvent(VirtualQDockWidget* self, QResizeEvent* event) {

	self->QDockWidget::resizeEvent(event);
}

void QDockWidget_virtualbase_contextMenuEvent(VirtualQDockWidget* self, QContextMenuEvent* event) {

	self->QDockWidget::contextMenuEvent(event);
}

void QDockWidget_virtualbase_tabletEvent(VirtualQDockWidget* self, QTabletEvent* event) {

	self->QDockWidget::tabletEvent(event);
}

void QDockWidget_virtualbase_actionEvent(VirtualQDockWidget* self, QActionEvent* event) {

	self->QDockWidget::actionEvent(event);
}

void QDockWidget_virtualbase_dragEnterEvent(VirtualQDockWidget* self, QDragEnterEvent* event) {

	self->QDockWidget::dragEnterEvent(event);
}

void QDockWidget_virtualbase_dragMoveEvent(VirtualQDockWidget* self, QDragMoveEvent* event) {

	self->QDockWidget::dragMoveEvent(event);
}

void QDockWidget_virtualbase_dragLeaveEvent(VirtualQDockWidget* self, QDragLeaveEvent* event) {

	self->QDockWidget::dragLeaveEvent(event);
}

void QDockWidget_virtualbase_dropEvent(VirtualQDockWidget* self, QDropEvent* event) {

	self->QDockWidget::dropEvent(event);
}

void QDockWidget_virtualbase_showEvent(VirtualQDockWidget* self, QShowEvent* event) {

	self->QDockWidget::showEvent(event);
}

void QDockWidget_virtualbase_hideEvent(VirtualQDockWidget* self, QHideEvent* event) {

	self->QDockWidget::hideEvent(event);
}

bool QDockWidget_virtualbase_nativeEvent(VirtualQDockWidget* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDockWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QDockWidget_virtualbase_metric(const VirtualQDockWidget* self, int param1) {

	return self->QDockWidget::metric(static_cast<VirtualQDockWidget::PaintDeviceMetric>(param1));
}

void QDockWidget_virtualbase_initPainter(const VirtualQDockWidget* self, QPainter* painter) {

	self->QDockWidget::initPainter(painter);
}

QPaintDevice* QDockWidget_virtualbase_redirected(const VirtualQDockWidget* self, QPoint* offset) {

	return self->QDockWidget::redirected(offset);
}

QPainter* QDockWidget_virtualbase_sharedPainter(const VirtualQDockWidget* self) {

	return self->QDockWidget::sharedPainter();
}

void QDockWidget_virtualbase_inputMethodEvent(VirtualQDockWidget* self, QInputMethodEvent* param1) {

	self->QDockWidget::inputMethodEvent(param1);
}

QVariant* QDockWidget_virtualbase_inputMethodQuery(const VirtualQDockWidget* self, int param1) {

	return new QVariant(self->QDockWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDockWidget_virtualbase_focusNextPrevChild(VirtualQDockWidget* self, bool next) {

	return self->QDockWidget::focusNextPrevChild(next);
}

bool QDockWidget_virtualbase_eventFilter(VirtualQDockWidget* self, QObject* watched, QEvent* event) {

	return self->QDockWidget::eventFilter(watched, event);
}

void QDockWidget_virtualbase_timerEvent(VirtualQDockWidget* self, QTimerEvent* event) {

	self->QDockWidget::timerEvent(event);
}

void QDockWidget_virtualbase_childEvent(VirtualQDockWidget* self, QChildEvent* event) {

	self->QDockWidget::childEvent(event);
}

void QDockWidget_virtualbase_customEvent(VirtualQDockWidget* self, QEvent* event) {

	self->QDockWidget::customEvent(event);
}

void QDockWidget_virtualbase_connectNotify(VirtualQDockWidget* self, QMetaMethod* signal) {

	self->QDockWidget::connectNotify(*signal);
}

void QDockWidget_virtualbase_disconnectNotify(VirtualQDockWidget* self, QMetaMethod* signal) {

	self->QDockWidget::disconnectNotify(*signal);
}

const QMetaObject* QDockWidget_staticMetaObject() { return &QDockWidget::staticMetaObject; }

const QDockWidget_VTable* QDockWidget_vtbl(const VirtualQDockWidget* self) { return self->vtbl; }
void* QDockWidget_vdata(const VirtualQDockWidget* self) { return self->vdata; }
void QDockWidget_setVdata(VirtualQDockWidget* self, void* vdata) { self->vdata = vdata; }

void QDockWidget_protectedbase_initStyleOption(const VirtualQDockWidget* self, QStyleOptionDockWidget* option) {
	self->initStyleOption(option);
}

void QDockWidget_protectedbase_updateMicroFocus(VirtualQDockWidget* self) {
	self->updateMicroFocus();
}

void QDockWidget_protectedbase_create(VirtualQDockWidget* self) {
	self->create();
}

void QDockWidget_protectedbase_destroy(VirtualQDockWidget* self) {
	self->destroy();
}

bool QDockWidget_protectedbase_focusNextChild(VirtualQDockWidget* self) {
	return self->focusNextChild();
}

bool QDockWidget_protectedbase_focusPreviousChild(VirtualQDockWidget* self) {
	return self->focusPreviousChild();
}

QObject* QDockWidget_protectedbase_sender(const VirtualQDockWidget* self) {
	return self->sender();
}

int QDockWidget_protectedbase_senderSignalIndex(const VirtualQDockWidget* self) {
	return self->senderSignalIndex();
}

int QDockWidget_protectedbase_receivers(const VirtualQDockWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QDockWidget_protectedbase_isSignalConnected(const VirtualQDockWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDockWidget_delete(QDockWidget* self) {
	delete self;
}

