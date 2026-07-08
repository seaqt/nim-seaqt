#include <QEventPoint>
#include <QPoint>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventSequence
#define WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventWidgetSequence
#include <QWidget>
#include <qtestsupport_widgets.h>
#include "gen_qtestsupport_widgets.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQTestQTouchEventWidgetSequence final : public QTest::QTouchEventWidgetSequence {
	const QTest__QTouchEventWidgetSequence_VTable* vtbl;
public:
	friend void* QTest__QTouchEventWidgetSequence_vdata(VirtualQTestQTouchEventWidgetSequence* self);
	friend VirtualQTestQTouchEventWidgetSequence* vdata_QTest__QTouchEventWidgetSequence(void* vdata);

	VirtualQTestQTouchEventWidgetSequence(const QTest__QTouchEventWidgetSequence_VTable* vtbl, const QTest::QTouchEventWidgetSequence& from): QTest::QTouchEventWidgetSequence(from), vtbl(vtbl) {}

	virtual ~VirtualQTestQTouchEventWidgetSequence() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QTest::QTouchEventWidgetSequence& stationary(int touchId) override {
		if (vtbl->stationary == 0) {
			return QTest::QTouchEventWidgetSequence::stationary(touchId);
		}

		int sigval1 = touchId;
		QTest__QTouchEventWidgetSequence* callback_return_value = vtbl->stationary(this, sigval1);
		return *callback_return_value;
	}

	friend QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_virtualbase_stationary(VirtualQTestQTouchEventWidgetSequence* self, int touchId);

	virtual bool commit(bool processEvents) override {
		if (vtbl->commit == 0) {
			return QTest::QTouchEventWidgetSequence::commit(processEvents);
		}

		bool sigval1 = processEvents;
		bool callback_return_value = vtbl->commit(this, sigval1);
		return callback_return_value;
	}

	friend bool QTest__QTouchEventWidgetSequence_virtualbase_commit(VirtualQTestQTouchEventWidgetSequence* self, bool processEvents);

	// Wrappers to allow calling protected methods:
	friend QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_point(VirtualQTestQTouchEventWidgetSequence* self, int touchId);
	friend QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(VirtualQTestQTouchEventWidgetSequence* self, int touchId);
};

VirtualQTestQTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_new(const QTest__QTouchEventWidgetSequence_VTable* vtbl, size_t vdata, QTest__QTouchEventWidgetSequence* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQTestQTouchEventWidgetSequence>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQTestQTouchEventWidgetSequence(vtbl, *from) : nullptr;
}

void QTest__QTouchEventWidgetSequence_virtbase(QTest__QTouchEventWidgetSequence* src, QTest::QTouchEventSequence** outptr_QTest__QTouchEventSequence) {
	*outptr_QTest__QTouchEventSequence = static_cast<QTest::QTouchEventSequence*>(src);
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_press_touchId_pt(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt) {
	QTest::QTouchEventWidgetSequence& _ret = self->press(static_cast<int>(touchId), *pt);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_move_touchId_pt(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt) {
	QTest::QTouchEventWidgetSequence& _ret = self->move(static_cast<int>(touchId), *pt);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_release_touchId_pt(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt) {
	QTest::QTouchEventWidgetSequence& _ret = self->release(static_cast<int>(touchId), *pt);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_stationary(QTest__QTouchEventWidgetSequence* self, int touchId) {
	QTest::QTouchEventWidgetSequence& _ret = self->stationary(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;
}

bool QTest__QTouchEventWidgetSequence_commit(QTest__QTouchEventWidgetSequence* self, bool processEvents) {
	return self->commit(processEvents);
}

void QTest__QTouchEventWidgetSequence_operatorAssign(QTest__QTouchEventWidgetSequence* self, QTest__QTouchEventWidgetSequence* from) {
	self->operator=(*from);
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_press_touchId_pt_widget(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget) {
	QTest::QTouchEventWidgetSequence& _ret = self->press(static_cast<int>(touchId), *pt, widget);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_move_touchId_pt_widget(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget) {
	QTest::QTouchEventWidgetSequence& _ret = self->move(static_cast<int>(touchId), *pt, widget);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_release_touchId_pt_widget(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget) {
	QTest::QTouchEventWidgetSequence& _ret = self->release(static_cast<int>(touchId), *pt, widget);
	// Cast returned reference into pointer
	return &_ret;
}

void* QTest__QTouchEventWidgetSequence_vdata(VirtualQTestQTouchEventWidgetSequence* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQTestQTouchEventWidgetSequence>()); }
VirtualQTestQTouchEventWidgetSequence* vdata_QTest__QTouchEventWidgetSequence(void* vdata) { return reinterpret_cast<VirtualQTestQTouchEventWidgetSequence*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQTestQTouchEventWidgetSequence>()); }

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_virtualbase_stationary(VirtualQTestQTouchEventWidgetSequence* self, int touchId) {

	QTest::QTouchEventWidgetSequence& _ret = self->QTest::QTouchEventWidgetSequence::stationary(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;
}

bool QTest__QTouchEventWidgetSequence_virtualbase_commit(VirtualQTestQTouchEventWidgetSequence* self, bool processEvents) {

	return self->QTest::QTouchEventWidgetSequence::commit(processEvents);
}

QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_point(VirtualQTestQTouchEventWidgetSequence* self, int touchId) {
	QEventPoint& _ret = self->point(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;
}

QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(VirtualQTestQTouchEventWidgetSequence* self, int touchId) {
	QEventPoint& _ret = self->pointOrPreviousPoint(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;
}

void QTest__QTouchEventWidgetSequence_delete(QTest__QTouchEventWidgetSequence* self) {
	delete self;
}

