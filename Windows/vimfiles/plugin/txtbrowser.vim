" txtbrowser.vim:	Utilities to browser plain text file.
" Release:		1.3.4
" Maintainer:		ypguo<guoyoooping@163.com>
" Last modified:	2010.08.07
" License:		GPL.

" ****************** Do not modify after this line ************************

" Line continuation used here
let s:cpo_save = &cpo
set cpo&vim

scriptencoding utf-8

if exists("g:txtbrowser_version")
    finish "stop loading the script
endif
let g:txtbrowser_version = "1.3.4"

"=Options===========================================================
" User defined web dictionary
if !exists('TxtBrowser_Dict_Url')
    let TxtBrowser_Dict_Url = 'http://www.google.cn/dictionary?aq=f&langpair=en|zh-CN&q=text&hl=zh-CN'
endif

" User defined Search Engine.
if !exists('Txtbrowser_Search_Engine')
    let Txtbrowser_Search_Engine = 'http://www.google.com/search?hl=zh-CN&source=hp&q=text&btnG=Google+%E6%90%9C%E7%B4%A2&lr=&aq=f&oq='
endif

"===================================================================
"Default map:
if ("" == mapcheck("<Leader>s", "n"))
    nmap <script> <silent> <unique> <Leader>s <ESC>:TSearch <cword> <CR>
endif
if ("" == mapcheck("<Leader>s", "v"))
    vmap <script> <silent> <unique> <Leader>s y<ESC>:TSearch <c-r>" <CR>
endif
if ("" == mapcheck("<Leader>f", "n"))
    nmap <script> <silent> <unique> <Leader>f <ESC>:TFind <cword> <CR>
endif
if ("" == mapcheck("<Leader>f", "v"))
    vmap <script> <silent> <unique> <Leader>f y<ESC>:TFind <c-r>" <CR>
endif
if ("" == mapcheck("<Leader>g", "n"))
    nmap <script> <silent> <unique> <Leader>g <ESC>:TGoto <CR>
endif
if ("" == mapcheck("<Leader>g", "v"))
    vmap <script> <silent> <unique> <Leader>g y<ESC>:TGoto <c-r>" <CR>
endif
if ("" == mapcheck("<Leader>h", "n"))
    nmap <script> <silent> <unique> <Leader>h yaw<ESC>:TBHighlight @\" <CR>
endif
if ("" == mapcheck("<Leader>h", "v"))
    vmap <script> <silent> <unique> <Leader>h y<ESC>:TBHighlight @\" <CR>
