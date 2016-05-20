" Vim syntax file
" Language:	Viz Script
" Maintainer:	Jinghui Hu <hujinghui@buaa.edu.cn>
" Former Maintainer:	 Tim Chase <vb.vim@tim.thechases.com>
"                        Robert M. Cortopassi <cortopar@mindspring.com>
" Last Change:
"   2015 May 20  First Commit
"   2005 May 25  Synched with work by Thomas Barthel
"   2004 May 30  Added a few keywords

" This was thrown together after seeing numerous requests on the
" VIM and VIM-DEV mailing lists.  It is by no means complete.
" Send comments, suggestions and requests to the maintainer.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Viz Script is case insensitive
syn case ignore

" Viz 3 Script: Operator
syn keyword vizOperator Cross Mod Not And Or Xor
syn match vizOperator "[()+.,\-/*=&]"
syn match vizOperator "[<>]=\="
syn match vizOperator "<>"
syn match vizOperator "\s\+_$"

syn keyword vizBoolean  True False
syn keyword vizConst Null Nothing

syn keyword vizConditional If Then ElseIf Else Select Case

syn keyword vizRepeat Do For ForEach Loop Next
syn keyword vizRepeat Step To Until Wend While

" Viz 3 Script: Callback Procedures
syn keyword vizEvents OnInitParameters OnInit OnEnter OnLeave
syn keyword vizEvents OnEnterSubContainer OnLeaveSubContainer
syn keyword vizEvents OnExecPerField OnExecAction OnParameterChanged
syn keyword vizEvents OnRequestStatusUpdate OnGuiStatus
syn keyword vizEvents OnKeyDown OnKeyUp
syn keyword vizEvents OnButtonDown6DOF OnButtonUp6DOF OnMove6DOF
syn keyword vizEvents OnMoveRelative6DOF OnScale6DOF
syn keyword vizEvents OnMTHit OnMTMenu OnMTControlPZR2D
syn keyword vizEvents OnMTControlButton OnMTControlInactive OnTouchTrace
syn keyword vizEvents OnGesture OnMouseMove
syn keyword vizEvents OnLButtonDown OnMButtonDown OnRButtonDown
syn keyword vizEvents OnLButtonUp OnMButtonUp OnRButtonUp
syn keyword vizEvents OnMouseWheel OnSharedMemoryVariableChanged
syn keyword vizEvents OnSharedMemoryVariableDeleted OnGeometryChanged

" Viz 3 Script: Global Procedures
syn keyword vizFunction Abs Acos AngleBetweenVectors Asc Asin Atan Atan2
syn keyword vizFunction CBool CColor CDbl Ceil Chr CInt Cos Cosh CStr CTrace
syn keyword vizFunction CUuid CVertex Determinant Distance Distance2
syn keyword vizFunction DoubleToString Exp Fix Floor GetCurrentTime GetParameterBool
syn keyword vizFunction GetParameterColor GetParameterContainer GetParameterDouble
syn keyword vizFunction GetParameterInt GetParameterString GetTickCount Int IntToString
syn keyword vizFunction Len LineLineIntersection Log Max Min PlaneLineIntersection
syn keyword vizFunction Println Random RegisterDirSelector RegisterFileSelector
syn keyword vizFunction RegisterInfoText RegisterParameterBool RegisterParameterColor
syn keyword vizFunction RegisterParameterContainer RegisterParameterDouble
syn keyword vizFunction RegisterParameterDropDown RegisterParameterHList
syn keyword vizFunction RegisterParameterImage RegisterParameterInt RegisterParameterList
syn keyword vizFunction RegisterParameterSliderDouble RegisterParameterSliderInt
syn keyword vizFunction RegisterParameterString RegisterParameterText
syn keyword vizFunction RegisterPluginVersion RegisterPushButton RegisterRadioButton
syn keyword vizFunction Round SendGuiParameterShow SendGuiParameterUpdate
syn keyword vizFunction SendGuiRefresh SendGuiStatus SetAnimateParameter
syn keyword vizFunction SetHideParameter Sign Sin Sinh Sqr Sqrt Tan TriangleArea
syn keyword vizFunction TriangleCenter UpdateGuiParameterDoubleDefMinMax
syn keyword vizFunction UpdateGuiParameterEntries UpdateGuiParameterIntDefMinMax
syn keyword vizFunction IsKeyDown IsLButtonDown IsMButtonDown IsRButtonDown
syn keyword vizFunction SendCommand SendRemoteCommand TcpSend

