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
syn keyword vizMethods ActionChannelCount ActionString Active ActiveExt Actor
syn keyword vizMethods AddContainer AddDirector AddHandler AddHostToGroup
syn keyword vizMethods AddKeyframe AddLogMessage AddScreenOffset AddTrace Alpha
syn keyword vizMethods Alpha8 AlphaClearValue AlphaValue Ambient AnimationObject
syn keyword vizMethods Append Attenuation AutoAlpha AutoKeyActive AutoKeyPosition
syn keyword vizMethods AutoRun BackFace BackScene BackgroundColor Blue Blue8
syn keyword vizMethods BlurWidth BoolValue CallButtonDownForTopObjectsOnly
syn keyword vizMethods CallEnterLeaveForBackgroundObjects CallEnterLeaveForTopObjectsOnly
syn keyword vizMethods CallMouseMoveForBackgroundObjects CallMouseMoveForTopObjectsOnly
syn keyword vizMethods Center Channel CheckPatternOrientation ChildContainer
syn keyword vizMethods ChildContainerCount ChildDirector ClipChannelID Color
syn keyword vizMethods ColorValue CommandName ContainsKey ContainsMouseCursor
syn keyword vizMethods CopyTo CopyToDirector CreateAlpha CreateExpert CreateFunction
syn keyword vizMethods CreateGeometry CreateGeometryBGL CreateGlow CreateHDR
syn keyword vizMethods CreateInfoText CreateKey CreateMaterial CreateRootContainer
syn keyword vizMethods CreateRootDirector CreateTexture CreateTextureBGL
syn keyword vizMethods CropBottom CropLeft CropRight CropTop CurrentCamera
syn keyword vizMethods CurrentCameraIndex CurrentDirectoryPath CurrentFrame
syn keyword vizMethods CurrentFramePending CurrentRefreshRate Cx CxExt Cy CyExt
syn keyword vizMethods DOFEventDistribution DayOfMonth DayOfWeek DayOfYear
syn keyword vizMethods DecoupleExternal Delete DeleteFile DeleteFunction DeleteKey
syn keyword vizMethods DeleteKeyframe Diffuse Direction Director DirectoryExists
syn keyword vizMethods DistanceToLine DistanceToPlane DistanceToPlaneSigned
syn keyword vizMethods DrawKey DrawRGB DrawTexture Duration DurationPending
syn keyword vizMethods EffectType EffectValue EffectValueDouble Emission
syn keyword vizMethods EndsWith EnvironmentType Erase EraseChar Event
syn keyword vizMethods EventChannel EventDirection EventDuration EventValue
syn keyword vizMethods ExactPicking Expert ExploreDocument FaceOutputNormal
syn keyword vizMethods Field FileExists Find FindActionChannel FindChannel
syn keyword vizMethods FindChannelOfObject FindContainer FindDirector
syn keyword vizMethods FindFirstNotOf FindFirstOf FindKeyframe
syn keyword vizMethods FindKeyframeOfObject FindLastNotOf FindLastOf
syn keyword vizMethods FindOrCreateChannelOfObject FindSiblingSubContainer
syn keyword vizMethods FindSubContainer FindSubDirector FindSuperContainer
syn keyword vizMethods FirstChildContainer FirstKeyframe FloatValue FocalPlane
syn keyword vizMethods Fovx FovxExt Fovy FovyExt FrameIn FrameInActive
syn keyword vizMethods FrameInOut FrameInOutActive FrameInOutPending
syn keyword vizMethods FrameInPending FrameOut FrameOutActive FrameOutPending
syn keyword vizMethods FrontScene Frustum FullString Geometry Get Get2
syn keyword vizMethods GetActionChannel GetAnimationChannel GetAnimationChannels
syn keyword vizMethods GetBezierHandle GetBoundingBox GetBoundingBoxDimensions
syn keyword vizMethods GetCamera GetChannels GetChannelsOfObject GetChar
syn keyword vizMethods GetChildContainerByIndex
syn keyword vizMethods GetChildContainerContainingMouseCursor GetClipChannel
syn keyword vizMethods GetClipName GetClipNameActive GetClipNamePending
syn keyword vizMethods GetContainerAndSubContainers GetDeterminant GetDevice
syn keyword vizMethods GetDirector GetDirectorOfMergedGeometry
syn keyword vizMethods GetDirectoryContent GetElapsedTime GetField2
syn keyword vizMethods GetFirstActiveChildContainer GetFunctionPluginInstance
syn keyword vizMethods GetGeometryPluginInstance GetGrid
syn keyword vizMethods GetIndexOfFirstActiveChildContainer GetKeyframe
syn keyword vizMethods GetKeyframes GetKeys GetLight GetLiveChannel
syn keyword vizMethods GetLocalIndex GetNumberOfAnimationChannels
syn keyword vizMethods GetNumberOfClipChannel GetNumberOfLiveChannel
syn keyword vizMethods GetNumberOfTimecodeSources GetParameterBool
syn keyword vizMethods GetParameterColor GetParameterContainer
syn keyword vizMethods GetParameterDouble GetParameterInt GetParameterString
syn keyword vizMethods GetRGB GetRGB8 GetRGBA GetRGBA8
syn keyword vizMethods GetRegisterChangedClipFrame GetRegisterChangedClipMode
syn keyword vizMethods GetRegisterChangedClipModePending GetReportValues
syn keyword vizMethods GetReportValuesPending GetRotation GetRotationXYZ
syn keyword vizMethods GetRotationZXY GetScaling GetScaling2
syn keyword vizMethods GetScenePluginInstance GetScreenBounds
syn keyword vizMethods GetScreenPointToGeomSurface GetScreenPositionOrtho
syn keyword vizMethods GetScreenSizeOrtho GetShaderPluginInstance GetString
syn keyword vizMethods GetSubstring GetTimecode GetTimecodeByIndex GetTouch
syn keyword vizMethods GetTrace GetTraceByIndex GetTransformedBoundingBox
syn keyword vizMethods GetTransformedBoundingBoxDimensions GetTranslation
syn keyword vizMethods GetType GetUVCoordinatesOfScreenPoint GetUnlockedGrid
syn keyword vizMethods Glow Green Green8 HDR HandlePatterns HandleTaps
syn keyword vizMethods HasAnimationChannels Height HitContainer HostName Hour
syn keyword vizMethods IPAddressString Id Image Index InfoText Insert IntValue
syn keyword vizMethods Invert IsAnimated IsAnimationRunning IsBacklayer
syn keyword vizMethods IsClipLoaded IsClipLoadedActive IsClipLoadedPending
syn keyword vizMethods IsFrontlayer IsKeyDown IsMainlayer IsOnTop
syn keyword vizMethods IsPostRecording IsScreenPointInBoundingBox
syn keyword vizMethods IsVertexInBoundingBox Join Kerning Key KeyframeCount
syn keyword vizMethods LBound LButtonState LastChildContainer LastKeyframe
syn keyword vizMethods LastTouch Left LeftAngle LeftInterpolationMode LeftWeight
syn keyword vizMethods Length LineAntialiasing LineSpacing Lit LiveChannelID
syn keyword vizMethods LoadBackScene LoadFromDb LoadFromDbAsync LoadFrontScene
syn keyword vizMethods LoadMainScene LoadTextFile LocalPosToScreenPos
syn keyword vizMethods LocalPosToWorldPos Location LocationPath LockMode Locked
syn keyword vizMethods LoopMode LoopModeActive LoopModePending MButtonState
syn keyword vizMethods MTAlignGrid MTDOFEventDistribution MTGrid MTHasMomentum
syn keyword vizMethods MTObjectPlane MTRegister MTRegisterEx MTRegistered
syn keyword vizMethods MTSetPosition MTTouched MTUseCenter MainScene Map
syn keyword vizMethods MapPosition MapRotation MapScaling MapType Match Material
syn keyword vizMethods MaterialValue Matrix Merged MergedChildContainer
syn keyword vizMethods MergedParentContainer Minute Mirror MirrorAroundLine
syn keyword vizMethods MirrorAroundVector ModeOnLoadError ModeOnLoadError_FLUSH
syn keyword vizMethods ModeOnLoadError_NONE ModeOnLoadError_PAUSE
syn keyword vizMethods ModeOnLoadError_STOP Month MouseOverIPDefineServer
syn keyword vizMethods MouseOverIPQuitServer MouseOverIPRegister
syn keyword vizMethods MouseOverIPUndefineAllServers MouseOverIPUndefineServer
syn keyword vizMethods MouseOverIPUnregister MouseOverIPUnregisterAll MouseX
syn keyword vizMethods MouseY MoveAllChannelsToDirector MoveTo MoveToContainer
syn keyword vizMethods MoveToDirector MoveToKeepTransformation Name
syn keyword vizMethods NextContainer NextDirector NextKeyframe Norm Normalize
syn keyword vizMethods NumActionChannels NumAnimationChannels NumAxes
syn keyword vizMethods NumChannels NumChildContainers NumKeyframes NumberOfAxes
syn keyword vizMethods ObjectStrength Offset Open OpenDocument Orientation Ortho
syn keyword vizMethods Outline OutputAspect OutputFieldDominance
syn keyword vizMethods OutputInterlaced OutputRefreshRate OutputRetraceCounter
syn keyword vizMethods OutputRingbufferSize OutputRingbufferUsed OutputSystem
syn keyword vizMethods PadLeft PadRight Pan PanExt ParentContainer
syn keyword vizMethods ParentDirector PathHandle PatternId PendingClipSupported
syn keyword vizMethods Perspective Play PlayActive PlayBackSpeed
syn keyword vizMethods PlayBackSpeedActive PlayBackSpeedPending PlayMode
syn keyword vizMethods PlayModePending PlayMode_ERROR PlayMode_NONE
syn keyword vizMethods PlayMode_PLAY PlayMode_PLAY_PENDING PlayMode_SCRUB
syn keyword vizMethods PlayMode_SCRUB_EOF PlayMode_STOP PlayPending PlaySound
syn keyword vizMethods PlayerStatus_PENDINGREADY PluginInstance PluginName PosX
syn keyword vizMethods PosY Position PositionExt PositionTrackingActive
syn keyword vizMethods PositionTrackingContainer PostCurrentTime
syn keyword vizMethods PostFieldDominance PostLoopActive PostLoopCounter
syn keyword vizMethods PostRetraceCounter PostSwingActive PreLoopActive
syn keyword vizMethods PreLoopCounter PreSwingActive Prepend Pressure
syn keyword vizMethods PreviousContainer PreviousDirector PreviousKeyframe
syn keyword vizMethods Project ProjectOnLine ProjectOnVector ProjectionMatrix
syn keyword vizMethods Push PushButton QualityType RButtonState RFind Recognizer
syn keyword vizMethods Red Red8 RefreshRate RegisterChangedCallback
syn keyword vizMethods RemoveHandler RemoveTrace RenderEditorHeight
syn keyword vizMethods RenderEditorWidth RenderMode RenderWindowHeight
syn keyword vizMethods RenderWindowWidth RepeatMode RepeatModeActive
syn keyword vizMethods RepeatModePending RepeatMode_FIELD RepeatMode_FRAME
syn keyword vizMethods RepeatMode_NONE Replace ReplaceChar Reverse ReverseFields
syn keyword vizMethods ReverseFieldsActive ReverseFieldsPending Rgb Right
syn keyword vizMethods RightAngle RightInterpolationMode RightWeight
syn keyword vizMethods RootContainer RootDirector Rotate RotateX RotateY RotateZ
syn keyword vizMethods Rotation RotationTrackingActive RotationTrackingContainer
syn keyword vizMethods SaveTextFile SaveToDb SaveToDbAsync Scale Scaling Scene
syn keyword vizMethods ScreenAbsoluteOffsetToLocalPlaneXYOffset
syn keyword vizMethods ScreenAbsoluteOffsetToLocalPlaneXZOffset
syn keyword vizMethods ScreenAbsoluteOffsetToLocalPlaneYZOffset ScreenHeight
syn keyword vizMethods ScreenOffsetToContainerOffset
syn keyword vizMethods ScreenOffsetToLocalPlaneXYOffset
syn keyword vizMethods ScreenOffsetToLocalPlaneXZOffset
syn keyword vizMethods ScreenOffsetToLocalPlaneYZOffset
syn keyword vizMethods ScreenOffsetToWorldOffset ScreenPosToLocalGrid
syn keyword vizMethods ScreenPosToLocalPlaneXY ScreenPosToLocalPlaneXZ
syn keyword vizMethods ScreenPosToLocalPlaneYZ ScreenPosToLocalPos
syn keyword vizMethods ScreenPosToWorldGrid ScreenPosToWorldPos ScreenWidth
syn keyword vizMethods Script ScriptPluginInstance ScriptSettings Scrub
syn keyword vizMethods ScrubActive ScrubPending Second SendCommand
syn keyword vizMethods SendRemoteCommand SendVizCommandToHostGroup
syn keyword vizMethods SeparateSpecular SetCenterPositionLocked
syn keyword vizMethods SetCenterScreenGridPositionLocked
syn keyword vizMethods SetCenterScreenPositionLocked SetClipName
syn keyword vizMethods SetClipNameBack2Back SetClipNameBack2BackEx SetClipNameEx
syn keyword vizMethods SetClipNamePending SetClipNamePendingEx SetParameterBool
syn keyword vizMethods SetParameterColor SetParameterContainer
syn keyword vizMethods SetParameterDouble SetParameterInt SetParameterString
syn keyword vizMethods SetRGB SetRGB8 SetRGBA SetRGBA8
syn keyword vizMethods SetRegisterChangedClipFrame SetRegisterChangedClipMode
syn keyword vizMethods SetRegisterChangedClipModePending
syn keyword vizMethods SetRegisterChangedPlayerStatus SetScreenPositionOrtho
syn keyword vizMethods SetScreenSizeOrtho ShadeModel SharpenValue
syn keyword vizMethods SharpenValueDouble Shininess Show ShowMouseCursor
syn keyword vizMethods ShowOneChildContainer Size Sort Source Specular Split
syn keyword vizMethods SquaredNorm Stage StartApplication StartsWith
syn keyword vizMethods StopAnimation Strength String Substitute System TclSplit
syn keyword vizMethods TcpSend TcpSendAsync TcpSendAsyncStatus Text Texture
syn keyword vizMethods TextureUnit Textured Tilt TiltExt Time Timestamp ToString
syn keyword vizMethods TotalOffset TotalSeconds TouchCount Trace TraceCount
syn keyword vizMethods Transform Translate TransparancyMode Twist TwistExt
syn keyword vizMethods TwoSidedLighting Type UBound Unproject
syn keyword vizMethods UnregisterChangedCallback UpscaleLuma UpscaleLumaActive
syn keyword vizMethods UpscaleLumaPending UseColor Uuid Valid Value
syn keyword vizMethods VerticalOrientation VideoHeight VideoWidth
syn keyword vizMethods VideooutInputRetraceCounter VideooutOutputRetraceCounter
syn keyword vizMethods VideooutPropagationDelay VideooutRetraceCounter View
syn keyword vizMethods ViewMatrix VizCommunication VizId Width Wireframe
syn keyword vizMethods WireframeWidth WordSpacing WorldPosToLocalPos
syn keyword vizMethods WorldPosToScreenPos WrapType X XyzValue Y Year Z ZBuffer
syn keyword vizMethods x xy xyz y z

" Viz 3 Script: keywords
syn keyword vizKeyword As ByRef ByVal Case Dim Do Each Else ElseIf End
syn keyword vizKeyword Exit For Function If In Is Loop Next Null Select
syn keyword vizKeyword Step Structure Sub Then This To Until While

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
