Ê
¿£
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.02unknown8¥Ó

 audio_preprocessing_layer/windowVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" audio_preprocessing_layer/window

4audio_preprocessing_layer/window/Read/ReadVariableOpReadVariableOp audio_preprocessing_layer/window*
_output_shapes	
:*
dtype0
I
ConstConst*
_output_shapes
: *
dtype0*
valueB	 :Ø
J
Const_1Const*
_output_shapes
: *
dtype0*
value
B :
J
Const_2Const*
_output_shapes
: *
dtype0*
value
B :è

NoOpNoOp
ý
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*¶
value¬B© B¢

layer_with_weights-0
layer-0
trainable_variables
	variables
regularization_losses
	keras_api

signatures

_inbound_nodes

window
_window
	trainable_variables

	variables
regularization_losses
	keras_api
 

0
 
­
metrics
trainable_variables
layer_metrics
	variables
regularization_losses
layer_regularization_losses

layers
non_trainable_variables
 
 
lj
VARIABLE_VALUE audio_preprocessing_layer/window6layer_with_weights-0/window/.ATTRIBUTES/VARIABLE_VALUE
 

0
 
­
metrics
	trainable_variables
layer_metrics

	variables
regularization_losses
layer_regularization_losses

layers
non_trainable_variables
 
 
 

0

0
 
 
 
 

0

/serving_default_audio_preprocessing_layer_inputPlaceholder*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿØ
¡
StatefulPartitionedCallStatefulPartitionedCall/serving_default_audio_preprocessing_layer_inputConst audio_preprocessing_layer/windowConst_1Const_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_signature_wrapper_605
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ñ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename4audio_preprocessing_layer/window/Read/ReadVariableOpConst_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *%
f R
__inference__traced_save_816
¶
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename audio_preprocessing_layer/window*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_restore_829Ý½

¾
F__inference_audio_preproc_layer_call_and_return_conditional_losses_498#
audio_preprocessing_layer_input!
audio_preprocessing_layer_488!
audio_preprocessing_layer_490!
audio_preprocessing_layer_492!
audio_preprocessing_layer_494
identity¢1audio_preprocessing_layer/StatefulPartitionedCallÒ
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputaudio_preprocessing_layer_488audio_preprocessing_layer_490audio_preprocessing_layer_492audio_preprocessing_layer_494*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_44723
1audio_preprocessing_layer/StatefulPartitionedCallÜ
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:j f
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
9
_user_specified_name!audio_preprocessing_layer_input
Ü
¤
 cond_Assert_AssertGuard_true_224/
+cond_assert_assertguard_identity_cond_equal
'
#cond_assert_assertguard_placeholder&
"cond_assert_assertguard_identity_1
Z
cond/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
cond/Assert/AssertGuard/NoOp½
 cond/Assert/AssertGuard/IdentityIdentity+cond_assert_assertguard_identity_cond_equal^cond/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/Identity 
"cond/Assert/AssertGuard/Identity_1Identity)cond/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2$
"cond/Assert/AssertGuard/Identity_1"Q
"cond_assert_assertguard_identity_1+cond/Assert/AssertGuard/Identity_1:output:0*>
_input_shapes-
+: :'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 

_output_shapes
: :C?
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
è
ª
7__inference_audio_preprocessing_layer_layer_call_fn_709

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_4472
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
¿

Assert_1_AssertGuard_true_114)
%assert_1_assertguard_identity_equal_1
$
 assert_1_assertguard_placeholder#
