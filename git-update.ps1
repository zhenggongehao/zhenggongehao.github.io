param(
    [string]$Message = "update files"
)

# 确保在脚本所在目录执行
Set-Location -Path $PSScriptRoot

# 显示当前分支
git branch

# 暂存所有更改
git add .

# 提交更改（带用户输入的 commit message）
git commit -m "$Message"

# 推送到远端 main 分支
git push origin main
