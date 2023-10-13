FROM gitpod/workspace-mysql:2023-09-26-06-30-55

USER gitpod

ENV TZ=UTC 

RUN pip install jupyterlab mysql-connector-python ipywidgets ipython-sql jupyter-collaboration mysqlclient jupysql iplantuml pygments jupyter_ai jupyter_ai_magics openai bash_kernel jupyter-book ghp-import pyppeteer && python -m bash_kernel.install

RUN npm install -g mystmd

RUN sudo apt update && sudo apt install -y plantuml libxcursor1 libxdamage-dev libgtk-3-0 && sudo ln -s /usr/share/plantuml/plantuml.jar /usr/local/bin/plantuml.jar
