var EventEmitter = require('events').EventEmitter,
    inherits = require('util').inherits;

var addon = require('../build/Release/sipstel.node');
addon.Account.prototype.__proto__ = EventEmitter.prototype;
addon.Call.prototype.__proto__ = EventEmitter.prototype;
addon.Media.prototype.__proto__ = EventEmitter.prototype;
addon.Transport.prototype.__proto__ = EventEmitter.prototype;

exports = {
  init: addon.init,
  start: addon.start,
  hangupAllCalls: addon.hangupAllCalls,
  createRecorder: addon.createRecorder,
  createPlayer: addon.createPlayer,
  createPlaylist: addon.createPlaylist,
  getDevices: addon.getDevices,
  setNullDev: addon.setNullDev,
  setCaptureDev: addon.setCaptureDev,
  setPlaybackDev: addon.setPlaybackDev,
  getCaptureDev: addon.getCaptureDev,
  getPlaybackDev: addon.getPlaybackDev,
  getCaptureDevMedia: addon.getCaptureDevMedia,
  getPlaybackDevMedia: addon.getPlaybackDevMedia,
  setInputVolume: addon.setInputVolume,
  getInputVolume: addon.getInputVolume,
  getOutputVolume: addon.getOutputVolume,
  setOutputVolume: addon.setOutputVolume,
  getAECTail: addon.getAECTail,
  setAECTail: addon.setAECTail,
  version: addon.version(),

  get config() {
    return JSON.parse(addon.config());
  },
  get state() {
    return addon.state();
  },
  get mediaActivePorts() {
    return addon.mediaActivePorts();
  },
  get mediaMaxPorts() {
    return addon.mediaMaxPorts();
  },

  Transport: addon.Transport,
  Account: addon.Account
};

var consts = require('./constants'),
    keys = Object.keys(consts),
    keysLen = keys.length;
for (var k = 0, key; k < keysLen; ++k) {
  key = keys[k];
  exports[key] = consts[key];
}

module.exports = exports;
