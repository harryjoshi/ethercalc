#!/usr/bin/env lsc -cj
name: \ethercalc
description: 'Multi-User Spreadsheet Server'
version: \0.20130727.0
homepage: 'http://ethercalc.net/'
repository:
  type: 'git'
  url: 'https://github.com/audreyt/ethercalc'
dependencies:
  redis: \0.8.2
  'uuid-pure': \*
  optimist: \*
  zappajs: \0.4.x
  cors: \*
optional-dependencies:
  LiveScript: \1.1.x
  'webworker-threads': \0.4.x
directories:
  bin: \./bin
subdomain: \ethercalc
scripts:
  start: \app.js
  prepublish: 'node node_modules/LiveScript/bin/lsc -cj package.ls || echo'
engines:
  node: '>= 0.8.x'
