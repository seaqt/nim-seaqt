#include <QAbstractSpinBox>
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
#include <QLineEdit>
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
#include <QStyleOptionSpinBox>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qabstractspinbox.h>
#include "gen_qabstractspinbox.h"
class VirtualQAbstractSpinBox final : public QAbstractSpinBox {
	const QAbstractSpinBox_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractSpinBox_VTable* QAbstractSpinBox_vtbl(const VirtualQAbstractSpinBox* self);
	friend void* QAbstractSpinBox_vdata(const VirtualQAbstractSpinBox* self);
	friend void QAbstractSpinBox_setVdata(VirtualQAbstractSpinBox* self, void* vdata);

	VirtualQAbstractSpinBox(const QAbstractSpinBox_VTable* vtbl, void* vdata, QWidget* parent): QAbstractSpinBox(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractSpinBox(const QAbstractSpinBox_VTable* vtbl, void* vdata): QAbstractSpinBox(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractSpinBox() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractSpinBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractSpinBox_virtualbase_metaObject(const VirtualQAbstractSpinBox* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractSpinBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractSpinBox_virtualbase_metacast(VirtualQAbstractSpinBox* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractSpinBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_metacall(VirtualQAbstractSpinBox* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractSpinBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractSpinBox_virtualbase_sizeHint(const VirtualQAbstractSpinBox* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractSpinBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractSpinBox_virtualbase_minimumSizeHint(const VirtualQAbstractSpinBox* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractSpinBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSpinBox_virtualbase_event(VirtualQAbstractSpinBox* self, QEvent* event);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractSpinBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractSpinBox_virtualbase_inputMethodQuery(const VirtualQAbstractSpinBox* self, int param1);

	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QAbstractSpinBox::validate(input, pos);
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;
		int* sigval2 = &pos;

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_validate(const VirtualQAbstractSpinBox* self, struct miqt_string input, int* pos);

	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QAbstractSpinBox::fixup(input);
			return;
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;

		vtbl->fixup(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_fixup(const VirtualQAbstractSpinBox* self, struct miqt_string input);

	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QAbstractSpinBox::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_stepBy(VirtualQAbstractSpinBox* self, int steps);

	virtual void clear() override {
		if (vtbl->clear == 0) {
			QAbstractSpinBox::clear();
			return;
		}


		vtbl->clear(this);

	}

	friend void QAbstractSpinBox_virtualbase_clear(VirtualQAbstractSpinBox* self);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractSpinBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_resizeEvent(VirtualQAbstractSpinBox* self, QResizeEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractSpinBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_keyPressEvent(VirtualQAbstractSpinBox* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractSpinBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_keyReleaseEvent(VirtualQAbstractSpinBox* self, QKeyEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractSpinBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_wheelEvent(VirtualQAbstractSpinBox* self, QWheelEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractSpinBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_focusInEvent(VirtualQAbstractSpinBox* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractSpinBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_focusOutEvent(VirtualQAbstractSpinBox* self, QFocusEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractSpinBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_contextMenuEvent(VirtualQAbstractSpinBox* self, QContextMenuEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QAbstractSpinBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_changeEvent(VirtualQAbstractSpinBox* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractSpinBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_closeEvent(VirtualQAbstractSpinBox* self, QCloseEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractSpinBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_hideEvent(VirtualQAbstractSpinBox* self, QHideEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractSpinBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_mousePressEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractSpinBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_mouseReleaseEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractSpinBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_mouseMoveEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractSpinBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_timerEvent(VirtualQAbstractSpinBox* self, QTimerEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QAbstractSpinBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_paintEvent(VirtualQAbstractSpinBox* self, QPaintEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractSpinBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_showEvent(VirtualQAbstractSpinBox* self, QShowEvent* event);

	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QAbstractSpinBox::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_stepEnabled(const VirtualQAbstractSpinBox* self);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractSpinBox::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_devType(const VirtualQAbstractSpinBox* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractSpinBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_setVisible(VirtualQAbstractSpinBox* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractSpinBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_heightForWidth(const VirtualQAbstractSpinBox* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractSpinBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QAbstractSpinBox_virtualbase_hasHeightForWidth(const VirtualQAbstractSpinBox* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractSpinBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractSpinBox_virtualbase_paintEngine(const VirtualQAbstractSpinBox* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractSpinBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_mouseDoubleClickEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractSpinBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_enterEvent(VirtualQAbstractSpinBox* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractSpinBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_leaveEvent(VirtualQAbstractSpinBox* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractSpinBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_moveEvent(VirtualQAbstractSpinBox* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractSpinBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_tabletEvent(VirtualQAbstractSpinBox* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractSpinBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_actionEvent(VirtualQAbstractSpinBox* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractSpinBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_dragEnterEvent(VirtualQAbstractSpinBox* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractSpinBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_dragMoveEvent(VirtualQAbstractSpinBox* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractSpinBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_dragLeaveEvent(VirtualQAbstractSpinBox* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractSpinBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_dropEvent(VirtualQAbstractSpinBox* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractSpinBox::nativeEvent(eventType, message, result);
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

	friend bool QAbstractSpinBox_virtualbase_nativeEvent(VirtualQAbstractSpinBox* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractSpinBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_metric(const VirtualQAbstractSpinBox* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractSpinBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_initPainter(const VirtualQAbstractSpinBox* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractSpinBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractSpinBox_virtualbase_redirected(const VirtualQAbstractSpinBox* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractSpinBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QAbstractSpinBox_virtualbase_sharedPainter(const VirtualQAbstractSpinBox* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractSpinBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_inputMethodEvent(VirtualQAbstractSpinBox* self, QInputMethodEvent* param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractSpinBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSpinBox_virtualbase_focusNextPrevChild(VirtualQAbstractSpinBox* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractSpinBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractSpinBox_virtualbase_eventFilter(VirtualQAbstractSpinBox* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractSpinBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_childEvent(VirtualQAbstractSpinBox* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractSpinBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_customEvent(VirtualQAbstractSpinBox* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractSpinBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_connectNotify(VirtualQAbstractSpinBox* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractSpinBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_disconnectNotify(VirtualQAbstractSpinBox* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractSpinBox_protectedbase_initStyleOption(const VirtualQAbstractSpinBox* self, QStyleOptionSpinBox* option);
	friend QLineEdit* QAbstractSpinBox_protectedbase_lineEdit(const VirtualQAbstractSpinBox* self);
	friend void QAbstractSpinBox_protectedbase_setLineEdit(VirtualQAbstractSpinBox* self, QLineEdit* edit);
	friend void QAbstractSpinBox_protectedbase_updateMicroFocus(VirtualQAbstractSpinBox* self);
	friend void QAbstractSpinBox_protectedbase_create(VirtualQAbstractSpinBox* self);
	friend void QAbstractSpinBox_protectedbase_destroy(VirtualQAbstractSpinBox* self);
	friend bool QAbstractSpinBox_protectedbase_focusNextChild(VirtualQAbstractSpinBox* self);
	friend bool QAbstractSpinBox_protectedbase_focusPreviousChild(VirtualQAbstractSpinBox* self);
	friend QObject* QAbstractSpinBox_protectedbase_sender(const VirtualQAbstractSpinBox* self);
	friend int QAbstractSpinBox_protectedbase_senderSignalIndex(const VirtualQAbstractSpinBox* self);
	friend int QAbstractSpinBox_protectedbase_receivers(const VirtualQAbstractSpinBox* self, const char* signal);
	friend bool QAbstractSpinBox_protectedbase_isSignalConnected(const VirtualQAbstractSpinBox* self, QMetaMethod* signal);
};

VirtualQAbstractSpinBox* QAbstractSpinBox_new(const QAbstractSpinBox_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQAbstractSpinBox(vtbl, vdata, parent);
}

VirtualQAbstractSpinBox* QAbstractSpinBox_new2(const QAbstractSpinBox_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractSpinBox(vtbl, vdata);
}

void QAbstractSpinBox_virtbase(QAbstractSpinBox* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QAbstractSpinBox_metaObject(const QAbstractSpinBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractSpinBox_metacast(QAbstractSpinBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractSpinBox_metacall(QAbstractSpinBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractSpinBox_tr(const char* s) {
	QString _ret = QAbstractSpinBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSpinBox_trUtf8(const char* s) {
	QString _ret = QAbstractSpinBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAbstractSpinBox_buttonSymbols(const QAbstractSpinBox* self) {
	QAbstractSpinBox::ButtonSymbols _ret = self->buttonSymbols();
	return static_cast<int>(_ret);
}

void QAbstractSpinBox_setButtonSymbols(QAbstractSpinBox* self, int bs) {
	self->setButtonSymbols(static_cast<QAbstractSpinBox::ButtonSymbols>(bs));
}

void QAbstractSpinBox_setCorrectionMode(QAbstractSpinBox* self, int cm) {
	self->setCorrectionMode(static_cast<QAbstractSpinBox::CorrectionMode>(cm));
}

int QAbstractSpinBox_correctionMode(const QAbstractSpinBox* self) {
	QAbstractSpinBox::CorrectionMode _ret = self->correctionMode();
	return static_cast<int>(_ret);
}

bool QAbstractSpinBox_hasAcceptableInput(const QAbstractSpinBox* self) {
	return self->hasAcceptableInput();
}

struct miqt_string QAbstractSpinBox_text(const QAbstractSpinBox* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSpinBox_specialValueText(const QAbstractSpinBox* self) {
	QString _ret = self->specialValueText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractSpinBox_setSpecialValueText(QAbstractSpinBox* self, struct miqt_string txt) {
	QString txt_QString = QString::fromUtf8(txt.data, txt.len);
	self->setSpecialValueText(txt_QString);
}

bool QAbstractSpinBox_wrapping(const QAbstractSpinBox* self) {
	return self->wrapping();
}

void QAbstractSpinBox_setWrapping(QAbstractSpinBox* self, bool w) {
	self->setWrapping(w);
}

void QAbstractSpinBox_setReadOnly(QAbstractSpinBox* self, bool r) {
	self->setReadOnly(r);
}

bool QAbstractSpinBox_isReadOnly(const QAbstractSpinBox* self) {
	return self->isReadOnly();
}

void QAbstractSpinBox_setKeyboardTracking(QAbstractSpinBox* self, bool kt) {
	self->setKeyboardTracking(kt);
}

bool QAbstractSpinBox_keyboardTracking(const QAbstractSpinBox* self) {
	return self->keyboardTracking();
}

void QAbstractSpinBox_setAlignment(QAbstractSpinBox* self, int flag) {
	self->setAlignment(static_cast<Qt::Alignment>(flag));
}

int QAbstractSpinBox_alignment(const QAbstractSpinBox* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QAbstractSpinBox_setFrame(QAbstractSpinBox* self, bool frame) {
	self->setFrame(frame);
}

bool QAbstractSpinBox_hasFrame(const QAbstractSpinBox* self) {
	return self->hasFrame();
}

void QAbstractSpinBox_setAccelerated(QAbstractSpinBox* self, bool on) {
	self->setAccelerated(on);
}

bool QAbstractSpinBox_isAccelerated(const QAbstractSpinBox* self) {
	return self->isAccelerated();
}

void QAbstractSpinBox_setGroupSeparatorShown(QAbstractSpinBox* self, bool shown) {
	self->setGroupSeparatorShown(shown);
}

bool QAbstractSpinBox_isGroupSeparatorShown(const QAbstractSpinBox* self) {
	return self->isGroupSeparatorShown();
}

QSize* QAbstractSpinBox_sizeHint(const QAbstractSpinBox* self) {
	return new QSize(self->sizeHint());
}

QSize* QAbstractSpinBox_minimumSizeHint(const QAbstractSpinBox* self) {
	return new QSize(self->minimumSizeHint());
}

void QAbstractSpinBox_interpretText(QAbstractSpinBox* self) {
	self->interpretText();
}

bool QAbstractSpinBox_event(QAbstractSpinBox* self, QEvent* event) {
	return self->event(event);
}

QVariant* QAbstractSpinBox_inputMethodQuery(const QAbstractSpinBox* self, int param1) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

int QAbstractSpinBox_validate(const QAbstractSpinBox* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	QValidator::State _ret = self->validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QAbstractSpinBox_fixup(const QAbstractSpinBox* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	self->fixup(input_QString);
}

void QAbstractSpinBox_stepBy(QAbstractSpinBox* self, int steps) {
	self->stepBy(static_cast<int>(steps));
}

void QAbstractSpinBox_stepUp(QAbstractSpinBox* self) {
	self->stepUp();
}

void QAbstractSpinBox_stepDown(QAbstractSpinBox* self) {
	self->stepDown();
}

void QAbstractSpinBox_selectAll(QAbstractSpinBox* self) {
	self->selectAll();
}

void QAbstractSpinBox_clear(QAbstractSpinBox* self) {
	self->clear();
}

void QAbstractSpinBox_editingFinished(QAbstractSpinBox* self) {
	self->editingFinished();
}

void QAbstractSpinBox_connect_editingFinished(VirtualQAbstractSpinBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractSpinBox::connect(self, static_cast<void (QAbstractSpinBox::*)()>(&QAbstractSpinBox::editingFinished), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractSpinBox_tr2(const char* s, const char* c) {
	QString _ret = QAbstractSpinBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSpinBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractSpinBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSpinBox_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractSpinBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSpinBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractSpinBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractSpinBox_virtualbase_metaObject(const VirtualQAbstractSpinBox* self) {

	return (QMetaObject*) self->QAbstractSpinBox::metaObject();
}

void* QAbstractSpinBox_virtualbase_metacast(VirtualQAbstractSpinBox* self, const char* param1) {

	return self->QAbstractSpinBox::qt_metacast(param1);
}

int QAbstractSpinBox_virtualbase_metacall(VirtualQAbstractSpinBox* self, int param1, int param2, void** param3) {

	return self->QAbstractSpinBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QAbstractSpinBox_virtualbase_sizeHint(const VirtualQAbstractSpinBox* self) {

	return new QSize(self->QAbstractSpinBox::sizeHint());
}

QSize* QAbstractSpinBox_virtualbase_minimumSizeHint(const VirtualQAbstractSpinBox* self) {

	return new QSize(self->QAbstractSpinBox::minimumSizeHint());
}

bool QAbstractSpinBox_virtualbase_event(VirtualQAbstractSpinBox* self, QEvent* event) {

	return self->QAbstractSpinBox::event(event);
}

QVariant* QAbstractSpinBox_virtualbase_inputMethodQuery(const VirtualQAbstractSpinBox* self, int param1) {

	return new QVariant(self->QAbstractSpinBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

int QAbstractSpinBox_virtualbase_validate(const VirtualQAbstractSpinBox* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = self->QAbstractSpinBox::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QAbstractSpinBox_virtualbase_fixup(const VirtualQAbstractSpinBox* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	self->QAbstractSpinBox::fixup(input_QString);
}

void QAbstractSpinBox_virtualbase_stepBy(VirtualQAbstractSpinBox* self, int steps) {

	self->QAbstractSpinBox::stepBy(static_cast<int>(steps));
}

void QAbstractSpinBox_virtualbase_clear(VirtualQAbstractSpinBox* self) {

	self->QAbstractSpinBox::clear();
}

void QAbstractSpinBox_virtualbase_resizeEvent(VirtualQAbstractSpinBox* self, QResizeEvent* event) {

	self->QAbstractSpinBox::resizeEvent(event);
}

void QAbstractSpinBox_virtualbase_keyPressEvent(VirtualQAbstractSpinBox* self, QKeyEvent* event) {

	self->QAbstractSpinBox::keyPressEvent(event);
}

void QAbstractSpinBox_virtualbase_keyReleaseEvent(VirtualQAbstractSpinBox* self, QKeyEvent* event) {

	self->QAbstractSpinBox::keyReleaseEvent(event);
}

void QAbstractSpinBox_virtualbase_wheelEvent(VirtualQAbstractSpinBox* self, QWheelEvent* event) {

	self->QAbstractSpinBox::wheelEvent(event);
}

void QAbstractSpinBox_virtualbase_focusInEvent(VirtualQAbstractSpinBox* self, QFocusEvent* event) {

	self->QAbstractSpinBox::focusInEvent(event);
}

void QAbstractSpinBox_virtualbase_focusOutEvent(VirtualQAbstractSpinBox* self, QFocusEvent* event) {

	self->QAbstractSpinBox::focusOutEvent(event);
}

void QAbstractSpinBox_virtualbase_contextMenuEvent(VirtualQAbstractSpinBox* self, QContextMenuEvent* event) {

	self->QAbstractSpinBox::contextMenuEvent(event);
}

void QAbstractSpinBox_virtualbase_changeEvent(VirtualQAbstractSpinBox* self, QEvent* event) {

	self->QAbstractSpinBox::changeEvent(event);
}

void QAbstractSpinBox_virtualbase_closeEvent(VirtualQAbstractSpinBox* self, QCloseEvent* event) {

	self->QAbstractSpinBox::closeEvent(event);
}

void QAbstractSpinBox_virtualbase_hideEvent(VirtualQAbstractSpinBox* self, QHideEvent* event) {

	self->QAbstractSpinBox::hideEvent(event);
}

void QAbstractSpinBox_virtualbase_mousePressEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event) {

	self->QAbstractSpinBox::mousePressEvent(event);
}

void QAbstractSpinBox_virtualbase_mouseReleaseEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event) {

	self->QAbstractSpinBox::mouseReleaseEvent(event);
}

void QAbstractSpinBox_virtualbase_mouseMoveEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event) {

	self->QAbstractSpinBox::mouseMoveEvent(event);
}

void QAbstractSpinBox_virtualbase_timerEvent(VirtualQAbstractSpinBox* self, QTimerEvent* event) {

	self->QAbstractSpinBox::timerEvent(event);
}

void QAbstractSpinBox_virtualbase_paintEvent(VirtualQAbstractSpinBox* self, QPaintEvent* event) {

	self->QAbstractSpinBox::paintEvent(event);
}

void QAbstractSpinBox_virtualbase_showEvent(VirtualQAbstractSpinBox* self, QShowEvent* event) {

	self->QAbstractSpinBox::showEvent(event);
}

int QAbstractSpinBox_virtualbase_stepEnabled(const VirtualQAbstractSpinBox* self) {

	VirtualQAbstractSpinBox::StepEnabled _ret = self->QAbstractSpinBox::stepEnabled();
	return static_cast<int>(_ret);
}

int QAbstractSpinBox_virtualbase_devType(const VirtualQAbstractSpinBox* self) {

	return self->QAbstractSpinBox::devType();
}

void QAbstractSpinBox_virtualbase_setVisible(VirtualQAbstractSpinBox* self, bool visible) {

	self->QAbstractSpinBox::setVisible(visible);
}

int QAbstractSpinBox_virtualbase_heightForWidth(const VirtualQAbstractSpinBox* self, int param1) {

	return self->QAbstractSpinBox::heightForWidth(static_cast<int>(param1));
}

bool QAbstractSpinBox_virtualbase_hasHeightForWidth(const VirtualQAbstractSpinBox* self) {

	return self->QAbstractSpinBox::hasHeightForWidth();
}

QPaintEngine* QAbstractSpinBox_virtualbase_paintEngine(const VirtualQAbstractSpinBox* self) {

	return self->QAbstractSpinBox::paintEngine();
}

void QAbstractSpinBox_virtualbase_mouseDoubleClickEvent(VirtualQAbstractSpinBox* self, QMouseEvent* event) {

	self->QAbstractSpinBox::mouseDoubleClickEvent(event);
}

void QAbstractSpinBox_virtualbase_enterEvent(VirtualQAbstractSpinBox* self, QEvent* event) {

	self->QAbstractSpinBox::enterEvent(event);
}

void QAbstractSpinBox_virtualbase_leaveEvent(VirtualQAbstractSpinBox* self, QEvent* event) {

	self->QAbstractSpinBox::leaveEvent(event);
}

void QAbstractSpinBox_virtualbase_moveEvent(VirtualQAbstractSpinBox* self, QMoveEvent* event) {

	self->QAbstractSpinBox::moveEvent(event);
}

void QAbstractSpinBox_virtualbase_tabletEvent(VirtualQAbstractSpinBox* self, QTabletEvent* event) {

	self->QAbstractSpinBox::tabletEvent(event);
}

void QAbstractSpinBox_virtualbase_actionEvent(VirtualQAbstractSpinBox* self, QActionEvent* event) {

	self->QAbstractSpinBox::actionEvent(event);
}

void QAbstractSpinBox_virtualbase_dragEnterEvent(VirtualQAbstractSpinBox* self, QDragEnterEvent* event) {

	self->QAbstractSpinBox::dragEnterEvent(event);
}

void QAbstractSpinBox_virtualbase_dragMoveEvent(VirtualQAbstractSpinBox* self, QDragMoveEvent* event) {

	self->QAbstractSpinBox::dragMoveEvent(event);
}

void QAbstractSpinBox_virtualbase_dragLeaveEvent(VirtualQAbstractSpinBox* self, QDragLeaveEvent* event) {

	self->QAbstractSpinBox::dragLeaveEvent(event);
}

void QAbstractSpinBox_virtualbase_dropEvent(VirtualQAbstractSpinBox* self, QDropEvent* event) {

	self->QAbstractSpinBox::dropEvent(event);
}

bool QAbstractSpinBox_virtualbase_nativeEvent(VirtualQAbstractSpinBox* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QAbstractSpinBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QAbstractSpinBox_virtualbase_metric(const VirtualQAbstractSpinBox* self, int param1) {

	return self->QAbstractSpinBox::metric(static_cast<VirtualQAbstractSpinBox::PaintDeviceMetric>(param1));
}

void QAbstractSpinBox_virtualbase_initPainter(const VirtualQAbstractSpinBox* self, QPainter* painter) {

	self->QAbstractSpinBox::initPainter(painter);
}

QPaintDevice* QAbstractSpinBox_virtualbase_redirected(const VirtualQAbstractSpinBox* self, QPoint* offset) {

	return self->QAbstractSpinBox::redirected(offset);
}

QPainter* QAbstractSpinBox_virtualbase_sharedPainter(const VirtualQAbstractSpinBox* self) {

	return self->QAbstractSpinBox::sharedPainter();
}

void QAbstractSpinBox_virtualbase_inputMethodEvent(VirtualQAbstractSpinBox* self, QInputMethodEvent* param1) {

	self->QAbstractSpinBox::inputMethodEvent(param1);
}

bool QAbstractSpinBox_virtualbase_focusNextPrevChild(VirtualQAbstractSpinBox* self, bool next) {

	return self->QAbstractSpinBox::focusNextPrevChild(next);
}

bool QAbstractSpinBox_virtualbase_eventFilter(VirtualQAbstractSpinBox* self, QObject* watched, QEvent* event) {

	return self->QAbstractSpinBox::eventFilter(watched, event);
}

void QAbstractSpinBox_virtualbase_childEvent(VirtualQAbstractSpinBox* self, QChildEvent* event) {

	self->QAbstractSpinBox::childEvent(event);
}

void QAbstractSpinBox_virtualbase_customEvent(VirtualQAbstractSpinBox* self, QEvent* event) {

	self->QAbstractSpinBox::customEvent(event);
}

void QAbstractSpinBox_virtualbase_connectNotify(VirtualQAbstractSpinBox* self, QMetaMethod* signal) {

	self->QAbstractSpinBox::connectNotify(*signal);
}

void QAbstractSpinBox_virtualbase_disconnectNotify(VirtualQAbstractSpinBox* self, QMetaMethod* signal) {

	self->QAbstractSpinBox::disconnectNotify(*signal);
}

const QMetaObject* QAbstractSpinBox_staticMetaObject() { return &QAbstractSpinBox::staticMetaObject; }

const QAbstractSpinBox_VTable* QAbstractSpinBox_vtbl(const VirtualQAbstractSpinBox* self) { return self->vtbl; }
void* QAbstractSpinBox_vdata(const VirtualQAbstractSpinBox* self) { return self->vdata; }
void QAbstractSpinBox_setVdata(VirtualQAbstractSpinBox* self, void* vdata) { self->vdata = vdata; }

void QAbstractSpinBox_protectedbase_initStyleOption(const VirtualQAbstractSpinBox* self, QStyleOptionSpinBox* option) {
	self->initStyleOption(option);
}

QLineEdit* QAbstractSpinBox_protectedbase_lineEdit(const VirtualQAbstractSpinBox* self) {
	return self->lineEdit();
}

void QAbstractSpinBox_protectedbase_setLineEdit(VirtualQAbstractSpinBox* self, QLineEdit* edit) {
	self->setLineEdit(edit);
}

void QAbstractSpinBox_protectedbase_updateMicroFocus(VirtualQAbstractSpinBox* self) {
	self->updateMicroFocus();
}

void QAbstractSpinBox_protectedbase_create(VirtualQAbstractSpinBox* self) {
	self->create();
}

void QAbstractSpinBox_protectedbase_destroy(VirtualQAbstractSpinBox* self) {
	self->destroy();
}

bool QAbstractSpinBox_protectedbase_focusNextChild(VirtualQAbstractSpinBox* self) {
	return self->focusNextChild();
}

bool QAbstractSpinBox_protectedbase_focusPreviousChild(VirtualQAbstractSpinBox* self) {
	return self->focusPreviousChild();
}

QObject* QAbstractSpinBox_protectedbase_sender(const VirtualQAbstractSpinBox* self) {
	return self->sender();
}

int QAbstractSpinBox_protectedbase_senderSignalIndex(const VirtualQAbstractSpinBox* self) {
	return self->senderSignalIndex();
}

int QAbstractSpinBox_protectedbase_receivers(const VirtualQAbstractSpinBox* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractSpinBox_protectedbase_isSignalConnected(const VirtualQAbstractSpinBox* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractSpinBox_delete(QAbstractSpinBox* self) {
	delete self;
}

