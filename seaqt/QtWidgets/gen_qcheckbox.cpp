#include <QAbstractButton>
#include <QActionEvent>
#include <QByteArray>
#include <QCheckBox>
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
#include <QStyleOptionButton>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qcheckbox.h>
#include "gen_qcheckbox.h"
class VirtualQCheckBox final : public QCheckBox {
	const QCheckBox_VTable* vtbl;
	void* vdata;
public:
	friend const QCheckBox_VTable* QCheckBox_vtbl(const VirtualQCheckBox* self);
	friend void* QCheckBox_vdata(const VirtualQCheckBox* self);
	friend void QCheckBox_setVdata(VirtualQCheckBox* self, void* vdata);

	VirtualQCheckBox(const QCheckBox_VTable* vtbl, void* vdata, QWidget* parent): QCheckBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQCheckBox(const QCheckBox_VTable* vtbl, void* vdata): QCheckBox(), vtbl(vtbl), vdata(vdata) {}
	VirtualQCheckBox(const QCheckBox_VTable* vtbl, void* vdata, const QString& text): QCheckBox(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQCheckBox(const QCheckBox_VTable* vtbl, void* vdata, const QString& text, QWidget* parent): QCheckBox(text, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQCheckBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCheckBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QCheckBox_virtualbase_metaObject(const VirtualQCheckBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCheckBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QCheckBox_virtualbase_metacast(VirtualQCheckBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCheckBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCheckBox_virtualbase_metacall(VirtualQCheckBox* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCheckBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QCheckBox_virtualbase_sizeHint(const VirtualQCheckBox* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCheckBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QCheckBox_virtualbase_minimumSizeHint(const VirtualQCheckBox* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QCheckBox::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_event(VirtualQCheckBox* self, QEvent* e);

	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QCheckBox::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(this, sigval1);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_hitButton(const VirtualQCheckBox* self, QPoint* pos);

	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QCheckBox::checkStateSet();
			return;
		}


		vtbl->checkStateSet(this);

	}

	friend void QCheckBox_virtualbase_checkStateSet(VirtualQCheckBox* self);

	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QCheckBox::nextCheckState();
			return;
		}


		vtbl->nextCheckState(this);

	}

	friend void QCheckBox_virtualbase_nextCheckState(VirtualQCheckBox* self);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QCheckBox::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_paintEvent(VirtualQCheckBox* self, QPaintEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCheckBox::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_mouseMoveEvent(VirtualQCheckBox* self, QMouseEvent* param1);

	virtual void initStyleOption(QStyleOptionButton* option) const override {
		if (vtbl->initStyleOption == 0) {
			QCheckBox::initStyleOption(option);
			return;
		}

		QStyleOptionButton* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QCheckBox_virtualbase_initStyleOption(const VirtualQCheckBox* self, QStyleOptionButton* option);

	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QCheckBox::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_keyPressEvent(VirtualQCheckBox* self, QKeyEvent* e);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCheckBox::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_keyReleaseEvent(VirtualQCheckBox* self, QKeyEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QCheckBox::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_mousePressEvent(VirtualQCheckBox* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCheckBox::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_mouseReleaseEvent(VirtualQCheckBox* self, QMouseEvent* e);

	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QCheckBox::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_focusInEvent(VirtualQCheckBox* self, QFocusEvent* e);

	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QCheckBox::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_focusOutEvent(VirtualQCheckBox* self, QFocusEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QCheckBox::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_changeEvent(VirtualQCheckBox* self, QEvent* e);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QCheckBox::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_timerEvent(VirtualQCheckBox* self, QTimerEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCheckBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QCheckBox_virtualbase_devType(const VirtualQCheckBox* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCheckBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QCheckBox_virtualbase_setVisible(VirtualQCheckBox* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCheckBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCheckBox_virtualbase_heightForWidth(const VirtualQCheckBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCheckBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_hasHeightForWidth(const VirtualQCheckBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCheckBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QCheckBox_virtualbase_paintEngine(const VirtualQCheckBox* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCheckBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_mouseDoubleClickEvent(VirtualQCheckBox* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCheckBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_wheelEvent(VirtualQCheckBox* self, QWheelEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCheckBox::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_enterEvent(VirtualQCheckBox* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCheckBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_leaveEvent(VirtualQCheckBox* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCheckBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_moveEvent(VirtualQCheckBox* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCheckBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_resizeEvent(VirtualQCheckBox* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCheckBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_closeEvent(VirtualQCheckBox* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCheckBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_contextMenuEvent(VirtualQCheckBox* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCheckBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_tabletEvent(VirtualQCheckBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCheckBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_actionEvent(VirtualQCheckBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCheckBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_dragEnterEvent(VirtualQCheckBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCheckBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_dragMoveEvent(VirtualQCheckBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCheckBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_dragLeaveEvent(VirtualQCheckBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCheckBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_dropEvent(VirtualQCheckBox* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCheckBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_showEvent(VirtualQCheckBox* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCheckBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_hideEvent(VirtualQCheckBox* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QCheckBox::nativeEvent(eventType, message, result);
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

	friend bool QCheckBox_virtualbase_nativeEvent(VirtualQCheckBox* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCheckBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCheckBox_virtualbase_metric(const VirtualQCheckBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCheckBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QCheckBox_virtualbase_initPainter(const VirtualQCheckBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCheckBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QCheckBox_virtualbase_redirected(const VirtualQCheckBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCheckBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QCheckBox_virtualbase_sharedPainter(const VirtualQCheckBox* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCheckBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_inputMethodEvent(VirtualQCheckBox* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCheckBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QCheckBox_virtualbase_inputMethodQuery(const VirtualQCheckBox* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCheckBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_focusNextPrevChild(VirtualQCheckBox* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCheckBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_eventFilter(VirtualQCheckBox* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCheckBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_childEvent(VirtualQCheckBox* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCheckBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QCheckBox_virtualbase_customEvent(VirtualQCheckBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCheckBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QCheckBox_virtualbase_connectNotify(VirtualQCheckBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCheckBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QCheckBox_virtualbase_disconnectNotify(VirtualQCheckBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QCheckBox_protectedbase_updateMicroFocus(VirtualQCheckBox* self);
	friend void QCheckBox_protectedbase_create(VirtualQCheckBox* self);
	friend void QCheckBox_protectedbase_destroy(VirtualQCheckBox* self);
	friend bool QCheckBox_protectedbase_focusNextChild(VirtualQCheckBox* self);
	friend bool QCheckBox_protectedbase_focusPreviousChild(VirtualQCheckBox* self);
	friend QObject* QCheckBox_protectedbase_sender(const VirtualQCheckBox* self);
	friend int QCheckBox_protectedbase_senderSignalIndex(const VirtualQCheckBox* self);
	friend int QCheckBox_protectedbase_receivers(const VirtualQCheckBox* self, const char* signal);
	friend bool QCheckBox_protectedbase_isSignalConnected(const VirtualQCheckBox* self, QMetaMethod* signal);
};

VirtualQCheckBox* QCheckBox_new(const QCheckBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQCheckBox(vtbl, vdata, parent);
}

VirtualQCheckBox* QCheckBox_new2(const QCheckBox_VTable* vtbl, void* vdata) {
	return new VirtualQCheckBox(vtbl, vdata);
}

VirtualQCheckBox* QCheckBox_new3(const QCheckBox_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQCheckBox(vtbl, vdata, text_QString);
}

VirtualQCheckBox* QCheckBox_new4(const QCheckBox_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQCheckBox(vtbl, vdata, text_QString, parent);
}

void QCheckBox_virtbase(QCheckBox* src, QAbstractButton** outptr_QAbstractButton) {
	*outptr_QAbstractButton = static_cast<QAbstractButton*>(src);
}

QMetaObject* QCheckBox_metaObject(const QCheckBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCheckBox_metacast(QCheckBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCheckBox_metacall(QCheckBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCheckBox_tr(const char* s) {
	QString _ret = QCheckBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QCheckBox_sizeHint(const QCheckBox* self) {
	return new QSize(self->sizeHint());
}

QSize* QCheckBox_minimumSizeHint(const QCheckBox* self) {
	return new QSize(self->minimumSizeHint());
}

void QCheckBox_setTristate(QCheckBox* self) {
	self->setTristate();
}

bool QCheckBox_isTristate(const QCheckBox* self) {
	return self->isTristate();
}

int QCheckBox_checkState(const QCheckBox* self) {
	Qt::CheckState _ret = self->checkState();
	return static_cast<int>(_ret);
}

void QCheckBox_setCheckState(QCheckBox* self, int state) {
	self->setCheckState(static_cast<Qt::CheckState>(state));
}

void QCheckBox_stateChanged(QCheckBox* self, int param1) {
	self->stateChanged(static_cast<int>(param1));
}

void QCheckBox_connect_stateChanged(VirtualQCheckBox* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int param1) {
			int sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQCheckBox::connect(self, static_cast<void (QCheckBox::*)(int)>(&QCheckBox::stateChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QCheckBox_tr2(const char* s, const char* c) {
	QString _ret = QCheckBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCheckBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QCheckBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCheckBox_setTristate1(QCheckBox* self, bool y) {
	self->setTristate(y);
}

QMetaObject* QCheckBox_virtualbase_metaObject(const VirtualQCheckBox* self) {

	return (QMetaObject*) self->QCheckBox::metaObject();
}

void* QCheckBox_virtualbase_metacast(VirtualQCheckBox* self, const char* param1) {

	return self->QCheckBox::qt_metacast(param1);
}

int QCheckBox_virtualbase_metacall(VirtualQCheckBox* self, int param1, int param2, void** param3) {

	return self->QCheckBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QCheckBox_virtualbase_sizeHint(const VirtualQCheckBox* self) {

	return new QSize(self->QCheckBox::sizeHint());
}

QSize* QCheckBox_virtualbase_minimumSizeHint(const VirtualQCheckBox* self) {

	return new QSize(self->QCheckBox::minimumSizeHint());
}

bool QCheckBox_virtualbase_event(VirtualQCheckBox* self, QEvent* e) {

	return self->QCheckBox::event(e);
}

bool QCheckBox_virtualbase_hitButton(const VirtualQCheckBox* self, QPoint* pos) {

	return self->QCheckBox::hitButton(*pos);
}

void QCheckBox_virtualbase_checkStateSet(VirtualQCheckBox* self) {

	self->QCheckBox::checkStateSet();
}

void QCheckBox_virtualbase_nextCheckState(VirtualQCheckBox* self) {

	self->QCheckBox::nextCheckState();
}

void QCheckBox_virtualbase_paintEvent(VirtualQCheckBox* self, QPaintEvent* param1) {

	self->QCheckBox::paintEvent(param1);
}

void QCheckBox_virtualbase_mouseMoveEvent(VirtualQCheckBox* self, QMouseEvent* param1) {

	self->QCheckBox::mouseMoveEvent(param1);
}

void QCheckBox_virtualbase_initStyleOption(const VirtualQCheckBox* self, QStyleOptionButton* option) {

	self->QCheckBox::initStyleOption(option);
}

void QCheckBox_virtualbase_keyPressEvent(VirtualQCheckBox* self, QKeyEvent* e) {

	self->QCheckBox::keyPressEvent(e);
}

void QCheckBox_virtualbase_keyReleaseEvent(VirtualQCheckBox* self, QKeyEvent* e) {

	self->QCheckBox::keyReleaseEvent(e);
}

void QCheckBox_virtualbase_mousePressEvent(VirtualQCheckBox* self, QMouseEvent* e) {

	self->QCheckBox::mousePressEvent(e);
}

void QCheckBox_virtualbase_mouseReleaseEvent(VirtualQCheckBox* self, QMouseEvent* e) {

	self->QCheckBox::mouseReleaseEvent(e);
}

void QCheckBox_virtualbase_focusInEvent(VirtualQCheckBox* self, QFocusEvent* e) {

	self->QCheckBox::focusInEvent(e);
}

void QCheckBox_virtualbase_focusOutEvent(VirtualQCheckBox* self, QFocusEvent* e) {

	self->QCheckBox::focusOutEvent(e);
}

void QCheckBox_virtualbase_changeEvent(VirtualQCheckBox* self, QEvent* e) {

	self->QCheckBox::changeEvent(e);
}

void QCheckBox_virtualbase_timerEvent(VirtualQCheckBox* self, QTimerEvent* e) {

	self->QCheckBox::timerEvent(e);
}

int QCheckBox_virtualbase_devType(const VirtualQCheckBox* self) {

	return self->QCheckBox::devType();
}

void QCheckBox_virtualbase_setVisible(VirtualQCheckBox* self, bool visible) {

	self->QCheckBox::setVisible(visible);
}

int QCheckBox_virtualbase_heightForWidth(const VirtualQCheckBox* self, int param1) {

	return self->QCheckBox::heightForWidth(static_cast<int>(param1));
}

bool QCheckBox_virtualbase_hasHeightForWidth(const VirtualQCheckBox* self) {

	return self->QCheckBox::hasHeightForWidth();
}

QPaintEngine* QCheckBox_virtualbase_paintEngine(const VirtualQCheckBox* self) {

	return self->QCheckBox::paintEngine();
}

void QCheckBox_virtualbase_mouseDoubleClickEvent(VirtualQCheckBox* self, QMouseEvent* event) {

	self->QCheckBox::mouseDoubleClickEvent(event);
}

void QCheckBox_virtualbase_wheelEvent(VirtualQCheckBox* self, QWheelEvent* event) {

	self->QCheckBox::wheelEvent(event);
}

void QCheckBox_virtualbase_enterEvent(VirtualQCheckBox* self, QEnterEvent* event) {

	self->QCheckBox::enterEvent(event);
}

void QCheckBox_virtualbase_leaveEvent(VirtualQCheckBox* self, QEvent* event) {

	self->QCheckBox::leaveEvent(event);
}

void QCheckBox_virtualbase_moveEvent(VirtualQCheckBox* self, QMoveEvent* event) {

	self->QCheckBox::moveEvent(event);
}

void QCheckBox_virtualbase_resizeEvent(VirtualQCheckBox* self, QResizeEvent* event) {

	self->QCheckBox::resizeEvent(event);
}

void QCheckBox_virtualbase_closeEvent(VirtualQCheckBox* self, QCloseEvent* event) {

	self->QCheckBox::closeEvent(event);
}

void QCheckBox_virtualbase_contextMenuEvent(VirtualQCheckBox* self, QContextMenuEvent* event) {

	self->QCheckBox::contextMenuEvent(event);
}

void QCheckBox_virtualbase_tabletEvent(VirtualQCheckBox* self, QTabletEvent* event) {

	self->QCheckBox::tabletEvent(event);
}

void QCheckBox_virtualbase_actionEvent(VirtualQCheckBox* self, QActionEvent* event) {

	self->QCheckBox::actionEvent(event);
}

void QCheckBox_virtualbase_dragEnterEvent(VirtualQCheckBox* self, QDragEnterEvent* event) {

	self->QCheckBox::dragEnterEvent(event);
}

void QCheckBox_virtualbase_dragMoveEvent(VirtualQCheckBox* self, QDragMoveEvent* event) {

	self->QCheckBox::dragMoveEvent(event);
}

void QCheckBox_virtualbase_dragLeaveEvent(VirtualQCheckBox* self, QDragLeaveEvent* event) {

	self->QCheckBox::dragLeaveEvent(event);
}

void QCheckBox_virtualbase_dropEvent(VirtualQCheckBox* self, QDropEvent* event) {

	self->QCheckBox::dropEvent(event);
}

void QCheckBox_virtualbase_showEvent(VirtualQCheckBox* self, QShowEvent* event) {

	self->QCheckBox::showEvent(event);
}

void QCheckBox_virtualbase_hideEvent(VirtualQCheckBox* self, QHideEvent* event) {

	self->QCheckBox::hideEvent(event);
}

bool QCheckBox_virtualbase_nativeEvent(VirtualQCheckBox* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QCheckBox::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QCheckBox_virtualbase_metric(const VirtualQCheckBox* self, int param1) {

	return self->QCheckBox::metric(static_cast<VirtualQCheckBox::PaintDeviceMetric>(param1));
}

void QCheckBox_virtualbase_initPainter(const VirtualQCheckBox* self, QPainter* painter) {

	self->QCheckBox::initPainter(painter);
}

QPaintDevice* QCheckBox_virtualbase_redirected(const VirtualQCheckBox* self, QPoint* offset) {

	return self->QCheckBox::redirected(offset);
}

QPainter* QCheckBox_virtualbase_sharedPainter(const VirtualQCheckBox* self) {

	return self->QCheckBox::sharedPainter();
}

void QCheckBox_virtualbase_inputMethodEvent(VirtualQCheckBox* self, QInputMethodEvent* param1) {

	self->QCheckBox::inputMethodEvent(param1);
}

QVariant* QCheckBox_virtualbase_inputMethodQuery(const VirtualQCheckBox* self, int param1) {

	return new QVariant(self->QCheckBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QCheckBox_virtualbase_focusNextPrevChild(VirtualQCheckBox* self, bool next) {

	return self->QCheckBox::focusNextPrevChild(next);
}

bool QCheckBox_virtualbase_eventFilter(VirtualQCheckBox* self, QObject* watched, QEvent* event) {

	return self->QCheckBox::eventFilter(watched, event);
}

void QCheckBox_virtualbase_childEvent(VirtualQCheckBox* self, QChildEvent* event) {

	self->QCheckBox::childEvent(event);
}

void QCheckBox_virtualbase_customEvent(VirtualQCheckBox* self, QEvent* event) {

	self->QCheckBox::customEvent(event);
}

void QCheckBox_virtualbase_connectNotify(VirtualQCheckBox* self, QMetaMethod* signal) {

	self->QCheckBox::connectNotify(*signal);
}

void QCheckBox_virtualbase_disconnectNotify(VirtualQCheckBox* self, QMetaMethod* signal) {

	self->QCheckBox::disconnectNotify(*signal);
}

const QMetaObject* QCheckBox_staticMetaObject() { return &QCheckBox::staticMetaObject; }

const QCheckBox_VTable* QCheckBox_vtbl(const VirtualQCheckBox* self) { return self->vtbl; }
void* QCheckBox_vdata(const VirtualQCheckBox* self) { return self->vdata; }
void QCheckBox_setVdata(VirtualQCheckBox* self, void* vdata) { self->vdata = vdata; }

void QCheckBox_protectedbase_updateMicroFocus(VirtualQCheckBox* self) {
	self->updateMicroFocus();
}

void QCheckBox_protectedbase_create(VirtualQCheckBox* self) {
	self->create();
}

void QCheckBox_protectedbase_destroy(VirtualQCheckBox* self) {
	self->destroy();
}

bool QCheckBox_protectedbase_focusNextChild(VirtualQCheckBox* self) {
	return self->focusNextChild();
}

bool QCheckBox_protectedbase_focusPreviousChild(VirtualQCheckBox* self) {
	return self->focusPreviousChild();
}

QObject* QCheckBox_protectedbase_sender(const VirtualQCheckBox* self) {
	return self->sender();
}

int QCheckBox_protectedbase_senderSignalIndex(const VirtualQCheckBox* self) {
	return self->senderSignalIndex();
}

int QCheckBox_protectedbase_receivers(const VirtualQCheckBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QCheckBox_protectedbase_isSignalConnected(const VirtualQCheckBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QCheckBox_delete(QCheckBox* self) {
	delete self;
}

