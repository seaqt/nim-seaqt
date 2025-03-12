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
#include <QSvgRenderer>
#include <QSvgWidget>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qsvgwidget.h>
#include "gen_qsvgwidget.h"
class VirtualQSvgWidget final : public QSvgWidget {
	const QSvgWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QSvgWidget_VTable* QSvgWidget_vtbl(const VirtualQSvgWidget* self);
	friend void* QSvgWidget_vdata(const VirtualQSvgWidget* self);
	friend void QSvgWidget_setVdata(VirtualQSvgWidget* self, void* vdata);

	VirtualQSvgWidget(const QSvgWidget_VTable* vtbl, void* vdata, QWidget* parent): QSvgWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQSvgWidget(const QSvgWidget_VTable* vtbl, void* vdata): QSvgWidget(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSvgWidget(const QSvgWidget_VTable* vtbl, void* vdata, const QString& file): QSvgWidget(file), vtbl(vtbl), vdata(vdata) {}
	VirtualQSvgWidget(const QSvgWidget_VTable* vtbl, void* vdata, const QString& file, QWidget* parent): QSvgWidget(file, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSvgWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSvgWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSvgWidget_virtualbase_metaObject(const VirtualQSvgWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSvgWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSvgWidget_virtualbase_metacast(VirtualQSvgWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSvgWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgWidget_virtualbase_metacall(VirtualQSvgWidget* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSvgWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSvgWidget_virtualbase_sizeHint(const VirtualQSvgWidget* self);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QSvgWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_paintEvent(VirtualQSvgWidget* self, QPaintEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSvgWidget::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgWidget_virtualbase_devType(const VirtualQSvgWidget* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSvgWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_setVisible(VirtualQSvgWidget* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSvgWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSvgWidget_virtualbase_minimumSizeHint(const VirtualQSvgWidget* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSvgWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgWidget_virtualbase_heightForWidth(const VirtualQSvgWidget* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSvgWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QSvgWidget_virtualbase_hasHeightForWidth(const VirtualQSvgWidget* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSvgWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QSvgWidget_virtualbase_paintEngine(const VirtualQSvgWidget* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSvgWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSvgWidget_virtualbase_event(VirtualQSvgWidget* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QSvgWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_mousePressEvent(VirtualQSvgWidget* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSvgWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_mouseReleaseEvent(VirtualQSvgWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSvgWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_mouseDoubleClickEvent(VirtualQSvgWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSvgWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_mouseMoveEvent(VirtualQSvgWidget* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSvgWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_wheelEvent(VirtualQSvgWidget* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSvgWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_keyPressEvent(VirtualQSvgWidget* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSvgWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_keyReleaseEvent(VirtualQSvgWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSvgWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_focusInEvent(VirtualQSvgWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSvgWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_focusOutEvent(VirtualQSvgWidget* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSvgWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_enterEvent(VirtualQSvgWidget* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSvgWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_leaveEvent(VirtualQSvgWidget* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSvgWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_moveEvent(VirtualQSvgWidget* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSvgWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_resizeEvent(VirtualQSvgWidget* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSvgWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_closeEvent(VirtualQSvgWidget* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSvgWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_contextMenuEvent(VirtualQSvgWidget* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSvgWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_tabletEvent(VirtualQSvgWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSvgWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_actionEvent(VirtualQSvgWidget* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSvgWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_dragEnterEvent(VirtualQSvgWidget* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSvgWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_dragMoveEvent(VirtualQSvgWidget* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSvgWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_dragLeaveEvent(VirtualQSvgWidget* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSvgWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_dropEvent(VirtualQSvgWidget* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSvgWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_showEvent(VirtualQSvgWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSvgWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_hideEvent(VirtualQSvgWidget* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSvgWidget::nativeEvent(eventType, message, result);
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

	friend bool QSvgWidget_virtualbase_nativeEvent(VirtualQSvgWidget* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSvgWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_changeEvent(VirtualQSvgWidget* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSvgWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSvgWidget_virtualbase_metric(const VirtualQSvgWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSvgWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_initPainter(const VirtualQSvgWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSvgWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSvgWidget_virtualbase_redirected(const VirtualQSvgWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSvgWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QSvgWidget_virtualbase_sharedPainter(const VirtualQSvgWidget* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSvgWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_inputMethodEvent(VirtualQSvgWidget* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSvgWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSvgWidget_virtualbase_inputMethodQuery(const VirtualQSvgWidget* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSvgWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QSvgWidget_virtualbase_focusNextPrevChild(VirtualQSvgWidget* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSvgWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSvgWidget_virtualbase_eventFilter(VirtualQSvgWidget* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSvgWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_timerEvent(VirtualQSvgWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSvgWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_childEvent(VirtualQSvgWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSvgWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_customEvent(VirtualQSvgWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSvgWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_connectNotify(VirtualQSvgWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSvgWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSvgWidget_virtualbase_disconnectNotify(VirtualQSvgWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSvgWidget_protectedbase_updateMicroFocus(VirtualQSvgWidget* self);
	friend void QSvgWidget_protectedbase_create(VirtualQSvgWidget* self);
	friend void QSvgWidget_protectedbase_destroy(VirtualQSvgWidget* self);
	friend bool QSvgWidget_protectedbase_focusNextChild(VirtualQSvgWidget* self);
	friend bool QSvgWidget_protectedbase_focusPreviousChild(VirtualQSvgWidget* self);
	friend QObject* QSvgWidget_protectedbase_sender(const VirtualQSvgWidget* self);
	friend int QSvgWidget_protectedbase_senderSignalIndex(const VirtualQSvgWidget* self);
	friend int QSvgWidget_protectedbase_receivers(const VirtualQSvgWidget* self, const char* signal);
	friend bool QSvgWidget_protectedbase_isSignalConnected(const VirtualQSvgWidget* self, QMetaMethod* signal);
};

VirtualQSvgWidget* QSvgWidget_new(const QSvgWidget_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQSvgWidget(vtbl, vdata, parent);
}

VirtualQSvgWidget* QSvgWidget_new2(const QSvgWidget_VTable* vtbl, void* vdata) {
	return new VirtualQSvgWidget(vtbl, vdata);
}

VirtualQSvgWidget* QSvgWidget_new3(const QSvgWidget_VTable* vtbl, void* vdata, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return new VirtualQSvgWidget(vtbl, vdata, file_QString);
}

VirtualQSvgWidget* QSvgWidget_new4(const QSvgWidget_VTable* vtbl, void* vdata, struct miqt_string file, QWidget* parent) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return new VirtualQSvgWidget(vtbl, vdata, file_QString, parent);
}

void QSvgWidget_virtbase(QSvgWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QSvgWidget_metaObject(const QSvgWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSvgWidget_metacast(QSvgWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSvgWidget_metacall(QSvgWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSvgWidget_tr(const char* s) {
	QString _ret = QSvgWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSvgWidget_trUtf8(const char* s) {
	QString _ret = QSvgWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSvgRenderer* QSvgWidget_renderer(const QSvgWidget* self) {
	return self->renderer();
}

QSize* QSvgWidget_sizeHint(const QSvgWidget* self) {
	return new QSize(self->sizeHint());
}

void QSvgWidget_load(QSvgWidget* self, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	self->load(file_QString);
}

void QSvgWidget_loadWithContents(QSvgWidget* self, struct miqt_string contents) {
	QByteArray contents_QByteArray(contents.data, contents.len);
	self->load(contents_QByteArray);
}

struct miqt_string QSvgWidget_tr2(const char* s, const char* c) {
	QString _ret = QSvgWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSvgWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QSvgWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSvgWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QSvgWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSvgWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSvgWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSvgWidget_virtualbase_metaObject(const VirtualQSvgWidget* self) {

	return (QMetaObject*) self->QSvgWidget::metaObject();
}

void* QSvgWidget_virtualbase_metacast(VirtualQSvgWidget* self, const char* param1) {

	return self->QSvgWidget::qt_metacast(param1);
}

int QSvgWidget_virtualbase_metacall(VirtualQSvgWidget* self, int param1, int param2, void** param3) {

	return self->QSvgWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QSvgWidget_virtualbase_sizeHint(const VirtualQSvgWidget* self) {

	return new QSize(self->QSvgWidget::sizeHint());
}

void QSvgWidget_virtualbase_paintEvent(VirtualQSvgWidget* self, QPaintEvent* event) {

	self->QSvgWidget::paintEvent(event);
}

int QSvgWidget_virtualbase_devType(const VirtualQSvgWidget* self) {

	return self->QSvgWidget::devType();
}

void QSvgWidget_virtualbase_setVisible(VirtualQSvgWidget* self, bool visible) {

	self->QSvgWidget::setVisible(visible);
}

QSize* QSvgWidget_virtualbase_minimumSizeHint(const VirtualQSvgWidget* self) {

	return new QSize(self->QSvgWidget::minimumSizeHint());
}

int QSvgWidget_virtualbase_heightForWidth(const VirtualQSvgWidget* self, int param1) {

	return self->QSvgWidget::heightForWidth(static_cast<int>(param1));
}

bool QSvgWidget_virtualbase_hasHeightForWidth(const VirtualQSvgWidget* self) {

	return self->QSvgWidget::hasHeightForWidth();
}

QPaintEngine* QSvgWidget_virtualbase_paintEngine(const VirtualQSvgWidget* self) {

	return self->QSvgWidget::paintEngine();
}

bool QSvgWidget_virtualbase_event(VirtualQSvgWidget* self, QEvent* event) {

	return self->QSvgWidget::event(event);
}

void QSvgWidget_virtualbase_mousePressEvent(VirtualQSvgWidget* self, QMouseEvent* event) {

	self->QSvgWidget::mousePressEvent(event);
}

void QSvgWidget_virtualbase_mouseReleaseEvent(VirtualQSvgWidget* self, QMouseEvent* event) {

	self->QSvgWidget::mouseReleaseEvent(event);
}

void QSvgWidget_virtualbase_mouseDoubleClickEvent(VirtualQSvgWidget* self, QMouseEvent* event) {

	self->QSvgWidget::mouseDoubleClickEvent(event);
}

void QSvgWidget_virtualbase_mouseMoveEvent(VirtualQSvgWidget* self, QMouseEvent* event) {

	self->QSvgWidget::mouseMoveEvent(event);
}

void QSvgWidget_virtualbase_wheelEvent(VirtualQSvgWidget* self, QWheelEvent* event) {

	self->QSvgWidget::wheelEvent(event);
}

void QSvgWidget_virtualbase_keyPressEvent(VirtualQSvgWidget* self, QKeyEvent* event) {

	self->QSvgWidget::keyPressEvent(event);
}

void QSvgWidget_virtualbase_keyReleaseEvent(VirtualQSvgWidget* self, QKeyEvent* event) {

	self->QSvgWidget::keyReleaseEvent(event);
}

void QSvgWidget_virtualbase_focusInEvent(VirtualQSvgWidget* self, QFocusEvent* event) {

	self->QSvgWidget::focusInEvent(event);
}

void QSvgWidget_virtualbase_focusOutEvent(VirtualQSvgWidget* self, QFocusEvent* event) {

	self->QSvgWidget::focusOutEvent(event);
}

void QSvgWidget_virtualbase_enterEvent(VirtualQSvgWidget* self, QEvent* event) {

	self->QSvgWidget::enterEvent(event);
}

void QSvgWidget_virtualbase_leaveEvent(VirtualQSvgWidget* self, QEvent* event) {

	self->QSvgWidget::leaveEvent(event);
}

void QSvgWidget_virtualbase_moveEvent(VirtualQSvgWidget* self, QMoveEvent* event) {

	self->QSvgWidget::moveEvent(event);
}

void QSvgWidget_virtualbase_resizeEvent(VirtualQSvgWidget* self, QResizeEvent* event) {

	self->QSvgWidget::resizeEvent(event);
}

void QSvgWidget_virtualbase_closeEvent(VirtualQSvgWidget* self, QCloseEvent* event) {

	self->QSvgWidget::closeEvent(event);
}

void QSvgWidget_virtualbase_contextMenuEvent(VirtualQSvgWidget* self, QContextMenuEvent* event) {

	self->QSvgWidget::contextMenuEvent(event);
}

void QSvgWidget_virtualbase_tabletEvent(VirtualQSvgWidget* self, QTabletEvent* event) {

	self->QSvgWidget::tabletEvent(event);
}

void QSvgWidget_virtualbase_actionEvent(VirtualQSvgWidget* self, QActionEvent* event) {

	self->QSvgWidget::actionEvent(event);
}

void QSvgWidget_virtualbase_dragEnterEvent(VirtualQSvgWidget* self, QDragEnterEvent* event) {

	self->QSvgWidget::dragEnterEvent(event);
}

void QSvgWidget_virtualbase_dragMoveEvent(VirtualQSvgWidget* self, QDragMoveEvent* event) {

	self->QSvgWidget::dragMoveEvent(event);
}

void QSvgWidget_virtualbase_dragLeaveEvent(VirtualQSvgWidget* self, QDragLeaveEvent* event) {

	self->QSvgWidget::dragLeaveEvent(event);
}

void QSvgWidget_virtualbase_dropEvent(VirtualQSvgWidget* self, QDropEvent* event) {

	self->QSvgWidget::dropEvent(event);
}

void QSvgWidget_virtualbase_showEvent(VirtualQSvgWidget* self, QShowEvent* event) {

	self->QSvgWidget::showEvent(event);
}

void QSvgWidget_virtualbase_hideEvent(VirtualQSvgWidget* self, QHideEvent* event) {

	self->QSvgWidget::hideEvent(event);
}

bool QSvgWidget_virtualbase_nativeEvent(VirtualQSvgWidget* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QSvgWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QSvgWidget_virtualbase_changeEvent(VirtualQSvgWidget* self, QEvent* param1) {

	self->QSvgWidget::changeEvent(param1);
}

int QSvgWidget_virtualbase_metric(const VirtualQSvgWidget* self, int param1) {

	return self->QSvgWidget::metric(static_cast<VirtualQSvgWidget::PaintDeviceMetric>(param1));
}

void QSvgWidget_virtualbase_initPainter(const VirtualQSvgWidget* self, QPainter* painter) {

	self->QSvgWidget::initPainter(painter);
}

QPaintDevice* QSvgWidget_virtualbase_redirected(const VirtualQSvgWidget* self, QPoint* offset) {

	return self->QSvgWidget::redirected(offset);
}

QPainter* QSvgWidget_virtualbase_sharedPainter(const VirtualQSvgWidget* self) {

	return self->QSvgWidget::sharedPainter();
}

void QSvgWidget_virtualbase_inputMethodEvent(VirtualQSvgWidget* self, QInputMethodEvent* param1) {

	self->QSvgWidget::inputMethodEvent(param1);
}

QVariant* QSvgWidget_virtualbase_inputMethodQuery(const VirtualQSvgWidget* self, int param1) {

	return new QVariant(self->QSvgWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QSvgWidget_virtualbase_focusNextPrevChild(VirtualQSvgWidget* self, bool next) {

	return self->QSvgWidget::focusNextPrevChild(next);
}

bool QSvgWidget_virtualbase_eventFilter(VirtualQSvgWidget* self, QObject* watched, QEvent* event) {

	return self->QSvgWidget::eventFilter(watched, event);
}

void QSvgWidget_virtualbase_timerEvent(VirtualQSvgWidget* self, QTimerEvent* event) {

	self->QSvgWidget::timerEvent(event);
}

void QSvgWidget_virtualbase_childEvent(VirtualQSvgWidget* self, QChildEvent* event) {

	self->QSvgWidget::childEvent(event);
}

void QSvgWidget_virtualbase_customEvent(VirtualQSvgWidget* self, QEvent* event) {

	self->QSvgWidget::customEvent(event);
}

void QSvgWidget_virtualbase_connectNotify(VirtualQSvgWidget* self, QMetaMethod* signal) {

	self->QSvgWidget::connectNotify(*signal);
}

void QSvgWidget_virtualbase_disconnectNotify(VirtualQSvgWidget* self, QMetaMethod* signal) {

	self->QSvgWidget::disconnectNotify(*signal);
}

const QMetaObject* QSvgWidget_staticMetaObject() { return &QSvgWidget::staticMetaObject; }

const QSvgWidget_VTable* QSvgWidget_vtbl(const VirtualQSvgWidget* self) { return self->vtbl; }
void* QSvgWidget_vdata(const VirtualQSvgWidget* self) { return self->vdata; }
void QSvgWidget_setVdata(VirtualQSvgWidget* self, void* vdata) { self->vdata = vdata; }

void QSvgWidget_protectedbase_updateMicroFocus(VirtualQSvgWidget* self) {
	self->updateMicroFocus();
}

void QSvgWidget_protectedbase_create(VirtualQSvgWidget* self) {
	self->create();
}

void QSvgWidget_protectedbase_destroy(VirtualQSvgWidget* self) {
	self->destroy();
}

bool QSvgWidget_protectedbase_focusNextChild(VirtualQSvgWidget* self) {
	return self->focusNextChild();
}

bool QSvgWidget_protectedbase_focusPreviousChild(VirtualQSvgWidget* self) {
	return self->focusPreviousChild();
}

QObject* QSvgWidget_protectedbase_sender(const VirtualQSvgWidget* self) {
	return self->sender();
}

int QSvgWidget_protectedbase_senderSignalIndex(const VirtualQSvgWidget* self) {
	return self->senderSignalIndex();
}

int QSvgWidget_protectedbase_receivers(const VirtualQSvgWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QSvgWidget_protectedbase_isSignalConnected(const VirtualQSvgWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSvgWidget_delete(QSvgWidget* self) {
	delete self;
}

