---
tags:
- Git
- Commitizen
---
---
# Commitizen
```
<type>(<scope>): <subject>
// 空一行
<body>
// 空一行
<footer>
```
## Header

Header 部分只有一行，包括三个字段：type（必需）、scope（可选）、subject（必需）
1. type
> 用于说明类型。可分以下几种类型 ^a1f19e



下面是 Commitizen 的 `type` 规范的表格信息：
| Type       | Description  |
| ---------- | ------------- |
| `feat`     | 新功能（feature）                              |
| `fix`      | 修复 bug                                       |
| impr     | 对当前功能的改进                               |
| `docs`     | 文档更新                                       |
| `style`    | 代码格式化、缺少分号等，与代码逻辑无关的更新   |
| `refactor` | 重构代码，既不是新增功能也不是修复 bug         |
| `test`     | 增加或修改测试代码                             |
| `chore`    | 构建过程或辅助工具的变动，例如依赖管理器的修改 |
| `perf`     | 性能优化                                       |
| `build`    | 构建相关的修改                                 |
| `ci`       | CI/CD 相关的修改                               |
| `revert`   | 回滚某个提交                                   |
| `release`  | 发布新版本                                     |

2. scope
> 用于说明影响的范围，比如数据层、控制层、视图层等等。
3. subject
> 主题，简短描述。一行

## Body
对 subject 的补充。可以多行。

[[Cz工具]]
## Footer
主要是一些关联 issue 的操作。

# Tools
[[Cz工具]]