endif
if ("" == mapcheck("*", "v"))
    vnoremap <silent> * y/<C-R>=substitute(escape(@", '.*\\/[]'), "\n", '\\n', 'g')<CR><CR>
endif
if ("" == mapcheck("#", "v"))
    vnoremap <silent> # y?<C-R>=substitute(escape(@", '.*\\/[]'), "\n", '\\n', 'g')<CR><CR>
endif

"Define the user commands:
command! -nargs=? -bar TSearch call s:TxtBrowserSearch(<f-args>)
command! -nargs=? -bar TFind call s:TxtBrowserWord(<f-args>)
command! -nargs=? -bar TGoto call s:TxtbrowserGoto(<f-args>)
command! -nargs=1 -bar TBHighlight call s:TxtBrowserHighlight(<args>)

" Add the popup menu.
if &mousemodel =~ 'popup'
    amenu .50 PopUp.-Sep-    :
    if v:lang =~ 'zh_CN'
	anoremenu <silent> .51 PopUp.文本浏览工具(&T).打开/关闭目录树(&T) :Tlist <CR>
	anoremenu <silent> .51 PopUp.文本浏览工具(&T).打开/关闭语法高亮(&E) :call <SID>TxtBrowserToggleFt() <CR>
	amenu .50 PopUp.文本浏览工具(&T).-Sep-    :
	nnoremenu <silent> .51 PopUp.文本浏览工具(&T).搜索光标下的单词(&S) :TSearch <cword> <CR>
	inoremenu <silent> .51 PopUp.文本浏览工具(&T).搜索光标下的单词(&S) <ESC>:TSearch <cword> <CR>
	vnoremenu <silent> .51 PopUp.文本浏览工具(&T).搜索选择的单词(&S) y<ESC>:TSearch <c-r>" <CR>
	nnoremenu <silent> .51 PopUp.文本浏览工具(&T).查找光标下的单词(&F) :TFind <cword> <CR>
	inoremenu <silent> .51 PopUp.文本浏览工具(&T).查找光标下的单词(&F) <ESC>:TFind <cword> <CR>
	vnoremenu <silent> .51 PopUp.文本浏览工具(&T).查找选择的单词(&F) y<ESC>:TFind <c-r>" <CR>
	nnoremenu <silent> .51 PopUp.文本浏览工具(&T).打开光标下的URL(&G) :TGoto <CR>
	inoremenu <silent> .51 PopUp.文本浏览工具(&T).打开光标下的URL(&G) <ESC>:TGoto <CR>
	vnoremenu <silent> .51 PopUp.文本浏览工具(&T).打开选择的URL(&G) y<ESC>:TGoto <c-r>" <CR>

	nnoremenu <silent> .51 PopUp.文本浏览工具(&T).高亮搜索光标下的单词(&H) yaw<ESC>:TBHighlight @\" <CR>
	inoremenu <silent> .51 PopUp.文本浏览工具(&T).高亮搜索光标下的单词(&H) <ESC>yaw:TBHighlight @\" <CR>
	vnoremenu <silent> .51 PopUp.文本浏览工具(&T).高亮选中的文本(&H) y<ESC>:TBHighlight @\" <CR>
	nnoremenu <silent> .51 PopUp.文本浏览工具(&T).前向搜索光标下的单词(&N) *
	inoremenu <silent> .51 PopUp.文本浏览工具(&T).前向搜索光标下的单词(&N) <ESC>*
	vnoremenu <silent> .51 PopUp.文本浏览工具(&T).前向搜索选中的文本(&N) y/<C-R>=substitute(escape(@", '.*\\/[]'), "\n", '\\n', 'g')<CR><CR>
	nnoremenu <silent> .51 PopUp.文本浏览工具(&T).后向搜索光标下的单词(&P) #
	inoremenu <silent> .51 PopUp.文本浏览工具(&T).后向搜索光标下的单词(&P) <ESC>#
	vnoremenu <silent> .51 PopUp.文本浏览工具(&T).后向搜索选中的文本(&P) y?<C-R>=substitute(escape(@", '.*\\/[]'), "\n", '\\n', 'g')<CR><CR>

    else
	anoremenu <silent> .51 PopUp.TxtBrowser(&T).Tlist(&T) :Tlist <CR>
	anoremenu <silent> .51 PopUp.TxtBrowser(&T).Toggle\ syntax\ highlight(&E) :call <SID>TxtBrowserToggleFt() <CR>
	amenu .50 PopUp.&TxtBrowser(&T).-Sep-    :
	nnoremenu <silent> .51 PopUp.TxtBrowser(&T).Search\ This\ Word(&S) :TSearch <cword> <CR>
	inoremenu <silent> .51 PopUp.TxtBrowser(&T).Search\ This\ Word(&S) <ESC>:TSearch <cword> <CR>
	vnoremenu <silent> .51 PopUp.TxtBrowser(&T).Search\ Word\ Selected(&S) y<ESC>:TSearch <c-r>" <CR>
	nnoremenu <silent> .51 PopUp.TxtBrowser(&T).Find\ This\ Word(&F) :TFind <cword> <CR>
	inoremenu <silent> .51 PopUp.TxtBrowser(&T).Find\ This\ Word(&F) <ESC>:TFind <cword> <CR>
	vnoremenu <silent> .51 PopUp.TxtBrowser(&T).Find\ Word\ Selected(&F) y<ESC>:TFind <c-r>" <CR>
	nnoremenu <silent> .51 PopUp.TxtBrowser(&T).Goto\ This\ Url(&G) :TGoto <CR>
	inoremenu <silent> .51 PopUp.TxtBrowser(&T).Goto\ This\ Url(&G) <ESC>:TGoto <CR>
	vnoremenu <silent> .51 PopUp.TxtBrowser(&T).Goto\ Url\ Selected(&G) y<ESC>:TGoto <c-r>" <CR>
	nnoremenu <silent> .51 PopUp.TxtBrowser(&T).Hightlight\ This\ Word(&H) yaw<ESC>:TBHighlight @\" <CR>
	inoremenu <silent> .51 PopUp.TxtBrowser(&T).Hightlight\ This\ Word(&H) <ESC>yaw:TBHighlight @\" <CR>
	vnoremenu <silent> .51 PopUp.TxtBrowser(&T).Hightlight\ Text\ Selected(&H) y<ESC>:TBHighlight @\" <CR>
	nnoremenu <silent> .51 PopUp.TxtBrowser(&T).*\ Search\ Forward(&N) *
	inoremenu <silent> .51 PopUp.TxtBrowser(&T).*\ Search\ Forward(&N) <ESC>*
	vnoremenu <silent> .51 PopUp.TxtBrowser(&T).*\ Search\ Forward(&N) y/<C-R>=substitute(escape(@", '.*\\/[]'), "\n", '\\n', 'g')<CR><CR>
	nnoremenu <silent> .51 PopUp.TxtBrowser(&T).#\ Search\ Backward(&P) #
	inoremenu <silent> .51 PopUp.TxtBrowser(&T).#\ Search\ Backward(&P) <ESC>#
	vnoremenu <silent> .51 PopUp.TxtBrowser(&T).#\ Search\ Backward(&P) y?<C-R>=substitute(escape(@", '.*\\/[]'), "\n", '\\n', 'g')<CR><CR>
    endif
endif

"===================================================================
"The functions:
function! s:TxtBrowserHighlight (text)
	if a:text == ""
		echohl ErrorMsg | echo "No url found in the cursor."
		return -1
	endif
	let tmp = a:text
	let tmp = escape(tmp, '.*[]')
	let tmp = substitute(tmp, "\n", "\\\\n", 'g')
	let tmp = substitute(tmp, "/", "\\\\/", 'g')
	exec ':match MatchParen ' . '/' . tmp . '/'
endfunction

" Function to parse and get the url in the line gvien.
" @line: input line that need to open.
" return: Url that prased, return "" if not found.
function! s:TxtbrowserGoto(...)
    if a:0 == 0
	let line = getline('.')
    else
	let line = a:1
    endif

    "let url = matchstr(getline("."), '[filehtp]*:\/\/[^>,;]*')
    let url = matchstr(line, "http:\/\/[^ (),:]*")
    if url==""
	let url = matchstr(line, "ftp:\/\/[^ ]*")
    endif
    if url==""
	let url = matchstr(line, "file:\/\/[^,;>]*")
    endif
    if url==""
	let url = matchstr(line, "mailto:[^ ]*")
    endif
    if url==""
	let url = matchstr(line, "www\.[^ (),:]*")
    endif
    if url==""
	let url = matchstr(line, "[^,:\> ]*@[^ ,:]*")
	if url!=""
	    let url = "mailto:" . url
	endif
    endif

    "parse local file
    if url==""
	"Get the <cfile>
	let url = expand("<cfile>:.")

	"If the <cfile> is not readable, let isfname += <SPACE> and have a
	"more try.
	if (!filereadable(url))
	    let old_isfname = &isfname
	    set isfname+=32
	    let url = expand("<cfile>:.")
	    " Restore the isfname option
	    let &isfname = old_isfname
	endif

	if (!filereadable(url))
	    let url = ""
	endif
    endif

    let url = escape (url, "\"#;%")
    if url == ""
	echohl ErrorMsg | echo "No url found in the cursor." | echohl Normal
	return -1
    else
	echo "Open url: " . url
    endif

    call s:TxtbrowserOpenUrl(url)

    return url
endfunction

" Function to open the url gvien.
" @url: url that need to open.
function! s:TxtbrowserOpenUrl (url)
    if a:url == ""
	echohl ErrorMsg | echo "No url found in the cursor."
	return -1
    endif

    if (has("mac"))
	exec "!open \"" . a:url . "\""
    elseif (has("win32") || has("win32unix"))
	exec ':silent !cmd /q /c start "\""dummy title"\"" ' . "\"" . a:url . "\""
    elseif (has("unix"))
	"exec ':silent !firefox ' . "\"" . a:url . "\" & "
	exec ":silent !xdg-open \"" . a:url . "\""
    endif
endfunction

" Function to open the url gvien.
" @url: url that need to open.
function! s:TxtBrowserWord (...) range
    if a:0 == 0
	let word = expand('<cword>')
    else
	let word = a:1
    endif

    if word == ""
	echohl ErrorMsg | echo "No text to lookup." | echohl Normal
	return -1
    else
	echo "Find word: " . word
    endif

    call s:TxtbrowserOpenUrl(substitute(g:TxtBrowser_Dict_Url, "text", word, "g"))
endfunction


" Function to open the url gvien.
" @url: url that need to open.
function! s:TxtBrowserSearch (...) range
    if a:0 == 0
	let word = expand('<cword>')
    else
	let word = a:1
    endif

    if word == ""
	echohl ErrorMsg | echo "No text to search." | echohl Normal
	return -1
    else
	echo "Searching: " . word
    endif

    call s:TxtbrowserOpenUrl(substitute(g:Txtbrowser_Search_Engine, "text", word, 'g'))
endfunction

" Function to open the url gvien.
" @url: url that need to open.
function! s:TxtBrowserToggleFt ()
    if &ft =~ "txt"
    set ft=
    else
    set ft=txt
    endif
endfunction

" restore 'cpo'
let &cpo = s:cpo_save
unlet s:cpo_save

" vim:ft=vim sw=4
