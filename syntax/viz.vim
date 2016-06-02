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
syn keyword vizMethods AnsiToUtf8 Append Attenuation AutoAlpha AutoKeyActive
syn keyword vizMethods AutoKeyPosition AutoRun BackFace BackgroundColor
syn keyword vizMethods BackScene Blue Blue8 BlurWidth BoolValue
syn keyword vizMethods CallButtonDownForTopObjectsOnly
syn keyword vizMethods CallEnterLeaveForBackgroundObjects
syn keyword vizMethods CallEnterLeaveForTopObjectsOnly
syn keyword vizMethods CallMouseMoveForBackgroundObjects
syn keyword vizMethods CallMouseMoveForTopObjectsOnly Center Channel
syn keyword vizMethods CheckPatternOrientation ChildContainer
syn keyword vizMethods ChildContainerCount ChildDirector Clear ClearHostGroup
syn keyword vizMethods ClipChannelID Color ColorValue CommandName ContainsKey
syn keyword vizMethods ContainsMouseCursor Continue ContinueActive
syn keyword vizMethods ContinueAnimation ContinueAnimationReverse
syn keyword vizMethods ContinuePending CopyTo CopyToDirector CreateAlpha
syn keyword vizMethods CreateExpert CreateFunction CreateGeometry
syn keyword vizMethods CreateGeometryBGL CreateGlow CreateHDR CreateInfoText
syn keyword vizMethods CreateKey CreateMaterial CreateRootContainer
syn keyword vizMethods CreateRootDirector CreateTexture CreateTextureBGL
syn keyword vizMethods CropBottom CropLeft CropRight CropTop CurrentCamera
syn keyword vizMethods CurrentCameraIndex CurrentDirectoryPath CurrentFrame
syn keyword vizMethods CurrentFramePending CurrentRefreshRate Cx CxExt Cy CyExt
syn keyword vizMethods DayOfMonth DayOfWeek DayOfYear DecoupleExternal Delete
syn keyword vizMethods DeleteAlpha DeleteChildren DeleteExpert DeleteFile
syn keyword vizMethods DeleteFunction DeleteGeometry DeleteGlow DeleteHDR
syn keyword vizMethods DeleteInfoText DeleteKey DeleteKeyframe DeleteMaterial
syn keyword vizMethods DeleteTexture Diffuse Direction Director DirectoryExists
syn keyword vizMethods DistanceToLine DistanceToPlane DistanceToPlaneSigned
syn keyword vizMethods DOFEventDistribution DrawKey DrawRGB DrawTexture Duration
syn keyword vizMethods DurationPending EffectType EffectValue EffectValueDouble
syn keyword vizMethods Emission EndsWith EnvironmentType Erase EraseChar Event
syn keyword vizMethods EventChannel EventDirection EventDuration EventValue
syn keyword vizMethods ExactPicking Expert ExploreDocument FaceOutputNormal
syn keyword vizMethods Field FileExists Find FindActionChannel FindChannel
syn keyword vizMethods FindChannelOfObject FindContainer FindDirector
syn keyword vizMethods FindFirstNotOf FindFirstOf FindKeyframe
syn keyword vizMethods FindKeyframeOfObject FindLastNotOf FindLastOf
syn keyword vizMethods FindOrCreateChannelOfObject FindSiblingSubContainer
syn keyword vizMethods FindSubContainer FindSubDirector FindSuperContainer
syn keyword vizMethods FirstChildContainer FirstKeyframe FloatValue Flush
syn keyword vizMethods FlushActive FlushPending FocalPlane Fovx FovxExt Fovy
syn keyword vizMethods FovyExt FrameIn FrameInActive FrameInOut FrameInOutActive
syn keyword vizMethods FrameInOutPending FrameInPending FrameOut FrameOutActive
syn keyword vizMethods FrameOutPending FrontScene Frustum FullString
syn keyword vizMethods GenerateNewUuid Geometry Get Get2 GetActionChannel
syn keyword vizMethods GetAnimationChannel GetAnimationChannels GetBezierHandle
syn keyword vizMethods GetBoundingBox GetBoundingBoxDimensions GetCamera
syn keyword vizMethods GetChannels GetChannelsOfObject GetChar
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
syn keyword vizMethods GetRegisterChangedClipFrame GetRegisterChangedClipMode
syn keyword vizMethods GetRegisterChangedClipModePending GetReportValues
syn keyword vizMethods GetReportValuesPending GetRGB GetRGB8 GetRGBA GetRGBA8
syn keyword vizMethods GetRotation GetRotationXYZ GetRotationZXY GetScaling
syn keyword vizMethods GetScaling2 GetScenePluginInstance GetScreenBounds
syn keyword vizMethods GetScreenPointToGeomSurface GetScreenPositionOrtho
syn keyword vizMethods GetScreenSizeOrtho GetShaderPluginInstance GetString
syn keyword vizMethods GetSubstring GetTimecode GetTimecodeByIndex GetTouch
syn keyword vizMethods GetTrace GetTraceByIndex GetTransformedBoundingBox
syn keyword vizMethods GetTransformedBoundingBoxDimensions GetTranslation
syn keyword vizMethods GetType GetUnlockedGrid GetUVCoordinatesOfScreenPoint
syn keyword vizMethods GlNormal Glow GlVertex Green Green8 HandlePatterns
syn keyword vizMethods HandleTaps HasAnimationChannels HDR Height
syn keyword vizMethods HideAllChildContainers HitContainer HostName Hour Id
syn keyword vizMethods Image Index InfoText Insert IntValue Invert
syn keyword vizMethods IPAddressString IsAnimated IsAnimationRunning IsBacklayer
syn keyword vizMethods IsClipLoaded IsClipLoadedActive IsClipLoadedPending
syn keyword vizMethods IsFrontlayer IsKeyDown IsMainlayer IsOnTop
syn keyword vizMethods IsPostRecording IsScreenPointInBoundingBox
syn keyword vizMethods IsVertexInBoundingBox Join Kerning Key KeyframeCount
syn keyword vizMethods LastChildContainer LastKeyframe LastTouch LBound
syn keyword vizMethods LButtonState Left LeftAngle LeftInterpolationMode
syn keyword vizMethods LeftWeight Length LineAntialiasing LineSpacing Lit
syn keyword vizMethods LiveChannelID LoadBackScene LoadFromDb LoadFromDbAsync
syn keyword vizMethods LoadFrontScene LoadIdentity LoadMainScene LoadMatrix
syn keyword vizMethods LoadTextFile LocalPosToScreenPos LocalPosToWorldPos
syn keyword vizMethods Location LocationPath Locked LockMode LoopMode
syn keyword vizMethods LoopModeActive LoopModePending MainScene MakeLower
syn keyword vizMethods MakeUpper Map MapPosition MapRotation MapScaling MapType
syn keyword vizMethods Match Material MaterialValue Matrix MButtonState Merged
syn keyword vizMethods MergedChildContainer MergedParentContainer Minute Mirror
syn keyword vizMethods MirrorAroundLine MirrorAroundVector ModeOnLoadError
syn keyword vizMethods ModeOnLoadError_FLUSH ModeOnLoadError_NONE
syn keyword vizMethods ModeOnLoadError_PAUSE ModeOnLoadError_STOP Month
syn keyword vizMethods MouseOverIPDefineServer MouseOverIPQuitServer
syn keyword vizMethods MouseOverIPRegister MouseOverIPUndefineAllServers
syn keyword vizMethods MouseOverIPUndefineServer MouseOverIPUnregister
syn keyword vizMethods MouseOverIPUnregisterAll MouseX MouseY
syn keyword vizMethods MoveAllChannelsToDirector MoveTo MoveToContainer
syn keyword vizMethods MoveToDirector MoveToKeepTransformation MTAlignGrid
syn keyword vizMethods MTDOFEventDistribution MTGrid MTHasMomentum MTObjectPlane
syn keyword vizMethods MTRegister MTRegistered MTRegisterEx MTSetPosition
syn keyword vizMethods MTTouched MTUnregister MTUseCenter MultMatrix Name
syn keyword vizMethods NextContainer NextDirector NextKeyframe Norm Normalize
syn keyword vizMethods NumActionChannels NumAnimationChannels NumAxes
syn keyword vizMethods NumberOfAxes NumChannels NumChildContainers NumKeyframes
syn keyword vizMethods ObjectStrength Offset Open OpenDocument Orientation Ortho
syn keyword vizMethods Outline OutputAspect OutputFieldDominance
syn keyword vizMethods OutputInterlaced OutputRefreshRate OutputRetraceCounter
syn keyword vizMethods OutputRingbufferSize OutputRingbufferUsed OutputSystem
syn keyword vizMethods PadLeft PadRight Pan PanExt ParentContainer
syn keyword vizMethods ParentDirector PathHandle PatternId Pause PauseActive
syn keyword vizMethods PausePending PendingClipSupported Perspective Play
syn keyword vizMethods PlayActive PlayBackSpeed PlayBackSpeedActive
syn keyword vizMethods PlayBackSpeedPending PlayerStatus_PENDINGREADY PlayMode
syn keyword vizMethods PlayMode_ERROR PlayMode_NONE PlayModePending
syn keyword vizMethods PlayMode_PLAY PlayMode_PLAY_PENDING PlayMode_SCRUB
syn keyword vizMethods PlayMode_SCRUB_EOF PlayMode_STOP PlayPending PlaySound
syn keyword vizMethods PluginInstance PluginName Pop Position PositionExt
syn keyword vizMethods PositionTrackingActive PositionTrackingContainer
syn keyword vizMethods PostCurrentTime PostFieldDominance PostLoopActive
syn keyword vizMethods PostLoopCounter PostRetraceCounter PostSwingActive PosX
syn keyword vizMethods PosY PreLoopActive PreLoopCounter Prepend Pressure
syn keyword vizMethods PreSwingActive PreviousContainer PreviousDirector
syn keyword vizMethods PreviousKeyframe Project ProjectionMatrix ProjectOnLine
syn keyword vizMethods ProjectOnVector Push PushButton QualityType RButtonState
syn keyword vizMethods Rebuild Recognizer RecomputeMatrix Red Red8 RefreshRate
syn keyword vizMethods RegisterChangedCallback RegisterTextChangedCallback
syn keyword vizMethods RemoveHandler RemoveTrace RenderEditorHeight
syn keyword vizMethods RenderEditorWidth RenderMode RenderWindowHeight
syn keyword vizMethods RenderWindowWidth RepeatMode RepeatModeActive
syn keyword vizMethods RepeatMode_FIELD RepeatMode_FRAME RepeatMode_NONE
syn keyword vizMethods RepeatModePending Replace ReplaceChar
syn keyword vizMethods ResetPositionTracking ResetRotationTracking Reverse
syn keyword vizMethods ReverseFields ReverseFieldsActive ReverseFieldsPending
syn keyword vizMethods RFind Rgb Right RightAngle RightInterpolationMode
syn keyword vizMethods RightWeight RootContainer RootDirector Rotate RotateX
syn keyword vizMethods RotateY RotateZ Rotation RotationTrackingActive
syn keyword vizMethods RotationTrackingContainer SaveTextFile SaveToDb
syn keyword vizMethods SaveToDbAsync Scale Scaling Scene
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
syn keyword vizMethods SetCenterScreenPositionLocked SetChanged SetClipName
syn keyword vizMethods SetClipNameBack2Back SetClipNameBack2BackEx SetClipNameEx
syn keyword vizMethods SetClipNamePending SetClipNamePendingEx SetParameterBool
syn keyword vizMethods SetParameterColor SetParameterContainer
syn keyword vizMethods SetParameterDouble SetParameterInt SetParameterString
syn keyword vizMethods SetRegisterChangedClipFrame SetRegisterChangedClipMode
syn keyword vizMethods SetRegisterChangedClipModePending
syn keyword vizMethods SetRegisterChangedPlayerStatus SetRGB SetRGB8 SetRGBA
syn keyword vizMethods SetRGBA8 SetScreenPositionOrtho SetScreenSizeOrtho
syn keyword vizMethods ShadeModel SharpenValue SharpenValueDouble Shininess Show
syn keyword vizMethods ShowAllChildContainers ShowMouseCursor
syn keyword vizMethods ShowOneChildContainer Size Sort Source Specular Split
syn keyword vizMethods SquaredNorm Stage StartAnimation StartAnimationReverse
syn keyword vizMethods StartApplication StartsWith Stop StopActive StopAnimation
syn keyword vizMethods StopPending StopSound Strength String Substitute
syn keyword vizMethods SwapEofPending SwapPending System TclSplit TcpSend
syn keyword vizMethods TcpSendAsync TcpSendAsyncStatus Text Texture Textured
syn keyword vizMethods TextureUnit Tilt TiltExt Time Timestamp ToString
syn keyword vizMethods TotalOffset TotalSeconds TouchCount Trace TraceCount
syn keyword vizMethods Transform Translate TransparancyMode Transpose Trim Twist
syn keyword vizMethods TwistExt TwoSidedLighting Type UBound Unproject
syn keyword vizMethods UnregisterChangedCallback Update UpdateAnimation
syn keyword vizMethods UpdateSceneTree UpscaleLuma UpscaleLumaActive
syn keyword vizMethods UpscaleLumaPending URLDecode URLEncode UseColor
syn keyword vizMethods Utf8ToAnsi Uuid Valid Value VerticalOrientation
syn keyword vizMethods VideoHeight VideooutInputRetraceCounter
syn keyword vizMethods VideooutOutputRetraceCounter VideooutPropagationDelay
syn keyword vizMethods VideooutRetraceCounter VideoWidth View ViewMatrix
syn keyword vizMethods VizCommunication VizId Width Wireframe WireframeWidth
syn keyword vizMethods WordSpacing WorldPosToLocalPos WorldPosToScreenPos
syn keyword vizMethods WrapType x X xy xyz XyzValue y Y Year z Z ZBuffer

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