assert_1_assertguard_identity_1
T
Assert_1/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert_1/AssertGuard/NoOp®
Assert_1/AssertGuard/IdentityIdentity%assert_1_assertguard_identity_equal_1^Assert_1/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert_1/AssertGuard/Identity
Assert_1/AssertGuard/Identity_1Identity&Assert_1/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2!
Assert_1/AssertGuard/Identity_1"K
assert_1_assertguard_identity_1(Assert_1/AssertGuard/Identity_1:output:0*
_input_shapes
: :: 

_output_shapes
: 


Assert_AssertGuard_true_197%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp¤
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: :: 

_output_shapes
: 
Ä

r
cond_true_217
cond_size_waveform_frame
cond_equal_size
cond_identity¢cond/Assert/AssertGuardY
	cond/SizeSizecond_size_waveform_frame*
T0*
_output_shapes
: 2
	cond/Size

cond/EqualEqualcond/Size:output:0cond_equal_size*
T0*
_output_shapes
: *
incompatible_shape_error( 2

cond/Equalú
cond/Assert/AssertGuardIfcond/Equal:z:0cond/Equal:z:0cond_size_waveform_frame*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *4
else_branch%R#
!cond_Assert_AssertGuard_false_225*
output_shapes
: *3
then_branch$R"
 cond_Assert_AssertGuard_true_2242
cond/Assert/AssertGuard
 cond/Assert/AssertGuard/IdentityIdentity cond/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/IdentityZ

cond/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2

cond/Constz
cond/IdentityIdentitycond/Const:output:0^cond/Assert/AssertGuard*
T0*
_output_shapes
: 2
cond/Identity"'
cond_identitycond/Identity:output:0*>
_input_shapes-
+:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
cond/Assert/AssertGuardcond/Assert/AssertGuard:C ?
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: 
Ð

+__inference_audio_preproc_layer_call_fn_657

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_audio_preproc_layer_call_and_return_conditional_losses_5662
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
é
­
!__inference_signature_wrapper_605#
audio_preprocessing_layer_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__wrapped_model_3652
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
9
_user_specified_name!audio_preprocessing_layer_input
¬
¬
Assert_AssertGuard_false_96#
assert_assertguard_assert_equal
&
"assert_assertguard_assert_waveform!
assert_assertguard_identity_1
¢Assert/AssertGuard/Assert§
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal"assert_assertguard_assert_waveform*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert¤
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity­
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ

¾
F__inference_audio_preproc_layer_call_and_return_conditional_losses_511#
audio_preprocessing_layer_input!
audio_preprocessing_layer_501!
audio_preprocessing_layer_503!
audio_preprocessing_layer_505!
audio_preprocessing_layer_507
identity¢1audio_preprocessing_layer/StatefulPartitionedCallÒ
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputaudio_preprocessing_layer_501audio_preprocessing_layer_503audio_preprocessing_layer_505audio_preprocessing_layer_507*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_44723
1audio_preprocessing_layer/StatefulPartitionedCallÜ
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:j f
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
9
_user_specified_name!audio_preprocessing_layer_input
©
«
Assert_AssertGuard_false_664#
assert_assertguard_assert_equal
$
 assert_assertguard_assert_inputs!
assert_assertguard_identity_1
¢Assert/AssertGuard/Assert¥
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal assert_assertguard_assert_inputs*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert¤
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity­
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
Þ

Assert_AssertGuard_true_64%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp¤
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
Ù
Ñ
!cond_Assert_AssertGuard_false_250-
)cond_assert_assertguard_assert_cond_equal
1
-cond_assert_assertguard_assert_waveform_frame&
"cond_assert_assertguard_identity_1
¢cond/Assert/AssertGuard/AssertÆ
cond/Assert/AssertGuard/AssertAssert)cond_assert_assertguard_assert_cond_equal-cond_assert_assertguard_assert_waveform_frame*

T
2*
_output_shapes
 2 
cond/Assert/AssertGuard/Assert½
 cond/Assert/AssertGuard/IdentityIdentity)cond_assert_assertguard_assert_cond_equal^cond/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/IdentityÁ
"cond/Assert/AssertGuard/Identity_1Identity)cond/Assert/AssertGuard/Identity:output:0^cond/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2$
"cond/Assert/AssertGuard/Identity_1"Q
"cond_assert_assertguard_identity_1+cond/Assert/AssertGuard/Identity_1:output:0*>
_input_shapes-
+: :'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2@
cond/Assert/AssertGuard/Assertcond/Assert/AssertGuard/Assert: 

_output_shapes
: :C?
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ß

Assert_AssertGuard_true_754%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp¤
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
Ï

R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_696

inputs
	equal_1_x
unknown
	unknown_0
	unknown_1
identity¢Assert/AssertGuard¢Assert_1/Assert¢StatefulPartitionedCall¢StatefulPartitionedCall_1N
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
EqualÊ
Assert/AssertGuardIf	Equal:z:0	Equal:z:0inputs*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 */
else_branch R
Assert_AssertGuard_false_664*
output_shapes
: *.
then_branchR
Assert_AssertGuard_true_6632
Assert/AssertGuard
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/IdentityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
Equal_1Equal	equal_1_xstrided_slice:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1H
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1
Assert_1/AssertAssertEqual_1:z:0Shape_1:output:0^Assert/AssertGuard*

T
2*
_output_shapes
 2
Assert_1/Assertø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_tf_webaudio_spectrogram_2842
StatefulPartitionedCall
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0^Assert_1/Assert*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_z_normalize_spectrogram_3242
StatefulPartitionedCall_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim¯

