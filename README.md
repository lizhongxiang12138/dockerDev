docker build . -t my.python.dev:1.0.0
docker run -d --name pythondev -v ~/newproj:/workspaces/newproj my.python.dev:1.0.0 tail -f /dev/null

#### 切换 Docker context

打开VSCode，按下 `ctrl+shift+p` 运行 `docker contexts use` , 选择上面创建的docker context.

#### 连接容器

按下 `ctrl+shift+p` 运行 `Remote-Containers:Attach to Running Container...`, 选择上面创建的容器名字。

连接成功后，按下 `ctrl+k, ctr+o`, 你会发现VSCode弹出的不是本地目录，而是容器内部的目录！现在VSCode只是一个客户端，一切操作都在容器中了！

尝试一下。选择上面创建的 /workspaces/newproj，新建一个main.py，保存。再去主机上看，~/newproj/main.py就躺在那。

现在，可以愉快地在容（工）器（地）里面编（搬）码（砖）了。