" Viz 3 Script: member methods
" Alpha
syn keyword vizMethods FindChannelOfObject FindKeyframeOfObject FindOrCreateChannelOfObject
syn keyword vizMethods GetChannelsOfObject IsAnimated SetChanged
" Array
syn keyword vizMethods Clear Erase Insert Pop Push Sort
" Base
syn keyword vizMethods FindChannelOfObject FindKeyframeOfObject FindOrCreateChannelOfObject
syn keyword vizMethods GetChannelsOfObject IsAnimated SetChanged
" Scene
syn keyword vizMethods AddLogMessage CreateRootContainer FindChannelOfObject
syn keyword vizMethods FindContainer FindKeyframeOfObject FindOrCreateChannelOfObject
syn keyword vizMethods GetCamera GetChannelsOfObject GetGrid GetLight GetScenePluginInstance
syn keyword vizMethods GetUnlockedGrid IsAnimated IsBacklayer IsFrontlayer IsMainlayer
syn keyword vizMethods ScreenPosToWorldGrid ScreenPosToWorldPos SetChanged UpdateSceneTree
syn keyword vizMethods WorldPosToScreenPos

" Viz 3 Script: keywords
syn keyword vizKeyword As ByRef ByVal Case Dim Do Each Else ElseIf End
syn keyword vizKeyword Exit For Function If In Is Loop Next Null Select
syn keyword vizKeyword Step Structure Sub Then To Until While

syn keyword vizTodo contained	TODO

" Viz 3 Script: Datatypes
syn keyword vizTypes Alpha Array Base BezierHandle Boolean Camera Center
syn keyword vizTypes Channel ClipChannel Color Container DateTime Director
syn keyword vizTypes Double Expert Geometry Gesture GestureRecognizer Glow
syn keyword vizTypes Grid HDR Image InfoText Integer Key Keyframe Light
syn keyword vizTypes LiveChannel Material Matrix PluginInstance Position
syn keyword vizTypes Rotation Scaling Scene Script ScriptSettings SharedMemory
syn keyword vizTypes Stage String StringMap System Texture Timecode Touch
syn keyword vizTypes Trace Uuid Variant Vertex VizCommunication


"Numbers
"integer number, or floating point number without a dot.
syn match vizNumber "\<\d\+\>"
"floating point number, with dot
syn match vizNumber "\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match vizNumber "\.\d\+\>"
"syn match  vizNumber		"{[[:xdigit:]-]\+}\|&[hH][[:xdigit:]]\+&"
"syn match  vizNumber		":[[:xdigit:]]\+"
"syn match  vizNumber		"[-+]\=\<\d\+\>"
syn match  vizFloat		"[-+]\=\<\d\+[eE][\-+]\=\d\+"
syn match  vizFloat		"[-+]\=\<\d\+\.\d*\([eE][\-+]\=\d\+\)\="
syn match  vizFloat		"[-+]\=\<\.\d\+\([eE][\-+]\=\d\+\)\="

" String and Character contstants
syn region  vizString		start=+"+  end=+"\|$+
syn region  vizComment		start="\(^\|\s\)REM\s" end="$" contains=vizTodo
syn region  vizComment		start="\(^\|\s\)\'"   end="$" contains=vizTodo
syn match   vizLineNumber	"^\d\+\(\s\|$\)"
syn match   vizTypeSpecifier  "[a-zA-Z0-9][\$%&!#]"ms=s+1
syn match   vizTypeSpecifier  "#[a-zA-Z0-9]"me=e-1

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_viz_syntax_inits")
	if version < 508
		let did_viz_syntax_inits = 1
		command -nargs=+ HiLink hi link <args>
	else
		command -nargs=+ HiLink hi def link <args>
	endif

	HiLink vizBoolean	Boolean
	HiLink vizLineNumber	Comment
	HiLink vizComment	Comment
	HiLink vizConditional	Conditional
	HiLink vizConst		Constant
	HiLink vizError		Error
	HiLink vizFunction	Identifier
	HiLink vizNumber	Number
	HiLink vizFloat		Float
	HiLink vizMethods	Identifier
	HiLink vizOperator	Operator
	HiLink vizRepeat	Repeat
	HiLink vizString	String
	HiLink vizStatement	Statement
	HiLink vizKeyword	Statement
	HiLink vizEvents	PreProc
	HiLink vizTodo		Todo
	HiLink vizTypes		Type
	HiLink vizTypeSpecifier	Type

	delcommand HiLink
endif

let b:current_syntax = "viz"

" vim: ts=8
