#!/usr/bin/env coffee
# Don't judge me, I'm stupid. But I'm having fun. And this took me 2 mins
[m,n] = [1,0]; ([m,n] = [n,m+n]; console.log n) while isFinite(n)