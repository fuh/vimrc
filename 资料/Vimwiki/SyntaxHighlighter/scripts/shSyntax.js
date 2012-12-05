// For C/C++
SyntaxHighlighter.brushes.Cpp = function()
{
	var datatypes =	'ATOM BOOL BOOLEAN BYTE CHAR COLORREF DWORD DWORDLONG DWORD_PTR ' +
					'DWORD32 DWORD64 FLOAT HACCEL HALF_PTR HANDLE HBITMAP HBRUSH ' +
					'HCOLORSPACE HCONV HCONVLIST HCURSOR HDC HDDEDATA HDESK HDROP HDWP ' +
					'HENHMETAFILE HFILE HFONT HGDIOBJ HGLOBAL HHOOK HICON HINSTANCE HKEY ' +
					'HKL HLOCAL HMENU HMETAFILE HMODULE HMONITOR HPALETTE HPEN HRESULT ' +
					'HRGN HRSRC HSZ HWINSTA HWND INT INT_PTR INT32 INT64 LANGID LCID LCTYPE ' +
					'LGRPID LONG LONGLONG LONG_PTR LONG32 LONG64 LPARAM LPBOOL LPBYTE LPCOLORREF ' +
					'LPCSTR LPCTSTR LPCVOID LPCWSTR LPDWORD LPHANDLE LPINT LPLONG LPSTR LPTSTR ' +
					'LPVOID LPWORD LPWSTR LRESULT PBOOL PBOOLEAN PBYTE PCHAR PCSTR PCTSTR PCWSTR ' +
					'PDWORDLONG PDWORD_PTR PDWORD32 PDWORD64 PFLOAT PHALF_PTR PHANDLE PHKEY PINT ' +
					'PINT_PTR PINT32 PINT64 PLCID PLONG PLONGLONG PLONG_PTR PLONG32 PLONG64 POINTER_32 ' +
					'POINTER_64 PSHORT PSIZE_T PSSIZE_T PSTR PTBYTE PTCHAR PTSTR PUCHAR PUHALF_PTR ' +
					'PUINT PUINT_PTR PUINT32 PUINT64 PULONG PULONGLONG PULONG_PTR PULONG32 PULONG64 ' +
					'PUSHORT PVOID PWCHAR PWORD PWSTR SC_HANDLE SC_LOCK SERVICE_STATUS_HANDLE SHORT ' +
					'SIZE_T SSIZE_T TBYTE TCHAR UCHAR UHALF_PTR UINT UINT_PTR UINT32 UINT64 ULONG ' +
					'ULONGLONG ULONG_PTR ULONG32 ULONG64 USHORT USN VOID WCHAR WORD WPARAM WPARAM WPARAM ' +
					'char bool short int __int32 __int64 __int8 __int16 long float double __wchar_t ' +
					'clock_t _complex _dev_t _diskfree_t div_t ldiv_t _exception _EXCEPTION_POINTERS ' +
					'FILE _finddata_t _finddatai64_t _wfinddata_t _wfinddatai64_t __finddata64_t ' +
					'__wfinddata64_t _FPIEEE_RECORD fpos_t _HEAPINFO _HFILE lconv intptr_t ' +
					'jmp_buf mbstate_t _off_t _onexit_t _PNH ptrdiff_t _purecall_handler ' +
					'sig_atomic_t size_t _stat __stat64 _stati64 terminate_function ' +
					'time_t __time64_t _timeb __timeb64 tm uintptr_t _utimbuf ' +
					'va_list wchar_t wctrans_t wctype_t wint_t signed';

	var keywords =	'break case catch class const __finally __exception __try ' +
					'const_cast continue private public protected __declspec ' +
					'default delete deprecated dllexport dllimport do dynamic_cast ' +
					'else enum explicit extern if for friend goto inline ' +
					'mutable naked namespace new noinline noreturn nothrow ' +
					'register reinterpret_cast return selectany ' +
					'sizeof static static_cast struct switch template this ' +
					'thread throw true false try typedef typeid typename union ' +
					'using uuid virtual void volatile whcar_t while';
					
	var functions =	'assert isalnum isalpha iscntrl isdigit isgraph islower isprint' +
					'ispunct isspace isupper isxdigit tolower toupper errno localeconv ' +
					'setlocale acos asin atan atan2 ceil cos cosh exp fabs floor fmod ' +
					'frexp ldexp log log10 modf pow sin sinh sqrt tan tanh jmp_buf ' +
					'longjmp setjmp raise signal sig_atomic_t va_arg va_end va_start ' +
					'clearerr fclose feof ferror fflush fgetc fgetpos fgets fopen ' +
					'fprintf fputc fputs fread freopen fscanf fseek fsetpos ftell ' +
					'fwrite getc getchar gets perror printf putc putchar puts remove ' +
					'rename rewind scanf setbuf setvbuf sprintf sscanf tmpfile tmpnam ' +
					'ungetc vfprintf vprintf vsprintf abort abs atexit atof atoi atol ' +
					'bsearch calloc div exit free getenv labs ldiv malloc mblen mbstowcs ' +
					'mbtowc qsort rand realloc srand strtod strtol strtoul system ' +
					'wcstombs wctomb memchr memcmp memcpy memmove memset strcat strchr ' +
					'strcmp strcoll strcpy strcspn strerror strlen strncat strncmp ' +
					'strncpy strpbrk strrchr strspn strstr strtok strxfrm asctime ' +
					'clock ctime difftime gmtime localtime mktime strftime time';

	this.regexList = [
		{ regex: SyntaxHighlighter.regexLib.singleLineCComments,	css: 'comments' },			// one line comments
		{ regex: SyntaxHighlighter.regexLib.multiLineCComments,		css: 'comments' },			// multiline comments
		{ regex: SyntaxHighlighter.regexLib.doubleQuotedString,		css: 'string' },			// strings
		{ regex: SyntaxHighlighter.regexLib.singleQuotedString,		css: 'string' },			// strings
		{ regex: /^ *#.*/gm,										css: 'preprocessor' },
		{ regex: new RegExp(this.getKeywords(datatypes), 'gm'),		css: 'color1 bold' },
		{ regex: new RegExp(this.getKeywords(functions), 'gm'),		css: 'functions bold' },
		{ regex: new RegExp(this.getKeywords(keywords), 'gm'),		css: 'keyword bold' }
		];
};

SyntaxHighlighter.brushes.Cpp.prototype	= new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.Cpp.aliases	= ['c', 'cpp', 'c++', 'C', 'C++'];


// For Ruby
SyntaxHighlighter.brushes.Ruby = function()
{
	var keywords =	'alias and BEGIN begin break case class def define_method defined do each else elsif ' +
					'END end ensure false for if in module new next nil not or raise redo rescue retry return ' +
					'self super then throw true undef unless until when while yield';

	var builtins =	'Array Bignum Binding Class Continuation Dir Exception FalseClass File::Stat File Fixnum Fload ' +
					'Hash Integer IO MatchData Method Module NilClass Numeric Object Proc Range Regexp String Struct::TMS Symbol ' +
					'ThreadGroup Thread Time TrueClass';

	this.regexList = [
		{ regex: SyntaxHighlighter.regexLib.singleLinePerlComments,	css: 'comments' },		// one line comments
		{ regex: SyntaxHighlighter.regexLib.doubleQuotedString,		css: 'string' },		// double quoted strings
		{ regex: SyntaxHighlighter.regexLib.singleQuotedString,		css: 'string' },		// single quoted strings
		{ regex: /\b[A-Z0-9_]+\b/g,									css: 'constants' },		// constants
		{ regex: /:[a-z][A-Za-z0-9_]*/g,							css: 'color2' },		// symbols
		{ regex: /(\$|@@|@)\w+/g,									css: 'variable bold' },	// $global, @instance, and @@class variables
		{ regex: new RegExp(this.getKeywords(keywords), 'gm'),		css: 'keyword' },		// keywords
		{ regex: new RegExp(this.getKeywords(builtins), 'gm'),		css: 'color1' }			// builtins
		];

	this.forHtmlScript(SyntaxHighlighter.regexLib.aspScriptTags);
};

SyntaxHighlighter.brushes.Ruby.prototype	= new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.Ruby.aliases		= ['Ruby', 'ruby'];


// For Lisp
SyntaxHighlighter.brushes.Lisp = function(){
    var funcs     = 'lambda list progn mapcar car cdr reverse member append format';
    var keywords  = 'let while unless cond if eq t nil defvar dotimes setf listp numberp not equal';
    var macros    = 'loop when dolist dotimes defun';
    var operators = '> < + - = * / %';

    this.regexList = [
     { regex: SyntaxHighlighter.regexLib.doubleQuotedString, css: 'string' },
     { regex: new RegExp('&\\w+;', 'g'), css: 'plain' },
     { regex: new RegExp(';.*', 'g'), css: 'comments' },
     { regex: new RegExp("'(\\w|-)+", 'g'), css: 'variable' },
     { regex: new RegExp(this.getKeywords(keywords), 'gm'), css: 'keyword' },
     { regex: new RegExp(this.getKeywords(macros), 'gm'), css: 'keyword' },
     { regex: new RegExp(this.getKeywords(funcs), 'gm'), css: 'functions' },
    ];
    
}

SyntaxHighlighter.brushes.Lisp.prototype = new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.Lisp.aliases   = ['Lisp', 'lisp'];


// For SQL
SyntaxHighlighter.brushes.Sql = function()
{
	var funcs	=	'abs avg case cast coalesce convert count current_timestamp ' +
					'current_user day isnull left lower month nullif replace right ' +
					'session_user space substring sum system_user upper user year';

	var keywords =	'absolute action add after alter as asc at authorization begin bigint ' +
					'binary bit by cascade char character check checkpoint close collate ' +
					'column commit committed connect connection constraint contains continue ' +
					'create cube current current_date current_time cursor database date ' +
					'deallocate dec decimal declare default delete desc distinct double drop ' +
					'dynamic else end end-exec escape except exec execute false fetch first ' +
					'float for force foreign forward free from full function global goto grant ' +
					'group grouping having hour ignore index inner insensitive insert instead ' +
					'int integer intersect into is isolation key last level load local max min ' +
					'minute modify move name national nchar next no numeric of off on only ' +
					'open option order out output partial password precision prepare primary ' +
					'prior privileges procedure public read real references relative repeatable ' +
					'restrict return returns revoke rollback rollup rows rule schema scroll ' +
					'second section select sequence serializable set size smallint static ' +
					'statistics table temp temporary then time timestamp to top transaction ' +
					'translation trigger true truncate uncommitted union unique update values ' +
					'varchar varying view when where with work';

	var operators =	'all and any between cross in join like not null or outer some';

	this.regexList = [
		{ regex: /--(.*)$/gm,												css: 'comments' },			// one line and multiline comments
		{ regex: SyntaxHighlighter.regexLib.multiLineDoubleQuotedString,	css: 'string' },			// double quoted strings
		{ regex: SyntaxHighlighter.regexLib.multiLineSingleQuotedString,	css: 'string' },			// single quoted strings
		{ regex: new RegExp(this.getKeywords(funcs), 'gmi'),				css: 'color2' },			// functions
		{ regex: new RegExp(this.getKeywords(operators), 'gmi'),			css: 'color1' },			// operators and such
		{ regex: new RegExp(this.getKeywords(keywords), 'gmi'),				css: 'keyword' }			// keyword
		];
};

SyntaxHighlighter.brushes.Sql.prototype	= new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.Sql.aliases	= ['sql', 'SQL'];


// For Bash
SyntaxHighlighter.brushes.Bash = function()
{
	var keywords =	'if fi then elif else for do done until while break continue case function return in eq ne gt lt ge le';

	var commands =  'alias apropos awk basename bash bc bg builtin bzip2 cal cat cd cfdisk chgrp chmod chown chroot' +
					'cksum clear cmp comm command cp cron crontab csplit cut date dc dd ddrescue declare df ' +
					'diff diff3 dig dir dircolors dirname dirs du echo egrep eject enable env ethtool eval ' +
					'exec exit expand export expr false fdformat fdisk fg fgrep file find fmt fold format ' +
					'free fsck ftp gawk getopts grep groups gzip hash head history hostname id ifconfig ' +
					'import install join kill less let ln local locate logname logout look lpc lpr lprint ' +
					'lprintd lprintq lprm ls lsof make man mkdir mkfifo mkisofs mknod more mount mtools ' +
					'mv netstat nice nl nohup nslookup open op passwd paste pathchk ping popd pr printcap ' +
					'printenv printf ps pushd pwd quota quotacheck quotactl ram rcp read readonly renice ' +
					'remsync rm rmdir rsync screen scp sdiff sed select seq set sftp shift shopt shutdown ' +
					'sleep sort source split ssh strace su sudo sum symlink sync tail tar tee test time ' +
					'times touch top traceroute trap tr true tsort tty type ulimit umask umount unalias ' +
					'uname unexpand uniq units unset unshar useradd usermod users uuencode uudecode v vdir ' +
					'vi watch wc whereis which who whoami Wget xargs yes';
	
	this.findMatches = function(regexList, code)
	{
		code = code.replace(/&gt;/g, '>').replace(/&lt;/g, '<');
		this.code = code;
		return SyntaxHighlighter.Highlighter.prototype.findMatches.apply(this, [regexList, code]);
	};

	this.regexList = [
		{ regex: SyntaxHighlighter.regexLib.singleLinePerlComments,		css: 'comments' },		// one line comments
		{ regex: SyntaxHighlighter.regexLib.doubleQuotedString,			css: 'string' },		// double quoted strings
		{ regex: SyntaxHighlighter.regexLib.singleQuotedString,			css: 'string' },		// single quoted strings
		{ regex: new RegExp(this.getKeywords(keywords), 'gm'),			css: 'keyword' },		// keywords
		{ regex: new RegExp(this.getKeywords(commands), 'gm'),			css: 'functions' }		// commands
		];
}

SyntaxHighlighter.brushes.Bash.prototype	= new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.Bash.aliases		= ['shell', 'Shell', 'bash', 'Bash'];


// For Vim
SyntaxHighlighter.brushes.Vim = function()
{
   var keywords =  'ab abbreviate abc abclear abo aboveleft al all arga argadd argd argdelete' +
        'argdo arge argedit argg argglobal argl arglocal ar args argu argument as' +
        'ascii bad badd ba ball bd bdelete be bel belowright bf bfirst bl blast bm' +
        'bmodified bn bnext bN bNext bo botright bp bprevious brea break breaka' +
        'breakadd breakd breakdel breakl breaklist br brewind bro browse bufdo b' +
        'buffer buffers bun bunload bw bwipeout ca cabbrev cabc cabclear caddb caddbuffer' +
        'cad caddexpr caddf caddfile cal call cat catch cb cbuffer cc ccl cclose cd ce center' +
        'cex cexpr cf cfile cfir cfirst cgetb cgetbuffer cgete cgetexpr cg cgetfile c change' +
        'changes chd chdir che checkpath checkt checktime cla clast cl clist clo close cmapc' +
        'cmapclear cnew cnewer cn cnext cN cNext cnf cnfile cNfcNfile cnorea cnoreabbrev col' +
        'colder colo colorscheme comc comclear comp compiler conf confirm con continue cope copen' +
        'co copy cpf cpfile cp cprevious cq cquit cr crewind cuna cunabbrev cu cunmap cw' +
        'cwindow debugg debuggreedy delc delcommand d delete delf delfunction delm' +
        'delmarks diffg diffget diffoff diffpatch diffpu diffput diffsplit diffthis diffu' +
        'diffupdate dig digraphs di display dj djump dl dlist dr drop ds dsearch dsp' +
        'dsplit earlier echoe echoerr echom echomsg echon e edit el else elsei elseif em' +
        'emenu emenu* endfo endfor endf endfunction endfun en endif endt endtry endw endwhile' +
        'ene enew ex exi exit exu exusage f file files filetype fina finally fin find' +
        'fini finish fir first fix fixdel fo fold foldc foldclose folddoc folddoclosed' +
        'foldd folddoopen foldo foldopen for fu fun function go goto gr grep grepa grepadd ha' +
        'hardcopy h help helpf helpfind helpg helpgrep helpt helptags hid hide his' +
        'history ia iabbrev iabc iabclear if ij ijump il ilist imapc imapclear inorea' +
        'inoreabbrev is isearch isp isplit iuna iunabbrev iu iunmap j join ju jumps k' +
        'keepalt keepj keepjumps kee keepmarks laddb laddbuffer lad laddexpr laddf' +
        'laddfile lan language la last later lb lbuffer lc lcd lch lchdir lcl lclose let ' +
        'left lefta leftabove lex lexpr lf lfile lfir lfirst lgetb lgetbuffer lgete' +
        'lgetexpr lg lgetfile lgr lgrep lgrepa lgrepadd lh lhelpgrep l list ll lla llast' +
        'lli llist lmak lmake lm lmap lmapc lmapclear lnew lnewer lne lnext lN lNext lnf' +
        'lnfile lNf lNfile ln lnoremap lo loadview loc lockmarks lockv lockvar lol lolder' +
        'lop lopen lpf lpfile lp lprevious lr lrewind ls lt ltag lu lunmap lv lvimgrep' +
        'lvimgrepa lvimgrepadd lw lwindow mak make ma mark marks mat match menut' +
        'menutranslate mk mkexrc mks mksession mksp mkspell mkvie mkview mkv mkvimrc mod' +
        'mode m move mzf mzfile mz mzscheme nbkey new n next N Next nmapc nmapclear noh' +
        'nohlsearch norea noreabbrev nu number nun nunmap omapc omapclear on only o open' +
        'opt options ou ounmap pc pclose ped pedit pe perl perld perldo po pop popu popu' +
        'popup pp ppop pre preserve prev previous p print P Print profd profdel prof' +
        'profile promptf promptfind promptr promptrepl ps psearch pta ptag ptf ptfirst' +
        'ptj ptjump ptl ptlast ptn ptnext ptN ptNext ptp ptprevious ptr ptrewind pts' +
        'ptselect pu put pw pwd pyf pyfile py python qa qall q quit quita quitall r read' +
        'rec recover redi redir red redo redr redraw redraws redrawstatus reg registers' +
        'res resize ret retab retu return rew rewind ri right rightb rightbelow rub ruby' +
        'rubyd rubydo rubyf rubyfile ru runtime rv rviminfo sal sall san sandbox sa' +
        'sargument sav saveas sba sball sbf sbfirst sbl sblast sbm sbmodified sbn sbnext' +
        'sbN sbNext sbp sbprevious sbr sbrewind sb sbuffer scripte scriptencoding scrip' +
        'scriptnames se set setf setfiletype setg setglobal setl setlocal sf sfind sfir' +
        'sfirst sh shell sign sil silent sim simalt sla slast sl sleep sm smagic sm smap' +
        'smapc smapclear sme smenu sn snext sN sNext sni sniff sno snomagic snor snoremap' +
        'snoreme snoremenu sor sort so source spelld spelldump spe spellgood spelli' +
        'spellinfo spellr spellrepall spellu spellundo spellw spellwrong sp split spr' +
        'sprevious sre srewind sta stag startg startgreplace star startinsert startr' +
        'startreplace stj stjump st stop stopi stopinsert sts stselect sun sunhide sunm' +
        'sunmap sus suspend sv sview syncbind t tab tabc tabclose tabd tabdo tabe tabedit' +
        'tabf tabfind tabfir tabfirst tabl tablast tabm tabmove tabnew tabn tabnext tabN' +
        'tabNext tabo tabonly tabp tabprevious tabr tabrewind tabs ta tag tags tc tcl' +
        'tcld tcldo tclf tclfile te tearoff tf tfirst th throw tj tjump tl tlast tm tm' +
        'tmenu tn tnext tN tNext to topleft tp tprevious tr trewind try ts tselect tu tu' +
        'tunmenu una unabbreviate u undo undoj undojoin undol undolist unh unhide unlo' +
        'unlockvar unm unmap up update verb verbose ve version vert vertical vie view vim' +
        'vimgrep vimgrepa vimgrepadd vi visual viu viusage vmapc vmapclear vne vnew vs' +
        'vsplit vu vunmap wa wall wh while winc wincmd windo winp winpos win winsize wn' +
        'wnext wN wNext wp wprevious wq wqa wqall w write ws wsverb wv wviminfo X xa xall' +
        'x xit xm xmap xmapc xmapclear xme xmenu XMLent XMLns xn xnoremap xnoreme' +
        'xnoremenu xu xunmap y yank';

    var commands = 'autocmd acd ai akm al aleph allowrevins altkeymap ambiwidth ambw anti antialias ar arab' +
        'arabic arabicshape ari arshape autochdir autoindent autoread autowrite' +
        'autowriteall aw awa background backspace backup backupcopy backupdir backupext' +
        'backupskip balloondelay ballooneval balloonexpr bdir bdlay beval bex bexpr bg bh' +
        'bin binary biosk bioskey bk bkc bl bomb breakat brk browsedir bs bsdir bsk bt' +
        'bufhidden buflisted buftype casemap cb ccv cd cdpath cedit cf cfu ch charconvert' +
        'ci cin cindent cink cinkeys cino cinoptions cinw cinwords clipboard cmdheight' +
        'cmdwinheight cmp cms co columns com comments commentstring compatible complete' +
        'completefunc completeopt confirm consk conskey copyindent cot cp cpo cpoptions' +
        'cpt cscopepathcomp cscopeprg cscopequickfix cscopetag cscopetagorder' +
        'cscopeverbose cspc csprg csqf cst csto csverb cuc cul cursorcolumn cursorline' +
        'cwh debug deco def define delcombine dex dg dict dictionary diff diffexpr' +
        'diffopt digraph dip dir directory display dy ea ead eadirection eb ed' +
        'edcompatible ef efm ei ek enc encoding endofline eol ep equalalways equalprg' +
        'errorbells errorfile errorformat esckeys et eventignore ex expandtab exrc fcl' +
        'fcs fdc fde fdi fdl fdls fdm fdn fdo fdt fen fenc fencs fex ff ffs fileencoding' +
        'fileencodings fileformat fileformats fillchars fk fkmap flp fml fmr fo' +
        'foldclose foldcolumn foldenable foldexpr foldignore foldlevel foldlevelstart' +
        'foldmarker foldmethod foldminlines foldnestmax foldopen foldtext formatexpr' +
        'formatlistpat formatoptions formatprg fp fs fsync ft gcr gd gdefault gfm gfn gfs' +
        'gfw ghr go gp grepformat grepprg gtl gtt guicursor guifont guifontset' +
        'guifontwide guiheadroom guioptions guipty guitablabel guitabtooltip helpfile' +
        'helpheight helplang hf hh hi hid hidden highlight history hk hkmap hkmapp hkp hl' +
        'hlg hls hlsearch ic icon iconstring ignorecase im imactivatekey imak imc' +
        'imcmdline imd imdisable imi iminsert ims imsearch inc include includeexpr' +
        'incsearch inde indentexpr indentkeys indk inex inf infercase insertmode is isf' +
        'isfname isi isident isk iskeyword isp isprint joinspaces js key keymap keymodel' +
        'keywordprg km kmp kp langmap langmenu laststatus lazyredraw lbr lcs linebreak' +
        'lines linespace lisp lispwords list listchars lm lmap loadplugins lpl ls lsp lw' +
        'lz ma macatsui magic makeef makeprg mat matchpairs matchtime maxcombine' +
        'maxfuncdepth maxmapdepth maxmem maxmempattern maxmemtot mco mef menuitems mfd mh' +
        'mis mkspellmem ml mls mm mmd mmp mmt mod modeline modelines modifiable modified' +
        'more mouse mousef mousefocus mousehide mousem mousemodel mouses mouseshape' +
        'mouset mousetime mp mps msm mzq mzquantum nf nrformats nu number numberwidth nuw' +
        'odev oft ofu omnifunc opendevice operatorfunc opfunc osfiletype pa para' +
        'paragraphs paste pastetoggle patchexpr patchmode path pdev penc pex pexpr pfn ph' +
        'pheader pi pm pmbcs pmbfn popt preserveindent previewheight previewwindow' +
        'printdevice printencoding printexpr printfont printheader printmbcharset' +
        'printmbfont printoptions prompt pt pumheight pvh pvw qe quoteescape readonly' +
        'remap report restorescreen revins ri rightleft rightleftcmd rl rlc ro rs rtp ru' +
        'ruf ruler rulerformat runtimepath sb sbo sbr sc scb scr scroll scrollbind' +
        'scrolljump scrolloff scrollopt scs sect sections secure sel selection selectmode' +
        'sessionoptions sft sh shcf shell shellcmdflag shellpipe shellquote shellredir' +
        'shellslash shelltemp shelltype shellxquote shiftround shiftwidth shm shortmess' +
        'shortname showbreak showcmd showfulltag showmatch showmode showtabline shq si' +
        'sidescroll sidescrolloff siso sj slm sm smartcase smartindent smarttab smc smd' +
        'sn so softtabstop sol sp spc spell spellcapcheck spellfile spelllang' +
        'spellsuggest spf spl splitbelow splitright spr sps sr srr ss ssl ssop st sta' +
        'stal startofline statusline stl stmp sts su sua suffixes suffixesadd sw swapfile' +
        'swapsync swb swf switchbuf sws sxq syn synmaxcol syntax ta tabline tabpagemax' +
        'tabstop tag tagbsearch taglength tagrelative tags tagstack tal tb tbi tbidi tbis' +
        'tbs tenc term termbidi termencoding terse textauto textmode textwidth tf tgst' +
        'thesaurus tildeop timeout timeoutlen title titlelen titleold titlestring tl tm' +
        'to toolbar toolbariconsize top tpm tr ts tsl tsr ttimeout ttimeoutlen ttm tty' +
        'ttybuiltin ttyfast ttym ttymouse ttyscroll ttytype tw tx uc ul undolevels' +
        'updatecount updatetime ut vb vbs vdir ve verbose verbosefile vfile vi viewdir' +
        'viewoptions viminfo virtualedit visualbell vop wa wak warn wb wc wcm wd' +
        'weirdinvert wfh wfw wh whichwrap wi wig wildchar wildcharm wildignore wildmenu' +
        'wildmode wildoptions wim winaltkeys window winfixheight winfixwidth winheight' +
        'winminheight winminwidth winwidth wiv wiw wm wmh wmnu wmw wop wrap wrapmargin' +
        'wrapscan write writeany writebackup writedelay ws ww noacd noai noakm' +
        'noallowrevins noaltkeymap noanti noantialias noar noarab noarabic noarabicshape' +
        'noari noarshape noautochdir noautoindent noautoread noautowrite noautowriteall' +
        'noaw noawa nobackup noballooneval nobeval nobin nobinary nobiosk nobioskey nobk' +
        'nobl nobomb nobuflisted nocf noci nocin nocindent nocompatible noconfirm noconsk' +
        'noconskey nocopyindent nocp nocscopetag nocscopeverbose nocst nocsverb nocuc' +
        'nocul nocursorcolumn nocursorline nodeco nodelcombine nodg nodiff nodigraph' +
        'nodisable noea noeb noed noedcompatible noek noendofline noeol noequalalways' +
        'noerrorbells noesckeys noet noex noexpandtab noexrc nofen nofk nofkmap' +
        'nofoldenable nogd nogdefault noguipty nohid nohidden nohk nohkmap nohkmapp nohkp' +
        'nohls nohlsearch noic noicon noignorecase noim noimc noimcmdline noimd' +
        'noincsearch noinf noinfercase noinsertmode nois nojoinspaces nojs nolazyredraw' +
        'nolbr nolinebreak nolisp nolist noloadplugins nolpl nolz noma nomacatsui nomagic' +
        'nomh noml nomod nomodeline nomodifiable nomodified nomore nomousef nomousefocus' +
        'nomousehide nonu nonumber noodev noopendevice nopaste nopi nopreserveindent' +
        'nopreviewwindow noprompt nopvw noreadonly noremap norestorescreen norevins nori' +
        'norightleft norightleftcmd norl norlc noro nors noru noruler nosb nosc noscb' +
        'noscrollbind noscs nosecure nosft noshellslash noshelltemp noshiftround' +
        'noshortname noshowcmd noshowfulltag noshowmatch noshowmode nosi nosm nosmartcase' +
        'nosmartindent nosmarttab nosmd nosn nosol nospell nosplitbelow nosplitright' +
        'nospr nosr nossl nosta nostartofline nostmp noswapfile noswf nota notagbsearch' +
        'notagrelative notagstack notbi notbidi notbs notermbidi noterse notextauto' +
        'notextmode notf notgst notildeop notimeout notitle noto notop notr nottimeout' +
        'nottybuiltin nottyfast notx novb novisualbell nowa nowarn nowb noweirdinvert' +
        'nowfh nowfw nowildmenu nowinfixheight nowinfixwidth nowiv nowmnu nowrap' +
        'nowrapscan nowrite nowriteany nowritebackup nows invacd invai invakm' +
        'invallowrevins invaltkeymap invanti invantialias invar invarab invarabic' +
        'invarabicshape invari invarshape invautochdir invautoindent invautoread' +
        'invautowrite invautowriteall invaw invawa invbackup invballooneval invbeval' +
        'invbin invbinary invbiosk invbioskey invbk invbl invbomb invbuflisted invcf' +
        'invci invcin invcindent invcompatible invconfirm invconsk invconskey' +
        'invcopyindent invcp invcscopetag invcscopeverbose invcst invcsverb invcuc invcul' +
        'invcursorcolumn invcursorline invdeco invdelcombine invdg invdiff invdigraph' +
        'invdisable invea inveb inved invedcompatible invek invendofline inveol' +
        'invequalalways inverrorbells invesckeys invet invex invexpandtab invexrc invfen' +
        'invfk invfkmap invfoldenable invgd invgdefault invguipty invhid invhidden invhk' +
        'invhkmap invhkmapp invhkp invhls invhlsearch invic invicon invignorecase invim' +
        'invimc invimcmdline invimd invincsearch invinf invinfercase invinsertmode invis' +
        'invjoinspaces invjs invlazyredraw invlbr invlinebreak invlisp invlist' +
        'invloadplugins invlpl invlz invma invmacatsui invmagic invmh invml invmod' +
        'invmodeline invmodifiable invmodified invmore invmousef invmousefocus' +
        'invmousehide invnu invnumber invodev invopendevice invpaste invpi' +
        'invpreserveindent invpreviewwindow invprompt invpvw invreadonly invremap' +
        'invrestorescreen invrevins invri invrightleft invrightleftcmd invrl invrlc invro' +
        'invrs invru invruler invsb invsc invscb invscrollbind invscs invsecure invsft' +
        'invshellslash invshelltemp invshiftround invshortname invshowcmd invshowfulltag' +
        'invshowmatch invshowmode invsi invsm invsmartcase invsmartindent invsmarttab' +
        'invsmd invsn invsol invspell invsplitbelow invsplitright invspr invsr invssl' +
        'invsta invstartofline invstmp invswapfile invswf invta invtagbsearch' +
        'invtagrelative invtagstack invtbi invtbidi invtbs invtermbidi invterse' +
        'invtextauto invtextmode invtf invtgst invtildeop invtimeout invtitle invto' +
        'invtop invtr invttimeout invttybuiltin invttyfast invtx invvb invvisualbell' +
        'invwa invwarn invwb invweirdinvert invwfh invwfw invwildmenu invwinfixheight' +
        'invwinfixwidth invwiv invwmnu invwrap invwrapscan invwrite invwriteany' +
        'invwritebackup invws t_AB t_AF t_al t_AL t_bc t_cd t_ce t_Ce t_cl t_cm t_Co t_cs' +
        't_Cs t_CS t_CV t_da t_db t_dl t_DL t_EI t_F1 t_F2 t_F3 t_F4 t_F5 t_F6 t_F7 t_F8' +
        't_F9 t_fs t_IE t_IS t_k1 t_K1 t_k2 t_k3 t_K3 t_k4 t_K4 t_k5 t_K5 t_k6 t_K6 t_k7' +
        't_K7 t_k8 t_K8 t_k9 t_K9 t_KA t_kb t_kB t_KB t_KC t_kd t_kD t_KD t_ke t_KE t_KF' +
        't_KG t_kh t_KH t_kI t_KI t_KJ t_KK t_kl t_KL t_kN t_kP t_kr t_ks t_ku t_le t_mb' +
        't_md t_me t_mr t_ms t_nd t_op t_RI t_RV t_Sb t_se t_Sf t_SI t_so t_sr t_te t_ti' +
        't_ts t_ue t_us t_ut t_vb t_ve t_vi t_vs t_WP t_WS t_xs t_ZH t_ZR ';

  this.regexList = [
    { regex: /^\s*\".*$/gm,    css: 'comments' },    // one line comments
    { regex: SyntaxHighlighter.regexLib.doubleQuotedString,      css: 'string' },    // double quoted strings
    { regex: new RegExp(this.getKeywords(keywords), 'gmi'),      css: 'keyword' },    // keywords
    { regex: new RegExp(this.getKeywords(commands), 'gmi'),      css: 'functions' }    // commands
    ];
}

SyntaxHighlighter.brushes.Vim.prototype  = new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.Vim.aliases    = ['vim', 'Vim'];


// For JavaScript
SyntaxHighlighter.brushes.JScript = function()
{
	var keywords =	'break case catch continue ' +
					'default delete do else false  ' +
					'for function if in instanceof ' +
					'new null return super switch ' +
					'this throw true try typeof var while with';

	this.regexList = [
		{ regex: SyntaxHighlighter.regexLib.singleLineCComments,	css: 'comments' },			// one line comments
		{ regex: SyntaxHighlighter.regexLib.multiLineCComments,		css: 'comments' },			// multiline comments
		{ regex: SyntaxHighlighter.regexLib.doubleQuotedString,		css: 'string' },			// double quoted strings
		{ regex: SyntaxHighlighter.regexLib.singleQuotedString,		css: 'string' },			// single quoted strings
		{ regex: /\s*#.*/gm,										css: 'preprocessor' },		// preprocessor tags like #region and #endregion
		{ regex: new RegExp(this.getKeywords(keywords), 'gm'),		css: 'keyword' }			// keywords
		];
	
	this.forHtmlScript(SyntaxHighlighter.regexLib.scriptScriptTags);
};

SyntaxHighlighter.brushes.JScript.prototype	= new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.JScript.aliases	= ['js', 'JS', 'jscript', 'javascript', 'JavaScript'];


// For CSS
SyntaxHighlighter.brushes.CSS = function()
{
	function getKeywordsCSS(str)
	{
		return '\\b([a-z_]|)' + str.replace(/ /g, '(?=:)\\b|\\b([a-z_\\*]|\\*|)') + '(?=:)\\b';
	};
	
	function getValuesCSS(str)
	{
		return '\\b' + str.replace(/ /g, '(?!-)(?!:)\\b|\\b()') + '\:\\b';
	};

	var keywords =	'ascent azimuth background-attachment background-color background-image background-position ' +
					'background-repeat background baseline bbox border-collapse border-color border-spacing border-style border-top ' +
					'border-right border-bottom border-left border-top-color border-right-color border-bottom-color border-left-color ' +
					'border-top-style border-right-style border-bottom-style border-left-style border-top-width border-right-width ' +
					'border-bottom-width border-left-width border-width border bottom cap-height caption-side centerline clear clip color ' +
					'content counter-increment counter-reset cue-after cue-before cue cursor definition-src descent direction display ' +
					'elevation empty-cells float font-size-adjust font-family font-size font-stretch font-style font-variant font-weight font ' +
					'height left letter-spacing line-height list-style-image list-style-position list-style-type list-style margin-top ' +
					'margin-right margin-bottom margin-left margin marker-offset marks mathline max-height max-width min-height min-width orphans ' +
					'outline-color outline-style outline-width outline overflow padding-top padding-right padding-bottom padding-left padding page ' +
					'page-break-after page-break-before page-break-inside pause pause-after pause-before pitch pitch-range play-during position ' +
					'quotes right richness size slope src speak-header speak-numeral speak-punctuation speak speech-rate stemh stemv stress ' +
					'table-layout text-align top text-decoration text-indent text-shadow text-transform unicode-bidi unicode-range units-per-em ' +
					'vertical-align visibility voice-family volume white-space widows width widths word-spacing x-height z-index';

	var values =	'above absolute all always aqua armenian attr aural auto avoid baseline behind below bidi-override black blink block blue bold bolder '+
					'both bottom braille capitalize caption center center-left center-right circle close-quote code collapse compact condensed '+
					'continuous counter counters crop cross crosshair cursive dashed decimal decimal-leading-zero default digits disc dotted double '+
					'embed embossed e-resize expanded extra-condensed extra-expanded fantasy far-left far-right fast faster fixed format fuchsia '+
					'gray green groove handheld hebrew help hidden hide high higher icon inline-table inline inset inside invert italic '+
					'justify landscape large larger left-side left leftwards level lighter lime line-through list-item local loud lower-alpha '+
					'lowercase lower-greek lower-latin lower-roman lower low ltr marker maroon medium message-box middle mix move narrower '+
					'navy ne-resize no-close-quote none no-open-quote no-repeat normal nowrap n-resize nw-resize oblique olive once open-quote outset '+
					'outside overline pointer portrait pre print projection purple red relative repeat repeat-x repeat-y rgb ridge right right-side '+
					'rightwards rtl run-in screen scroll semi-condensed semi-expanded separate se-resize show silent silver slower slow '+
					'small small-caps small-caption smaller soft solid speech spell-out square s-resize static status-bar sub super sw-resize '+
					'table-caption table-cell table-column table-column-group table-footer-group table-header-group table-row table-row-group teal '+
					'text-bottom text-top thick thin top transparent tty tv ultra-condensed ultra-expanded underline upper-alpha uppercase upper-latin '+
					'upper-roman url visible wait white wider w-resize x-fast x-high x-large x-loud x-low x-slow x-small x-soft xx-large xx-small yellow';

	var fonts =		'[mM]onospace [tT]ahoma [vV]erdana [aA]rial [hH]elvetica [sS]ans-serif [sS]erif [cC]ourier mono sans serif';
	
	this.regexList = [
		{ regex: SyntaxHighlighter.regexLib.multiLineCComments,		css: 'comments' },	// multiline comments
		{ regex: SyntaxHighlighter.regexLib.doubleQuotedString,		css: 'string' },	// double quoted strings
		{ regex: SyntaxHighlighter.regexLib.singleQuotedString,		css: 'string' },	// single quoted strings
		{ regex: /\#[a-fA-F0-9]{3,6}/g,								css: 'value' },		// html colors
		{ regex: /(-?\d+)(\.\d+)?(px|em|pt|\:|\%|)/g,				css: 'value' },		// sizes
		{ regex: /!important/g,										css: 'color3' },	// !important
		{ regex: new RegExp(getKeywordsCSS(keywords), 'gm'),		css: 'keyword' },	// keywords
		{ regex: new RegExp(getValuesCSS(values), 'g'),				css: 'value' },		// values
		{ regex: new RegExp(this.getKeywords(fonts), 'g'),			css: 'color1' }		// fonts
		];

	this.forHtmlScript({ 
		left: /(&lt;|<)\s*style.*?(&gt;|>)/gi, 
		right: /(&lt;|<)\/\s*style\s*(&gt;|>)/gi 
		});
};

SyntaxHighlighter.brushes.CSS.prototype	= new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.CSS.aliases	= ['css', 'CSS'];


// For XML/HTML
SyntaxHighlighter.brushes.Xml = function()
{
	function process(match, regexInfo)
	{
		var constructor = SyntaxHighlighter.Match,
			code = match[0],
			tag = new XRegExp('(&lt;|<)[\\s\\/\\?]*(?<name>[:\\w-\\.]+)', 'xg').exec(code),
			result = []
			;
		
		if (match.attributes != null) 
		{
			var attributes,
				regex = new XRegExp('(?<name> [\\w:\\-\\.]+)' +
									'\\s*=\\s*' +
									'(?<value> ".*?"|\'.*?\'|\\w+)',
									'xg');

			while ((attributes = regex.exec(code)) != null) 
			{
				result.push(new constructor(attributes.name, match.index + attributes.index, 'color1'));
				result.push(new constructor(attributes.value, match.index + attributes.index + attributes[0].indexOf(attributes.value), 'string'));
			}
		}

		if (tag != null)
			result.push(
				new constructor(tag.name, match.index + tag[0].indexOf(tag.name), 'keyword')
			);

		return result;
	}
	
	this.regexList = [
		{ regex: new XRegExp('(\\&lt;|<)\\!\\[[\\w\\s]*?\\[(.|\\s)*?\\]\\](\\&gt;|>)', 'gm'),			css: 'color2' },	// <![ ... [ ... ]]>
		{ regex: SyntaxHighlighter.regexLib.xmlComments,												css: 'comments' },	// <!-- ... -->
		{ regex: new XRegExp('(&lt;|<)[\\s\\/\\?]*(\\w+)(?<attributes>.*?)[\\s\\/\\?]*(&gt;|>)', 'sg'), func: process }
	];
};

SyntaxHighlighter.brushes.Xml.prototype	= new SyntaxHighlighter.Highlighter();
SyntaxHighlighter.brushes.Xml.aliases	= ['xml', 'XML', 'html', 'HTML'];
