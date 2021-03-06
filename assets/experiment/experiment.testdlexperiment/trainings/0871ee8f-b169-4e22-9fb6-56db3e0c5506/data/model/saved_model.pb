??
?1?1
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( ?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.22v2.4.2-14-g2274b30e272??
l
x_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
n
PlaceholderPlaceholder*'
_output_shapes
:?????????
*
dtype0*
shape:?????????

l
random_normal/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             
W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*
T0*&
_output_shapes
: *
dtype0*

seed *
seed2 
?
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0*&
_output_shapes
: 
l
random_normalAddrandom_normal/mulrandom_normal/mean*
T0*&
_output_shapes
: 
?
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
I
Variable/AssignAssignVariableOpVariablerandom_normal*
dtype0
m
Variable/Read/ReadVariableOpReadVariableOpVariable*&
_output_shapes
: *
dtype0
n
random_normal_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"          @   
Y
random_normal_1/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
random_normal_1/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
$random_normal_1/RandomStandardNormalRandomStandardNormalrandom_normal_1/shape*
T0*&
_output_shapes
: @*
dtype0*

seed *
seed2 
?
random_normal_1/mulMul$random_normal_1/RandomStandardNormalrandom_normal_1/stddev*
T0*&
_output_shapes
: @
r
random_normal_1Addrandom_normal_1/mulrandom_normal_1/mean*
T0*&
_output_shapes
: @
?

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: @*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
O
Variable_1/AssignAssignVariableOp
Variable_1random_normal_1*
dtype0
q
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*&
_output_shapes
: @*
dtype0
f
random_normal_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"@     
Y
random_normal_2/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
random_normal_2/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
$random_normal_2/RandomStandardNormalRandomStandardNormalrandom_normal_2/shape*
T0* 
_output_shapes
:
??*
dtype0*

seed *
seed2 
?
random_normal_2/mulMul$random_normal_2/RandomStandardNormalrandom_normal_2/stddev*
T0* 
_output_shapes
:
??
l
random_normal_2Addrandom_normal_2/mulrandom_normal_2/mean*
T0* 
_output_shapes
:
??
?

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
??*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
O
Variable_2/AssignAssignVariableOp
Variable_2random_normal_2*
dtype0
k
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2* 
_output_shapes
:
??*
dtype0
f
random_normal_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   
Y
random_normal_3/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
random_normal_3/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
$random_normal_3/RandomStandardNormalRandomStandardNormalrandom_normal_3/shape*
T0*
_output_shapes
:	?
*
dtype0*

seed *
seed2 
?
random_normal_3/mulMul$random_normal_3/RandomStandardNormalrandom_normal_3/stddev*
T0*
_output_shapes
:	?

k
random_normal_3Addrandom_normal_3/mulrandom_normal_3/mean*
T0*
_output_shapes
:	?

?

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	?
*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
O
Variable_3/AssignAssignVariableOp
Variable_3random_normal_3*
dtype0
j
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:	?
*
dtype0
_
random_normal_4/shapeConst*
_output_shapes
:*
dtype0*
valueB: 
Y
random_normal_4/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
random_normal_4/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
$random_normal_4/RandomStandardNormalRandomStandardNormalrandom_normal_4/shape*
T0*
_output_shapes
: *
dtype0*

seed *
seed2 
}
random_normal_4/mulMul$random_normal_4/RandomStandardNormalrandom_normal_4/stddev*
T0*
_output_shapes
: 
f
random_normal_4Addrandom_normal_4/mulrandom_normal_4/mean*
T0*
_output_shapes
: 
?

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
O
Variable_4/AssignAssignVariableOp
Variable_4random_normal_4*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
: *
dtype0
_
random_normal_5/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
Y
random_normal_5/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
random_normal_5/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
$random_normal_5/RandomStandardNormalRandomStandardNormalrandom_normal_5/shape*
T0*
_output_shapes
:@*
dtype0*

seed *
seed2 
}
random_normal_5/mulMul$random_normal_5/RandomStandardNormalrandom_normal_5/stddev*
T0*
_output_shapes
:@
f
random_normal_5Addrandom_normal_5/mulrandom_normal_5/mean*
T0*
_output_shapes
:@
?

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
O
Variable_5/AssignAssignVariableOp
Variable_5random_normal_5*
dtype0
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:@*
dtype0
`
random_normal_6/shapeConst*
_output_shapes
:*
dtype0*
valueB:?
Y
random_normal_6/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
random_normal_6/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
$random_normal_6/RandomStandardNormalRandomStandardNormalrandom_normal_6/shape*
T0*
_output_shapes	
:?*
dtype0*

seed *
seed2 
~
random_normal_6/mulMul$random_normal_6/RandomStandardNormalrandom_normal_6/stddev*
T0*
_output_shapes	
:?
g
random_normal_6Addrandom_normal_6/mulrandom_normal_6/mean*
T0*
_output_shapes	
:?
?

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
O
Variable_6/AssignAssignVariableOp
Variable_6random_normal_6*
dtype0
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:?*
dtype0
_
random_normal_7/shapeConst*
_output_shapes
:*
dtype0*
valueB:

Y
random_normal_7/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
[
random_normal_7/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
$random_normal_7/RandomStandardNormalRandomStandardNormalrandom_normal_7/shape*
T0*
_output_shapes
:
*
dtype0*

seed *
seed2 
}
random_normal_7/mulMul$random_normal_7/RandomStandardNormalrandom_normal_7/stddev*
T0*
_output_shapes
:

f
random_normal_7Addrandom_normal_7/mulrandom_normal_7/mean*
T0*
_output_shapes
:

?

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
O
Variable_7/AssignAssignVariableOp
Variable_7random_normal_7*
dtype0
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:
*
dtype0
f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         
r
ReshapeReshapex_inputReshape/shape*
T0*
Tshape0*/
_output_shapes
:?????????
f
Conv2D/ReadVariableOpReadVariableOpVariable*&
_output_shapes
: *
dtype0
?
Conv2DConv2DReshapeConv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? *
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
]
BiasAdd/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
: *
dtype0
?
BiasAddBiasAddConv2DBiasAdd/ReadVariableOp*
T0*/
_output_shapes
:????????? *
data_formatNHWC
O
ReluReluBiasAdd*
T0*/
_output_shapes
:????????? 
?
	MaxPool2dMaxPoolRelu*
T0*/
_output_shapes
:????????? *
data_formatNHWC*
explicit_paddings
 *
ksize
*
paddingSAME*
strides

j
Conv2D_1/ReadVariableOpReadVariableOp
Variable_1*&
_output_shapes
: @*
dtype0
?
Conv2D_1Conv2D	MaxPool2dConv2D_1/ReadVariableOp*
T0*/
_output_shapes
:?????????@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
_
BiasAdd_1/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:@*
dtype0
?
	BiasAdd_1BiasAddConv2D_1BiasAdd_1/ReadVariableOp*
T0*/
_output_shapes
:?????????@*
data_formatNHWC
S
Relu_1Relu	BiasAdd_1*
T0*/
_output_shapes
:?????????@
?
MaxPool2d_1MaxPoolRelu_1*
T0*/
_output_shapes
:?????????@*
data_formatNHWC*
explicit_paddings
 *
ksize
*
paddingSAME*
strides

`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????@  
s
	Reshape_1ReshapeMaxPool2d_1Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:??????????
