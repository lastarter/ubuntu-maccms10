# maccms10 基础环境安装脚本

> 注意: 
>
> 本项目脚本适用于 ubuntu 22.04 LTS
>
> 执行本项目脚本时, 需要 root 用户

## 使用

1. 克隆本项目, 并进入

```bash
git clone https://github.com/lastarter/maccms-install.git
cd maccms-install
```

2. 基础环境配置

> 本次执行会显示出 MySQL 的用户名和密码

```bash
chmod +x ./install.sh && ./install.sh
```

3. 项目拉取, 配置 maccms10

```bash
chmod +x ./init.sh && ./init.sh
```

4. 访问项目

打开浏览器, 访问 `http://{IP}`, 按照引导操作即可