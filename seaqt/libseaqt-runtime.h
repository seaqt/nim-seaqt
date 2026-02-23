#pragma once
#ifndef MIQT_LIBMIQT_LIBMIQT_H
#define MIQT_LIBMIQT_LIBMIQT_H

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus

namespace seaqt {
struct release_callback {
  intptr_t slot;
  void (*release)(intptr_t);

  constexpr release_callback(intptr_t slot, void (*release)(intptr_t)) : slot(slot), release(release) {}
  constexpr release_callback(release_callback &&rhs) : slot(rhs.slot), release(rhs.release) {
    rhs.slot = 0;
    rhs.release = 0;
  }
  release_callback &operator=(release_callback &&rhs) {
    slot = rhs.slot;
    release = rhs.release;
    rhs.slot = slot;
    rhs.release = 0;
    return *this;
  };

  void operator()() {
    if (release)
      release(slot);
  }
  release_callback(const release_callback &) = delete;
  release_callback &operator=(const release_callback &) = delete;
};
} // namespace seaqt

extern "C" {
#endif

struct seaqt_string {
  size_t len;
  char *data;
};

struct seaqt_array {
  size_t len;
  void *data;
};

struct seaqt_map {
  size_t len;
  void *keys;
  void *values;
};

#ifdef __cplusplus
}
#endif

#endif