b
MatMul/ReadVariableOpReadVariableOp
Variable_2* 
_output_shapes
:
??*
dtype0
?
MatMulMatMul	Reshape_1MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
Z
Add/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:?*
dtype0
Y
AddAddMatMulAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
F
Relu_2ReluAdd*
T0*(
_output_shapes
:??????????
R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????
\
dropout/MulMulRelu_2dropout/Const*
T0*(
_output_shapes
:??????????
S
dropout/ShapeShapeRelu_2*
T0*
_output_shapes
:*
out_type0
?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
T0*(
_output_shapes
:??????????*
dtype0*

seed *
seed2 
[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>
?
dropout/GreaterEqualGreaterEqual$dropout/random_uniform/RandomUniformdropout/GreaterEqual/y*
T0*(
_output_shapes
:??????????
|
dropout/CastCastdropout/GreaterEqual*

DstT0*

SrcT0
*
Truncate( *(
_output_shapes
:??????????
b
dropout/Mul_1Muldropout/Muldropout/Cast*
T0*(
_output_shapes
:??????????
c
MatMul_1/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:	?
*
dtype0
?
MatMul_1MatMuldropout/Mul_1MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:?????????
*
transpose_a( *
transpose_b( 
[
Add_1/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:
*
dtype0
^
Add_1AddMatMul_1Add_1/ReadVariableOp*
T0*'
_output_shapes
:?????????

[
StopGradientStopGradientPlaceholder*
T0*'
_output_shapes
:?????????

h
&softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :
l
'softmax_cross_entropy_with_logits/ShapeShapeAdd_1*
T0*
_output_shapes
:*
out_type0
j
(softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :
n
)softmax_cross_entropy_with_logits/Shape_1ShapeAdd_1*
T0*
_output_shapes
:*
out_type0
i
'softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :
?
%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 
?
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*
N*
T0*
_output_shapes
:*

axis 
v
,softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0*
_output_shapes
:
?
1softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
?????????
o
-softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
?
)softmax_cross_entropy_with_logits/ReshapeReshapeAdd_1(softmax_cross_entropy_with_logits/concat*
T0*
Tshape0*0
_output_shapes
:??????????????????
j
(softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :
u
)softmax_cross_entropy_with_logits/Shape_2ShapeStopGradient*
T0*
_output_shapes
:*
out_type0
k
)softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :
?
'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
?
/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*
N*
T0*
_output_shapes
:*

axis 
x
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:
?
3softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
?????????
q
/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*
N*
T0*

Tidx0*
_output_shapes
:
?
+softmax_cross_entropy_with_logits/Reshape_1ReshapeStopGradient*softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:?????????:??????????????????
k
)softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :
?
'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 
y
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: 
?
.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*
N*
T0*
_output_shapes
:*

axis 
?
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0*
_output_shapes
:
?
+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0*#
_output_shapes
:?????????
O
ConstConst*
_output_shapes
:*
dtype0*
valueB: 
~
MeanMean+softmax_cross_entropy_with_logits/Reshape_2Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
X
gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0
k
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
?
gradients/Mean_grad/ShapeShape+softmax_cross_entropy_with_logits/Reshape_2*
T0*
_output_shapes
:*
out_type0
?
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:?????????
?
gradients/Mean_grad/Shape_1Shape+softmax_cross_entropy_with_logits/Reshape_2*
T0*
_output_shapes
:*
out_type0
^
gradients/Mean_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
c
gradients/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
gradients/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
_
gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
?
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
?
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:?????????
?
@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
_output_shapes
:*
out_type0
?
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truediv@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
gradients/zeros_like	ZerosLike#softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:??????????????????
?
?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:?????????
?
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:??????????????????
?
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:??????????????????
?
4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:??????????????????
?
Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*

Tdim0*'
_output_shapes
:?????????
?
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:??????????????????
?
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
?
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/softmax_cross_entropy_with_logits_grad/mul*0
_output_shapes
:??????????????????
?
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1*0
_output_shapes
:??????????????????
?
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapeAdd_1*
T0*
_output_shapes
:*
out_type0
?
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

b
gradients/Add_1_grad/ShapeShapeMatMul_1*
T0*
_output_shapes
:*
out_type0
p
gradients/Add_1_grad/Shape_1ShapeAdd_1/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/Add_1_grad/SumSum@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*gradients/Add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/Add_1_grad/ReshapeReshapegradients/Add_1_grad/Sumgradients/Add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
gradients/Add_1_grad/Sum_1Sum@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape,gradients/Add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/Add_1_grad/Reshape_1Reshapegradients/Add_1_grad/Sum_1gradients/Add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

m
%gradients/Add_1_grad/tuple/group_depsNoOp^gradients/Add_1_grad/Reshape^gradients/Add_1_grad/Reshape_1
?
-gradients/Add_1_grad/tuple/control_dependencyIdentitygradients/Add_1_grad/Reshape&^gradients/Add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_1_grad/Reshape*'
_output_shapes
:?????????

?
/gradients/Add_1_grad/tuple/control_dependency_1Identitygradients/Add_1_grad/Reshape_1&^gradients/Add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_1_grad/Reshape_1*
_output_shapes
:

?
gradients/MatMul_1_grad/MatMulMatMul-gradients/Add_1_grad/tuple/control_dependencyMatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(
?
 gradients/MatMul_1_grad/MatMul_1MatMuldropout/Mul_1-gradients/Add_1_grad/tuple/control_dependency*
T0*
_output_shapes
:	?
*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
?
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*(
_output_shapes
:??????????
?
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes
:	?

m
"gradients/dropout/Mul_1_grad/ShapeShapedropout/Mul*
T0*
_output_shapes
:*
out_type0
p
$gradients/dropout/Mul_1_grad/Shape_1Shapedropout/Cast*
T0*
_output_shapes
:*
out_type0
?
2gradients/dropout/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout/Mul_1_grad/Shape$gradients/dropout/Mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
 gradients/dropout/Mul_1_grad/MulMul0gradients/MatMul_1_grad/tuple/control_dependencydropout/Cast*
T0*(
_output_shapes
:??????????
?
 gradients/dropout/Mul_1_grad/SumSum gradients/dropout/Mul_1_grad/Mul2gradients/dropout/Mul_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
$gradients/dropout/Mul_1_grad/ReshapeReshape gradients/dropout/Mul_1_grad/Sum"gradients/dropout/Mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
"gradients/dropout/Mul_1_grad/Mul_1Muldropout/Mul0gradients/MatMul_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:??????????
?
"gradients/dropout/Mul_1_grad/Sum_1Sum"gradients/dropout/Mul_1_grad/Mul_14gradients/dropout/Mul_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
&gradients/dropout/Mul_1_grad/Reshape_1Reshape"gradients/dropout/Mul_1_grad/Sum_1$gradients/dropout/Mul_1_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:??????????
?
-gradients/dropout/Mul_1_grad/tuple/group_depsNoOp%^gradients/dropout/Mul_1_grad/Reshape'^gradients/dropout/Mul_1_grad/Reshape_1
?
5gradients/dropout/Mul_1_grad/tuple/control_dependencyIdentity$gradients/dropout/Mul_1_grad/Reshape.^gradients/dropout/Mul_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout/Mul_1_grad/Reshape*(
_output_shapes
:??????????
?
7gradients/dropout/Mul_1_grad/tuple/control_dependency_1Identity&gradients/dropout/Mul_1_grad/Reshape_1.^gradients/dropout/Mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout/Mul_1_grad/Reshape_1*(
_output_shapes
:??????????
f
 gradients/dropout/Mul_grad/ShapeShapeRelu_2*
T0*
_output_shapes
:*
out_type0
m
"gradients/dropout/Mul_grad/Shape_1Shapedropout/Const*
T0*
_output_shapes
: *
out_type0
?
0gradients/dropout/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/Mul_grad/Shape"gradients/dropout/Mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/dropout/Mul_grad/MulMul5gradients/dropout/Mul_1_grad/tuple/control_dependencydropout/Const*
T0*(
_output_shapes
:??????????
?
gradients/dropout/Mul_grad/SumSumgradients/dropout/Mul_grad/Mul0gradients/dropout/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
"gradients/dropout/Mul_grad/ReshapeReshapegradients/dropout/Mul_grad/Sum gradients/dropout/Mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
 gradients/dropout/Mul_grad/Mul_1MulRelu_25gradients/dropout/Mul_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:??????????
?
 gradients/dropout/Mul_grad/Sum_1Sum gradients/dropout/Mul_grad/Mul_12gradients/dropout/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
$gradients/dropout/Mul_grad/Reshape_1Reshape gradients/dropout/Mul_grad/Sum_1"gradients/dropout/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

+gradients/dropout/Mul_grad/tuple/group_depsNoOp#^gradients/dropout/Mul_grad/Reshape%^gradients/dropout/Mul_grad/Reshape_1
?
3gradients/dropout/Mul_grad/tuple/control_dependencyIdentity"gradients/dropout/Mul_grad/Reshape,^gradients/dropout/Mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dropout/Mul_grad/Reshape*(
_output_shapes
:??????????
?
5gradients/dropout/Mul_grad/tuple/control_dependency_1Identity$gradients/dropout/Mul_grad/Reshape_1,^gradients/dropout/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout/Mul_grad/Reshape_1*
_output_shapes
: 
?
gradients/Relu_2_grad/ReluGradReluGrad3gradients/dropout/Mul_grad/tuple/control_dependencyRelu_2*
T0*(
_output_shapes
:??????????
^
gradients/Add_grad/ShapeShapeMatMul*
T0*
_output_shapes
:*
out_type0
l
gradients/Add_grad/Shape_1ShapeAdd/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
?
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/Add_grad/SumSumgradients/Relu_2_grad/ReluGrad(gradients/Add_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
gradients/Add_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad*gradients/Add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
?
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Add_grad/Reshape*(
_output_shapes
:??????????
?
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1*
_output_shapes	
:?
?
gradients/MatMul_grad/MatMulMatMul+gradients/Add_grad/tuple/control_dependencyMatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(
?
gradients/MatMul_grad/MatMul_1MatMul	Reshape_1+gradients/Add_grad/tuple/control_dependency*
T0* 
_output_shapes
:
??*
transpose_a(*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
?
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1* 
_output_shapes
:
??
i
gradients/Reshape_1_grad/ShapeShapeMaxPool2d_1*
T0*
_output_shapes
:*
out_type0
?
 gradients/Reshape_1_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????@
?
&gradients/MaxPool2d_1_grad/MaxPoolGradMaxPoolGradRelu_1MaxPool2d_1 gradients/Reshape_1_grad/Reshape*
T0*/
_output_shapes
:?????????@*
data_formatNHWC*
explicit_paddings
 *
ksize
*
paddingSAME*
strides

?
gradients/Relu_1_grad/ReluGradReluGrad&gradients/MaxPool2d_1_grad/MaxPoolGradRelu_1*
T0*/
_output_shapes
:?????????@
?
$gradients/BiasAdd_1_grad/BiasAddGradBiasAddGradgradients/Relu_1_grad/ReluGrad*
T0*
_output_shapes
:@*
data_formatNHWC
y
)gradients/BiasAdd_1_grad/tuple/group_depsNoOp%^gradients/BiasAdd_1_grad/BiasAddGrad^gradients/Relu_1_grad/ReluGrad
?
1gradients/BiasAdd_1_grad/tuple/control_dependencyIdentitygradients/Relu_1_grad/ReluGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad*/
_output_shapes
:?????????@
?
3gradients/BiasAdd_1_grad/tuple/control_dependency_1Identity$gradients/BiasAdd_1_grad/BiasAddGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/BiasAdd_1_grad/BiasAddGrad*
_output_shapes
:@
?
gradients/Conv2D_1_grad/ShapeNShapeN	MaxPool2dConv2D_1/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
?
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNConv2D_1/ReadVariableOp1gradients/BiasAdd_1_grad/tuple/control_dependency*
T0*/
_output_shapes
:????????? *
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilter	MaxPool2d gradients/Conv2D_1_grad/ShapeN:11gradients/BiasAdd_1_grad/tuple/control_dependency*
T0*&
_output_shapes
: @*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
(gradients/Conv2D_1_grad/tuple/group_depsNoOp-^gradients/Conv2D_1_grad/Conv2DBackpropFilter,^gradients/Conv2D_1_grad/Conv2DBackpropInput
?
0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput*/
_output_shapes
:????????? 
?
2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter*&
_output_shapes
: @
?
$gradients/MaxPool2d_grad/MaxPoolGradMaxPoolGradRelu	MaxPool2d0gradients/Conv2D_1_grad/tuple/control_dependency*
T0*/
_output_shapes
:????????? *
data_formatNHWC*
explicit_paddings
 *
ksize
*
paddingSAME*
strides

?
gradients/Relu_grad/ReluGradReluGrad$gradients/MaxPool2d_grad/MaxPoolGradRelu*
T0*/
_output_shapes
:????????? 
?
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/Relu_grad/ReluGrad*
T0*
_output_shapes
: *
data_formatNHWC
s
'gradients/BiasAdd_grad/tuple/group_depsNoOp#^gradients/BiasAdd_grad/BiasAddGrad^gradients/Relu_grad/ReluGrad
?
/gradients/BiasAdd_grad/tuple/control_dependencyIdentitygradients/Relu_grad/ReluGrad(^gradients/BiasAdd_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Relu_grad/ReluGrad*/
_output_shapes
:????????? 
?
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
?
gradients/Conv2D_grad/ShapeNShapeNReshapeConv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
?
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNConv2D/ReadVariableOp/gradients/BiasAdd_grad/tuple/control_dependency*
T0*/
_output_shapes
:?????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1/gradients/BiasAdd_grad/tuple/control_dependency*
T0*&
_output_shapes
: *
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput
?
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:?????????
?
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
?
%beta1_power/Initializer/initial_valueConst*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
valueB
 *fff?
?
beta1_powerVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namebeta1_power
?
,beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power*
_class
loc:@Variable*
_output_shapes
: 
g
beta1_power/AssignAssignVariableOpbeta1_power%beta1_power/Initializer/initial_value*
dtype0
?
beta1_power/Read/ReadVariableOpReadVariableOpbeta1_power*
_class
loc:@Variable*
_output_shapes
: *
dtype0
?
%beta2_power/Initializer/initial_valueConst*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
valueB
 *w??
?
beta2_powerVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namebeta2_power
?
,beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power*
_class
loc:@Variable*
_output_shapes
: 
g
beta2_power/AssignAssignVariableOpbeta2_power%beta2_power/Initializer/initial_value*
dtype0
?
beta2_power/Read/ReadVariableOpReadVariableOpbeta2_power*
_class
loc:@Variable*
_output_shapes
: *
dtype0
?
Variable/Adam/Initializer/zerosConst*
_class
loc:@Variable*&
_output_shapes
: *
dtype0*%
valueB *    
?
Variable/AdamVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_nameVariable/Adam
?
.Variable/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable/Adam*
_class
loc:@Variable*
_output_shapes
: 
e
Variable/Adam/AssignAssignVariableOpVariable/AdamVariable/Adam/Initializer/zeros*
dtype0
?
!Variable/Adam/Read/ReadVariableOpReadVariableOpVariable/Adam*
_class
loc:@Variable*&
_output_shapes
: *
dtype0
?
!Variable/Adam_1/Initializer/zerosConst*
_class
loc:@Variable*&
_output_shapes
: *
dtype0*%
valueB *    
?
Variable/Adam_1VarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: * 
shared_nameVariable/Adam_1
?
0Variable/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable/Adam_1*
_class
loc:@Variable*
_output_shapes
: 
k
Variable/Adam_1/AssignAssignVariableOpVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
dtype0
?
#Variable/Adam_1/Read/ReadVariableOpReadVariableOpVariable/Adam_1*
_class
loc:@Variable*&
_output_shapes
: *
dtype0
?
1Variable_1/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_1*
_output_shapes
:*
dtype0*%
valueB"          @   
?
'Variable_1/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
valueB
 *    
?
!Variable_1/Adam/Initializer/zerosFill1Variable_1/Adam/Initializer/zeros/shape_as_tensor'Variable_1/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_1*&
_output_shapes
: @*

index_type0
?
Variable_1/AdamVarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: @* 
shared_nameVariable_1/Adam
?
0Variable_1/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_1/Adam*
_class
loc:@Variable_1*
_output_shapes
: 
k
Variable_1/Adam/AssignAssignVariableOpVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
dtype0
?
#Variable_1/Adam/Read/ReadVariableOpReadVariableOpVariable_1/Adam*
_class
loc:@Variable_1*&
_output_shapes
: @*
dtype0
?
3Variable_1/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_1*
_output_shapes
:*
dtype0*%
valueB"          @   
?
)Variable_1/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
valueB
 *    
?
#Variable_1/Adam_1/Initializer/zerosFill3Variable_1/Adam_1/Initializer/zeros/shape_as_tensor)Variable_1/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_1*&
_output_shapes
: @*

index_type0
?
Variable_1/Adam_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: @*"
shared_nameVariable_1/Adam_1
?
2Variable_1/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_1/Adam_1*
_class
loc:@Variable_1*
_output_shapes
: 
q
Variable_1/Adam_1/AssignAssignVariableOpVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
dtype0
?
%Variable_1/Adam_1/Read/ReadVariableOpReadVariableOpVariable_1/Adam_1*
_class
loc:@Variable_1*&
_output_shapes
: @*
dtype0
?
1Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_2*
_output_shapes
:*
dtype0*
valueB"@     
?
'Variable_2/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_2*
_output_shapes
: *
dtype0*
valueB
 *    
?
!Variable_2/Adam/Initializer/zerosFill1Variable_2/Adam/Initializer/zeros/shape_as_tensor'Variable_2/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_2* 
_output_shapes
:
??*

index_type0
?
Variable_2/AdamVarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
??* 
shared_nameVariable_2/Adam
?
0Variable_2/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_2/Adam*
_class
loc:@Variable_2*
_output_shapes
: 
k
Variable_2/Adam/AssignAssignVariableOpVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
dtype0
?
#Variable_2/Adam/Read/ReadVariableOpReadVariableOpVariable_2/Adam*
_class
loc:@Variable_2* 
_output_shapes
:
??*
dtype0
?
3Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_2*
_output_shapes
:*
dtype0*
valueB"@     
?
)Variable_2/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_2*
_output_shapes
: *
dtype0*
valueB
 *    
?
#Variable_2/Adam_1/Initializer/zerosFill3Variable_2/Adam_1/Initializer/zeros/shape_as_tensor)Variable_2/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_2* 
_output_shapes
:
??*

index_type0
?
Variable_2/Adam_1VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
??*"
shared_nameVariable_2/Adam_1
?
2Variable_2/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_2/Adam_1*
_class
loc:@Variable_2*
_output_shapes
: 
q
Variable_2/Adam_1/AssignAssignVariableOpVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
dtype0
?
%Variable_2/Adam_1/Read/ReadVariableOpReadVariableOpVariable_2/Adam_1*
_class
loc:@Variable_2* 
_output_shapes
:
??*
dtype0
?
1Variable_3/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_3*
_output_shapes
:*
dtype0*
valueB"   
   
?
'Variable_3/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_3*
_output_shapes
: *
dtype0*
valueB
 *    
?
!Variable_3/Adam/Initializer/zerosFill1Variable_3/Adam/Initializer/zeros/shape_as_tensor'Variable_3/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_3*
_output_shapes
:	?
*

index_type0
?
Variable_3/AdamVarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	?
* 
shared_nameVariable_3/Adam
?
0Variable_3/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_3/Adam*
_class
loc:@Variable_3*
_output_shapes
: 
k
Variable_3/Adam/AssignAssignVariableOpVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
dtype0
?
#Variable_3/Adam/Read/ReadVariableOpReadVariableOpVariable_3/Adam*
_class
loc:@Variable_3*
_output_shapes
:	?
*
dtype0
?
3Variable_3/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_3*
_output_shapes
:*
dtype0*
valueB"   
   
?
)Variable_3/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_3*
_output_shapes
: *
dtype0*
valueB
 *    
?
#Variable_3/Adam_1/Initializer/zerosFill3Variable_3/Adam_1/Initializer/zeros/shape_as_tensor)Variable_3/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_3*
_output_shapes
:	?
*

index_type0
?
Variable_3/Adam_1VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	?
*"
shared_nameVariable_3/Adam_1
?
2Variable_3/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_3/Adam_1*
_class
loc:@Variable_3*
_output_shapes
: 
q
Variable_3/Adam_1/AssignAssignVariableOpVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
dtype0
?
%Variable_3/Adam_1/Read/ReadVariableOpReadVariableOpVariable_3/Adam_1*
_class
loc:@Variable_3*
_output_shapes
:	?
*
dtype0
?
!Variable_4/Adam/Initializer/zerosConst*
_class
loc:@Variable_4*
_output_shapes
: *
dtype0*
valueB *    
?
Variable_4/AdamVarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: * 
shared_nameVariable_4/Adam
?
0Variable_4/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_4/Adam*
_class
loc:@Variable_4*
_output_shapes
: 
k
Variable_4/Adam/AssignAssignVariableOpVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
dtype0
?
#Variable_4/Adam/Read/ReadVariableOpReadVariableOpVariable_4/Adam*
_class
loc:@Variable_4*
_output_shapes
: *
dtype0
?
#Variable_4/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_4*
_output_shapes
: *
dtype0*
valueB *    
?
Variable_4/Adam_1VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *"
shared_nameVariable_4/Adam_1
?
2Variable_4/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_4/Adam_1*
_class
loc:@Variable_4*
_output_shapes
: 
q
Variable_4/Adam_1/AssignAssignVariableOpVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
dtype0
?
%Variable_4/Adam_1/Read/ReadVariableOpReadVariableOpVariable_4/Adam_1*
_class
loc:@Variable_4*
_output_shapes
: *
dtype0
?
!Variable_5/Adam/Initializer/zerosConst*
_class
loc:@Variable_5*
_output_shapes
:@*
dtype0*
valueB@*    
?
Variable_5/AdamVarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@* 
shared_nameVariable_5/Adam
?
0Variable_5/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_5/Adam*
_class
loc:@Variable_5*
_output_shapes
: 
k
Variable_5/Adam/AssignAssignVariableOpVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
dtype0
?
#Variable_5/Adam/Read/ReadVariableOpReadVariableOpVariable_5/Adam*
_class
loc:@Variable_5*
_output_shapes
:@*
dtype0
?
#Variable_5/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_5*
_output_shapes
:@*
dtype0*
valueB@*    
?
Variable_5/Adam_1VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*"
shared_nameVariable_5/Adam_1
?
2Variable_5/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_5/Adam_1*
_class
loc:@Variable_5*
_output_shapes
: 
q
Variable_5/Adam_1/AssignAssignVariableOpVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
dtype0
?
%Variable_5/Adam_1/Read/ReadVariableOpReadVariableOpVariable_5/Adam_1*
_class
loc:@Variable_5*
_output_shapes
:@*
dtype0
?
1Variable_6/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_6*
_output_shapes
:*
dtype0*
valueB:?
?
'Variable_6/Adam/Initializer/zeros/ConstConst*
_class
loc:@Variable_6*
_output_shapes
: *
dtype0*
valueB
 *    
?
!Variable_6/Adam/Initializer/zerosFill1Variable_6/Adam/Initializer/zeros/shape_as_tensor'Variable_6/Adam/Initializer/zeros/Const*
T0*
_class
loc:@Variable_6*
_output_shapes	
:?*

index_type0
?
Variable_6/AdamVarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?* 
shared_nameVariable_6/Adam
?
0Variable_6/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_6/Adam*
_class
loc:@Variable_6*
_output_shapes
: 
k
Variable_6/Adam/AssignAssignVariableOpVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
dtype0
?
#Variable_6/Adam/Read/ReadVariableOpReadVariableOpVariable_6/Adam*
_class
loc:@Variable_6*
_output_shapes	
:?*
dtype0
?
3Variable_6/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@Variable_6*
_output_shapes
:*
dtype0*
valueB:?
?
)Variable_6/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@Variable_6*
_output_shapes
: *
dtype0*
valueB
 *    
?
#Variable_6/Adam_1/Initializer/zerosFill3Variable_6/Adam_1/Initializer/zeros/shape_as_tensor)Variable_6/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@Variable_6*
_output_shapes	
:?*

index_type0
?
Variable_6/Adam_1VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*"
shared_nameVariable_6/Adam_1
?
2Variable_6/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_6/Adam_1*
_class
loc:@Variable_6*
_output_shapes
: 
q
Variable_6/Adam_1/AssignAssignVariableOpVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
dtype0
?
%Variable_6/Adam_1/Read/ReadVariableOpReadVariableOpVariable_6/Adam_1*
_class
loc:@Variable_6*
_output_shapes	
:?*
dtype0
?
!Variable_7/Adam/Initializer/zerosConst*
_class
loc:@Variable_7*
_output_shapes
:
*
dtype0*
valueB
*    
?
Variable_7/AdamVarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
* 
shared_nameVariable_7/Adam
?
0Variable_7/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_7/Adam*
_class
loc:@Variable_7*
_output_shapes
: 
k
Variable_7/Adam/AssignAssignVariableOpVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
dtype0
?
#Variable_7/Adam/Read/ReadVariableOpReadVariableOpVariable_7/Adam*
_class
loc:@Variable_7*
_output_shapes
:
*
dtype0
?
#Variable_7/Adam_1/Initializer/zerosConst*
_class
loc:@Variable_7*
_output_shapes
:
*
dtype0*
valueB
*    
?
Variable_7/Adam_1VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*"
shared_nameVariable_7/Adam_1
?
2Variable_7/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_7/Adam_1*
_class
loc:@Variable_7*
_output_shapes
: 
q
Variable_7/Adam_1/AssignAssignVariableOpVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
dtype0
?
%Variable_7/Adam_1/Read/ReadVariableOpReadVariableOpVariable_7/Adam_1*
_class
loc:@Variable_7*
_output_shapes
:
*
dtype0
W
Adam/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *o?:
O

Adam/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
O

Adam/beta2Const*
_output_shapes
: *
dtype0*
valueB
 *w??
Q
Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *w?+2
y
5Adam/update_Variable/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
{
7Adam/update_Variable/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
&Adam/update_Variable/ResourceApplyAdamResourceApplyAdamVariableVariable/AdamVariable/Adam_15Adam/update_Variable/ResourceApplyAdam/ReadVariableOp7Adam/update_Variable/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_1/ResourceApplyAdamResourceApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_17Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_1/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_2/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_2/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_2/ResourceApplyAdamResourceApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_17Adam/update_Variable_2/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_2/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_2*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_3/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_3/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_3/ResourceApplyAdamResourceApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_17Adam/update_Variable_3/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_3/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_3*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_4/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_4/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_4/ResourceApplyAdamResourceApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_17Adam/update_Variable_4/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_4/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_4*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_5/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_5/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_5/ResourceApplyAdamResourceApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_17Adam/update_Variable_5/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_5/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/BiasAdd_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_5*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_6/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_6/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_6/ResourceApplyAdamResourceApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_17Adam/update_Variable_6/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_6/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/Add_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_6*
use_locking( *
use_nesterov( 
{
7Adam/update_Variable_7/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
}
9Adam/update_Variable_7/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
?
(Adam/update_Variable_7/ResourceApplyAdamResourceApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_17Adam/update_Variable_7/ResourceApplyAdam/ReadVariableOp9Adam/update_Variable_7/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_7*
use_locking( *
use_nesterov( 
?
Adam/ReadVariableOpReadVariableOpbeta1_power'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam*
_output_shapes
: *
dtype0
n
Adam/mulMulAdam/ReadVariableOp
Adam/beta1*
T0*
_class
loc:@Variable*
_output_shapes
: 
j
Adam/AssignVariableOpAssignVariableOpbeta1_powerAdam/mul*
_class
loc:@Variable*
dtype0
?
Adam/ReadVariableOp_1ReadVariableOpbeta1_power^Adam/AssignVariableOp'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam*
_class
loc:@Variable*
_output_shapes
: *
dtype0
?
Adam/ReadVariableOp_2ReadVariableOpbeta2_power'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam*
_output_shapes
: *
dtype0
r

Adam/mul_1MulAdam/ReadVariableOp_2
Adam/beta2*
T0*
_class
loc:@Variable*
_output_shapes
: 
n
Adam/AssignVariableOp_1AssignVariableOpbeta2_power
Adam/mul_1*
_class
loc:@Variable*
dtype0
?
Adam/ReadVariableOp_3ReadVariableOpbeta2_power^Adam/AssignVariableOp_1'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam*
_class
loc:@Variable*
_output_shapes
: *
dtype0
?
AdamNoOp^Adam/AssignVariableOp^Adam/AssignVariableOp_1'^Adam/update_Variable/ResourceApplyAdam)^Adam/update_Variable_1/ResourceApplyAdam)^Adam/update_Variable_2/ResourceApplyAdam)^Adam/update_Variable_3/ResourceApplyAdam)^Adam/update_Variable_4/ResourceApplyAdam)^Adam/update_Variable_5/ResourceApplyAdam)^Adam/update_Variable_6/ResourceApplyAdam)^Adam/update_Variable_7/ResourceApplyAdam
U
predictor/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
|
	predictorArgMaxAdd_1predictor/dimension*
T0*

Tidx0*#
_output_shapes
:?????????*
output_type0	
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
v
ArgMaxArgMaxAdd_1ArgMax/dimension*
T0*

Tidx0*#
_output_shapes
:?????????*
output_type0	
T
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
?
ArgMax_1ArgMaxPlaceholderArgMax_1/dimension*
T0*

Tidx0*#
_output_shapes
:?????????*
output_type0	
n
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:?????????*
incompatible_shape_error(
`
CastCastEqual*

DstT0*

SrcT0
*
Truncate( *#
_output_shapes
:?????????
Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
[
Mean_1MeanCastConst_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
V
accuracy/tagsConst*
_output_shapes
: *
dtype0*
valueB Baccuracy
Q
accuracyScalarSummaryaccuracy/tagsMean_1*
T0*
_output_shapes
: 
?
initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^Variable_4/Adam/Assign^Variable_4/Adam_1/Assign^Variable_4/Assign^Variable_5/Adam/Assign^Variable_5/Adam_1/Assign^Variable_5/Assign^Variable_6/Adam/Assign^Variable_6/Adam_1/Assign^Variable_6/Assign^Variable_7/Adam/Assign^Variable_7/Adam_1/Assign^Variable_7/Assign^beta1_power/Assign^beta2_power/Assign
M
Merge/MergeSummaryMergeSummaryaccuracy*
N*
_output_shapes
: 

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
w
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1Bbeta1_powerBbeta2_power
?
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable/Read/ReadVariableOp!Variable/Adam/Read/ReadVariableOp#Variable/Adam_1/Read/ReadVariableOpVariable_1/Read/ReadVariableOp#Variable_1/Adam/Read/ReadVariableOp%Variable_1/Adam_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOp#Variable_2/Adam/Read/ReadVariableOp%Variable_2/Adam_1/Read/ReadVariableOpVariable_3/Read/ReadVariableOp#Variable_3/Adam/Read/ReadVariableOp%Variable_3/Adam_1/Read/ReadVariableOpVariable_4/Read/ReadVariableOp#Variable_4/Adam/Read/ReadVariableOp%Variable_4/Adam_1/Read/ReadVariableOpVariable_5/Read/ReadVariableOp#Variable_5/Adam/Read/ReadVariableOp%Variable_5/Adam_1/Read/ReadVariableOpVariable_6/Read/ReadVariableOp#Variable_6/Adam/Read/ReadVariableOp%Variable_6/Adam_1/Read/ReadVariableOpVariable_7/Read/ReadVariableOp#Variable_7/Adam/Read/ReadVariableOp%Variable_7/Adam_1/Read/ReadVariableOpbeta1_power/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp"/device:CPU:0*(
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 
?
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1Bbeta1_powerBbeta2_power
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
Q
save/AssignVariableOpAssignVariableOpVariablesave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
X
save/AssignVariableOp_1AssignVariableOpVariable/Adamsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
Z
save/AssignVariableOp_2AssignVariableOpVariable/Adam_1save/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
U
save/AssignVariableOp_3AssignVariableOp
Variable_1save/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
Z
save/AssignVariableOp_4AssignVariableOpVariable_1/Adamsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
\
save/AssignVariableOp_5AssignVariableOpVariable_1/Adam_1save/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
U
save/AssignVariableOp_6AssignVariableOp
Variable_2save/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
Z
save/AssignVariableOp_7AssignVariableOpVariable_2/Adamsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
\
save/AssignVariableOp_8AssignVariableOpVariable_2/Adam_1save/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
V
save/AssignVariableOp_9AssignVariableOp
Variable_3save/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
\
save/AssignVariableOp_10AssignVariableOpVariable_3/Adamsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
^
save/AssignVariableOp_11AssignVariableOpVariable_3/Adam_1save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
W
save/AssignVariableOp_12AssignVariableOp
Variable_4save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
\
save/AssignVariableOp_13AssignVariableOpVariable_4/Adamsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
^
save/AssignVariableOp_14AssignVariableOpVariable_4/Adam_1save/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
W
save/AssignVariableOp_15AssignVariableOp
Variable_5save/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
\
save/AssignVariableOp_16AssignVariableOpVariable_5/Adamsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
^
save/AssignVariableOp_17AssignVariableOpVariable_5/Adam_1save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
W
save/AssignVariableOp_18AssignVariableOp
Variable_6save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
\
save/AssignVariableOp_19AssignVariableOpVariable_6/Adamsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
^
save/AssignVariableOp_20AssignVariableOpVariable_6/Adam_1save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
W
save/AssignVariableOp_21AssignVariableOp
Variable_7save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
\
save/AssignVariableOp_22AssignVariableOpVariable_7/Adamsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
^
save/AssignVariableOp_23AssignVariableOpVariable_7/Adam_1save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
X
save/AssignVariableOp_24AssignVariableOpbeta1_powersave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
X
save/AssignVariableOp_25AssignVariableOpbeta2_powersave/Identity_26*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"?<
save/Const:0save/Identity:0save/restore_all (5 @F8")
saved_model_main_op

legacy_init_op"
	summaries


accuracy:0"
train_op

Adam"?
trainable_variables??
R

Variable:0Variable/AssignVariable/Read/ReadVariableOp:0(2random_normal:08
Z
Variable_1:0Variable_1/Assign Variable_1/Read/ReadVariableOp:0(2random_normal_1:08
Z
Variable_2:0Variable_2/Assign Variable_2/Read/ReadVariableOp:0(2random_normal_2:08
Z
Variable_3:0Variable_3/Assign Variable_3/Read/ReadVariableOp:0(2random_normal_3:08
Z
Variable_4:0Variable_4/Assign Variable_4/Read/ReadVariableOp:0(2random_normal_4:08
Z
Variable_5:0Variable_5/Assign Variable_5/Read/ReadVariableOp:0(2random_normal_5:08
Z
Variable_6:0Variable_6/Assign Variable_6/Read/ReadVariableOp:0(2random_normal_6:08
Z
Variable_7:0Variable_7/Assign Variable_7/Read/ReadVariableOp:0(2random_normal_7:08"?
	variables??
R

Variable:0Variable/AssignVariable/Read/ReadVariableOp:0(2random_normal:08
Z
Variable_1:0Variable_1/Assign Variable_1/Read/ReadVariableOp:0(2random_normal_1:08
Z
Variable_2:0Variable_2/Assign Variable_2/Read/ReadVariableOp:0(2random_normal_2:08
Z
Variable_3:0Variable_3/Assign Variable_3/Read/ReadVariableOp:0(2random_normal_3:08
Z
Variable_4:0Variable_4/Assign Variable_4/Read/ReadVariableOp:0(2random_normal_4:08
Z
Variable_5:0Variable_5/Assign Variable_5/Read/ReadVariableOp:0(2random_normal_5:08
Z
Variable_6:0Variable_6/Assign Variable_6/Read/ReadVariableOp:0(2random_normal_6:08
Z
Variable_7:0Variable_7/Assign Variable_7/Read/ReadVariableOp:0(2random_normal_7:08
q
beta1_power:0beta1_power/Assign!beta1_power/Read/ReadVariableOp:0(2'beta1_power/Initializer/initial_value:0
q
beta2_power:0beta2_power/Assign!beta2_power/Read/ReadVariableOp:0(2'beta2_power/Initializer/initial_value:0
q
Variable/Adam:0Variable/Adam/Assign#Variable/Adam/Read/ReadVariableOp:0(2!Variable/Adam/Initializer/zeros:0
y
Variable/Adam_1:0Variable/Adam_1/Assign%Variable/Adam_1/Read/ReadVariableOp:0(2#Variable/Adam_1/Initializer/zeros:0
y
Variable_1/Adam:0Variable_1/Adam/Assign%Variable_1/Adam/Read/ReadVariableOp:0(2#Variable_1/Adam/Initializer/zeros:0
?
Variable_1/Adam_1:0Variable_1/Adam_1/Assign'Variable_1/Adam_1/Read/ReadVariableOp:0(2%Variable_1/Adam_1/Initializer/zeros:0
y
Variable_2/Adam:0Variable_2/Adam/Assign%Variable_2/Adam/Read/ReadVariableOp:0(2#Variable_2/Adam/Initializer/zeros:0
?
Variable_2/Adam_1:0Variable_2/Adam_1/Assign'Variable_2/Adam_1/Read/ReadVariableOp:0(2%Variable_2/Adam_1/Initializer/zeros:0
y
Variable_3/Adam:0Variable_3/Adam/Assign%Variable_3/Adam/Read/ReadVariableOp:0(2#Variable_3/Adam/Initializer/zeros:0
?
Variable_3/Adam_1:0Variable_3/Adam_1/Assign'Variable_3/Adam_1/Read/ReadVariableOp:0(2%Variable_3/Adam_1/Initializer/zeros:0
y
Variable_4/Adam:0Variable_4/Adam/Assign%Variable_4/Adam/Read/ReadVariableOp:0(2#Variable_4/Adam/Initializer/zeros:0
?
Variable_4/Adam_1:0Variable_4/Adam_1/Assign'Variable_4/Adam_1/Read/ReadVariableOp:0(2%Variable_4/Adam_1/Initializer/zeros:0
y
Variable_5/Adam:0Variable_5/Adam/Assign%Variable_5/Adam/Read/ReadVariableOp:0(2#Variable_5/Adam/Initializer/zeros:0
?
Variable_5/Adam_1:0Variable_5/Adam_1/Assign'Variable_5/Adam_1/Read/ReadVariableOp:0(2%Variable_5/Adam_1/Initializer/zeros:0
y
Variable_6/Adam:0Variable_6/Adam/Assign%Variable_6/Adam/Read/ReadVariableOp:0(2#Variable_6/Adam/Initializer/zeros:0
?
Variable_6/Adam_1:0Variable_6/Adam_1/Assign'Variable_6/Adam_1/Read/ReadVariableOp:0(2%Variable_6/Adam_1/Initializer/zeros:0
y
Variable_7/Adam:0Variable_7/Adam/Assign%Variable_7/Adam/Read/ReadVariableOp:0(2#Variable_7/Adam/Initializer/zeros:0
?
Variable_7/Adam_1:0Variable_7/Adam_1/Assign'Variable_7/Adam_1/Read/ReadVariableOp:0(2%Variable_7/Adam_1/Initializer/zeros:0*?
predict_imagesu
+
inputs!
	x_input:0??????????)
classes
predictor:0	?????????tensorflow/serving/classify