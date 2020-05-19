#!/bin/sh
sed -i "s/\.disable('image')/\.enable('image')/g"  node_modules/vue-markdown-it/dist/vue-markdown-it.common.js