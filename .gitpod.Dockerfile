FROM gitpod/workspace-mysql:2023-09-26-06-30-55

USER gitpod

RUN pip install jupyterlab mysql-connector-python ipywidgets ipython-sql jupyter-collaboration mysqlclient jupysql iplantuml pygments jupyter_ai jupyter_ai_magics openai bash_kernel && python -m bash_kernel.install

RUN npm install -g mystmd

RUN sudo apt update && sudo apt install -y plantuml

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
