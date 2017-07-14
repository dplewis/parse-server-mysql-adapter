import Adapter from './Adapter';

export default class MySQL {
  _adapter: Adapter;
  _uri: string;
  _options: Object;

  constructor(uri, options) {
    this._uri = uri;
    this._options = options || {};
  }

  getAdapter() {
    if (this._adapter) {
      return this._adapter;
    }

    this._adapter = new Adapter({
      uri: this._uri,
      collectionPrefix: '',
      databaseOptions: this._options,
    });
    return this._adapter;
  }
}

module.exports = MySQL;
