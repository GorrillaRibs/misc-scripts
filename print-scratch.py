#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Prints scratchpad windows under i3

import i3ipc

i3 = i3ipc.Connection()
for leaf in i3.get_tree().scratchpad().leaves():
    print(leaf.window_class)