ExpandDims
ExpandDims"StatefulPartitionedCall_1:output:0ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDimsÞ
IdentityIdentityExpandDims:output:0^Assert/AssertGuard^Assert_1/Assert^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2(
Assert/AssertGuardAssert/AssertGuard2"
Assert_1/AssertAssert_1/Assert22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs


¥
F__inference_audio_preproc_layer_call_and_return_conditional_losses_631

inputs!
audio_preprocessing_layer_621!
audio_preprocessing_layer_623!
audio_preprocessing_layer_625!
audio_preprocessing_layer_627
identity¢1audio_preprocessing_layer/StatefulPartitionedCallû
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preprocessing_layer_621audio_preprocessing_layer_623audio_preprocessing_layer_625audio_preprocessing_layer_627*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *
fR
__inference_call_32923
1audio_preprocessing_layer/StatefulPartitionedCallÜ
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
Ü
¬
__inference__traced_save_816
file_prefix?
;savev2_audio_preprocessing_layer_window_read_readvariableop
savev2_const_3

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Const
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_d3055f92020b4937a52935e6699a475f/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÖ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*i
value`B^B6layer_with_weights-0/window/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
SaveV2/shape_and_slicesú
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0;savev2_audio_preprocessing_layer_window_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
::

_output_shapes
: 
Þ

Assert_AssertGuard_true_95%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp¤
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
Ü
¤
 cond_Assert_AssertGuard_true_249/
+cond_assert_assertguard_identity_cond_equal
'
#cond_assert_assertguard_placeholder&
"cond_assert_assertguard_identity_1
Z
cond/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
cond/Assert/AssertGuard/NoOp½
 cond/Assert/AssertGuard/IdentityIdentity+cond_assert_assertguard_identity_cond_equal^cond/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/Identity 
"cond/Assert/AssertGuard/Identity_1Identity)cond/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2$
"cond/Assert/AssertGuard/Identity_1"Q
"cond_assert_assertguard_identity_1+cond/Assert/AssertGuard/Identity_1:output:0*>
_input_shapes-
+: :'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 

_output_shapes
: :C?
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

·
+__inference_audio_preproc_layer_call_fn_577#
audio_preprocessing_layer_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_audio_preproc_layer_call_and_return_conditional_losses_5662
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
9
_user_specified_name!audio_preprocessing_layer_input
±
t
cond_false_218
cond_shape_waveform_frame
cond_equal_size
cond_identity¢cond/Assert/AssertGuarda

cond/ShapeShapecond_shape_waveform_frame*
T0*
_output_shapes
:2

cond/Shape
cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
cond/strided_slice/stack
cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
cond/strided_slice/stack_1
cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
cond/strided_slice/stack_2
cond/strided_sliceStridedSlicecond/Shape:output:0!cond/strided_slice/stack:output:0#cond/strided_slice/stack_1:output:0#cond/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
cond/strided_slice

cond/EqualEqualcond/strided_slice:output:0cond_equal_size*
T0*
_output_shapes
: *
incompatible_shape_error( 2

cond/Equalû
cond/Assert/AssertGuardIfcond/Equal:z:0cond/Equal:z:0cond_shape_waveform_frame*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *4
else_branch%R#
!cond_Assert_AssertGuard_false_250*
output_shapes
: *3
then_branch$R"
 cond_Assert_AssertGuard_true_2492
cond/Assert/AssertGuard
 cond/Assert/AssertGuard/IdentityIdentity cond/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/IdentityZ

cond/ConstConst*
_output_shapes
: *
dtype0*
value	B : 2

cond/Const^
cond/Const_1Const*
_output_shapes
: *
dtype0*
value	B : 2
cond/Const_1^
cond/Const_2Const*
_output_shapes
: *
dtype0*
value	B : 2
cond/Const_2|
cond/IdentityIdentitycond/Const_2:output:0^cond/Assert/AssertGuard*
T0*
_output_shapes
: 2
cond/Identity"'
cond_identitycond/Identity:output:0*>
_input_shapes-
+:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
cond/Assert/AssertGuardcond/Assert/AssertGuard:C ?
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:

_output_shapes
: 

Ü
__inference__wrapped_model_365#
audio_preprocessing_layer_input/
+audio_preproc_audio_preprocessing_layer_355/
+audio_preproc_audio_preprocessing_layer_357/
+audio_preproc_audio_preprocessing_layer_359/
+audio_preproc_audio_preprocessing_layer_361
identity¢?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCallè
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_input+audio_preproc_audio_preprocessing_layer_355+audio_preproc_audio_preprocessing_layer_357+audio_preproc_audio_preprocessing_layer_359+audio_preproc_audio_preprocessing_layer_361*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *
fR
__inference_call_3292A
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCallø
IdentityIdentityHaudio_preproc/audio_preprocessing_layer/StatefulPartitionedCall:output:0@^audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2
?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall?audio_preproc/audio_preprocessing_layer/StatefulPartitionedCall:j f
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
9
_user_specified_name!audio_preprocessing_layer_input

·
+__inference_audio_preproc_layer_call_fn_551#
audio_preprocessing_layer_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallaudio_preprocessing_layer_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_audio_preproc_layer_call_and_return_conditional_losses_5272
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
9
_user_specified_name!audio_preprocessing_layer_input
ß

Assert_AssertGuard_true_663%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp¤
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
©
«
Assert_AssertGuard_false_755#
assert_assertguard_assert_equal
$
 assert_assertguard_assert_inputs!
assert_assertguard_identity_1
¢Assert/AssertGuard/Assert¥
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal assert_assertguard_assert_inputs*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert¤
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity­
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
©
«
Assert_AssertGuard_false_415#
assert_assertguard_assert_equal
$
 assert_assertguard_assert_inputs!
assert_assertguard_identity_1
¢Assert/AssertGuard/Assert¥
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal assert_assertguard_assert_inputs*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert¤
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity­
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
Ñ

¥
F__inference_audio_preproc_layer_call_and_return_conditional_losses_527

inputs!
audio_preprocessing_layer_517!
audio_preprocessing_layer_519!
audio_preprocessing_layer_521!
audio_preprocessing_layer_523
identity¢1audio_preprocessing_layer/StatefulPartitionedCall¹
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preprocessing_layer_517audio_preprocessing_layer_519audio_preprocessing_layer_521audio_preprocessing_layer_523*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_44723
1audio_preprocessing_layer/StatefulPartitionedCallÜ
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
	
È
Assert_1_AssertGuard_false_115'
#assert_1_assertguard_assert_equal_1
7
3assert_1_assertguard_assert_readvariableop_resource#
assert_1_assertguard_identity_1
¢Assert_1/AssertGuard/AssertÉ
*Assert_1/AssertGuard/Assert/ReadVariableOpReadVariableOp3assert_1_assertguard_assert_readvariableop_resource*
_output_shapes	
:*
dtype02,
*Assert_1/AssertGuard/Assert/ReadVariableOp¿
Assert_1/AssertGuard/AssertAssert#assert_1_assertguard_assert_equal_12Assert_1/AssertGuard/Assert/ReadVariableOp:value:0*

T
2*
_output_shapes
 2
Assert_1/AssertGuard/Assert®
Assert_1/AssertGuard/IdentityIdentity#assert_1_assertguard_assert_equal_1^Assert_1/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert_1/AssertGuard/Identityµ
Assert_1/AssertGuard/Identity_1Identity&Assert_1/AssertGuard/Identity:output:0^Assert_1/AssertGuard/Assert*
T0
*
_output_shapes
: 2!
Assert_1/AssertGuard/Identity_1"K
assert_1_assertguard_identity_1(Assert_1/AssertGuard/Identity_1:output:0*
_input_shapes
: :2:
Assert_1/AssertGuard/AssertAssert_1/AssertGuard/Assert: 

_output_shapes
: 
ß

Assert_AssertGuard_true_414%
!assert_assertguard_identity_equal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp¤
Assert/AssertGuard/IdentityIdentity!assert_assertguard_identity_equal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
Ï[

'__inference_tf_webaudio_spectrogram_284
waveform

window
frame_shift
frequency_truncation
identity¢Assert/AssertGuard¢Assert_1/AssertGuard¢Assert_2/Assert¢Assert_3/Assert¢Assert_4/Assert¢Assert_5/Assert¢StatefulPartitionedCallN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
EqualÊ
Assert/AssertGuardIf	Equal:z:0	Equal:z:0waveform*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *.
else_branchR
Assert_AssertGuard_false_96*
output_shapes
: *-
then_branchR
Assert_AssertGuard_true_952
Assert/AssertGuard
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identityr
Rank_1/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:*
dtype02
Rank_1/ReadVariableOpR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
	Equal_1/y
Equal_1EqualRank_1:output:0Equal_1/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1v
Assert_1/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:*
dtype02
Assert_1/ReadVariableOpÙ
Assert_1/AssertGuardIfEqual_1:z:0Equal_1:z:0window*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*1
else_branch"R 
Assert_1_AssertGuard_false_115*
output_shapes
: *0
then_branch!R
Assert_1_AssertGuard_true_1142
Assert_1/AssertGuard
Assert_1/AssertGuard/IdentityIdentityAssert_1/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert_1/AssertGuard/IdentityF
ShapeShapewaveform*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicen
Size/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:*
dtype02
Size/ReadVariableOpO
SizeConst*
_output_shapes
: *
dtype0*
value
B :2
SizeZ

floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :2

floordiv/ye
floordivFloorDivSize:output:0floordiv/y:output:0*
T0*
_output_shapes
: 2

floordivw
Equal_2Equalframe_shiftfloordiv:z:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_2
Assert_2/AssertAssertEqual_2:z:0frame_shiftSize:output:0^Assert/AssertGuard*
T
2*
_output_shapes
 2
Assert_2/AssertC
Size_1Sizewaveform*
T0*
_output_shapes
: 2
Size_1n

floordiv_1FloorDivSize_1:output:0strided_slice:output:0*
T0*
_output_shapes
: 2

floordiv_1b

floordiv_2FloorDivfloordiv_1:z:0frame_shift*
T0*
_output_shapes
: 2

floordiv_2O
mulMulframe_shiftfloordiv_2:z:0*
T0*
_output_shapes
: 2
mulk
Slice/beginConst*
_output_shapes
:*
dtype0*
valueB"        2
Slice/beging
Slice/size/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Slice/size/0n

Slice/sizePackSlice/size/0:output:0mul:z:0*
N*
T0*
_output_shapes
:2

Slice/size
SliceSlicewaveformSlice/begin:output:0Slice/size:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Slicec
	zeros/mulMulstrided_slice:output:0frame_shift*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessw
zeros/packedPackstrided_slice:output:0frame_shift*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const~
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
zeros\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2zeros:output:0Slice:output:0concat/axis:output:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concat
Reshape/shapePackstrided_slice:output:0floordiv_2:z:0frame_shift*
N*
T0*
_output_shapes
:2
Reshape/shape
ReshapeReshapeSlice:output:0Reshape/shape:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
ReshapeP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yT
addAddV2floordiv_2:z:0add/y:output:0*
T0*
_output_shapes
: 2
add
Reshape_1/shapePackstrided_slice:output:0add:z:0frame_shift*
N*
T0*
_output_shapes
:2
Reshape_1/shape
	Reshape_1Reshapeconcat:output:0Reshape_1/shape:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	Reshape_1s
Slice_1/beginConst*
_output_shapes
:*
dtype0*!
valueB"            2
Slice_1/begink
Slice_1/size/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Slice_1/size/0
Slice_1/sizePackSlice_1/size/0:output:0floordiv_2:z:0frame_shift*
N*
T0*
_output_shapes
:2
Slice_1/size³
Slice_1SliceReshape_1:output:0Slice_1/begin:output:0Slice_1/size:output:0*
Index0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Slice_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis­
concat_1ConcatV2Slice_1:output:0Reshape:output:0concat_1/axis:output:0*
N*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

concat_1S
Shape_1Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
Equal_3Equalstrided_slice_1:output:0strided_slice:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_3S
Shape_2Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_2
Assert_3/AssertAssertEqual_3:z:0Shape_2:output:0strided_slice:output:0^Assert_2/Assert*
T
2*
_output_shapes
 2
Assert_3/AssertS
Shape_3Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_3x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2î
strided_slice_2StridedSliceShape_3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2
Equal_4Equalstrided_slice_2:output:0floordiv_2:z:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_4S
Shape_4Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_4
Assert_4/AssertAssertEqual_4:z:0Shape_4:output:0floordiv_2:z:0^Assert_3/Assert*
T
2*
_output_shapes
 2
Assert_4/AssertS
Shape_5Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_5x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2î
strided_slice_3StridedSliceShape_5:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
Equal_5Equalstrided_slice_3:output:0Size:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_5S
Shape_6Shapeconcat_1:output:0*
T0*
_output_shapes
:2	
Shape_6
Assert_5/AssertAssertEqual_5:z:0Shape_6:output:0Size:output:0^Assert_4/Assert*
T
2*
_output_shapes
 2
Assert_5/Assertå
StatefulPartitionedCallStatefulPartitionedCallconcat_1:output:0window*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *3
f.R,
*__inference_tf_webaudio_power_spectrum_2762
StatefulPartitionedCalls
Slice_2/beginConst*
_output_shapes
:*
dtype0*!
valueB"            2
Slice_2/begink
Slice_2/size/0Const*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
Slice_2/size/0
Slice_2/sizePackSlice_2/size/0:output:0floordiv_2:z:0frequency_truncation*
N*
T0*
_output_shapes
:2
Slice_2/sizeÁ
Slice_2Slice StatefulPartitionedCall:output:0Slice_2/begin:output:0Slice_2/size:output:0*
Index0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Slice_2
IdentityIdentitySlice_2:output:0^Assert/AssertGuard^Assert_1/AssertGuard^Assert_2/Assert^Assert_3/Assert^Assert_4/Assert^Assert_5/Assert^StatefulPartitionedCall*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿØ:: : 2(
Assert/AssertGuardAssert/AssertGuard2,
Assert_1/AssertGuardAssert_1/AssertGuard2"
Assert_2/AssertAssert_2/Assert2"
Assert_3/AssertAssert_3/Assert2"
Assert_4/AssertAssert_4/Assert2"
Assert_5/AssertAssert_5/Assert22
StatefulPartitionedCallStatefulPartitionedCall:S O
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
"
_user_specified_name
waveform:&"
 
_user_specified_namewindow:C?

_output_shapes
: 
%
_user_specified_nameframe_shift:LH

_output_shapes
: 
.
_user_specified_namefrequency_truncation


¥
F__inference_audio_preproc_layer_call_and_return_conditional_losses_618

inputs!
audio_preprocessing_layer_608!
audio_preprocessing_layer_610!
audio_preprocessing_layer_612!
audio_preprocessing_layer_614
identity¢1audio_preprocessing_layer/StatefulPartitionedCallû
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preprocessing_layer_608audio_preprocessing_layer_610audio_preprocessing_layer_612audio_preprocessing_layer_614*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *
fR
__inference_call_32923
1audio_preprocessing_layer/StatefulPartitionedCallÜ
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
Ù
Ñ
!cond_Assert_AssertGuard_false_225-
)cond_assert_assertguard_assert_cond_equal
1
-cond_assert_assertguard_assert_waveform_frame&
"cond_assert_assertguard_identity_1
¢cond/Assert/AssertGuard/AssertÆ
cond/Assert/AssertGuard/AssertAssert)cond_assert_assertguard_assert_cond_equal-cond_assert_assertguard_assert_waveform_frame*

T
2*
_output_shapes
 2 
cond/Assert/AssertGuard/Assert½
 cond/Assert/AssertGuard/IdentityIdentity)cond_assert_assertguard_assert_cond_equal^cond/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2"
 cond/Assert/AssertGuard/IdentityÁ
"cond/Assert/AssertGuard/Identity_1Identity)cond/Assert/AssertGuard/Identity:output:0^cond/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2$
"cond/Assert/AssertGuard/Identity_1"Q
"cond_assert_assertguard_identity_1+cond/Assert/AssertGuard/Identity_1:output:0*>
_input_shapes-
+: :'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2@
cond/Assert/AssertGuard/Assertcond/Assert/AssertGuard/Assert: 

_output_shapes
: :C?
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ñ

¥
F__inference_audio_preproc_layer_call_and_return_conditional_losses_566

inputs!
audio_preprocessing_layer_556!
audio_preprocessing_layer_558!
audio_preprocessing_layer_560!
audio_preprocessing_layer_562
identity¢1audio_preprocessing_layer/StatefulPartitionedCall¹
1audio_preprocessing_layer/StatefulPartitionedCallStatefulPartitionedCallinputsaudio_preprocessing_layer_556audio_preprocessing_layer_558audio_preprocessing_layer_560audio_preprocessing_layer_562*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_44723
1audio_preprocessing_layer/StatefulPartitionedCallÜ
IdentityIdentity:audio_preprocessing_layer/StatefulPartitionedCall:output:02^audio_preprocessing_layer/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2f
1audio_preprocessing_layer/StatefulPartitionedCall1audio_preprocessing_layer/StatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
ð
·
Assert_AssertGuard_false_299*
&assert_assertguard_assert_greaterequal
)
%assert_assertguard_assert_spectrogram!
assert_assertguard_identity_1
¢Assert/AssertGuard/Assert±
Assert/AssertGuard/AssertAssert&assert_assertguard_assert_greaterequal%assert_assertguard_assert_spectrogram*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert«
Assert/AssertGuard/IdentityIdentity&assert_assertguard_assert_greaterequal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity­
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*>
_input_shapes-
+: :'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :C?
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ï

R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_447

inputs
	equal_1_x
unknown
	unknown_0
	unknown_1
identity¢Assert/AssertGuard¢Assert_1/Assert¢StatefulPartitionedCall¢StatefulPartitionedCall_1N
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
EqualÊ
Assert/AssertGuardIf	Equal:z:0	Equal:z:0inputs*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 */
else_branch R
Assert_AssertGuard_false_415*
output_shapes
: *.
then_branchR
Assert_AssertGuard_true_4142
Assert/AssertGuard
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/IdentityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
Equal_1Equal	equal_1_xstrided_slice:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1H
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1
Assert_1/AssertAssertEqual_1:z:0Shape_1:output:0^Assert/AssertGuard*

T
2*
_output_shapes
 2
Assert_1/Assertø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_tf_webaudio_spectrogram_2842
StatefulPartitionedCall
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0^Assert_1/Assert*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_z_normalize_spectrogram_3242
StatefulPartitionedCall_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim¯

ExpandDims
ExpandDims"StatefulPartitionedCall_1:output:0ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDimsÞ
IdentityIdentityExpandDims:output:0^Assert/AssertGuard^Assert_1/Assert^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2(
Assert/AssertGuardAssert/AssertGuard2"
Assert_1/AssertAssert_1/Assert22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs

Ê
__inference_call_329

inputs
	equal_1_x
unknown
	unknown_0
	unknown_1
identity¢Assert/AssertGuard¢Assert_1/Assert¢StatefulPartitionedCall¢StatefulPartitionedCall_1N
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
EqualÈ
Assert/AssertGuardIf	Equal:z:0	Equal:z:0inputs*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *.
else_branchR
Assert_AssertGuard_false_65*
output_shapes
: *-
then_branchR
Assert_AssertGuard_true_642
Assert/AssertGuard
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/IdentityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
Equal_1Equal	equal_1_xstrided_slice:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1H
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1
Assert_1/AssertAssertEqual_1:z:0Shape_1:output:0^Assert/AssertGuard*

T
2*
_output_shapes
 2
Assert_1/Assertø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_tf_webaudio_spectrogram_2842
StatefulPartitionedCall
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0^Assert_1/Assert*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_z_normalize_spectrogram_3242
StatefulPartitionedCall_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim¯

ExpandDims
ExpandDims"StatefulPartitionedCall_1:output:0ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDimsÞ
IdentityIdentityExpandDims:output:0^Assert/AssertGuard^Assert_1/Assert^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2(
Assert/AssertGuardAssert/AssertGuard2"
Assert_1/AssertAssert_1/Assert22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs


Assert_AssertGuard_true_298,
(assert_assertguard_identity_greaterequal
"
assert_assertguard_placeholder!
assert_assertguard_identity_1
P
Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2
Assert/AssertGuard/NoOp«
Assert/AssertGuard/IdentityIdentity(assert_assertguard_identity_greaterequal^Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*>
_input_shapes-
+: :'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 

_output_shapes
: :C?
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª

__inference__traced_restore_829
file_prefix5
1assignvariableop_audio_preprocessing_layer_window

identity_2¢AssignVariableOpÜ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*i
value`B^B6layer_with_weights-0/window/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
RestoreV2/shape_and_slicesµ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity°
AssignVariableOpAssignVariableOp1assignvariableop_audio_preprocessing_layer_windowIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp9
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp{

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_1m

Identity_2IdentityIdentity_1:output:0^AssignVariableOp*
T0*
_output_shapes
: 2

Identity_2"!

identity_2Identity_2:output:0*
_input_shapes
: :2$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ñ
`
'__inference_z_normalize_spectrogram_324
spectrogram
identity¢Assert/AssertGuardN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
Rankb
GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B :2
GreaterEqual/yu
GreaterEqualGreaterEqualRank:output:0GreaterEqual/y:output:0*
T0*
_output_shapes
: 2
GreaterEqualÝ
Assert/AssertGuardIfGreaterEqual:z:0GreaterEqual:z:0spectrogram*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 */
else_branch R
Assert_AssertGuard_false_299*
output_shapes
: *.
then_branchR
Assert_AssertGuard_true_2982
Assert/AssertGuard
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"þÿÿÿÿÿÿÿ2 
moments/mean/reduction_indices¡
moments/meanMeanspectrogram'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferencespectrogrammoments/StopGradient:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"þÿÿÿÿÿÿÿ2$
"moments/variance/reduction_indices¿
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/varianceS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82
Const}
subSubspectrogrammoments/mean:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sube
SqrtSqrtmoments/variance:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Sqrtc
addAddV2Sqrt:y:0Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addw
truedivRealDivsub:z:0add:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truediv
IdentityIdentitytruediv:z:0^Assert/AssertGuard*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2(
Assert/AssertGuardAssert/AssertGuard:j f
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
%
_user_specified_namespectrogram
¨
ª
Assert_AssertGuard_false_65#
assert_assertguard_assert_equal
$
 assert_assertguard_assert_inputs!
assert_assertguard_identity_1
¢Assert/AssertGuard/Assert¥
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal assert_assertguard_assert_inputs*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert¤
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity­
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0**
_input_shapes
: :ÿÿÿÿÿÿÿÿÿØ26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: :/+
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ

Ê
__inference_call_787

inputs
	equal_1_x
unknown
	unknown_0
	unknown_1
identity¢Assert/AssertGuard¢Assert_1/Assert¢StatefulPartitionedCall¢StatefulPartitionedCall_1N
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
EqualÊ
Assert/AssertGuardIf	Equal:z:0	Equal:z:0inputs*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 */
else_branch R
Assert_AssertGuard_false_755*
output_shapes
: *.
then_branchR
Assert_AssertGuard_true_7542
Assert/AssertGuard
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/IdentityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
Equal_1Equal	equal_1_xstrided_slice:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1H
Shape_1Shapeinputs*
T0*
_output_shapes
:2	
Shape_1
Assert_1/AssertAssertEqual_1:z:0Shape_1:output:0^Assert/AssertGuard*

T
2*
_output_shapes
 2
Assert_1/Assertø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_tf_webaudio_spectrogram_2842
StatefulPartitionedCall
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0^Assert_1/Assert*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_z_normalize_spectrogram_3242
StatefulPartitionedCall_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
ExpandDims/dim¯

ExpandDims
ExpandDims"StatefulPartitionedCall_1:output:0ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDimsÞ
IdentityIdentityExpandDims:output:0^Assert/AssertGuard^Assert_1/Assert^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 2(
Assert/AssertGuardAssert/AssertGuard2"
Assert_1/AssertAssert_1/Assert22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
ë
y
*__inference_tf_webaudio_power_spectrum_276
waveform_frame

window
identity¢Assert/AssertGuard¢condn
Rank/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:*
dtype02
Rank/ReadVariableOpN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equalr
Assert/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:*
dtype02
Assert/ReadVariableOpÍ
Assert/AssertGuardIf	Equal:z:0	Equal:z:0window*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*/
else_branch R
Assert_AssertGuard_false_198*
output_shapes
: *.
then_branchR
Assert_AssertGuard_true_1972
Assert/AssertGuard
Assert/AssertGuard/IdentityIdentityAssert/AssertGuard:output:0*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identityn
Size/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:*
dtype02
Size/ReadVariableOpO
SizeConst*
_output_shapes
: *
dtype0*
value
B :2
SizeR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
	Equal_1/y
Equal_1EqualRank_1:output:0Equal_1/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2	
Equal_1 
condIfEqual_1:z:0waveform_frameSize:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *!
else_branchR
cond_false_218*
output_shapes
: * 
then_branchR
cond_true_2172
condZ
cond/IdentityIdentitycond:output:0*
T0*
_output_shapes
: 2
cond/Identityl
mul/ReadVariableOpReadVariableOpwindow*
_output_shapes	
:*
dtype02
mul/ReadVariableOp}
mulMulwaveform_framemul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mull
CastCastmul:z:0*

DstT0*

SrcT0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
CastR
FFTFFTCast:y:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
FFT]
Abs
ComplexAbsFFT:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
AbsZ
LogLogAbs:y:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Log
IdentityIdentityLog:y:0^Assert/AssertGuard^cond*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2(
Assert/AssertGuardAssert/AssertGuard2
condcond:m i
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
(
_user_specified_namewaveform_frame:&"
 
_user_specified_namewindow
Ð

+__inference_audio_preproc_layer_call_fn_644

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_audio_preproc_layer_call_and_return_conditional_losses_5272
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿØ: :: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
 
_user_specified_nameinputs
Î
¼
Assert_AssertGuard_false_198#
assert_assertguard_assert_equal
5
1assert_assertguard_assert_readvariableop_resource!
assert_assertguard_identity_1
¢Assert/AssertGuard/AssertÃ
(Assert/AssertGuard/Assert/ReadVariableOpReadVariableOp1assert_assertguard_assert_readvariableop_resource*
_output_shapes	
:*
dtype02*
(Assert/AssertGuard/Assert/ReadVariableOpµ
Assert/AssertGuard/AssertAssertassert_assertguard_assert_equal0Assert/AssertGuard/Assert/ReadVariableOp:value:0*

T
2*
_output_shapes
 2
Assert/AssertGuard/Assert¤
Assert/AssertGuard/IdentityIdentityassert_assertguard_assert_equal^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity­
Assert/AssertGuard/Identity_1Identity$Assert/AssertGuard/Identity:output:0^Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2
Assert/AssertGuard/Identity_1"G
assert_assertguard_identity_1&Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: :26
Assert/AssertGuard/AssertAssert/AssertGuard/Assert: 

_output_shapes
: "ÖL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultô
m
audio_preprocessing_layer_inputJ
1serving_default_audio_preprocessing_layer_input:0ÿÿÿÿÿÿÿÿÿØg
audio_preprocessing_layerJ
StatefulPartitionedCall:0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¢:
æ
layer_with_weights-0
layer-0
trainable_variables
	variables
regularization_losses
	keras_api

signatures
_default_save_signature
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequentialä{"class_name": "Sequential", "name": "audio_preproc", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "audio_preproc", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 44032]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "audio_preprocessing_layer_input"}}, {"class_name": "AudioPreprocessingLayer", "config": {"layer was saved without config": true}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 44032]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}}
Å
_inbound_nodes

window
_window
	trainable_variables

	variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
call"ÿ
_tf_keras_layerå{"class_name": "AudioPreprocessingLayer", "name": "audio_preprocessing_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 44032]}}
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
metrics
trainable_variables
layer_metrics
	variables
regularization_losses
layer_regularization_losses

layers
non_trainable_variables
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
 "
trackable_list_wrapper
-:+2 audio_preprocessing_layer/window
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
metrics
	trainable_variables
layer_metrics

	variables
regularization_losses
layer_regularization_losses

layers
non_trainable_variables
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
ö2ó
__inference__wrapped_model_365Ð
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;8
audio_preprocessing_layer_inputÿÿÿÿÿÿÿÿÿØ
ú2÷
+__inference_audio_preproc_layer_call_fn_577
+__inference_audio_preproc_layer_call_fn_551
+__inference_audio_preproc_layer_call_fn_657
+__inference_audio_preproc_layer_call_fn_644À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
F__inference_audio_preproc_layer_call_and_return_conditional_losses_498
F__inference_audio_preproc_layer_call_and_return_conditional_losses_618
F__inference_audio_preproc_layer_call_and_return_conditional_losses_631
F__inference_audio_preproc_layer_call_and_return_conditional_losses_511À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
á2Þ
7__inference_audio_preprocessing_layer_layer_call_fn_709¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ü2ù
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_696¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¾2»
__inference_call_787¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
HBF
!__inference_signature_wrapper_605audio_preprocessing_layer_input
	J
Const
J	
Const_1
J	
Const_2æ
__inference__wrapped_model_365Ã J¢G
@¢=
;8
audio_preprocessing_layer_inputÿÿÿÿÿÿÿÿÿØ
ª "oªl
j
audio_preprocessing_layerMJ
audio_preprocessing_layer+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿæ
F__inference_audio_preproc_layer_call_and_return_conditional_losses_498 R¢O
H¢E
;8
audio_preprocessing_layer_inputÿÿÿÿÿÿÿÿÿØ
p

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 æ
F__inference_audio_preproc_layer_call_and_return_conditional_losses_511 R¢O
H¢E
;8
audio_preprocessing_layer_inputÿÿÿÿÿÿÿÿÿØ
p 

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Í
F__inference_audio_preproc_layer_call_and_return_conditional_losses_618 9¢6
/¢,
"
inputsÿÿÿÿÿÿÿÿÿØ
p

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Í
F__inference_audio_preproc_layer_call_and_return_conditional_losses_631 9¢6
/¢,
"
inputsÿÿÿÿÿÿÿÿÿØ
p 

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¾
+__inference_audio_preproc_layer_call_fn_551 R¢O
H¢E
;8
audio_preprocessing_layer_inputÿÿÿÿÿÿÿÿÿØ
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
+__inference_audio_preproc_layer_call_fn_577 R¢O
H¢E
;8
audio_preprocessing_layer_inputÿÿÿÿÿÿÿÿÿØ
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¤
+__inference_audio_preproc_layer_call_fn_644u 9¢6
/¢,
"
inputsÿÿÿÿÿÿÿÿÿØ
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¤
+__inference_audio_preproc_layer_call_fn_657u 9¢6
/¢,
"
inputsÿÿÿÿÿÿÿÿÿØ
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ
R__inference_audio_preprocessing_layer_layer_call_and_return_conditional_losses_696z 1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿØ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¨
7__inference_audio_preprocessing_layer_layer_call_fn_709m 1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿØ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
__inference_call_787m 1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿØ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!__inference_signature_wrapper_605æ m¢j
¢ 
cª`
^
audio_preprocessing_layer_input;8
audio_preprocessing_layer_inputÿÿÿÿÿÿÿÿÿØ"oªl
j
audio_preprocessing_layerMJ
audio_preprocessing_layer+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