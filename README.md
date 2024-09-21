# personal_config
A repository for autocomplete the configuration for me
## oh my posh 主题设置
1. 先去`oh my posh`官网下载`oh my posh`的插件，由于这个不作为插件支持，需要使用包管理器**Scoop**或者**Choco**或者**winget**
```powershell
# winget
winget install JanDeDobbeleer.OhMyPosh -s winget
# choco
choco install oh-my-posh
#scoop
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
# manual
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
```
2. 然后去github的theme里面选择喜欢的类型，文件拓展名是`.omp.json`格式

3. 在~目录`mkdir Posh_theme`，然后直接将文件放到里面，保存

4. 输入这些命令去安装插件
```powershell 
# 安装PSReadLine
Install-Module PSReadLine

# 安装posh-git 
Install-Module posh-git 
```

5. 然后再`$PROFILE` 输入以下内容:  
```powershell 
# some oh my posh extentions and themes

# oh my posh themes config using json files
oh-my-posh init pwsh --config ~/posh_theme/catppuccin.omp.json | Invoke-Expression

# Import-Module -----------------------

# ps-read-line
Import-Module PSReadLine

# posh-git
Import-Module posh-git

# ------------Set hot keys---------------------
# 设置预测文本来源为历史记录
Set-PSReadLineOption -PredictionSource History

# 每次回溯输入历史，光标定位于输入内容末尾
Set-PSReadLineOption -HistorySearchCursorMovesToEnd

# 设置 Tab 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete

# 设置 Ctrl+d 为退出 PowerShell
Set-PSReadlineKeyHandler -Key "Ctrl+d" -Function ViExit

# 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo

# 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward

# 设置向下键为前向搜索历史纪录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
```

6. 保存之后,输入命令：
```powershell 
.$PROFILE
```

## 以上为Powershell7 OhMyPosh的主题设置和插件设置
