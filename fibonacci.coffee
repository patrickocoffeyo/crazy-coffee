#!/usr/bin/env coffee
# Don't judge me.
n = 1; m = 0; d = null
(d = n; n = m + n; m = d; console.log n) while isFinite(n)
