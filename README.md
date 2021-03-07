PrometheusNodeExporter

## 安裝node_exporter 步驟
1. 把node_exporter-1.1.1 資料夾與 node_exporter.service 和 run.sh 放到機器中
2. 設定 node_exporter.service 裡 `ExecStart={path}/PrometheusNodeExporter/node_exporter-1.1.1.linux-amd64/node_exporter --web.listen-address=:11000`  的 path 為node_exporter 在系統中的絕對路徑
3. 用 sudo bash run.sh 來自動依據 node_exporter.service 的設定做一個系統的服務
4. 用systemctl status node_exporter.service 來檢查該服務有沒有正確啟動

## 用 docker-compose 架設 prometheus + grafana
1. 修改 prometheus.yml 裡的ip 與 port 號 成 所有要被監控的電腦
2. `docker-compose.yml` 設定 GF_SECURITY_ADMIN_PASSWORD 為等等用admin帳號登入的密碼 
3. `docker-compose up -d`
4. 進入 grafana 設定 Data Sources 為 http://prometheus:9090\
5. 在import Dashboard, (可以用 1860的 Dashboard)
