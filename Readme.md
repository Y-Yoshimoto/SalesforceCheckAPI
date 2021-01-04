# SalesforceCheckAPI

## API
- exportdata
    全データ出力
    curl http://127.0.0.1/api/exportdata/
- exportaverage
    平均データ出力
    curl http://127.0.0.1/api/exportaverage/
- register
    データ登録
    curl http://127.0.0.1/api/register/

## React.js アプリケーション
package.jsonの最新化
```bash
npx create-react-app mp-app
npm install -g npm-check-updates
npm-check-updates -u
npm update
```