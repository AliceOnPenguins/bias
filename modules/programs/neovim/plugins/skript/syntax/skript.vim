" Vim syntax file for Skript (.sk)
" Language: Skript (SkriptLang for Bukkit/Paper)

if exists("b:current_syntax")
  finish
endif

syntax case ignore

" ---- Comments ----
syntax match skriptComment "#.*$" contains=skriptTodo
syntax keyword skriptTodo TODO FIXME XXX NOTE contained

" ---- Strings ----
" Skript strings use "..." with %expr% interpolation and "" as escaped quote
syntax region skriptString start=/"/ skip=/""/ end=/"/ contains=skriptExpr,skriptColorCode
syntax match skriptExpr "%[^%]*%" contained
syntax match skriptColorCode "&[0-9a-fk-or]" contained

" ---- Numbers ----
syntax match skriptNumber "\<\d\+\(\.\d\+\)\?\>"

" ---- Section headers (structures) ----
syntax match skriptStructure "^\s*\(command\|function\|trigger\|options\|variables\|on\|every\|else\|else if\|import\)\>"

" ---- Event / structure keywords ----
syntax keyword skriptSection command function trigger options variables on every else import
syntax match skriptSectionColon ":\s*$"

" ---- Command declaration fields ----
syntax match skriptCmdField "^\s*\(permission\|permission message\|description\|usage\|aliases\|executable by\|cooldown\|cooldown message\|cooldown bypass\|cooldown storage\)\s*:"me=e-1

" ---- Control flow ----
syntax keyword skriptConditional if else
syntax keyword skriptRepeat loop while
syntax keyword skriptStatement stop return exit continue

" ---- Common effects (verbs) ----
syntax keyword skriptEffect send broadcast set add remove delete clear teleport give take
syntax keyword skriptEffect wait execute kill damage heal cancel enable disable spawn
syntax keyword skriptEffect message log open close play stop
syntax match skriptEffect "\<execute console command\>"
syntax match skriptEffect "\<execute .* command\>"

" ---- Operators / logic words ----
syntax keyword skriptOperator is are was were has have contains
syntax keyword skriptOperator and or not in of to from
syntax keyword skriptOperator true false on off yes no

" ---- Variables {…} ----
syntax region skriptVariable start="{" end="}" contains=skriptVariable

" ---- Common expressions/types ----
syntax keyword skriptType player players sender console world location block item entity
syntax keyword skriptType uuid string number text vector

" ---- Highlighting links ----
highlight default link skriptComment      Comment
highlight default link skriptTodo        Todo
highlight default link skriptString      String
highlight default link skriptExpr        Special
highlight default link skriptColorCode   SpecialChar
highlight default link skriptNumber      Number
highlight default link skriptStructure   Structure
highlight default link skriptSection     Keyword
highlight default link skriptSectionColon Delimiter
highlight default link skriptCmdField    Identifier
highlight default link skriptConditional Conditional
highlight default link skriptRepeat      Repeat
highlight default link skriptStatement   Statement
highlight default link skriptEffect      Function
highlight default link skriptOperator    Operator
highlight default link skriptVariable    PreProc
highlight default link skriptType        Type

let b:current_syntax = "skript"
