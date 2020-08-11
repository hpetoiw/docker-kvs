# FROM : 利用するイメージの宣言
From python:3.7.5-slim
# LABEL : イメージに追加する表示情報。
Label author="myname@example.com"
# RUN : 発行するコマンド
RUN pip install flask==1.1.1
# COPY : ファイルのコピー
COPY ./server.py /server.py
# ENV : 環境変数のデフォルト値の設定。run時にオプションで上書き可能
ENV PORT 80
# CMD : コンテナを起動したときに発行されるデフォルトコマンド。run時に上書き可能
CMD ["python", "-u", "/server.py"]