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
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QStackedWidget>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qstackedwidget.h>
#include "gen_qstackedwidget.h"
class VirtualQStackedWidget final : public QStackedWidget {
	const QStackedWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QStackedWidget_VTable* QStackedWidget_vtbl(const VirtualQStackedWidget* self);
	friend void* QStackedWidget_vdata(const VirtualQStackedWidget* self);
	friend void QStackedWidget_setVdata(VirtualQStackedWidget* self, void* vdata);

	VirtualQStackedWidget(const QStackedWidget_VTable* vtbl, void* vdata, QWidget* parent): QStackedWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQStackedWidget(const QStackedWidget_VTable* vtbl, void* vdata): QStackedWidget(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQStackedWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStackedWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QStackedWidget_virtualbase_metaObject(const VirtualQStackedWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStackedWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QStackedWidget_virtualbase_metacast(VirtualQStackedWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStackedWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedWidget_virtualbase_metacall(VirtualQStackedWidget* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QStackedWidget::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QStackedWidget_virtualbase_event(VirtualQStackedWidget* self, QEvent* e);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QStackedWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QStackedWidget_virtualbase_sizeHint(const VirtualQStackedWidget* self);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QStackedWidget::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_paintEvent(VirtualQStackedWidget* self, QPaintEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QStackedWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_changeEvent(VirtualQStackedWidget* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QStackedWidget::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedWidget_virtualbase_devType(const VirtualQStackedWidget* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QStackedWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_setVisible(VirtualQStackedWidget* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QStackedWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QStackedWidget_virtualbase_minimumSizeHint(const VirtualQStackedWidget* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QStackedWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedWidget_virtualbase_heightForWidth(const VirtualQStackedWidget* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QStackedWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QStackedWidget_virtualbase_hasHeightForWidth(const VirtualQStackedWidget* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QStackedWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QStackedWidget_virtualbase_paintEngine(const VirtualQStackedWidget* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QStackedWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_mousePressEvent(VirtualQStackedWidget* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QStackedWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_mouseReleaseEvent(VirtualQStackedWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QStackedWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_mouseDoubleClickEvent(VirtualQStackedWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QStackedWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_mouseMoveEvent(VirtualQStackedWidget* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QStackedWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_wheelEvent(VirtualQStackedWidget* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QStackedWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_keyPressEvent(VirtualQStackedWidget* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QStackedWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_keyReleaseEvent(VirtualQStackedWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QStackedWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_focusInEvent(VirtualQStackedWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QStackedWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_focusOutEvent(VirtualQStackedWidget* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QStackedWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_enterEvent(VirtualQStackedWidget* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QStackedWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_leaveEvent(VirtualQStackedWidget* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QStackedWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_moveEvent(VirtualQStackedWidget* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QStackedWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_resizeEvent(VirtualQStackedWidget* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QStackedWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_closeEvent(VirtualQStackedWidget* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QStackedWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_contextMenuEvent(VirtualQStackedWidget* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QStackedWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_tabletEvent(VirtualQStackedWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QStackedWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_actionEvent(VirtualQStackedWidget* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QStackedWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_dragEnterEvent(VirtualQStackedWidget* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QStackedWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_dragMoveEvent(VirtualQStackedWidget* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QStackedWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_dragLeaveEvent(VirtualQStackedWidget* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QStackedWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_dropEvent(VirtualQStackedWidget* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QStackedWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_showEvent(VirtualQStackedWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QStackedWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_hideEvent(VirtualQStackedWidget* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QStackedWidget::nativeEvent(eventType, message, result);
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

	friend bool QStackedWidget_virtualbase_nativeEvent(VirtualQStackedWidget* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QStackedWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedWidget_virtualbase_metric(const VirtualQStackedWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QStackedWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_initPainter(const VirtualQStackedWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QStackedWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QStackedWidget_virtualbase_redirected(const VirtualQStackedWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QStackedWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QStackedWidget_virtualbase_sharedPainter(const VirtualQStackedWidget* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QStackedWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_inputMethodEvent(VirtualQStackedWidget* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QStackedWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QStackedWidget_virtualbase_inputMethodQuery(const VirtualQStackedWidget* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QStackedWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QStackedWidget_virtualbase_focusNextPrevChild(VirtualQStackedWidget* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStackedWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStackedWidget_virtualbase_eventFilter(VirtualQStackedWidget* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStackedWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_timerEvent(VirtualQStackedWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStackedWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_childEvent(VirtualQStackedWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStackedWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_customEvent(VirtualQStackedWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStackedWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_connectNotify(VirtualQStackedWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStackedWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QStackedWidget_virtualbase_disconnectNotify(VirtualQStackedWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QStackedWidget_protectedbase_drawFrame(VirtualQStackedWidget* self, QPainter* param1);
	friend void QStackedWidget_protectedbase_initStyleOption(const VirtualQStackedWidget* self, QStyleOptionFrame* option);
	friend void QStackedWidget_protectedbase_updateMicroFocus(VirtualQStackedWidget* self);
	friend void QStackedWidget_protectedbase_create(VirtualQStackedWidget* self);
	friend void QStackedWidget_protectedbase_destroy(VirtualQStackedWidget* self);
	friend bool QStackedWidget_protectedbase_focusNextChild(VirtualQStackedWidget* self);
	friend bool QStackedWidget_protectedbase_focusPreviousChild(VirtualQStackedWidget* self);
	friend QObject* QStackedWidget_protectedbase_sender(const VirtualQStackedWidget* self);
	friend int QStackedWidget_protectedbase_senderSignalIndex(const VirtualQStackedWidget* self);
	friend int QStackedWidget_protectedbase_receivers(const VirtualQStackedWidget* self, const char* signal);
	friend bool QStackedWidget_protectedbase_isSignalConnected(const VirtualQStackedWidget* self, QMetaMethod* signal);
};

VirtualQStackedWidget* QStackedWidget_new(const QStackedWidget_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQStackedWidget(vtbl, vdata, parent);
}

VirtualQStackedWidget* QStackedWidget_new2(const QStackedWidget_VTable* vtbl, void* vdata) {
	return new VirtualQStackedWidget(vtbl, vdata);
}

void QStackedWidget_virtbase(QStackedWidget* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QStackedWidget_metaObject(const QStackedWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStackedWidget_metacast(QStackedWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStackedWidget_metacall(QStackedWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStackedWidget_tr(const char* s) {
	QString _ret = QStackedWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedWidget_trUtf8(const char* s) {
	QString _ret = QStackedWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QStackedWidget_addWidget(QStackedWidget* self, QWidget* w) {
	return self->addWidget(w);
}

int QStackedWidget_insertWidget(QStackedWidget* self, int index, QWidget* w) {
	return self->insertWidget(static_cast<int>(index), w);
}

void QStackedWidget_removeWidget(QStackedWidget* self, QWidget* w) {
	self->removeWidget(w);
}

QWidget* QStackedWidget_currentWidget(const QStackedWidget* self) {
	return self->currentWidget();
}

int QStackedWidget_currentIndex(const QStackedWidget* self) {
	return self->currentIndex();
}

int QStackedWidget_indexOf(const QStackedWidget* self, QWidget* param1) {
	return self->indexOf(param1);
}

QWidget* QStackedWidget_widget(const QStackedWidget* self, int param1) {
	return self->widget(static_cast<int>(param1));
}

int QStackedWidget_count(const QStackedWidget* self) {
	return self->count();
}

void QStackedWidget_setCurrentIndex(QStackedWidget* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QStackedWidget_setCurrentWidget(QStackedWidget* self, QWidget* w) {
	self->setCurrentWidget(w);
}

void QStackedWidget_currentChanged(QStackedWidget* self, int param1) {
	self->currentChanged(static_cast<int>(param1));
}

void QStackedWidget_connect_currentChanged(VirtualQStackedWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int param1) {
			int sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQStackedWidget::connect(self, static_cast<void (QStackedWidget::*)(int)>(&QStackedWidget::currentChanged), self, local_caller{slot, callback, release});
}

void QStackedWidget_widgetRemoved(QStackedWidget* self, int index) {
	self->widgetRemoved(static_cast<int>(index));
}

void QStackedWidget_connect_widgetRemoved(VirtualQStackedWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQStackedWidget::connect(self, static_cast<void (QStackedWidget::*)(int)>(&QStackedWidget::widgetRemoved), self, local_caller{slot, callback, release});
}

struct miqt_string QStackedWidget_tr2(const char* s, const char* c) {
	QString _ret = QStackedWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QStackedWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QStackedWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QStackedWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QStackedWidget_virtualbase_metaObject(const VirtualQStackedWidget* self) {

	return (QMetaObject*) self->QStackedWidget::metaObject();
}

void* QStackedWidget_virtualbase_metacast(VirtualQStackedWidget* self, const char* param1) {

	return self->QStackedWidget::qt_metacast(param1);
}

int QStackedWidget_virtualbase_metacall(VirtualQStackedWidget* self, int param1, int param2, void** param3) {

	return self->QStackedWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QStackedWidget_virtualbase_event(VirtualQStackedWidget* self, QEvent* e) {

	return self->QStackedWidget::event(e);
}

QSize* QStackedWidget_virtualbase_sizeHint(const VirtualQStackedWidget* self) {

	return new QSize(self->QStackedWidget::sizeHint());
}

void QStackedWidget_virtualbase_paintEvent(VirtualQStackedWidget* self, QPaintEvent* param1) {

	self->QStackedWidget::paintEvent(param1);
}

void QStackedWidget_virtualbase_changeEvent(VirtualQStackedWidget* self, QEvent* param1) {

	self->QStackedWidget::changeEvent(param1);
}

int QStackedWidget_virtualbase_devType(const VirtualQStackedWidget* self) {

	return self->QStackedWidget::devType();
}

void QStackedWidget_virtualbase_setVisible(VirtualQStackedWidget* self, bool visible) {

	self->QStackedWidget::setVisible(visible);
}

QSize* QStackedWidget_virtualbase_minimumSizeHint(const VirtualQStackedWidget* self) {

	return new QSize(self->QStackedWidget::minimumSizeHint());
}

int QStackedWidget_virtualbase_heightForWidth(const VirtualQStackedWidget* self, int param1) {

	return self->QStackedWidget::heightForWidth(static_cast<int>(param1));
}

bool QStackedWidget_virtualbase_hasHeightForWidth(const VirtualQStackedWidget* self) {

	return self->QStackedWidget::hasHeightForWidth();
}

QPaintEngine* QStackedWidget_virtualbase_paintEngine(const VirtualQStackedWidget* self) {

	return self->QStackedWidget::paintEngine();
}

void QStackedWidget_virtualbase_mousePressEvent(VirtualQStackedWidget* self, QMouseEvent* event) {

	self->QStackedWidget::mousePressEvent(event);
}

void QStackedWidget_virtualbase_mouseReleaseEvent(VirtualQStackedWidget* self, QMouseEvent* event) {

	self->QStackedWidget::mouseReleaseEvent(event);
}

void QStackedWidget_virtualbase_mouseDoubleClickEvent(VirtualQStackedWidget* self, QMouseEvent* event) {

	self->QStackedWidget::mouseDoubleClickEvent(event);
}

void QStackedWidget_virtualbase_mouseMoveEvent(VirtualQStackedWidget* self, QMouseEvent* event) {

	self->QStackedWidget::mouseMoveEvent(event);
}

void QStackedWidget_virtualbase_wheelEvent(VirtualQStackedWidget* self, QWheelEvent* event) {

	self->QStackedWidget::wheelEvent(event);
}

void QStackedWidget_virtualbase_keyPressEvent(VirtualQStackedWidget* self, QKeyEvent* event) {

	self->QStackedWidget::keyPressEvent(event);
}

void QStackedWidget_virtualbase_keyReleaseEvent(VirtualQStackedWidget* self, QKeyEvent* event) {

	self->QStackedWidget::keyReleaseEvent(event);
}

void QStackedWidget_virtualbase_focusInEvent(VirtualQStackedWidget* self, QFocusEvent* event) {

	self->QStackedWidget::focusInEvent(event);
}

void QStackedWidget_virtualbase_focusOutEvent(VirtualQStackedWidget* self, QFocusEvent* event) {

	self->QStackedWidget::focusOutEvent(event);
}

void QStackedWidget_virtualbase_enterEvent(VirtualQStackedWidget* self, QEvent* event) {

	self->QStackedWidget::enterEvent(event);
}

void QStackedWidget_virtualbase_leaveEvent(VirtualQStackedWidget* self, QEvent* event) {

	self->QStackedWidget::leaveEvent(event);
}

void QStackedWidget_virtualbase_moveEvent(VirtualQStackedWidget* self, QMoveEvent* event) {

	self->QStackedWidget::moveEvent(event);
}

void QStackedWidget_virtualbase_resizeEvent(VirtualQStackedWidget* self, QResizeEvent* event) {

	self->QStackedWidget::resizeEvent(event);
}

void QStackedWidget_virtualbase_closeEvent(VirtualQStackedWidget* self, QCloseEvent* event) {

	self->QStackedWidget::closeEvent(event);
}

void QStackedWidget_virtualbase_contextMenuEvent(VirtualQStackedWidget* self, QContextMenuEvent* event) {

	self->QStackedWidget::contextMenuEvent(event);
}

void QStackedWidget_virtualbase_tabletEvent(VirtualQStackedWidget* self, QTabletEvent* event) {

	self->QStackedWidget::tabletEvent(event);
}

void QStackedWidget_virtualbase_actionEvent(VirtualQStackedWidget* self, QActionEvent* event) {

	self->QStackedWidget::actionEvent(event);
}

void QStackedWidget_virtualbase_dragEnterEvent(VirtualQStackedWidget* self, QDragEnterEvent* event) {

	self->QStackedWidget::dragEnterEvent(event);
}

void QStackedWidget_virtualbase_dragMoveEvent(VirtualQStackedWidget* self, QDragMoveEvent* event) {

	self->QStackedWidget::dragMoveEvent(event);
}

void QStackedWidget_virtualbase_dragLeaveEvent(VirtualQStackedWidget* self, QDragLeaveEvent* event) {

	self->QStackedWidget::dragLeaveEvent(event);
}

void QStackedWidget_virtualbase_dropEvent(VirtualQStackedWidget* self, QDropEvent* event) {

	self->QStackedWidget::dropEvent(event);
}

void QStackedWidget_virtualbase_showEvent(VirtualQStackedWidget* self, QShowEvent* event) {

	self->QStackedWidget::showEvent(event);
}

void QStackedWidget_virtualbase_hideEvent(VirtualQStackedWidget* self, QHideEvent* event) {

	self->QStackedWidget::hideEvent(event);
}

bool QStackedWidget_virtualbase_nativeEvent(VirtualQStackedWidget* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QStackedWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QStackedWidget_virtualbase_metric(const VirtualQStackedWidget* self, int param1) {

	return self->QStackedWidget::metric(static_cast<VirtualQStackedWidget::PaintDeviceMetric>(param1));
}

void QStackedWidget_virtualbase_initPainter(const VirtualQStackedWidget* self, QPainter* painter) {

	self->QStackedWidget::initPainter(painter);
}

QPaintDevice* QStackedWidget_virtualbase_redirected(const VirtualQStackedWidget* self, QPoint* offset) {

	return self->QStackedWidget::redirected(offset);
}

QPainter* QStackedWidget_virtualbase_sharedPainter(const VirtualQStackedWidget* self) {

	return self->QStackedWidget::sharedPainter();
}

void QStackedWidget_virtualbase_inputMethodEvent(VirtualQStackedWidget* self, QInputMethodEvent* param1) {

	self->QStackedWidget::inputMethodEvent(param1);
}

QVariant* QStackedWidget_virtualbase_inputMethodQuery(const VirtualQStackedWidget* self, int param1) {

	return new QVariant(self->QStackedWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QStackedWidget_virtualbase_focusNextPrevChild(VirtualQStackedWidget* self, bool next) {

	return self->QStackedWidget::focusNextPrevChild(next);
}

bool QStackedWidget_virtualbase_eventFilter(VirtualQStackedWidget* self, QObject* watched, QEvent* event) {

	return self->QStackedWidget::eventFilter(watched, event);
}

void QStackedWidget_virtualbase_timerEvent(VirtualQStackedWidget* self, QTimerEvent* event) {

	self->QStackedWidget::timerEvent(event);
}

void QStackedWidget_virtualbase_childEvent(VirtualQStackedWidget* self, QChildEvent* event) {

	self->QStackedWidget::childEvent(event);
}

void QStackedWidget_virtualbase_customEvent(VirtualQStackedWidget* self, QEvent* event) {

	self->QStackedWidget::customEvent(event);
}

void QStackedWidget_virtualbase_connectNotify(VirtualQStackedWidget* self, QMetaMethod* signal) {

	self->QStackedWidget::connectNotify(*signal);
}

void QStackedWidget_virtualbase_disconnectNotify(VirtualQStackedWidget* self, QMetaMethod* signal) {

	self->QStackedWidget::disconnectNotify(*signal);
}

const QMetaObject* QStackedWidget_staticMetaObject() { return &QStackedWidget::staticMetaObject; }

const QStackedWidget_VTable* QStackedWidget_vtbl(const VirtualQStackedWidget* self) { return self->vtbl; }
void* QStackedWidget_vdata(const VirtualQStackedWidget* self) { return self->vdata; }
void QStackedWidget_setVdata(VirtualQStackedWidget* self, void* vdata) { self->vdata = vdata; }

void QStackedWidget_protectedbase_drawFrame(VirtualQStackedWidget* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QStackedWidget_protectedbase_initStyleOption(const VirtualQStackedWidget* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QStackedWidget_protectedbase_updateMicroFocus(VirtualQStackedWidget* self) {
	self->updateMicroFocus();
}

void QStackedWidget_protectedbase_create(VirtualQStackedWidget* self) {
	self->create();
}

void QStackedWidget_protectedbase_destroy(VirtualQStackedWidget* self) {
	self->destroy();
}

bool QStackedWidget_protectedbase_focusNextChild(VirtualQStackedWidget* self) {
	return self->focusNextChild();
}

bool QStackedWidget_protectedbase_focusPreviousChild(VirtualQStackedWidget* self) {
	return self->focusPreviousChild();
}

QObject* QStackedWidget_protectedbase_sender(const VirtualQStackedWidget* self) {
	return self->sender();
}

int QStackedWidget_protectedbase_senderSignalIndex(const VirtualQStackedWidget* self) {
	return self->senderSignalIndex();
}

int QStackedWidget_protectedbase_receivers(const VirtualQStackedWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QStackedWidget_protectedbase_isSignalConnected(const VirtualQStackedWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QStackedWidget_delete(QStackedWidget* self) {
	delete self;
}

