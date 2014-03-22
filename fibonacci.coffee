#!/usr/bin/env coffee
# Don't judge me, I'm stupid. But I'm having fun. And this took me 2 mins
n = 1; m = 0; (d = n; n = m + n; m = d; console.log n) while isFinite(n)
