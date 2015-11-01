#!/usr/bin/env bash

function runDots() {
    # Ask for the administrator password upfront
    sudo -v

    # Keep-alive: update existing `sudo` time stamp until the script has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    # Run sections based on command line arguments
    for ARG in "$@"
    do
        if [ $ARG == "base" ] || [ $ARG == "all" ]; then
            echo ""
            echo "------------------------------"
            echo "同步dev-setup仓库中一些常用软件的配置文件到Home目录。"
            echo "------------------------------"
            echo ""
            ./base.sh
        fi
    done

    echo "------------------------------"
    echo "完成dots.sh的运行，请重启你的计算机，确保所有更新生效"
    echo "------------------------------"
}

read -p "执行这个脚本可能会覆盖home目录下已经存在的文件，确定要执行么？ (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    runDots $@
fi;

unset runDots;