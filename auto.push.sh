#!/bin/bash

# 函数：执行 git push 并返回结果
git_push() {
    local remote=$1
    echo "Pushing to $remote..."
    output=$(git push $remote 2>&1)
    exit_code=$?
    echo "$output"
    return $exit_code
}

# 推送到 Gitee
gitee_result=$(git_push org-gitee)
gitee_exit_code=$?

# 推送到 GitHub
github_result=$(git_push org-git)
github_exit_code=$?

# 输出结果
echo "===== Gitee Push Result ====="
echo "$gitee_result"
echo "Exit code: $gitee_exit_code"
echo

echo "===== GitHub Push Result ====="
echo "$github_result"
echo "Exit code: $github_exit_code"

# 根据两个操作的结果设置脚本的退出码
# if [ $gitee_exit_code -eq 0 ] && [ $github_exit_code -eq 0 ]; then
#     exit 0
# else
#     exit 1
# fi
