#include <QLockFile>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qlockfile.h>
#include "gen_qlockfile.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QLockFile* QLockFile_new(struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new (std::nothrow) QLockFile(fileName_QString);
}

bool QLockFile_lock(QLockFile* self) {
	return self->lock();
}

bool QLockFile_tryLock(QLockFile* self) {
	return self->tryLock();
}

void QLockFile_unlock(QLockFile* self) {
	self->unlock();
}

void QLockFile_setStaleLockTime(QLockFile* self, int staleLockTime) {
	self->setStaleLockTime(static_cast<int>(staleLockTime));
}

int QLockFile_staleLockTime(const QLockFile* self) {
	return self->staleLockTime();
}

bool QLockFile_isLocked(const QLockFile* self) {
	return self->isLocked();
}

bool QLockFile_removeStaleLockFile(QLockFile* self) {
	return self->removeStaleLockFile();
}

int QLockFile_error(const QLockFile* self) {
	QLockFile::LockError _ret = self->error();
	return static_cast<int>(_ret);
}

bool QLockFile_tryLock_timeout(QLockFile* self, int timeout) {
	return self->tryLock(static_cast<int>(timeout));
}

void QLockFile_delete(QLockFile* self) {
	delete self;
}

