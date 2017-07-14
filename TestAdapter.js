import MySQL from './src/index';

export default class TestAdapter {
  _adapter: MySQL;
  constructor() {
    const url = 'mysql://root@localhost:3306/parse_server_mysql_adapter_test_database';
    this._adapter = new MySQL(url);
  }
  getAdapter() {
    return this._adapter.getAdapter();
  }
}

module.exports = TestAdapter;
