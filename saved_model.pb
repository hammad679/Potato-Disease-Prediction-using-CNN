Βό
€ω
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Α
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018Γβ
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	@*
dtype0

Adam/conv2d_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/v
{
)Adam/conv2d_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_21/kernel/v

+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_20/bias/v
{
)Adam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/v

+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/v
{
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_19/kernel/v

+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_18/bias/v
{
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_18/kernel/v

+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_17/bias/v
{
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_17/kernel/v

+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_16/bias/v
{
)Adam/conv2d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_16/kernel/v

+Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/v*&
_output_shapes
: *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	@*
dtype0

Adam/conv2d_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/m
{
)Adam/conv2d_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_21/kernel/m

+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_20/bias/m
{
)Adam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/m

+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/m
{
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_19/kernel/m

+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_18/bias/m
{
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_18/kernel/m

+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_17/bias/m
{
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_17/kernel/m

+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_16/bias/m
{
)Adam/conv2d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_16/kernel/m

+Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/m*&
_output_shapes
: *
dtype0
h
StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar
a
StateVar/Read/ReadVariableOpReadVariableOpStateVar*
_output_shapes
:*
dtype0	
l

StateVar_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_1
e
StateVar_1/Read/ReadVariableOpReadVariableOp
StateVar_1*
_output_shapes
:*
dtype0	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:@*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	@*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0

conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:@*
dtype0

conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:@*
dtype0

conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:@*
dtype0

conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:@*
dtype0

conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
: *
dtype0

conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
£
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ζ’
value»’B·’ B―’

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
¨
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
ͺ
#layer-0
$layer-1
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses*
Θ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op*

4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
Θ
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op*

C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
Θ
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op*

R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
Θ
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op*

a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 
Θ
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op*

p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 
Θ
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
~
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
12
13
14
15*
~
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
12
13
14
15*
* 
΅
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
 trace_0
‘trace_1
’trace_2
£trace_3* 
:
€trace_0
₯trace_1
¦trace_2
§trace_3* 
* 

	¨iter
©beta_1
ͺbeta_2

«decay
¬learning_rate1mϊ2mϋ@mόAmύOmώPm?^m_mmmnm|m}m	m	m	m	m1v2v@vAvOvPv^v_vmvnv|v}v	v	v	v	v*

­serving_default* 

?	variables
―trainable_variables
°regularization_losses
±	keras_api
²__call__
+³&call_and_return_all_conditional_losses* 

΄	variables
΅trainable_variables
Άregularization_losses
·	keras_api
Έ__call__
+Ή&call_and_return_all_conditional_losses* 
* 
* 
* 

Ίnon_trainable_variables
»layers
Όmetrics
 ½layer_regularization_losses
Ύlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
:
Ώtrace_0
ΐtrace_1
Αtrace_2
Βtrace_3* 
:
Γtrace_0
Δtrace_1
Εtrace_2
Ζtrace_3* 
?
Η	variables
Θtrainable_variables
Ιregularization_losses
Κ	keras_api
Λ__call__
+Μ&call_and_return_all_conditional_losses
Ν_random_generator*
?
Ξ	variables
Οtrainable_variables
Πregularization_losses
Ρ	keras_api
?__call__
+Σ&call_and_return_all_conditional_losses
Τ_random_generator*
* 
* 
* 

Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*
:
Ϊtrace_0
Ϋtrace_1
άtrace_2
έtrace_3* 
:
ήtrace_0
ίtrace_1
ΰtrace_2
αtrace_3* 

10
21*

10
21*
* 

βnon_trainable_variables
γlayers
δmetrics
 εlayer_regularization_losses
ζlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

ηtrace_0* 

θtrace_0* 
`Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ιnon_trainable_variables
κlayers
λmetrics
 μlayer_regularization_losses
νlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

ξtrace_0* 

οtrace_0* 

@0
A1*

@0
A1*
* 

πnon_trainable_variables
ρlayers
ςmetrics
 σlayer_regularization_losses
τlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

υtrace_0* 

φtrace_0* 
`Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

χnon_trainable_variables
ψlayers
ωmetrics
 ϊlayer_regularization_losses
ϋlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

όtrace_0* 

ύtrace_0* 

O0
P1*

O0
P1*
* 

ώnon_trainable_variables
?layers
metrics
 layer_regularization_losses
layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

^0
_1*

^0
_1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

m0
n1*

m0
n1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

trace_0* 

 trace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

‘non_trainable_variables
’layers
£metrics
 €layer_regularization_losses
₯layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

¦trace_0* 

§trace_0* 

|0
}1*

|0
}1*
* 

¨non_trainable_variables
©layers
ͺmetrics
 «layer_regularization_losses
¬layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

­trace_0* 

?trace_0* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

―non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

΄trace_0* 

΅trace_0* 
* 
* 
* 

Άnon_trainable_variables
·layers
Έmetrics
 Ήlayer_regularization_losses
Ίlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

»trace_0* 

Όtrace_0* 

0
1*

0
1*
* 

½non_trainable_variables
Ύlayers
Ώmetrics
 ΐlayer_regularization_losses
Αlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Βtrace_0* 

Γtrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Δnon_trainable_variables
Εlayers
Ζmetrics
 Ηlayer_regularization_losses
Θlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ιtrace_0* 

Κtrace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16*

Λ0
Μ1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Νnon_trainable_variables
Ξlayers
Οmetrics
 Πlayer_regularization_losses
Ρlayer_metrics
?	variables
―trainable_variables
°regularization_losses
²__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses* 

?trace_0* 

Σtrace_0* 
* 
* 
* 

Τnon_trainable_variables
Υlayers
Φmetrics
 Χlayer_regularization_losses
Ψlayer_metrics
΄	variables
΅trainable_variables
Άregularization_losses
Έ__call__
+Ή&call_and_return_all_conditional_losses
'Ή"call_and_return_conditional_losses* 

Ωtrace_0* 

Ϊtrace_0* 
* 

0
1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ϋnon_trainable_variables
άlayers
έmetrics
 ήlayer_regularization_losses
ίlayer_metrics
Η	variables
Θtrainable_variables
Ιregularization_losses
Λ__call__
+Μ&call_and_return_all_conditional_losses
'Μ"call_and_return_conditional_losses* 

ΰtrace_0
αtrace_1* 

βtrace_0
γtrace_1* 

δ
_generator*
* 
* 
* 

εnon_trainable_variables
ζlayers
ηmetrics
 θlayer_regularization_losses
ιlayer_metrics
Ξ	variables
Οtrainable_variables
Πregularization_losses
?__call__
+Σ&call_and_return_all_conditional_losses
'Σ"call_and_return_conditional_losses* 

κtrace_0
λtrace_1* 

μtrace_0
νtrace_1* 

ξ
_generator*
* 

#0
$1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
ο	variables
π	keras_api

ρtotal

ςcount*
M
σ	variables
τ	keras_api

υtotal

φcount
χ
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

ψ
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

ω
_state_var*

ρ0
ς1*

ο	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

υ0
φ1*

σ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
vp
VARIABLE_VALUE
StateVar_1Rlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEStateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_16/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_16/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_21/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_16/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_16/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_21/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

"serving_default_sequential_2_inputPlaceholder*1
_output_shapes
:?????????*
dtype0*&
shape:?????????
δ
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_2_inputconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_27819
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
δ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpStateVar_1/Read/ReadVariableOpStateVar/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp)Adam/conv2d_16/bias/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp)Adam/conv2d_20/bias/m/Read/ReadVariableOp+Adam/conv2d_21/kernel/m/Read/ReadVariableOp)Adam/conv2d_21/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp)Adam/conv2d_16/bias/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp)Adam/conv2d_20/bias/v/Read/ReadVariableOp+Adam/conv2d_21/kernel/v/Read/ReadVariableOp)Adam/conv2d_21/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst*H
TinA
?2=			*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_29406
Γ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount
StateVar_1StateVarAdam/conv2d_16/kernel/mAdam/conv2d_16/bias/mAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/mAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/conv2d_21/kernel/mAdam/conv2d_21/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/conv2d_16/kernel/vAdam/conv2d_16/bias/vAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/vAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/conv2d_21/kernel/vAdam/conv2d_21/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*G
Tin@
>2<*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_29593ψ€
Έ
L
0__inference_max_pooling2d_21_layer_call_fn_28808

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_27204
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_27204

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ζ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_28824

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
κ

)__inference_conv2d_20_layer_call_fn_28762

inputs!
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27299w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
σD
»
G__inference_sequential_7_layer_call_and_return_conditional_losses_27367

inputs)
conv2d_16_27228: 
conv2d_16_27230: )
conv2d_17_27246: @
conv2d_17_27248:@)
conv2d_18_27264:@@
conv2d_18_27266:@)
conv2d_19_27282:@@
conv2d_19_27284:@)
conv2d_20_27300:@@
conv2d_20_27302:@)
conv2d_21_27318:@@
conv2d_21_27320:@ 
dense_6_27344:	@
dense_6_27346:@
dense_7_27361:@
dense_7_27363:
identity’!conv2d_16/StatefulPartitionedCall’!conv2d_17/StatefulPartitionedCall’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’dense_6/StatefulPartitionedCall’dense_7/StatefulPartitionedCallΙ
sequential_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_26713θ
sequential_3/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_26781
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall%sequential_3/PartitionedCall:output:0conv2d_16_27228conv2d_16_27230*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27227σ
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_27144
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_27246conv2d_17_27248*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27245σ
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_27156
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_27264conv2d_18_27266*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27263σ
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_27168
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_27282conv2d_19_27284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27281σ
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_27180
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_27300conv2d_20_27302*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27299σ
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_27192
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_27318conv2d_21_27320*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27317σ
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_27204έ
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_27330
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_27344dense_6_27346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_27343
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_27361dense_7_27363*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_27360w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????β
NoOpNoOp"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_16_layer_call_and_return_conditional_losses_28653

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????ώώ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_27156

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs


σ
B__inference_dense_7_layer_call_and_return_conditional_losses_28864

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs

c
G__inference_sequential_3_layer_call_and_return_conditional_losses_28361

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_28743

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?―
Κ
G__inference_sequential_7_layer_call_and_return_conditional_losses_28313

inputs8
*sequential_3_random_flip_map_while_input_6:	S
Esequential_3_random_rotation_stateful_uniform_rngreadandskip_resource:	B
(conv2d_16_conv2d_readvariableop_resource: 7
)conv2d_16_biasadd_readvariableop_resource: B
(conv2d_17_conv2d_readvariableop_resource: @7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@@7
)conv2d_20_biasadd_readvariableop_resource:@B
(conv2d_21_conv2d_readvariableop_resource:@@7
)conv2d_21_biasadd_readvariableop_resource:@9
&dense_6_matmul_readvariableop_resource:	@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity’ conv2d_16/BiasAdd/ReadVariableOp’conv2d_16/Conv2D/ReadVariableOp’ conv2d_17/BiasAdd/ReadVariableOp’conv2d_17/Conv2D/ReadVariableOp’ conv2d_18/BiasAdd/ReadVariableOp’conv2d_18/Conv2D/ReadVariableOp’ conv2d_19/BiasAdd/ReadVariableOp’conv2d_19/Conv2D/ReadVariableOp’ conv2d_20/BiasAdd/ReadVariableOp’conv2d_20/Conv2D/ReadVariableOp’ conv2d_21/BiasAdd/ReadVariableOp’conv2d_21/Conv2D/ReadVariableOp’dense_6/BiasAdd/ReadVariableOp’dense_6/MatMul/ReadVariableOp’dense_7/BiasAdd/ReadVariableOp’dense_7/MatMul/ReadVariableOp’"sequential_3/random_flip/map/while’<sequential_3/random_rotation/stateful_uniform/RngReadAndSkipt
#sequential_2/resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Λ
-sequential_2/resizing_2/resize/ResizeBilinearResizeBilinearinputs,sequential_2/resizing_2/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(d
sequential_2/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;f
!sequential_2/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ι
sequential_2/rescaling_2/mulMul>sequential_2/resizing_2/resize/ResizeBilinear:resized_images:0(sequential_2/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:?????????―
sequential_2/rescaling_2/addAddV2 sequential_2/rescaling_2/mul:z:0*sequential_2/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????r
"sequential_3/random_flip/map/ShapeShape sequential_2/rescaling_2/add:z:0*
T0*
_output_shapes
:z
0sequential_3/random_flip/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_3/random_flip/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_3/random_flip/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:β
*sequential_3/random_flip/map/strided_sliceStridedSlice+sequential_3/random_flip/map/Shape:output:09sequential_3/random_flip/map/strided_slice/stack:output:0;sequential_3/random_flip/map/strided_slice/stack_1:output:0;sequential_3/random_flip/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
8sequential_3/random_flip/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????
*sequential_3/random_flip/map/TensorArrayV2TensorListReserveAsequential_3/random_flip/map/TensorArrayV2/element_shape:output:03sequential_3/random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?§
Rsequential_3/random_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ­
Dsequential_3/random_flip/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_2/rescaling_2/add:z:0[sequential_3/random_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?d
"sequential_3/random_flip/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
:sequential_3/random_flip/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????
,sequential_3/random_flip/map/TensorArrayV2_1TensorListReserveCsequential_3/random_flip/map/TensorArrayV2_1/element_shape:output:03sequential_3/random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?q
/sequential_3/random_flip/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
"sequential_3/random_flip/map/whileWhile8sequential_3/random_flip/map/while/loop_counter:output:03sequential_3/random_flip/map/strided_slice:output:0+sequential_3/random_flip/map/Const:output:05sequential_3/random_flip/map/TensorArrayV2_1:handle:03sequential_3/random_flip/map/strided_slice:output:0Tsequential_3/random_flip/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*sequential_3_random_flip_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *9
body1R/
-sequential_3_random_flip_map_while_body_27993*9
cond1R/
-sequential_3_random_flip_map_while_cond_27992*!
output_shapes
: : : : : : : ’
Msequential_3/random_flip/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
?sequential_3/random_flip/map/TensorArrayV2Stack/TensorListStackTensorListStack+sequential_3/random_flip/map/while:output:3Vsequential_3/random_flip/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:?????????*
element_dtype0
"sequential_3/random_rotation/ShapeShapeHsequential_3/random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:z
0sequential_3/random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_3/random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_3/random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:β
*sequential_3/random_rotation/strided_sliceStridedSlice+sequential_3/random_rotation/Shape:output:09sequential_3/random_rotation/strided_slice/stack:output:0;sequential_3/random_rotation/strided_slice/stack_1:output:0;sequential_3/random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
2sequential_3/random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????
4sequential_3/random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????~
4sequential_3/random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:κ
,sequential_3/random_rotation/strided_slice_1StridedSlice+sequential_3/random_rotation/Shape:output:0;sequential_3/random_rotation/strided_slice_1/stack:output:0=sequential_3/random_rotation/strided_slice_1/stack_1:output:0=sequential_3/random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!sequential_3/random_rotation/CastCast5sequential_3/random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2sequential_3/random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????
4sequential_3/random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????~
4sequential_3/random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:κ
,sequential_3/random_rotation/strided_slice_2StridedSlice+sequential_3/random_rotation/Shape:output:0;sequential_3/random_rotation/strided_slice_2/stack:output:0=sequential_3/random_rotation/strided_slice_2/stack_1:output:0=sequential_3/random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
#sequential_3/random_rotation/Cast_1Cast5sequential_3/random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
3sequential_3/random_rotation/stateful_uniform/shapePack3sequential_3/random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:v
1sequential_3/random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ω Ώv
1sequential_3/random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ω ?}
3sequential_3/random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Χ
2sequential_3/random_rotation/stateful_uniform/ProdProd<sequential_3/random_rotation/stateful_uniform/shape:output:0<sequential_3/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: v
4sequential_3/random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :©
4sequential_3/random_rotation/stateful_uniform/Cast_1Cast;sequential_3/random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ͺ
<sequential_3/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkipEsequential_3_random_rotation_stateful_uniform_rngreadandskip_resource=sequential_3/random_rotation/stateful_uniform/Cast/x:output:08sequential_3/random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:
Asequential_3/random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_3/random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Csequential_3/random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
;sequential_3/random_rotation/stateful_uniform/strided_sliceStridedSliceDsequential_3/random_rotation/stateful_uniform/RngReadAndSkip:value:0Jsequential_3/random_rotation/stateful_uniform/strided_slice/stack:output:0Lsequential_3/random_rotation/stateful_uniform/strided_slice/stack_1:output:0Lsequential_3/random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask·
5sequential_3/random_rotation/stateful_uniform/BitcastBitcastDsequential_3/random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Csequential_3/random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Esequential_3/random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Esequential_3/random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
=sequential_3/random_rotation/stateful_uniform/strided_slice_1StridedSliceDsequential_3/random_rotation/stateful_uniform/RngReadAndSkip:value:0Lsequential_3/random_rotation/stateful_uniform/strided_slice_1/stack:output:0Nsequential_3/random_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Nsequential_3/random_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:»
7sequential_3/random_rotation/stateful_uniform/Bitcast_1BitcastFsequential_3/random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Jsequential_3/random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Fsequential_3/random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2<sequential_3/random_rotation/stateful_uniform/shape:output:0@sequential_3/random_rotation/stateful_uniform/Bitcast_1:output:0>sequential_3/random_rotation/stateful_uniform/Bitcast:output:0Ssequential_3/random_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????Ρ
1sequential_3/random_rotation/stateful_uniform/subSub:sequential_3/random_rotation/stateful_uniform/max:output:0:sequential_3/random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: ξ
1sequential_3/random_rotation/stateful_uniform/mulMulOsequential_3/random_rotation/stateful_uniform/StatelessRandomUniformV2:output:05sequential_3/random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????Χ
-sequential_3/random_rotation/stateful_uniformAddV25sequential_3/random_rotation/stateful_uniform/mul:z:0:sequential_3/random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????w
2sequential_3/random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ύ
0sequential_3/random_rotation/rotation_matrix/subSub'sequential_3/random_rotation/Cast_1:y:0;sequential_3/random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
0sequential_3/random_rotation/rotation_matrix/CosCos1sequential_3/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????y
4sequential_3/random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Β
2sequential_3/random_rotation/rotation_matrix/sub_1Sub'sequential_3/random_rotation/Cast_1:y:0=sequential_3/random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: Σ
0sequential_3/random_rotation/rotation_matrix/mulMul4sequential_3/random_rotation/rotation_matrix/Cos:y:06sequential_3/random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????
0sequential_3/random_rotation/rotation_matrix/SinSin1sequential_3/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????y
4sequential_3/random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ΐ
2sequential_3/random_rotation/rotation_matrix/sub_2Sub%sequential_3/random_rotation/Cast:y:0=sequential_3/random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: Υ
2sequential_3/random_rotation/rotation_matrix/mul_1Mul4sequential_3/random_rotation/rotation_matrix/Sin:y:06sequential_3/random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????Υ
2sequential_3/random_rotation/rotation_matrix/sub_3Sub4sequential_3/random_rotation/rotation_matrix/mul:z:06sequential_3/random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????Υ
2sequential_3/random_rotation/rotation_matrix/sub_4Sub4sequential_3/random_rotation/rotation_matrix/sub:z:06sequential_3/random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????{
6sequential_3/random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ζ
4sequential_3/random_rotation/rotation_matrix/truedivRealDiv6sequential_3/random_rotation/rotation_matrix/sub_4:z:0?sequential_3/random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????y
4sequential_3/random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ΐ
2sequential_3/random_rotation/rotation_matrix/sub_5Sub%sequential_3/random_rotation/Cast:y:0=sequential_3/random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
2sequential_3/random_rotation/rotation_matrix/Sin_1Sin1sequential_3/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????y
4sequential_3/random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Β
2sequential_3/random_rotation/rotation_matrix/sub_6Sub'sequential_3/random_rotation/Cast_1:y:0=sequential_3/random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: Χ
2sequential_3/random_rotation/rotation_matrix/mul_2Mul6sequential_3/random_rotation/rotation_matrix/Sin_1:y:06sequential_3/random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????
2sequential_3/random_rotation/rotation_matrix/Cos_1Cos1sequential_3/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????y
4sequential_3/random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ΐ
2sequential_3/random_rotation/rotation_matrix/sub_7Sub%sequential_3/random_rotation/Cast:y:0=sequential_3/random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: Χ
2sequential_3/random_rotation/rotation_matrix/mul_3Mul6sequential_3/random_rotation/rotation_matrix/Cos_1:y:06sequential_3/random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????Χ
0sequential_3/random_rotation/rotation_matrix/addAddV26sequential_3/random_rotation/rotation_matrix/mul_2:z:06sequential_3/random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????Υ
2sequential_3/random_rotation/rotation_matrix/sub_8Sub6sequential_3/random_rotation/rotation_matrix/sub_5:z:04sequential_3/random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????}
8sequential_3/random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @κ
6sequential_3/random_rotation/rotation_matrix/truediv_1RealDiv6sequential_3/random_rotation/rotation_matrix/sub_8:z:0Asequential_3/random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????
2sequential_3/random_rotation/rotation_matrix/ShapeShape1sequential_3/random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:
@sequential_3/random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_3/random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_3/random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
:sequential_3/random_rotation/rotation_matrix/strided_sliceStridedSlice;sequential_3/random_rotation/rotation_matrix/Shape:output:0Isequential_3/random_rotation/rotation_matrix/strided_slice/stack:output:0Ksequential_3/random_rotation/rotation_matrix/strided_slice/stack_1:output:0Ksequential_3/random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
2sequential_3/random_rotation/rotation_matrix/Cos_2Cos1sequential_3/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
Bsequential_3/random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ε
<sequential_3/random_rotation/rotation_matrix/strided_slice_1StridedSlice6sequential_3/random_rotation/rotation_matrix/Cos_2:y:0Ksequential_3/random_rotation/rotation_matrix/strided_slice_1/stack:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
2sequential_3/random_rotation/rotation_matrix/Sin_2Sin1sequential_3/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
Bsequential_3/random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ε
<sequential_3/random_rotation/rotation_matrix/strided_slice_2StridedSlice6sequential_3/random_rotation/rotation_matrix/Sin_2:y:0Ksequential_3/random_rotation/rotation_matrix/strided_slice_2/stack:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask°
0sequential_3/random_rotation/rotation_matrix/NegNegEsequential_3/random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????
Bsequential_3/random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      η
<sequential_3/random_rotation/rotation_matrix/strided_slice_3StridedSlice8sequential_3/random_rotation/rotation_matrix/truediv:z:0Ksequential_3/random_rotation/rotation_matrix/strided_slice_3/stack:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
2sequential_3/random_rotation/rotation_matrix/Sin_3Sin1sequential_3/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
Bsequential_3/random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ε
<sequential_3/random_rotation/rotation_matrix/strided_slice_4StridedSlice6sequential_3/random_rotation/rotation_matrix/Sin_3:y:0Ksequential_3/random_rotation/rotation_matrix/strided_slice_4/stack:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
2sequential_3/random_rotation/rotation_matrix/Cos_3Cos1sequential_3/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
Bsequential_3/random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ε
<sequential_3/random_rotation/rotation_matrix/strided_slice_5StridedSlice6sequential_3/random_rotation/rotation_matrix/Cos_3:y:0Ksequential_3/random_rotation/rotation_matrix/strided_slice_5/stack:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
Bsequential_3/random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Dsequential_3/random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ι
<sequential_3/random_rotation/rotation_matrix/strided_slice_6StridedSlice:sequential_3/random_rotation/rotation_matrix/truediv_1:z:0Ksequential_3/random_rotation/rotation_matrix/strided_slice_6/stack:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0Msequential_3/random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask}
;sequential_3/random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ϊ
9sequential_3/random_rotation/rotation_matrix/zeros/packedPackCsequential_3/random_rotation/rotation_matrix/strided_slice:output:0Dsequential_3/random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:}
8sequential_3/random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    σ
2sequential_3/random_rotation/rotation_matrix/zerosFillBsequential_3/random_rotation/rotation_matrix/zeros/packed:output:0Asequential_3/random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????z
8sequential_3/random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
3sequential_3/random_rotation/rotation_matrix/concatConcatV2Esequential_3/random_rotation/rotation_matrix/strided_slice_1:output:04sequential_3/random_rotation/rotation_matrix/Neg:y:0Esequential_3/random_rotation/rotation_matrix/strided_slice_3:output:0Esequential_3/random_rotation/rotation_matrix/strided_slice_4:output:0Esequential_3/random_rotation/rotation_matrix/strided_slice_5:output:0Esequential_3/random_rotation/rotation_matrix/strided_slice_6:output:0;sequential_3/random_rotation/rotation_matrix/zeros:output:0Asequential_3/random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????€
,sequential_3/random_rotation/transform/ShapeShapeHsequential_3/random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
:sequential_3/random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
<sequential_3/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<sequential_3/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4sequential_3/random_rotation/transform/strided_sliceStridedSlice5sequential_3/random_rotation/transform/Shape:output:0Csequential_3/random_rotation/transform/strided_slice/stack:output:0Esequential_3/random_rotation/transform/strided_slice/stack_1:output:0Esequential_3/random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:v
1sequential_3/random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Χ
Asequential_3/random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Hsequential_3/random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0<sequential_3/random_rotation/rotation_matrix/concat:output:0=sequential_3/random_rotation/transform/strided_slice:output:0:sequential_3/random_rotation/transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
conv2d_16/Conv2DConv2DVsequential_3/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides

 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ n
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ ?
max_pooling2d_16/MaxPoolMaxPoolconv2d_16/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides

conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ι
conv2d_17/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides

 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@l
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@?
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides

conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@l
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@?
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_19/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_20/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_20/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_21/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   
flatten_3/ReshapeReshape!max_pooling2d_21/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:?????????
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Κ
NoOpNoOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp#^sequential_3/random_flip/map/while=^sequential_3/random_rotation/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????: : : : : : : : : : : : : : : : : : 2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2H
"sequential_3/random_flip/map/while"sequential_3/random_flip/map/while2|
<sequential_3/random_rotation/stateful_uniform/RngReadAndSkip<sequential_3/random_rotation/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
κ

)__inference_conv2d_21_layer_call_fn_28792

inputs!
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27317w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ι
G
+__inference_random_flip_layer_call_fn_28893

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_26772j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_27144

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ρ
c
G__inference_sequential_3_layer_call_and_return_conditional_losses_26781

inputs
identityΗ
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_26772ν
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_26778z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
μ
S
,__inference_sequential_3_layer_call_fn_26784
random_flip_input
identityΗ
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_26781j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:d `
1
_output_shapes
:?????????
+
_user_specified_namerandom_flip_input
Ύ

'__inference_dense_7_layer_call_fn_28853

inputs
unknown:@
	unknown_0:
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_27360o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
οΉ
₯
G__inference_sequential_3_layer_call_and_return_conditional_losses_28633

inputs+
random_flip_map_while_input_6:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identity’random_flip/map/while’/random_rotation/stateful_uniform/RngReadAndSkipK
random_flip/map/ShapeShapeinputs*
T0*
_output_shapes
:m
#random_flip/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_flip/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_flip/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:‘
random_flip/map/strided_sliceStridedSlicerandom_flip/map/Shape:output:0,random_flip/map/strided_slice/stack:output:0.random_flip/map/strided_slice/stack_1:output:0.random_flip/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+random_flip/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????β
random_flip/map/TensorArrayV2TensorListReserve4random_flip/map/TensorArrayV2/element_shape:output:0&random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
Erandom_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ω
7random_flip/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsNrandom_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?W
random_flip/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : x
-random_flip/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????ζ
random_flip/map/TensorArrayV2_1TensorListReserve6random_flip/map/TensorArrayV2_1/element_shape:output:0&random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?d
"random_flip/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
random_flip/map/whileWhile+random_flip/map/while/loop_counter:output:0&random_flip/map/strided_slice:output:0random_flip/map/Const:output:0(random_flip/map/TensorArrayV2_1:handle:0&random_flip/map/strided_slice:output:0Grandom_flip/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0random_flip_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *,
body$R"
 random_flip_map_while_body_28377*,
cond$R"
 random_flip_map_while_cond_28376*!
output_shapes
: : : : : : : 
@random_flip/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ψ
2random_flip/map/TensorArrayV2Stack/TensorListStackTensorListStackrandom_flip/map/while:output:3Irandom_flip/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:?????????*
element_dtype0
random_rotation/ShapeShape;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:m
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:‘
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????z
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????q
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: x
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????z
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????q
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:i
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ω Ώi
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ω ?p
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: i
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: φ
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:~
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ό
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ς
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:‘
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ϋ
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????ͺ
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: Η
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????°
 random_rotation/stateful_uniformAddV2(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????j
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ~
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????l
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ¬
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????~
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????l
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ?
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:??????????
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:??????????
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????n
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ώ
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????l
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????l
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: °
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????l
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: °
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????°
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:??????????
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????p
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Γ
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????y
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:}
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ρ
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      €
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      €
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¦
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      €
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      €
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¨
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskp
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Σ
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:p
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Μ
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????m
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????
random_rotation/transform/ShapeShape;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:w
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ώ
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:i
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR’
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????
NoOpNoOp^random_flip/map/while0^random_rotation/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 2.
random_flip/map/whilerandom_flip/map/while2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ι
G
+__inference_rescaling_2_layer_call_fn_28880

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_26710j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
£

F__inference_random_flip_layer_call_and_return_conditional_losses_27081

inputs
map_while_input_6:	
identity’	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         α
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Β
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_26939* 
condR
map_while_cond_26938*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Τ
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:?????????*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:?????????R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2
	map/while	map/while:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
u

__inference__traced_save_29406
file_prefix/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop)
%savev2_statevar_1_read_readvariableop	'
#savev2_statevar_read_readvariableop	6
2savev2_adam_conv2d_16_kernel_m_read_readvariableop4
0savev2_adam_conv2d_16_bias_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop4
0savev2_adam_conv2d_19_bias_m_read_readvariableop6
2savev2_adam_conv2d_20_kernel_m_read_readvariableop4
0savev2_adam_conv2d_20_bias_m_read_readvariableop6
2savev2_adam_conv2d_21_kernel_m_read_readvariableop4
0savev2_adam_conv2d_21_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop4
0savev2_adam_conv2d_16_bias_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableop6
2savev2_adam_conv2d_19_kernel_v_read_readvariableop4
0savev2_adam_conv2d_19_bias_v_read_readvariableop6
2savev2_adam_conv2d_20_kernel_v_read_readvariableop4
0savev2_adam_conv2d_20_bias_v_read_readvariableop6
2savev2_adam_conv2d_21_kernel_v_read_readvariableop4
0savev2_adam_conv2d_21_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ώ!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*θ 
valueή BΫ <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHθ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*
valueB<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop0savev2_adam_conv2d_16_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop0savev2_adam_conv2d_20_bias_m_read_readvariableop2savev2_adam_conv2d_21_kernel_m_read_readvariableop0savev2_adam_conv2d_21_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop0savev2_adam_conv2d_16_bias_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop0savev2_adam_conv2d_20_bias_v_read_readvariableop2savev2_adam_conv2d_21_kernel_v_read_readvariableop0savev2_adam_conv2d_21_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<			
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Κ
_input_shapesΈ
΅: : : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@:: : : : : : : : : ::: : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@:: : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@:%(!

_output_shapes
:	@: )

_output_shapes
:@:$* 

_output_shapes

:@: +

_output_shapes
::,,(
&
_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
: @: /

_output_shapes
:@:,0(
&
_output_shapes
:@@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@:,4(
&
_output_shapes
:@@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@:%8!

_output_shapes
:	@: 9

_output_shapes
:@:$: 

_output_shapes

:@: ;

_output_shapes
::<

_output_shapes
: 
	
m
G__inference_sequential_2_layer_call_and_return_conditional_losses_26761
resizing_2_input
identityΟ
resizing_2/PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_26700δ
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_26710v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:c _
1
_output_shapes
:?????????
*
_user_specified_nameresizing_2_input

g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_28813

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_28753

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ό
θ
5map_while_stateless_random_flip_left_right_true_28979v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¨
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:­
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Έ
L
0__inference_max_pooling2d_19_layer_call_fn_28748

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_27180
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
΅
ύ
,__inference_sequential_7_layer_call_fn_27897

inputs
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:	@

unknown_14:@

unknown_15:@

unknown_16:
identity’StatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_27584o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
£	
c
G__inference_sequential_2_layer_call_and_return_conditional_losses_28333

inputs
identityg
resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ±
 resizing_2/resize/ResizeBilinearResizeBilinearinputsresizing_2/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(W
rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;Y
rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ’
rescaling_2/mulMul1resizing_2/resize/ResizeBilinear:resized_images:0rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:?????????
rescaling_2/addAddV2rescaling_2/mul:z:0rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????e
IdentityIdentityrescaling_2/add:z:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

ά
2map_while_stateless_random_flip_up_down_true_27047p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:§
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
ψ
b
F__inference_rescaling_2_layer_call_and_return_conditional_losses_28888

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:?????????d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:?????????Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
©
«
-sequential_3_random_flip_map_while_cond_27992V
Rsequential_3_random_flip_map_while_sequential_3_random_flip_map_while_loop_counterQ
Msequential_3_random_flip_map_while_sequential_3_random_flip_map_strided_slice2
.sequential_3_random_flip_map_while_placeholder4
0sequential_3_random_flip_map_while_placeholder_1V
Rsequential_3_random_flip_map_while_less_sequential_3_random_flip_map_strided_slicem
isequential_3_random_flip_map_while_sequential_3_random_flip_map_while_cond_27992___redundant_placeholder0m
isequential_3_random_flip_map_while_sequential_3_random_flip_map_while_cond_27992___redundant_placeholder1/
+sequential_3_random_flip_map_while_identity
Τ
'sequential_3/random_flip/map/while/LessLess.sequential_3_random_flip_map_while_placeholderRsequential_3_random_flip_map_while_less_sequential_3_random_flip_map_strided_slice*
T0*
_output_shapes
: υ
)sequential_3/random_flip/map/while/Less_1LessRsequential_3_random_flip_map_while_sequential_3_random_flip_map_while_loop_counterMsequential_3_random_flip_map_while_sequential_3_random_flip_map_strided_slice*
T0*
_output_shapes
: ―
-sequential_3/random_flip/map/while/LogicalAnd
LogicalAnd-sequential_3/random_flip/map/while/Less_1:z:0+sequential_3/random_flip/map/while/Less:z:0*
_output_shapes
: 
+sequential_3/random_flip/map/while/IdentityIdentity1sequential_3/random_flip/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "c
+sequential_3_random_flip_map_while_identity4sequential_3/random_flip/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Έ
L
0__inference_max_pooling2d_20_layer_call_fn_28778

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_27192
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_28803

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_28693

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

f
J__inference_random_rotation_layer_call_and_return_conditional_losses_29078

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

Ξ
Nsequential_3_random_flip_map_while_stateless_random_flip_left_right_true_28052©
€sequential_3_random_flip_map_while_stateless_random_flip_left_right_reversev2_sequential_3_random_flip_map_while_stateless_random_flip_left_right_control_dependencyP
Lsequential_3_random_flip_map_while_stateless_random_flip_left_right_identity
Rsequential_3/random_flip/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
Msequential_3/random_flip/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2€sequential_3_random_flip_map_while_stateless_random_flip_left_right_reversev2_sequential_3_random_flip_map_while_stateless_random_flip_left_right_control_dependency[sequential_3/random_flip/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ί
Lsequential_3/random_flip/map/while/stateless_random_flip_left_right/IdentityIdentityVsequential_3/random_flip/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"₯
Lsequential_3_random_flip_map_while_stateless_random_flip_left_right_identityUsequential_3/random_flip/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_28783

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

ά
2map_while_stateless_random_flip_up_down_true_29028p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:§
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
―

Brandom_flip_map_while_stateless_random_flip_left_right_false_28437
random_flip_map_while_stateless_random_flip_left_right_identity_random_flip_map_while_stateless_random_flip_left_right_control_dependencyC
?random_flip_map_while_stateless_random_flip_left_right_identity
?random_flip/map/while/stateless_random_flip_left_right/IdentityIdentityrandom_flip_map_while_stateless_random_flip_left_right_identity_random_flip_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"
?random_flip_map_while_stateless_random_flip_left_right_identityHrandom_flip/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
ψ
b
F__inference_rescaling_2_layer_call_and_return_conditional_losses_26710

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:?????????d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:?????????Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
―
a
E__inference_resizing_2_layer_call_and_return_conditional_losses_28875

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
θ

,__inference_sequential_3_layer_call_fn_28357

inputs
unknown:	
	unknown_0:	
identity’StatefulPartitionedCallβ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_27103y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Λ
H
,__inference_sequential_2_layer_call_fn_28323

inputs
identityΌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_26741j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_28723

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs


σ
B__inference_dense_7_layer_call_and_return_conditional_losses_27360

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
Η
F
*__inference_resizing_2_layer_call_fn_28869

inputs
identityΊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_26700j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Έ
L
0__inference_max_pooling2d_18_layer_call_fn_28718

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_27168
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
€
Ξ
Osequential_3_random_flip_map_while_stateless_random_flip_left_right_false_28053¨
£sequential_3_random_flip_map_while_stateless_random_flip_left_right_identity_sequential_3_random_flip_map_while_stateless_random_flip_left_right_control_dependencyP
Lsequential_3_random_flip_map_while_stateless_random_flip_left_right_identity­
Lsequential_3/random_flip/map/while/stateless_random_flip_left_right/IdentityIdentity£sequential_3_random_flip_map_while_stateless_random_flip_left_right_identity_sequential_3_random_flip_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"₯
Lsequential_3_random_flip_map_while_stateless_random_flip_left_right_identityUsequential_3/random_flip/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
£

F__inference_random_flip_layer_call_and_return_conditional_losses_29062

inputs
map_while_input_6:	
identity’	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         α
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????Β
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_28920* 
condR
map_while_cond_28919*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Τ
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:?????????*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:?????????R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2
	map/while	map/while:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
£	
c
G__inference_sequential_2_layer_call_and_return_conditional_losses_28343

inputs
identityg
resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ±
 resizing_2/resize/ResizeBilinearResizeBilinearinputsresizing_2/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(W
rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;Y
rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ’
rescaling_2/mulMul1resizing_2/resize/ResizeBilinear:resized_images:0rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:?????????
rescaling_2/addAddV2rescaling_2/mul:z:0rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????e
IdentityIdentityrescaling_2/add:z:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ς

)__inference_conv2d_16_layer_call_fn_28642

inputs!
unknown: 
	unknown_0: 
identity’StatefulPartitionedCallγ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27227y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ώώ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
¬
ό
G__inference_sequential_3_layer_call_and_return_conditional_losses_27103

inputs
random_flip_27096:	#
random_rotation_27099:	
identity’#random_flip/StatefulPartitionedCall’'random_rotation/StatefulPartitionedCallλ
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_27096*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_27081
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_27099*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_26910
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Χ
Μ
#__inference_signature_wrapper_27819
sequential_2_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identity’StatefulPartitionedCallό
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_26687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:?????????
,
_user_specified_namesequential_2_input
―
a
E__inference_resizing_2_layer_call_and_return_conditional_losses_26700

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

 
,__inference_sequential_3_layer_call_fn_27119
random_flip_input
unknown:	
	unknown_0:	
identity’StatefulPartitionedCallν
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_27103y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:?????????
+
_user_specified_namerandom_flip_input
Έ
L
0__inference_max_pooling2d_17_layer_call_fn_28688

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_27156
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
κ

)__inference_conv2d_17_layer_call_fn_28672

inputs!
unknown: @
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27245w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????}}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs

ύ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27281

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
β
c
G__inference_sequential_2_layer_call_and_return_conditional_losses_26741

inputs
identityΕ
resizing_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_26700δ
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_26710v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ώ
θ
6map_while_stateless_random_flip_left_right_false_28980u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityα
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_27192

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
β«

 random_flip_map_while_body_28377<
8random_flip_map_while_random_flip_map_while_loop_counter7
3random_flip_map_while_random_flip_map_strided_slice%
!random_flip_map_while_placeholder'
#random_flip_map_while_placeholder_1;
7random_flip_map_while_random_flip_map_strided_slice_1_0w
srandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0W
Irandom_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	"
random_flip_map_while_identity$
 random_flip_map_while_identity_1$
 random_flip_map_while_identity_2$
 random_flip_map_while_identity_39
5random_flip_map_while_random_flip_map_strided_slice_1u
qrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensorU
Grandom_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource:	’>random_flip/map/while/stateful_uniform_full_int/RngReadAndSkip’@random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip
Grandom_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         σ
9random_flip/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0!random_flip_map_while_placeholderPrandom_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0
5random_flip/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
5random_flip/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: έ
4random_flip/map/while/stateful_uniform_full_int/ProdProd>random_flip/map/while/stateful_uniform_full_int/shape:output:0>random_flip/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: x
6random_flip/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :­
6random_flip/map/while/stateful_uniform_full_int/Cast_1Cast=random_flip/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ΄
>random_flip/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipIrandom_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource_0?random_flip/map/while/stateful_uniform_full_int/Cast/x:output:0:random_flip/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Crandom_flip/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Erandom_flip/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Erandom_flip/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
=random_flip/map/while/stateful_uniform_full_int/strided_sliceStridedSliceFrandom_flip/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Lrandom_flip/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Nrandom_flip/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Nrandom_flip/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask»
7random_flip/map/while/stateful_uniform_full_int/BitcastBitcastFrandom_flip/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Erandom_flip/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Grandom_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Grandom_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
?random_flip/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceFrandom_flip/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Nrandom_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Prandom_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Prandom_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ώ
9random_flip/map/while/stateful_uniform_full_int/Bitcast_1BitcastHrandom_flip/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0u
3random_flip/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :?
/random_flip/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2>random_flip/map/while/stateful_uniform_full_int/shape:output:0Brandom_flip/map/while/stateful_uniform_full_int/Bitcast_1:output:0@random_flip/map/while/stateful_uniform_full_int/Bitcast:output:0<random_flip/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	j
 random_flip/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ί
random_flip/map/while/stackPack8random_flip/map/while/stateful_uniform_full_int:output:0)random_flip/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:z
)random_flip/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        |
+random_flip/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       |
+random_flip/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ε
#random_flip/map/while/strided_sliceStridedSlice$random_flip/map/while/stack:output:02random_flip/map/while/strided_slice/stack:output:04random_flip/map/while/strided_slice/stack_1:output:04random_flip/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
Irandom_flip/map/while/stateless_random_flip_left_right/control_dependencyIdentity@random_flip/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*L
_classB
@>loc:@random_flip/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Urandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Srandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Srandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ά
lrandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter,random_flip/map/while/strided_slice:output:0* 
_output_shapes
::?
lrandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ί
hrandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2^random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0rrandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0vrandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0urandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ·
Srandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub\random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0\random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Η
Srandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulqrandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Wrandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: °
Orandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Wrandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0\random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
=random_flip/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
;random_flip/map/while/stateless_random_flip_left_right/LessLessSrandom_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Frandom_flip/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: Ώ
6random_flip/map/while/stateless_random_flip_left_rightStatelessIf?random_flip/map/while/stateless_random_flip_left_right/Less:z:0Rrandom_flip/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *U
else_branchFRD
Brandom_flip_map_while_stateless_random_flip_left_right_false_28437*#
output_shapes
:*T
then_branchERC
Arandom_flip_map_while_stateless_random_flip_left_right_true_28436»
?random_flip/map/while/stateless_random_flip_left_right/IdentityIdentity?random_flip/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:
7random_flip/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7random_flip/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: γ
6random_flip/map/while/stateful_uniform_full_int_1/ProdProd@random_flip/map/while/stateful_uniform_full_int_1/shape:output:0@random_flip/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: z
8random_flip/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :±
8random_flip/map/while/stateful_uniform_full_int_1/Cast_1Cast?random_flip/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ϋ
@random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipIrandom_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Arandom_flip/map/while/stateful_uniform_full_int_1/Cast/x:output:0<random_flip/map/while/stateful_uniform_full_int_1/Cast_1:y:0?^random_flip/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
Erandom_flip/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Grandom_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Grandom_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
?random_flip/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceHrandom_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Nrandom_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Prandom_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Prandom_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΏ
9random_flip/map/while/stateful_uniform_full_int_1/BitcastBitcastHrandom_flip/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Grandom_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Η
Arandom_flip/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceHrandom_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Prandom_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Rrandom_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Rrandom_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Γ
;random_flip/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastJrandom_flip/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0w
5random_flip/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :
1random_flip/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2@random_flip/map/while/stateful_uniform_full_int_1/shape:output:0Drandom_flip/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Brandom_flip/map/while/stateful_uniform_full_int_1/Bitcast:output:0>random_flip/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	l
"random_flip/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ΐ
random_flip/map/while/stack_1Pack:random_flip/map/while/stateful_uniform_full_int_1:output:0+random_flip/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:|
+random_flip/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-random_flip/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-random_flip/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ο
%random_flip/map/while/strided_slice_1StridedSlice&random_flip/map/while/stack_1:output:04random_flip/map/while/strided_slice_1/stack:output:06random_flip/map/while/strided_slice_1/stack_1:output:06random_flip/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
Frandom_flip/map/while/stateless_random_flip_up_down/control_dependencyIdentityHrandom_flip/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*R
_classH
FDloc:@random_flip/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Rrandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Prandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Prandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ϋ
irandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.random_flip/map/while/strided_slice_1:output:0* 
_output_shapes
::«
irandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Π
erandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2[random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0orandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0srandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0rrandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ?
Prandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubYrandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Yrandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ύ
Prandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulnrandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Trandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: §
Lrandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Trandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Yrandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
:random_flip/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ψ
8random_flip/map/while/stateless_random_flip_up_down/LessLessPrandom_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Crandom_flip/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: °
3random_flip/map/while/stateless_random_flip_up_downStatelessIf<random_flip/map/while/stateless_random_flip_up_down/Less:z:0Orandom_flip/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *R
else_branchCRA
?random_flip_map_while_stateless_random_flip_up_down_false_28486*#
output_shapes
:*Q
then_branchBR@
>random_flip_map_while_stateless_random_flip_up_down_true_28485΅
<random_flip/map/while/stateless_random_flip_up_down/IdentityIdentity<random_flip/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:
:random_flip/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#random_flip_map_while_placeholder_1!random_flip_map_while_placeholderErandom_flip/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:ιθ?]
random_flip/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
random_flip/map/while/addAddV2!random_flip_map_while_placeholder$random_flip/map/while/add/y:output:0*
T0*
_output_shapes
: _
random_flip/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
random_flip/map/while/add_1AddV28random_flip_map_while_random_flip_map_while_loop_counter&random_flip/map/while/add_1/y:output:0*
T0*
_output_shapes
: 
random_flip/map/while/IdentityIdentityrandom_flip/map/while/add_1:z:0^random_flip/map/while/NoOp*
T0*
_output_shapes
: 
 random_flip/map/while/Identity_1Identity3random_flip_map_while_random_flip_map_strided_slice^random_flip/map/while/NoOp*
T0*
_output_shapes
: 
 random_flip/map/while/Identity_2Identityrandom_flip/map/while/add:z:0^random_flip/map/while/NoOp*
T0*
_output_shapes
: Ά
 random_flip/map/while/Identity_3IdentityJrandom_flip/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip/map/while/NoOp*
T0*
_output_shapes
: ΰ
random_flip/map/while/NoOpNoOp?^random_flip/map/while/stateful_uniform_full_int/RngReadAndSkipA^random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "I
random_flip_map_while_identity'random_flip/map/while/Identity:output:0"M
 random_flip_map_while_identity_1)random_flip/map/while/Identity_1:output:0"M
 random_flip_map_while_identity_2)random_flip/map/while/Identity_2:output:0"M
 random_flip_map_while_identity_3)random_flip/map/while/Identity_3:output:0"p
5random_flip_map_while_random_flip_map_strided_slice_17random_flip_map_while_random_flip_map_strided_slice_1_0"
Grandom_flip_map_while_stateful_uniform_full_int_rngreadandskip_resourceIrandom_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"θ
qrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensorsrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2
>random_flip/map/while/stateful_uniform_full_int/RngReadAndSkip>random_flip/map/while/stateful_uniform_full_int/RngReadAndSkip2
@random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip@random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ά	

Arandom_flip_map_while_stateless_random_flip_left_right_true_28436
random_flip_map_while_stateless_random_flip_left_right_reversev2_random_flip_map_while_stateless_random_flip_left_right_control_dependencyC
?random_flip_map_while_stateless_random_flip_left_right_identity
Erandom_flip/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ω
@random_flip/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2random_flip_map_while_stateless_random_flip_left_right_reversev2_random_flip_map_while_stateless_random_flip_left_right_control_dependencyNrandom_flip/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Ε
?random_flip/map/while/stateless_random_flip_left_right/IdentityIdentityIrandom_flip/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"
?random_flip_map_while_stateless_random_flip_left_right_identityHrandom_flip/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

ύ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27299

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs

Γ
J__inference_random_rotation_layer_call_and_return_conditional_losses_29196

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ω ΏY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ω ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ά
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:‘
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Φ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ψ
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ‘
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
μ[
Χ
G__inference_sequential_7_layer_call_and_return_conditional_losses_27971

inputsB
(conv2d_16_conv2d_readvariableop_resource: 7
)conv2d_16_biasadd_readvariableop_resource: B
(conv2d_17_conv2d_readvariableop_resource: @7
)conv2d_17_biasadd_readvariableop_resource:@B
(conv2d_18_conv2d_readvariableop_resource:@@7
)conv2d_18_biasadd_readvariableop_resource:@B
(conv2d_19_conv2d_readvariableop_resource:@@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@@7
)conv2d_20_biasadd_readvariableop_resource:@B
(conv2d_21_conv2d_readvariableop_resource:@@7
)conv2d_21_biasadd_readvariableop_resource:@9
&dense_6_matmul_readvariableop_resource:	@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity’ conv2d_16/BiasAdd/ReadVariableOp’conv2d_16/Conv2D/ReadVariableOp’ conv2d_17/BiasAdd/ReadVariableOp’conv2d_17/Conv2D/ReadVariableOp’ conv2d_18/BiasAdd/ReadVariableOp’conv2d_18/Conv2D/ReadVariableOp’ conv2d_19/BiasAdd/ReadVariableOp’conv2d_19/Conv2D/ReadVariableOp’ conv2d_20/BiasAdd/ReadVariableOp’conv2d_20/Conv2D/ReadVariableOp’ conv2d_21/BiasAdd/ReadVariableOp’conv2d_21/Conv2D/ReadVariableOp’dense_6/BiasAdd/ReadVariableOp’dense_6/MatMul/ReadVariableOp’dense_7/BiasAdd/ReadVariableOp’dense_7/MatMul/ReadVariableOpt
#sequential_2/resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Λ
-sequential_2/resizing_2/resize/ResizeBilinearResizeBilinearinputs,sequential_2/resizing_2/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(d
sequential_2/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;f
!sequential_2/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ι
sequential_2/rescaling_2/mulMul>sequential_2/resizing_2/resize/ResizeBilinear:resized_images:0(sequential_2/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:?????????―
sequential_2/rescaling_2/addAddV2 sequential_2/rescaling_2/mul:z:0*sequential_2/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Κ
conv2d_16/Conv2DConv2D sequential_2/rescaling_2/add:z:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides

 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ n
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ ?
max_pooling2d_16/MaxPoolMaxPoolconv2d_16/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides

conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ι
conv2d_17/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides

 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@l
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@?
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides

conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@l
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@?
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_19/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_20/Conv2DConv2D!max_pooling2d_19/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_20/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ι
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@l
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
max_pooling2d_21/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   
flatten_3/ReshapeReshape!max_pooling2d_21/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:?????????
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????ζ
NoOpNoOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_27168

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

b
F__inference_random_flip_layer_call_and_return_conditional_losses_28904

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ν

G__inference_sequential_3_layer_call_and_return_conditional_losses_27135
random_flip_input
random_flip_27128:	#
random_rotation_27131:	
identity’#random_flip/StatefulPartitionedCall’'random_rotation/StatefulPartitionedCallφ
#random_flip/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputrandom_flip_27128*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_27081
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_27131*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_26910
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:d `
1
_output_shapes
:?????????
+
_user_specified_namerandom_flip_input
«

map_while_body_26939$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	’2map/while/stateful_uniform_full_int/RngReadAndSkip’4map/while/stateful_uniform_full_int_1/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ·
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ή
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Γ
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskπ
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Δ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::’
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?έ
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_26999*#
output_shapes
:*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_26998£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ώ
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ώ
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask§
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:«
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ν
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskϋ
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Γ
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Τ
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: τ
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_27048*#
output_shapes
:*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_27047
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:ξ
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:ιθ?Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: Ό
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Έ
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
½G
²
G__inference_sequential_7_layer_call_and_return_conditional_losses_27774
sequential_2_input 
sequential_3_27721:	 
sequential_3_27723:	)
conv2d_16_27726: 
conv2d_16_27728: )
conv2d_17_27732: @
conv2d_17_27734:@)
conv2d_18_27738:@@
conv2d_18_27740:@)
conv2d_19_27744:@@
conv2d_19_27746:@)
conv2d_20_27750:@@
conv2d_20_27752:@)
conv2d_21_27756:@@
conv2d_21_27758:@ 
dense_6_27763:	@
dense_6_27765:@
dense_7_27768:@
dense_7_27770:
identity’!conv2d_16/StatefulPartitionedCall’!conv2d_17/StatefulPartitionedCall’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’dense_6/StatefulPartitionedCall’dense_7/StatefulPartitionedCall’$sequential_3/StatefulPartitionedCallΥ
sequential_2/PartitionedCallPartitionedCallsequential_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_26741’
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall%sequential_2/PartitionedCall:output:0sequential_3_27721sequential_3_27723*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_27103’
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0conv2d_16_27726conv2d_16_27728*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27227σ
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_27144
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_27732conv2d_17_27734*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27245σ
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_27156
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_27738conv2d_18_27740*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27263σ
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_27168
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_27744conv2d_19_27746*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27281σ
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_27180
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_27750conv2d_20_27752*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27299σ
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_27192
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_27756conv2d_21_27758*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27317σ
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_27204έ
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_27330
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_27763dense_6_27765*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_27343
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_27768dense_7_27770*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_27360w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:e a
1
_output_shapes
:?????????
,
_user_specified_namesequential_2_input
Έ
L
0__inference_max_pooling2d_16_layer_call_fn_28658

inputs
identityΩ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_27144
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Ρ
K
/__inference_random_rotation_layer_call_fn_29067

inputs
identityΏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_26778j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
G
¦
G__inference_sequential_7_layer_call_and_return_conditional_losses_27584

inputs 
sequential_3_27531:	 
sequential_3_27533:	)
conv2d_16_27536: 
conv2d_16_27538: )
conv2d_17_27542: @
conv2d_17_27544:@)
conv2d_18_27548:@@
conv2d_18_27550:@)
conv2d_19_27554:@@
conv2d_19_27556:@)
conv2d_20_27560:@@
conv2d_20_27562:@)
conv2d_21_27566:@@
conv2d_21_27568:@ 
dense_6_27573:	@
dense_6_27575:@
dense_7_27578:@
dense_7_27580:
identity’!conv2d_16/StatefulPartitionedCall’!conv2d_17/StatefulPartitionedCall’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’dense_6/StatefulPartitionedCall’dense_7/StatefulPartitionedCall’$sequential_3/StatefulPartitionedCallΙ
sequential_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_26741’
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall%sequential_2/PartitionedCall:output:0sequential_3_27531sequential_3_27533*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_27103’
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0conv2d_16_27536conv2d_16_27538*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27227σ
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_27144
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_27542conv2d_17_27544*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27245σ
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_27156
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_27548conv2d_18_27550*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27263σ
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_27168
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_27554conv2d_19_27556*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27281σ
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_27180
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_27560conv2d_20_27562*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27299σ
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_27192
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_27566conv2d_21_27568*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27317σ
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_27204έ
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_27330
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_27573dense_6_27575*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_27343
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_27578dense_7_27580*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_27360w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????: : : : : : : : : : : : : : : : : : 2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_27180

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs


τ
B__inference_dense_6_layer_call_and_return_conditional_losses_27343

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27263

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs

b
F__inference_random_flip_layer_call_and_return_conditional_losses_26772

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ε
Ν

-sequential_3_random_flip_map_while_body_27993V
Rsequential_3_random_flip_map_while_sequential_3_random_flip_map_while_loop_counterQ
Msequential_3_random_flip_map_while_sequential_3_random_flip_map_strided_slice2
.sequential_3_random_flip_map_while_placeholder4
0sequential_3_random_flip_map_while_placeholder_1U
Qsequential_3_random_flip_map_while_sequential_3_random_flip_map_strided_slice_1_0
sequential_3_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_3_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0d
Vsequential_3_random_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	/
+sequential_3_random_flip_map_while_identity1
-sequential_3_random_flip_map_while_identity_11
-sequential_3_random_flip_map_while_identity_21
-sequential_3_random_flip_map_while_identity_3S
Osequential_3_random_flip_map_while_sequential_3_random_flip_map_strided_slice_1
sequential_3_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_3_random_flip_map_tensorarrayunstack_tensorlistfromtensorb
Tsequential_3_random_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource:	’Ksequential_3/random_flip/map/while/stateful_uniform_full_int/RngReadAndSkip’Msequential_3/random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip©
Tsequential_3/random_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ΅
Fsequential_3/random_flip/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_3_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_3_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0.sequential_3_random_flip_map_while_placeholder]sequential_3/random_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0
Bsequential_3/random_flip/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Bsequential_3/random_flip/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Asequential_3/random_flip/map/while/stateful_uniform_full_int/ProdProdKsequential_3/random_flip/map/while/stateful_uniform_full_int/shape:output:0Ksequential_3/random_flip/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 
Csequential_3/random_flip/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Η
Csequential_3/random_flip/map/while/stateful_uniform_full_int/Cast_1CastJsequential_3/random_flip/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: θ
Ksequential_3/random_flip/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipVsequential_3_random_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Lsequential_3/random_flip/map/while/stateful_uniform_full_int/Cast/x:output:0Gsequential_3/random_flip/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Psequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Rsequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Rsequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Jsequential_3/random_flip/map/while/stateful_uniform_full_int/strided_sliceStridedSliceSsequential_3/random_flip/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Ysequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice/stack:output:0[sequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0[sequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΥ
Dsequential_3/random_flip/map/while/stateful_uniform_full_int/BitcastBitcastSsequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Rsequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Tsequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Tsequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ώ
Lsequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceSsequential_3/random_flip/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0[sequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0]sequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0]sequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ω
Fsequential_3/random_flip/map/while/stateful_uniform_full_int/Bitcast_1BitcastUsequential_3/random_flip/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
@sequential_3/random_flip/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :ΐ
<sequential_3/random_flip/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Ksequential_3/random_flip/map/while/stateful_uniform_full_int/shape:output:0Osequential_3/random_flip/map/while/stateful_uniform_full_int/Bitcast_1:output:0Msequential_3/random_flip/map/while/stateful_uniform_full_int/Bitcast:output:0Isequential_3/random_flip/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	w
-sequential_3/random_flip/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R α
(sequential_3/random_flip/map/while/stackPackEsequential_3/random_flip/map/while/stateful_uniform_full_int:output:06sequential_3/random_flip/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:
6sequential_3/random_flip/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
8sequential_3/random_flip/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
8sequential_3/random_flip/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¦
0sequential_3/random_flip/map/while/strided_sliceStridedSlice1sequential_3/random_flip/map/while/stack:output:0?sequential_3/random_flip/map/while/strided_slice/stack:output:0Asequential_3/random_flip/map/while/strided_slice/stack_1:output:0Asequential_3/random_flip/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask»
Vsequential_3/random_flip/map/while/stateless_random_flip_left_right/control_dependencyIdentityMsequential_3/random_flip/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*Y
_classO
MKloc:@sequential_3/random_flip/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:₯
bsequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB ₯
`sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ₯
`sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?φ
ysequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter9sequential_3/random_flip/map/while/strided_slice:output:0* 
_output_shapes
::»
ysequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :’
usequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2ksequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ή
`sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubisequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0isequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ξ
`sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMul~sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0dsequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Χ
\sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2dsequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0isequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Jsequential_3/random_flip/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
Hsequential_3/random_flip/map/while/stateless_random_flip_left_right/LessLess`sequential_3/random_flip/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Ssequential_3/random_flip/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
Csequential_3/random_flip/map/while/stateless_random_flip_left_rightStatelessIfLsequential_3/random_flip/map/while/stateless_random_flip_left_right/Less:z:0_sequential_3/random_flip/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *b
else_branchSRQ
Osequential_3_random_flip_map_while_stateless_random_flip_left_right_false_28053*#
output_shapes
:*a
then_branchRRP
Nsequential_3_random_flip_map_while_stateless_random_flip_left_right_true_28052Υ
Lsequential_3/random_flip/map/while/stateless_random_flip_left_right/IdentityIdentityLsequential_3/random_flip/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:
Dsequential_3/random_flip/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Dsequential_3/random_flip/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_3/random_flip/map/while/stateful_uniform_full_int_1/ProdProdMsequential_3/random_flip/map/while/stateful_uniform_full_int_1/shape:output:0Msequential_3/random_flip/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: 
Esequential_3/random_flip/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Λ
Esequential_3/random_flip/map/while/stateful_uniform_full_int_1/Cast_1CastLsequential_3/random_flip/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ό
Msequential_3/random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipVsequential_3_random_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Nsequential_3/random_flip/map/while/stateful_uniform_full_int_1/Cast/x:output:0Isequential_3/random_flip/map/while/stateful_uniform_full_int_1/Cast_1:y:0L^sequential_3/random_flip/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
Rsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Tsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Tsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Lsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceUsequential_3/random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0[sequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0]sequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0]sequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΩ
Fsequential_3/random_flip/map/while/stateful_uniform_full_int_1/BitcastBitcastUsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Tsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Vsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Vsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Nsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceUsequential_3/random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0]sequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0_sequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0_sequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:έ
Hsequential_3/random_flip/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastWsequential_3/random_flip/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Bsequential_3/random_flip/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Κ
>sequential_3/random_flip/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Msequential_3/random_flip/map/while/stateful_uniform_full_int_1/shape:output:0Qsequential_3/random_flip/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Osequential_3/random_flip/map/while/stateful_uniform_full_int_1/Bitcast:output:0Ksequential_3/random_flip/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	y
/sequential_3/random_flip/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R η
*sequential_3/random_flip/map/while/stack_1PackGsequential_3/random_flip/map/while/stateful_uniform_full_int_1:output:08sequential_3/random_flip/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
8sequential_3/random_flip/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
:sequential_3/random_flip/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
:sequential_3/random_flip/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
2sequential_3/random_flip/map/while/strided_slice_1StridedSlice3sequential_3/random_flip/map/while/stack_1:output:0Asequential_3/random_flip/map/while/strided_slice_1/stack:output:0Csequential_3/random_flip/map/while/strided_slice_1/stack_1:output:0Csequential_3/random_flip/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskΖ
Ssequential_3/random_flip/map/while/stateless_random_flip_up_down/control_dependencyIdentityUsequential_3/random_flip/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*_
_classU
SQloc:@sequential_3/random_flip/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:’
_sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB ’
]sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ’
]sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?υ
vsequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter;sequential_3/random_flip/map/while/strided_slice_1:output:0* 
_output_shapes
::Έ
vsequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
rsequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2hsequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0|sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: Υ
]sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubfsequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0fsequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ε
]sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMul{sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0asequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Ξ
Ysequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2asequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0fsequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Gsequential_3/random_flip/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
Esequential_3/random_flip/map/while/stateless_random_flip_up_down/LessLess]sequential_3/random_flip/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Psequential_3/random_flip/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ρ
@sequential_3/random_flip/map/while/stateless_random_flip_up_downStatelessIfIsequential_3/random_flip/map/while/stateless_random_flip_up_down/Less:z:0\sequential_3/random_flip/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *_
else_branchPRN
Lsequential_3_random_flip_map_while_stateless_random_flip_up_down_false_28102*#
output_shapes
:*^
then_branchORM
Ksequential_3_random_flip_map_while_stateless_random_flip_up_down_true_28101Ο
Isequential_3/random_flip/map/while/stateless_random_flip_up_down/IdentityIdentityIsequential_3/random_flip/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:?
Gsequential_3/random_flip/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0sequential_3_random_flip_map_while_placeholder_1.sequential_3_random_flip_map_while_placeholderRsequential_3/random_flip/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:ιθ?j
(sequential_3/random_flip/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :³
&sequential_3/random_flip/map/while/addAddV2.sequential_3_random_flip_map_while_placeholder1sequential_3/random_flip/map/while/add/y:output:0*
T0*
_output_shapes
: l
*sequential_3/random_flip/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ϋ
(sequential_3/random_flip/map/while/add_1AddV2Rsequential_3_random_flip_map_while_sequential_3_random_flip_map_while_loop_counter3sequential_3/random_flip/map/while/add_1/y:output:0*
T0*
_output_shapes
: °
+sequential_3/random_flip/map/while/IdentityIdentity,sequential_3/random_flip/map/while/add_1:z:0(^sequential_3/random_flip/map/while/NoOp*
T0*
_output_shapes
: Σ
-sequential_3/random_flip/map/while/Identity_1IdentityMsequential_3_random_flip_map_while_sequential_3_random_flip_map_strided_slice(^sequential_3/random_flip/map/while/NoOp*
T0*
_output_shapes
: °
-sequential_3/random_flip/map/while/Identity_2Identity*sequential_3/random_flip/map/while/add:z:0(^sequential_3/random_flip/map/while/NoOp*
T0*
_output_shapes
: έ
-sequential_3/random_flip/map/while/Identity_3IdentityWsequential_3/random_flip/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^sequential_3/random_flip/map/while/NoOp*
T0*
_output_shapes
: 
'sequential_3/random_flip/map/while/NoOpNoOpL^sequential_3/random_flip/map/while/stateful_uniform_full_int/RngReadAndSkipN^sequential_3/random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "c
+sequential_3_random_flip_map_while_identity4sequential_3/random_flip/map/while/Identity:output:0"g
-sequential_3_random_flip_map_while_identity_16sequential_3/random_flip/map/while/Identity_1:output:0"g
-sequential_3_random_flip_map_while_identity_26sequential_3/random_flip/map/while/Identity_2:output:0"g
-sequential_3_random_flip_map_while_identity_36sequential_3/random_flip/map/while/Identity_3:output:0"€
Osequential_3_random_flip_map_while_sequential_3_random_flip_map_strided_slice_1Qsequential_3_random_flip_map_while_sequential_3_random_flip_map_strided_slice_1_0"?
Tsequential_3_random_flip_map_while_stateful_uniform_full_int_rngreadandskip_resourceVsequential_3_random_flip_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"
sequential_3_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_3_random_flip_map_tensorarrayunstack_tensorlistfromtensorsequential_3_random_flip_map_while_tensorarrayv2read_tensorlistgetitem_sequential_3_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2
Ksequential_3/random_flip/map/while/stateful_uniform_full_int/RngReadAndSkipKsequential_3/random_flip/map/while/stateful_uniform_full_int/RngReadAndSkip2
Msequential_3/random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkipMsequential_3/random_flip/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
·
Ν
map_while_cond_26938$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_26938___redundant_placeholder0;
7map_while_map_while_cond_26938___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Ω

,__inference_sequential_7_layer_call_fn_27664
sequential_2_input
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:	@

unknown_14:@

unknown_15:@

unknown_16:
identity’StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_27584o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:?????????
,
_user_specified_namesequential_2_input

ύ
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27245

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
	
m
G__inference_sequential_2_layer_call_and_return_conditional_losses_26755
resizing_2_input
identityΟ
resizing_2/PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_26700δ
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_26710v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:c _
1
_output_shapes
:?????????
*
_user_specified_nameresizing_2_input

ύ
D__inference_conv2d_17_layer_call_and_return_conditional_losses_28683

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs

Γ
J__inference_random_rotation_layer_call_and_return_conditional_losses_26910

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ω ΏY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ω ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ά
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:‘
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Φ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Τ
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ψ
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ‘
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
·
Ν
map_while_cond_28919$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_28919___redundant_placeholder0;
7map_while_map_while_cond_28919___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

Υ
,__inference_sequential_7_layer_call_fn_27402
sequential_2_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identity’StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallsequential_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_27367o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:?????????
,
_user_specified_namesequential_2_input
’
υ
 random_flip_map_while_cond_28376<
8random_flip_map_while_random_flip_map_while_loop_counter7
3random_flip_map_while_random_flip_map_strided_slice%
!random_flip_map_while_placeholder'
#random_flip_map_while_placeholder_1<
8random_flip_map_while_less_random_flip_map_strided_sliceS
Orandom_flip_map_while_random_flip_map_while_cond_28376___redundant_placeholder0S
Orandom_flip_map_while_random_flip_map_while_cond_28376___redundant_placeholder1"
random_flip_map_while_identity
 
random_flip/map/while/LessLess!random_flip_map_while_placeholder8random_flip_map_while_less_random_flip_map_strided_slice*
T0*
_output_shapes
: ΄
random_flip/map/while/Less_1Less8random_flip_map_while_random_flip_map_while_loop_counter3random_flip_map_while_random_flip_map_strided_slice*
T0*
_output_shapes
: 
 random_flip/map/while/LogicalAnd
LogicalAnd random_flip/map/while/Less_1:z:0random_flip/map/while/Less:z:0*
_output_shapes
: q
random_flip/map/while/IdentityIdentity$random_flip/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "I
random_flip_map_while_identity'random_flip/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

ύ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27317

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
E
Η
G__inference_sequential_7_layer_call_and_return_conditional_losses_27717
sequential_2_input)
conv2d_16_27669: 
conv2d_16_27671: )
conv2d_17_27675: @
conv2d_17_27677:@)
conv2d_18_27681:@@
conv2d_18_27683:@)
conv2d_19_27687:@@
conv2d_19_27689:@)
conv2d_20_27693:@@
conv2d_20_27695:@)
conv2d_21_27699:@@
conv2d_21_27701:@ 
dense_6_27706:	@
dense_6_27708:@
dense_7_27711:@
dense_7_27713:
identity’!conv2d_16/StatefulPartitionedCall’!conv2d_17/StatefulPartitionedCall’!conv2d_18/StatefulPartitionedCall’!conv2d_19/StatefulPartitionedCall’!conv2d_20/StatefulPartitionedCall’!conv2d_21/StatefulPartitionedCall’dense_6/StatefulPartitionedCall’dense_7/StatefulPartitionedCallΥ
sequential_2/PartitionedCallPartitionedCallsequential_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_26713θ
sequential_3/PartitionedCallPartitionedCall%sequential_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_26781
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall%sequential_3/PartitionedCall:output:0conv2d_16_27669conv2d_16_27671*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ώώ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27227σ
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_27144
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_27675conv2d_17_27677*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_27245σ
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_27156
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_27681conv2d_18_27683*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27263σ
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_27168
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_27687conv2d_19_27689*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27281σ
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_27180
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_27693conv2d_20_27695*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_27299σ
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_27192
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_27699conv2d_21_27701*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_27317σ
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_27204έ
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_27330
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_27706dense_6_27708*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_27343
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_27711dense_7_27713*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_27360w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????β
NoOpNoOp"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:e a
1
_output_shapes
:?????????
,
_user_specified_namesequential_2_input
΅	

>random_flip_map_while_stateless_random_flip_up_down_true_28485
random_flip_map_while_stateless_random_flip_up_down_reversev2_random_flip_map_while_stateless_random_flip_up_down_control_dependency@
<random_flip_map_while_stateless_random_flip_up_down_identity
Brandom_flip/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ν
=random_flip/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2random_flip_map_while_stateless_random_flip_up_down_reversev2_random_flip_map_while_stateless_random_flip_up_down_control_dependencyKrandom_flip/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Ώ
<random_flip/map/while/stateless_random_flip_up_down/IdentityIdentityFrandom_flip/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"
<random_flip_map_while_stateless_random_flip_up_down_identityErandom_flip/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

ύ
D__inference_conv2d_16_layer_call_and_return_conditional_losses_27227

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????ώώ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
ι
R
,__inference_sequential_2_layer_call_fn_26716
resizing_2_input
identityΖ
PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_26713j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:c _
1
_output_shapes
:?????????
*
_user_specified_nameresizing_2_input


τ
B__inference_dense_6_layer_call_and_return_conditional_losses_28844

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ό
θ
5map_while_stateless_random_flip_left_right_true_26998v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¨
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:­
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
ή

Β
Ksequential_3_random_flip_map_while_stateless_random_flip_up_down_true_28101£
sequential_3_random_flip_map_while_stateless_random_flip_up_down_reversev2_sequential_3_random_flip_map_while_stateless_random_flip_up_down_control_dependencyM
Isequential_3_random_flip_map_while_stateless_random_flip_up_down_identity
Osequential_3/random_flip/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
Jsequential_3/random_flip/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2sequential_3_random_flip_map_while_stateless_random_flip_up_down_reversev2_sequential_3_random_flip_map_while_stateless_random_flip_up_down_control_dependencyXsequential_3/random_flip/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Ω
Isequential_3/random_flip/map/while/stateless_random_flip_up_down/IdentityIdentitySsequential_3/random_flip/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"
Isequential_3_random_flip_map_while_stateless_random_flip_up_down_identityRsequential_3/random_flip/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Ύ
{
+__inference_random_flip_layer_call_fn_28900

inputs
unknown:	
identity’StatefulPartitionedCallΥ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_27081y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
γ
Ι
,__inference_sequential_7_layer_call_fn_27856

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@

unknown_14:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_27367o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
	
n
G__inference_sequential_3_layer_call_and_return_conditional_losses_27125
random_flip_input
identity?
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_26772ν
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_26778z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:d `
1
_output_shapes
:?????????
+
_user_specified_namerandom_flip_input
Α

'__inference_dense_6_layer_call_fn_28833

inputs
unknown:	@
	unknown_0:@
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_27343o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_28713

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs
Λ
H
,__inference_sequential_3_layer_call_fn_28348

inputs
identityΌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_26781j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
€
ά
3map_while_stateless_random_flip_up_down_false_27048o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityΨ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
―
E
)__inference_flatten_3_layer_call_fn_28818

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_27330a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs

Β
Lsequential_3_random_flip_map_while_stateless_random_flip_up_down_false_28102’
sequential_3_random_flip_map_while_stateless_random_flip_up_down_identity_sequential_3_random_flip_map_while_stateless_random_flip_up_down_control_dependencyM
Isequential_3_random_flip_map_while_stateless_random_flip_up_down_identity€
Isequential_3/random_flip/map/while/stateless_random_flip_up_down/IdentityIdentitysequential_3_random_flip_map_while_stateless_random_flip_up_down_identity_sequential_3_random_flip_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"
Isequential_3_random_flip_map_while_stateless_random_flip_up_down_identityRsequential_3/random_flip/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Ζ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_27330

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_28663

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
Νp
ά
 __inference__wrapped_model_26687
sequential_2_inputO
5sequential_7_conv2d_16_conv2d_readvariableop_resource: D
6sequential_7_conv2d_16_biasadd_readvariableop_resource: O
5sequential_7_conv2d_17_conv2d_readvariableop_resource: @D
6sequential_7_conv2d_17_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_18_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_18_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_19_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_19_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_20_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_20_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_21_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_21_biasadd_readvariableop_resource:@F
3sequential_7_dense_6_matmul_readvariableop_resource:	@B
4sequential_7_dense_6_biasadd_readvariableop_resource:@E
3sequential_7_dense_7_matmul_readvariableop_resource:@B
4sequential_7_dense_7_biasadd_readvariableop_resource:
identity’-sequential_7/conv2d_16/BiasAdd/ReadVariableOp’,sequential_7/conv2d_16/Conv2D/ReadVariableOp’-sequential_7/conv2d_17/BiasAdd/ReadVariableOp’,sequential_7/conv2d_17/Conv2D/ReadVariableOp’-sequential_7/conv2d_18/BiasAdd/ReadVariableOp’,sequential_7/conv2d_18/Conv2D/ReadVariableOp’-sequential_7/conv2d_19/BiasAdd/ReadVariableOp’,sequential_7/conv2d_19/Conv2D/ReadVariableOp’-sequential_7/conv2d_20/BiasAdd/ReadVariableOp’,sequential_7/conv2d_20/Conv2D/ReadVariableOp’-sequential_7/conv2d_21/BiasAdd/ReadVariableOp’,sequential_7/conv2d_21/Conv2D/ReadVariableOp’+sequential_7/dense_6/BiasAdd/ReadVariableOp’*sequential_7/dense_6/MatMul/ReadVariableOp’+sequential_7/dense_7/BiasAdd/ReadVariableOp’*sequential_7/dense_7/MatMul/ReadVariableOp
0sequential_7/sequential_2/resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ρ
:sequential_7/sequential_2/resizing_2/resize/ResizeBilinearResizeBilinearsequential_2_input9sequential_7/sequential_2/resizing_2/resize/size:output:0*
T0*1
_output_shapes
:?????????*
half_pixel_centers(q
,sequential_7/sequential_2/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;s
.sequential_7/sequential_2/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    π
)sequential_7/sequential_2/rescaling_2/mulMulKsequential_7/sequential_2/resizing_2/resize/ResizeBilinear:resized_images:05sequential_7/sequential_2/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:?????????Φ
)sequential_7/sequential_2/rescaling_2/addAddV2-sequential_7/sequential_2/rescaling_2/mul:z:07sequential_7/sequential_2/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????ͺ
,sequential_7/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ρ
sequential_7/conv2d_16/Conv2DConv2D-sequential_7/sequential_2/rescaling_2/add:z:04sequential_7/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ *
paddingVALID*
strides
 
-sequential_7/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Δ
sequential_7/conv2d_16/BiasAddBiasAdd&sequential_7/conv2d_16/Conv2D:output:05sequential_7/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ώώ 
sequential_7/conv2d_16/ReluRelu'sequential_7/conv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:?????????ώώ Θ
%sequential_7/max_pooling2d_16/MaxPoolMaxPool)sequential_7/conv2d_16/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
ͺ
,sequential_7/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0π
sequential_7/conv2d_17/Conv2DConv2D.sequential_7/max_pooling2d_16/MaxPool:output:04sequential_7/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@*
paddingVALID*
strides
 
-sequential_7/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Β
sequential_7/conv2d_17/BiasAddBiasAdd&sequential_7/conv2d_17/Conv2D:output:05sequential_7/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????}}@
sequential_7/conv2d_17/ReluRelu'sequential_7/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:?????????}}@Θ
%sequential_7/max_pooling2d_17/MaxPoolMaxPool)sequential_7/conv2d_17/Relu:activations:0*/
_output_shapes
:?????????>>@*
ksize
*
paddingVALID*
strides
ͺ
,sequential_7/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0π
sequential_7/conv2d_18/Conv2DConv2D.sequential_7/max_pooling2d_17/MaxPool:output:04sequential_7/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingVALID*
strides
 
-sequential_7/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Β
sequential_7/conv2d_18/BiasAddBiasAdd&sequential_7/conv2d_18/Conv2D:output:05sequential_7/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@
sequential_7/conv2d_18/ReluRelu'sequential_7/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@Θ
%sequential_7/max_pooling2d_18/MaxPoolMaxPool)sequential_7/conv2d_18/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
ͺ
,sequential_7/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0π
sequential_7/conv2d_19/Conv2DConv2D.sequential_7/max_pooling2d_18/MaxPool:output:04sequential_7/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
 
-sequential_7/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Β
sequential_7/conv2d_19/BiasAddBiasAdd&sequential_7/conv2d_19/Conv2D:output:05sequential_7/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@
sequential_7/conv2d_19/ReluRelu'sequential_7/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@Θ
%sequential_7/max_pooling2d_19/MaxPoolMaxPool)sequential_7/conv2d_19/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
ͺ
,sequential_7/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0π
sequential_7/conv2d_20/Conv2DConv2D.sequential_7/max_pooling2d_19/MaxPool:output:04sequential_7/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
 
-sequential_7/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Β
sequential_7/conv2d_20/BiasAddBiasAdd&sequential_7/conv2d_20/Conv2D:output:05sequential_7/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@
sequential_7/conv2d_20/ReluRelu'sequential_7/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@Θ
%sequential_7/max_pooling2d_20/MaxPoolMaxPool)sequential_7/conv2d_20/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
ͺ
,sequential_7/conv2d_21/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0π
sequential_7/conv2d_21/Conv2DConv2D.sequential_7/max_pooling2d_20/MaxPool:output:04sequential_7/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
 
-sequential_7/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Β
sequential_7/conv2d_21/BiasAddBiasAdd&sequential_7/conv2d_21/Conv2D:output:05sequential_7/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@
sequential_7/conv2d_21/ReluRelu'sequential_7/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@Θ
%sequential_7/max_pooling2d_21/MaxPoolMaxPool)sequential_7/conv2d_21/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
m
sequential_7/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ³
sequential_7/flatten_3/ReshapeReshape.sequential_7/max_pooling2d_21/MaxPool:output:0%sequential_7/flatten_3/Const:output:0*
T0*(
_output_shapes
:?????????
*sequential_7/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_7_dense_6_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0΄
sequential_7/dense_6/MatMulMatMul'sequential_7/flatten_3/Reshape:output:02sequential_7/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@
+sequential_7/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_7_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0΅
sequential_7/dense_6/BiasAddBiasAdd%sequential_7/dense_6/MatMul:product:03sequential_7/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@z
sequential_7/dense_6/ReluRelu%sequential_7/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@
*sequential_7/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_7_dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0΄
sequential_7/dense_7/MatMulMatMul'sequential_7/dense_6/Relu:activations:02sequential_7/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
+sequential_7/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_7_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0΅
sequential_7/dense_7/BiasAddBiasAdd%sequential_7/dense_7/MatMul:product:03sequential_7/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
sequential_7/dense_7/SoftmaxSoftmax%sequential_7/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????u
IdentityIdentity&sequential_7/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Ά
NoOpNoOp.^sequential_7/conv2d_16/BiasAdd/ReadVariableOp-^sequential_7/conv2d_16/Conv2D/ReadVariableOp.^sequential_7/conv2d_17/BiasAdd/ReadVariableOp-^sequential_7/conv2d_17/Conv2D/ReadVariableOp.^sequential_7/conv2d_18/BiasAdd/ReadVariableOp-^sequential_7/conv2d_18/Conv2D/ReadVariableOp.^sequential_7/conv2d_19/BiasAdd/ReadVariableOp-^sequential_7/conv2d_19/Conv2D/ReadVariableOp.^sequential_7/conv2d_20/BiasAdd/ReadVariableOp-^sequential_7/conv2d_20/Conv2D/ReadVariableOp.^sequential_7/conv2d_21/BiasAdd/ReadVariableOp-^sequential_7/conv2d_21/Conv2D/ReadVariableOp,^sequential_7/dense_6/BiasAdd/ReadVariableOp+^sequential_7/dense_6/MatMul/ReadVariableOp,^sequential_7/dense_7/BiasAdd/ReadVariableOp+^sequential_7/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:?????????: : : : : : : : : : : : : : : : 2^
-sequential_7/conv2d_16/BiasAdd/ReadVariableOp-sequential_7/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_16/Conv2D/ReadVariableOp,sequential_7/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_17/BiasAdd/ReadVariableOp-sequential_7/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_17/Conv2D/ReadVariableOp,sequential_7/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_18/BiasAdd/ReadVariableOp-sequential_7/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_18/Conv2D/ReadVariableOp,sequential_7/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_19/BiasAdd/ReadVariableOp-sequential_7/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_19/Conv2D/ReadVariableOp,sequential_7/conv2d_19/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_20/BiasAdd/ReadVariableOp-sequential_7/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_20/Conv2D/ReadVariableOp,sequential_7/conv2d_20/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_21/BiasAdd/ReadVariableOp-sequential_7/conv2d_21/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_21/Conv2D/ReadVariableOp,sequential_7/conv2d_21/Conv2D/ReadVariableOp2Z
+sequential_7/dense_6/BiasAdd/ReadVariableOp+sequential_7/dense_6/BiasAdd/ReadVariableOp2X
*sequential_7/dense_6/MatMul/ReadVariableOp*sequential_7/dense_6/MatMul/ReadVariableOp2Z
+sequential_7/dense_7/BiasAdd/ReadVariableOp+sequential_7/dense_7/BiasAdd/ReadVariableOp2X
*sequential_7/dense_7/MatMul/ReadVariableOp*sequential_7/dense_7/MatMul/ReadVariableOp:e a
1
_output_shapes
:?????????
,
_user_specified_namesequential_2_input
€
ά
3map_while_stateless_random_flip_up_down_false_29029o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityΨ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Λ
H
,__inference_sequential_2_layer_call_fn_28318

inputs
identityΌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_26713j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs
Ζ

/__inference_random_rotation_layer_call_fn_29074

inputs
unknown:	
identity’StatefulPartitionedCallΩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_26910y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs


?random_flip_map_while_stateless_random_flip_up_down_false_28486
random_flip_map_while_stateless_random_flip_up_down_identity_random_flip_map_while_stateless_random_flip_up_down_control_dependency@
<random_flip_map_while_stateless_random_flip_up_down_identityύ
<random_flip/map/while/stateless_random_flip_up_down/IdentityIdentityrandom_flip_map_while_stateless_random_flip_up_down_identity_random_flip_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"
<random_flip_map_while_stateless_random_flip_up_down_identityErandom_flip/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
ι
R
,__inference_sequential_2_layer_call_fn_26749
resizing_2_input
identityΖ
PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_26741j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:c _
1
_output_shapes
:?????????
*
_user_specified_nameresizing_2_input
Ώ
θ
6map_while_stateless_random_flip_left_right_false_26999u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityα
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
λ
Ϊ$
!__inference__traced_restore_29593
file_prefix;
!assignvariableop_conv2d_16_kernel: /
!assignvariableop_1_conv2d_16_bias: =
#assignvariableop_2_conv2d_17_kernel: @/
!assignvariableop_3_conv2d_17_bias:@=
#assignvariableop_4_conv2d_18_kernel:@@/
!assignvariableop_5_conv2d_18_bias:@=
#assignvariableop_6_conv2d_19_kernel:@@/
!assignvariableop_7_conv2d_19_bias:@=
#assignvariableop_8_conv2d_20_kernel:@@/
!assignvariableop_9_conv2d_20_bias:@>
$assignvariableop_10_conv2d_21_kernel:@@0
"assignvariableop_11_conv2d_21_bias:@5
"assignvariableop_12_dense_6_kernel:	@.
 assignvariableop_13_dense_6_bias:@4
"assignvariableop_14_dense_7_kernel:@.
 assignvariableop_15_dense_7_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: #
assignvariableop_23_total: #
assignvariableop_24_count: ,
assignvariableop_25_statevar_1:	*
assignvariableop_26_statevar:	E
+assignvariableop_27_adam_conv2d_16_kernel_m: 7
)assignvariableop_28_adam_conv2d_16_bias_m: E
+assignvariableop_29_adam_conv2d_17_kernel_m: @7
)assignvariableop_30_adam_conv2d_17_bias_m:@E
+assignvariableop_31_adam_conv2d_18_kernel_m:@@7
)assignvariableop_32_adam_conv2d_18_bias_m:@E
+assignvariableop_33_adam_conv2d_19_kernel_m:@@7
)assignvariableop_34_adam_conv2d_19_bias_m:@E
+assignvariableop_35_adam_conv2d_20_kernel_m:@@7
)assignvariableop_36_adam_conv2d_20_bias_m:@E
+assignvariableop_37_adam_conv2d_21_kernel_m:@@7
)assignvariableop_38_adam_conv2d_21_bias_m:@<
)assignvariableop_39_adam_dense_6_kernel_m:	@5
'assignvariableop_40_adam_dense_6_bias_m:@;
)assignvariableop_41_adam_dense_7_kernel_m:@5
'assignvariableop_42_adam_dense_7_bias_m:E
+assignvariableop_43_adam_conv2d_16_kernel_v: 7
)assignvariableop_44_adam_conv2d_16_bias_v: E
+assignvariableop_45_adam_conv2d_17_kernel_v: @7
)assignvariableop_46_adam_conv2d_17_bias_v:@E
+assignvariableop_47_adam_conv2d_18_kernel_v:@@7
)assignvariableop_48_adam_conv2d_18_bias_v:@E
+assignvariableop_49_adam_conv2d_19_kernel_v:@@7
)assignvariableop_50_adam_conv2d_19_bias_v:@E
+assignvariableop_51_adam_conv2d_20_kernel_v:@@7
)assignvariableop_52_adam_conv2d_20_bias_v:@E
+assignvariableop_53_adam_conv2d_21_kernel_v:@@7
)assignvariableop_54_adam_conv2d_21_bias_v:@<
)assignvariableop_55_adam_dense_6_kernel_v:	@5
'assignvariableop_56_adam_dense_6_bias_v:@;
)assignvariableop_57_adam_dense_7_kernel_v:@5
'assignvariableop_58_adam_dense_7_bias_v:
identity_60’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_40’AssignVariableOp_41’AssignVariableOp_42’AssignVariableOp_43’AssignVariableOp_44’AssignVariableOp_45’AssignVariableOp_46’AssignVariableOp_47’AssignVariableOp_48’AssignVariableOp_49’AssignVariableOp_5’AssignVariableOp_50’AssignVariableOp_51’AssignVariableOp_52’AssignVariableOp_53’AssignVariableOp_54’AssignVariableOp_55’AssignVariableOp_56’AssignVariableOp_57’AssignVariableOp_58’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9Β!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*θ 
valueή BΫ <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHλ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*
valueB<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ν
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesσ
π::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_16_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_16_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_17_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_17_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_18_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_18_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_19_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_19_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_20_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_20_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_21_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_21_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_statevar_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_statevarIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_16_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_16_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_17_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_17_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_18_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_18_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_19_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_19_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_20_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_20_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_21_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_21_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_6_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_6_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_7_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_7_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_16_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_16_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_17_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_17_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_18_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_18_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_19_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_19_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_20_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_20_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_21_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_21_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_6_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_6_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_7_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_7_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 α

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: Ξ

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_60Identity_60:output:0*
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
β
c
G__inference_sequential_2_layer_call_and_return_conditional_losses_26713

inputs
identityΕ
resizing_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_26700δ
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_26710v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

f
J__inference_random_rotation_layer_call_and_return_conditional_losses_26778

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????:Y U
1
_output_shapes
:?????????
 
_user_specified_nameinputs

ύ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_28773

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
κ

)__inference_conv2d_18_layer_call_fn_28702

inputs!
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_27263w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<<@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>>@
 
_user_specified_nameinputs
«

map_while_body_28920$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	’2map/while/stateful_uniform_full_int/RngReadAndSkip’4map/while/stateful_uniform_full_int_1/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ·
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ή
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Γ
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskπ
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Δ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::’
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?έ
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_28980*#
output_shapes
:*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_28979£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ώ
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ώ
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask§
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:«
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ν
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskϋ
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Γ
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Τ
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: τ
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_29029*#
output_shapes
:*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_29028
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:ξ
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:ιθ?Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: Ό
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Έ
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
κ

)__inference_conv2d_19_layer_call_fn_28732

inputs!
unknown:@@
	unknown_0:@
identity’StatefulPartitionedCallα
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_27281w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs"ΏL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Κ
serving_defaultΆ
[
sequential_2_inputE
$serving_default_sequential_2_input:0?????????;
dense_70
StatefulPartitionedCall:0?????????tensorflow/serving/predict:Τ

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Δ
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_sequential
Δ
#layer-0
$layer-1
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_sequential
έ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op"
_tf_keras_layer
₯
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op"
_tf_keras_layer
₯
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op"
_tf_keras_layer
₯
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op"
_tf_keras_layer
₯
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op"
_tf_keras_layer
₯
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
έ
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op"
_tf_keras_layer
ͺ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
Γ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer

10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
12
13
14
15"
trackable_list_wrapper

10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
Ο
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ξ
 trace_0
‘trace_1
’trace_2
£trace_32ϋ
,__inference_sequential_7_layer_call_fn_27402
,__inference_sequential_7_layer_call_fn_27856
,__inference_sequential_7_layer_call_fn_27897
,__inference_sequential_7_layer_call_fn_27664ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 z trace_0z‘trace_1z’trace_2z£trace_3
Ϊ
€trace_0
₯trace_1
¦trace_2
§trace_32η
G__inference_sequential_7_layer_call_and_return_conditional_losses_27971
G__inference_sequential_7_layer_call_and_return_conditional_losses_28313
G__inference_sequential_7_layer_call_and_return_conditional_losses_27717
G__inference_sequential_7_layer_call_and_return_conditional_losses_27774ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 z€trace_0z₯trace_1z¦trace_2z§trace_3
ΦBΣ
 __inference__wrapped_model_26687sequential_2_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 
	¨iter
©beta_1
ͺbeta_2

«decay
¬learning_rate1mϊ2mϋ@mόAmύOmώPm?^m_mmmnm|m}m	m	m	m	m1v2v@vAvOvPv^v_vmvnv|v}v	v	v	v	v"
	optimizer
-
­serving_default"
signature_map
«
?	variables
―trainable_variables
°regularization_losses
±	keras_api
²__call__
+³&call_and_return_all_conditional_losses"
_tf_keras_layer
«
΄	variables
΅trainable_variables
Άregularization_losses
·	keras_api
Έ__call__
+Ή&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ίnon_trainable_variables
»layers
Όmetrics
 ½layer_regularization_losses
Ύlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
ξ
Ώtrace_0
ΐtrace_1
Αtrace_2
Βtrace_32ϋ
,__inference_sequential_2_layer_call_fn_26716
,__inference_sequential_2_layer_call_fn_28318
,__inference_sequential_2_layer_call_fn_28323
,__inference_sequential_2_layer_call_fn_26749ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 zΏtrace_0zΐtrace_1zΑtrace_2zΒtrace_3
Ϊ
Γtrace_0
Δtrace_1
Εtrace_2
Ζtrace_32η
G__inference_sequential_2_layer_call_and_return_conditional_losses_28333
G__inference_sequential_2_layer_call_and_return_conditional_losses_28343
G__inference_sequential_2_layer_call_and_return_conditional_losses_26755
G__inference_sequential_2_layer_call_and_return_conditional_losses_26761ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 zΓtrace_0zΔtrace_1zΕtrace_2zΖtrace_3
Γ
Η	variables
Θtrainable_variables
Ιregularization_losses
Κ	keras_api
Λ__call__
+Μ&call_and_return_all_conditional_losses
Ν_random_generator"
_tf_keras_layer
Γ
Ξ	variables
Οtrainable_variables
Πregularization_losses
Ρ	keras_api
?__call__
+Σ&call_and_return_all_conditional_losses
Τ_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
ξ
Ϊtrace_0
Ϋtrace_1
άtrace_2
έtrace_32ϋ
,__inference_sequential_3_layer_call_fn_26784
,__inference_sequential_3_layer_call_fn_28348
,__inference_sequential_3_layer_call_fn_28357
,__inference_sequential_3_layer_call_fn_27119ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 zΪtrace_0zΫtrace_1zάtrace_2zέtrace_3
Ϊ
ήtrace_0
ίtrace_1
ΰtrace_2
αtrace_32η
G__inference_sequential_3_layer_call_and_return_conditional_losses_28361
G__inference_sequential_3_layer_call_and_return_conditional_losses_28633
G__inference_sequential_3_layer_call_and_return_conditional_losses_27125
G__inference_sequential_3_layer_call_and_return_conditional_losses_27135ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 zήtrace_0zίtrace_1zΰtrace_2zαtrace_3
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
²
βnon_trainable_variables
γlayers
δmetrics
 εlayer_regularization_losses
ζlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ο
ηtrace_02Π
)__inference_conv2d_16_layer_call_fn_28642’
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
annotationsͺ *
 zηtrace_0

θtrace_02λ
D__inference_conv2d_16_layer_call_and_return_conditional_losses_28653’
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
annotationsͺ *
 zθtrace_0
*:( 2conv2d_16/kernel
: 2conv2d_16/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ιnon_trainable_variables
κlayers
λmetrics
 μlayer_regularization_losses
νlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
φ
ξtrace_02Χ
0__inference_max_pooling2d_16_layer_call_fn_28658’
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
annotationsͺ *
 zξtrace_0

οtrace_02ς
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_28663’
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
annotationsͺ *
 zοtrace_0
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
πnon_trainable_variables
ρlayers
ςmetrics
 σlayer_regularization_losses
τlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ο
υtrace_02Π
)__inference_conv2d_17_layer_call_fn_28672’
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
annotationsͺ *
 zυtrace_0

φtrace_02λ
D__inference_conv2d_17_layer_call_and_return_conditional_losses_28683’
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
annotationsͺ *
 zφtrace_0
*:( @2conv2d_17/kernel
:@2conv2d_17/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
χnon_trainable_variables
ψlayers
ωmetrics
 ϊlayer_regularization_losses
ϋlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
φ
όtrace_02Χ
0__inference_max_pooling2d_17_layer_call_fn_28688’
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
annotationsͺ *
 zόtrace_0

ύtrace_02ς
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_28693’
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
annotationsͺ *
 zύtrace_0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ώnon_trainable_variables
?layers
metrics
 layer_regularization_losses
layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
ο
trace_02Π
)__inference_conv2d_18_layer_call_fn_28702’
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
annotationsͺ *
 ztrace_0

trace_02λ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_28713’
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
annotationsͺ *
 ztrace_0
*:(@@2conv2d_18/kernel
:@2conv2d_18/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
φ
trace_02Χ
0__inference_max_pooling2d_18_layer_call_fn_28718’
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
annotationsͺ *
 ztrace_0

trace_02ς
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_28723’
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
annotationsͺ *
 ztrace_0
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
ο
trace_02Π
)__inference_conv2d_19_layer_call_fn_28732’
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
annotationsͺ *
 ztrace_0

trace_02λ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_28743’
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
annotationsͺ *
 ztrace_0
*:(@@2conv2d_19/kernel
:@2conv2d_19/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
φ
trace_02Χ
0__inference_max_pooling2d_19_layer_call_fn_28748’
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
annotationsͺ *
 ztrace_0

trace_02ς
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_28753’
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
annotationsͺ *
 ztrace_0
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
ο
trace_02Π
)__inference_conv2d_20_layer_call_fn_28762’
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
annotationsͺ *
 ztrace_0

 trace_02λ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_28773’
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
annotationsͺ *
 z trace_0
*:(@@2conv2d_20/kernel
:@2conv2d_20/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
‘non_trainable_variables
’layers
£metrics
 €layer_regularization_losses
₯layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
φ
¦trace_02Χ
0__inference_max_pooling2d_20_layer_call_fn_28778’
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
annotationsͺ *
 z¦trace_0

§trace_02ς
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_28783’
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
annotationsͺ *
 z§trace_0
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¨non_trainable_variables
©layers
ͺmetrics
 «layer_regularization_losses
¬layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
ο
­trace_02Π
)__inference_conv2d_21_layer_call_fn_28792’
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
annotationsͺ *
 z­trace_0

?trace_02λ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_28803’
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
annotationsͺ *
 z?trace_0
*:(@@2conv2d_21/kernel
:@2conv2d_21/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
·
―non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
φ
΄trace_02Χ
0__inference_max_pooling2d_21_layer_call_fn_28808’
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
annotationsͺ *
 z΄trace_0

΅trace_02ς
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_28813’
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
annotationsͺ *
 z΅trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Άnon_trainable_variables
·layers
Έmetrics
 Ήlayer_regularization_losses
Ίlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ο
»trace_02Π
)__inference_flatten_3_layer_call_fn_28818’
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
annotationsͺ *
 z»trace_0

Όtrace_02λ
D__inference_flatten_3_layer_call_and_return_conditional_losses_28824’
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
annotationsͺ *
 zΌtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
½non_trainable_variables
Ύlayers
Ώmetrics
 ΐlayer_regularization_losses
Αlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ν
Βtrace_02Ξ
'__inference_dense_6_layer_call_fn_28833’
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
annotationsͺ *
 zΒtrace_0

Γtrace_02ι
B__inference_dense_6_layer_call_and_return_conditional_losses_28844’
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
annotationsͺ *
 zΓtrace_0
!:	@2dense_6/kernel
:@2dense_6/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Δnon_trainable_variables
Εlayers
Ζmetrics
 Ηlayer_regularization_losses
Θlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ν
Ιtrace_02Ξ
'__inference_dense_7_layer_call_fn_28853’
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
annotationsͺ *
 zΙtrace_0

Κtrace_02ι
B__inference_dense_7_layer_call_and_return_conditional_losses_28864’
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
annotationsͺ *
 zΚtrace_0
 :@2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
0
Λ0
Μ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_7_layer_call_fn_27402sequential_2_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ώBϋ
,__inference_sequential_7_layer_call_fn_27856inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ώBϋ
,__inference_sequential_7_layer_call_fn_27897inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
,__inference_sequential_7_layer_call_fn_27664sequential_2_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_7_layer_call_and_return_conditional_losses_27971inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_7_layer_call_and_return_conditional_losses_28313inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
₯B’
G__inference_sequential_7_layer_call_and_return_conditional_losses_27717sequential_2_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
₯B’
G__inference_sequential_7_layer_call_and_return_conditional_losses_27774sequential_2_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ΥB?
#__inference_signature_wrapper_27819sequential_2_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Νnon_trainable_variables
Ξlayers
Οmetrics
 Πlayer_regularization_losses
Ρlayer_metrics
?	variables
―trainable_variables
°regularization_losses
²__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
π
?trace_02Ρ
*__inference_resizing_2_layer_call_fn_28869’
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
annotationsͺ *
 z?trace_0

Σtrace_02μ
E__inference_resizing_2_layer_call_and_return_conditional_losses_28875’
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
annotationsͺ *
 zΣtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Τnon_trainable_variables
Υlayers
Φmetrics
 Χlayer_regularization_losses
Ψlayer_metrics
΄	variables
΅trainable_variables
Άregularization_losses
Έ__call__
+Ή&call_and_return_all_conditional_losses
'Ή"call_and_return_conditional_losses"
_generic_user_object
ρ
Ωtrace_02?
+__inference_rescaling_2_layer_call_fn_28880’
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
annotationsͺ *
 zΩtrace_0

Ϊtrace_02ν
F__inference_rescaling_2_layer_call_and_return_conditional_losses_28888’
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
annotationsͺ *
 zΪtrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_2_layer_call_fn_26716resizing_2_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ώBϋ
,__inference_sequential_2_layer_call_fn_28318inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ώBϋ
,__inference_sequential_2_layer_call_fn_28323inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
,__inference_sequential_2_layer_call_fn_26749resizing_2_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_2_layer_call_and_return_conditional_losses_28333inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_2_layer_call_and_return_conditional_losses_28343inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
£B 
G__inference_sequential_2_layer_call_and_return_conditional_losses_26755resizing_2_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
£B 
G__inference_sequential_2_layer_call_and_return_conditional_losses_26761resizing_2_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Ϋnon_trainable_variables
άlayers
έmetrics
 ήlayer_regularization_losses
ίlayer_metrics
Η	variables
Θtrainable_variables
Ιregularization_losses
Λ__call__
+Μ&call_and_return_all_conditional_losses
'Μ"call_and_return_conditional_losses"
_generic_user_object
Μ
ΰtrace_0
αtrace_12
+__inference_random_flip_layer_call_fn_28893
+__inference_random_flip_layer_call_fn_28900΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zΰtrace_0zαtrace_1

βtrace_0
γtrace_12Η
F__inference_random_flip_layer_call_and_return_conditional_losses_28904
F__inference_random_flip_layer_call_and_return_conditional_losses_29062΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zβtrace_0zγtrace_1
/
δ
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
εnon_trainable_variables
ζlayers
ηmetrics
 θlayer_regularization_losses
ιlayer_metrics
Ξ	variables
Οtrainable_variables
Πregularization_losses
?__call__
+Σ&call_and_return_all_conditional_losses
'Σ"call_and_return_conditional_losses"
_generic_user_object
Τ
κtrace_0
λtrace_12
/__inference_random_rotation_layer_call_fn_29067
/__inference_random_rotation_layer_call_fn_29074΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zκtrace_0zλtrace_1

μtrace_0
νtrace_12Ο
J__inference_random_rotation_layer_call_and_return_conditional_losses_29078
J__inference_random_rotation_layer_call_and_return_conditional_losses_29196΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 zμtrace_0zνtrace_1
/
ξ
_generator"
_generic_user_object
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_3_layer_call_fn_26784random_flip_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ώBϋ
,__inference_sequential_3_layer_call_fn_28348inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ώBϋ
,__inference_sequential_3_layer_call_fn_28357inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
,__inference_sequential_3_layer_call_fn_27119random_flip_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_28361inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_3_layer_call_and_return_conditional_losses_28633inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
€B‘
G__inference_sequential_3_layer_call_and_return_conditional_losses_27125random_flip_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
€B‘
G__inference_sequential_3_layer_call_and_return_conditional_losses_27135random_flip_input"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
έBΪ
)__inference_conv2d_16_layer_call_fn_28642inputs"’
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
annotationsͺ *
 
ψBυ
D__inference_conv2d_16_layer_call_and_return_conditional_losses_28653inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
δBα
0__inference_max_pooling2d_16_layer_call_fn_28658inputs"’
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
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_28663inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
έBΪ
)__inference_conv2d_17_layer_call_fn_28672inputs"’
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
annotationsͺ *
 
ψBυ
D__inference_conv2d_17_layer_call_and_return_conditional_losses_28683inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
δBα
0__inference_max_pooling2d_17_layer_call_fn_28688inputs"’
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
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_28693inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
έBΪ
)__inference_conv2d_18_layer_call_fn_28702inputs"’
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
annotationsͺ *
 
ψBυ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_28713inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
δBα
0__inference_max_pooling2d_18_layer_call_fn_28718inputs"’
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
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_28723inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
έBΪ
)__inference_conv2d_19_layer_call_fn_28732inputs"’
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
annotationsͺ *
 
ψBυ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_28743inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
δBα
0__inference_max_pooling2d_19_layer_call_fn_28748inputs"’
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
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_28753inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
έBΪ
)__inference_conv2d_20_layer_call_fn_28762inputs"’
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
annotationsͺ *
 
ψBυ
D__inference_conv2d_20_layer_call_and_return_conditional_losses_28773inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
δBα
0__inference_max_pooling2d_20_layer_call_fn_28778inputs"’
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
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_28783inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
έBΪ
)__inference_conv2d_21_layer_call_fn_28792inputs"’
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
annotationsͺ *
 
ψBυ
D__inference_conv2d_21_layer_call_and_return_conditional_losses_28803inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
δBα
0__inference_max_pooling2d_21_layer_call_fn_28808inputs"’
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
annotationsͺ *
 
?Bό
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_28813inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
έBΪ
)__inference_flatten_3_layer_call_fn_28818inputs"’
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
annotationsͺ *
 
ψBυ
D__inference_flatten_3_layer_call_and_return_conditional_losses_28824inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΫBΨ
'__inference_dense_6_layer_call_fn_28833inputs"’
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
annotationsͺ *
 
φBσ
B__inference_dense_6_layer_call_and_return_conditional_losses_28844inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΫBΨ
'__inference_dense_7_layer_call_fn_28853inputs"’
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
annotationsͺ *
 
φBσ
B__inference_dense_7_layer_call_and_return_conditional_losses_28864inputs"’
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
annotationsͺ *
 
R
ο	variables
π	keras_api

ρtotal

ςcount"
_tf_keras_metric
c
σ	variables
τ	keras_api

υtotal

φcount
χ
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ήBΫ
*__inference_resizing_2_layer_call_fn_28869inputs"’
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
annotationsͺ *
 
ωBφ
E__inference_resizing_2_layer_call_and_return_conditional_losses_28875inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ίBά
+__inference_rescaling_2_layer_call_fn_28880inputs"’
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
annotationsͺ *
 
ϊBχ
F__inference_rescaling_2_layer_call_and_return_conditional_losses_28888inputs"’
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
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ρBξ
+__inference_random_flip_layer_call_fn_28893inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ρBξ
+__inference_random_flip_layer_call_fn_28900inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
F__inference_random_flip_layer_call_and_return_conditional_losses_28904inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
F__inference_random_flip_layer_call_and_return_conditional_losses_29062inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
/
ψ
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
υBς
/__inference_random_rotation_layer_call_fn_29067inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
υBς
/__inference_random_rotation_layer_call_fn_29074inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
J__inference_random_rotation_layer_call_and_return_conditional_losses_29078inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
B
J__inference_random_rotation_layer_call_and_return_conditional_losses_29196inputs"΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
/
ω
_state_var"
_generic_user_object
0
ρ0
ς1"
trackable_list_wrapper
.
ο	variables"
_generic_user_object
:  (2total
:  (2count
0
υ0
φ1"
trackable_list_wrapper
.
σ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
:	2StateVar
:	2StateVar
/:- 2Adam/conv2d_16/kernel/m
!: 2Adam/conv2d_16/bias/m
/:- @2Adam/conv2d_17/kernel/m
!:@2Adam/conv2d_17/bias/m
/:-@@2Adam/conv2d_18/kernel/m
!:@2Adam/conv2d_18/bias/m
/:-@@2Adam/conv2d_19/kernel/m
!:@2Adam/conv2d_19/bias/m
/:-@@2Adam/conv2d_20/kernel/m
!:@2Adam/conv2d_20/bias/m
/:-@@2Adam/conv2d_21/kernel/m
!:@2Adam/conv2d_21/bias/m
&:$	@2Adam/dense_6/kernel/m
:@2Adam/dense_6/bias/m
%:#@2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
/:- 2Adam/conv2d_16/kernel/v
!: 2Adam/conv2d_16/bias/v
/:- @2Adam/conv2d_17/kernel/v
!:@2Adam/conv2d_17/bias/v
/:-@@2Adam/conv2d_18/kernel/v
!:@2Adam/conv2d_18/bias/v
/:-@@2Adam/conv2d_19/kernel/v
!:@2Adam/conv2d_19/bias/v
/:-@@2Adam/conv2d_20/kernel/v
!:@2Adam/conv2d_20/bias/v
/:-@@2Adam/conv2d_21/kernel/v
!:@2Adam/conv2d_21/bias/v
&:$	@2Adam/dense_6/kernel/v
:@2Adam/dense_6/bias/v
%:#@2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v΅
 __inference__wrapped_model_2668712@AOP^_mn|}E’B
;’8
63
sequential_2_input?????????
ͺ "1ͺ.
,
dense_7!
dense_7?????????Έ
D__inference_conv2d_16_layer_call_and_return_conditional_losses_28653p129’6
/’,
*'
inputs?????????
ͺ "/’,
%"
0?????????ώώ 
 
)__inference_conv2d_16_layer_call_fn_28642c129’6
/’,
*'
inputs?????????
ͺ ""?????????ώώ ΄
D__inference_conv2d_17_layer_call_and_return_conditional_losses_28683l@A7’4
-’*
(%
inputs????????? 
ͺ "-’*
# 
0?????????}}@
 
)__inference_conv2d_17_layer_call_fn_28672_@A7’4
-’*
(%
inputs????????? 
ͺ " ?????????}}@΄
D__inference_conv2d_18_layer_call_and_return_conditional_losses_28713lOP7’4
-’*
(%
inputs?????????>>@
ͺ "-’*
# 
0?????????<<@
 
)__inference_conv2d_18_layer_call_fn_28702_OP7’4
-’*
(%
inputs?????????>>@
ͺ " ?????????<<@΄
D__inference_conv2d_19_layer_call_and_return_conditional_losses_28743l^_7’4
-’*
(%
inputs?????????@
ͺ "-’*
# 
0?????????@
 
)__inference_conv2d_19_layer_call_fn_28732_^_7’4
-’*
(%
inputs?????????@
ͺ " ?????????@΄
D__inference_conv2d_20_layer_call_and_return_conditional_losses_28773lmn7’4
-’*
(%
inputs?????????@
ͺ "-’*
# 
0?????????@
 
)__inference_conv2d_20_layer_call_fn_28762_mn7’4
-’*
(%
inputs?????????@
ͺ " ?????????@΄
D__inference_conv2d_21_layer_call_and_return_conditional_losses_28803l|}7’4
-’*
(%
inputs?????????@
ͺ "-’*
# 
0?????????@
 
)__inference_conv2d_21_layer_call_fn_28792_|}7’4
-’*
(%
inputs?????????@
ͺ " ?????????@₯
B__inference_dense_6_layer_call_and_return_conditional_losses_28844_0’-
&’#
!
inputs?????????
ͺ "%’"

0?????????@
 }
'__inference_dense_6_layer_call_fn_28833R0’-
&’#
!
inputs?????????
ͺ "?????????@€
B__inference_dense_7_layer_call_and_return_conditional_losses_28864^/’,
%’"
 
inputs?????????@
ͺ "%’"

0?????????
 |
'__inference_dense_7_layer_call_fn_28853Q/’,
%’"
 
inputs?????????@
ͺ "?????????©
D__inference_flatten_3_layer_call_and_return_conditional_losses_28824a7’4
-’*
(%
inputs?????????@
ͺ "&’#

0?????????
 
)__inference_flatten_3_layer_call_fn_28818T7’4
-’*
(%
inputs?????????@
ͺ "?????????ξ
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_28663R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_16_layer_call_fn_28658R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_28693R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_17_layer_call_fn_28688R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_28723R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_18_layer_call_fn_28718R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_28753R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_19_layer_call_fn_28748R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_28783R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_20_layer_call_fn_28778R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????ξ
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_28813R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "H’E
>;
04????????????????????????????????????
 Ζ
0__inference_max_pooling2d_21_layer_call_fn_28808R’O
H’E
C@
inputs4????????????????????????????????????
ͺ ";84????????????????????????????????????Ί
F__inference_random_flip_layer_call_and_return_conditional_losses_28904p=’:
3’0
*'
inputs?????????
p 
ͺ "/’,
%"
0?????????
 Ύ
F__inference_random_flip_layer_call_and_return_conditional_losses_29062tψ=’:
3’0
*'
inputs?????????
p
ͺ "/’,
%"
0?????????
 
+__inference_random_flip_layer_call_fn_28893c=’:
3’0
*'
inputs?????????
p 
ͺ ""?????????
+__inference_random_flip_layer_call_fn_28900gψ=’:
3’0
*'
inputs?????????
p
ͺ ""?????????Ύ
J__inference_random_rotation_layer_call_and_return_conditional_losses_29078p=’:
3’0
*'
inputs?????????
p 
ͺ "/’,
%"
0?????????
 Β
J__inference_random_rotation_layer_call_and_return_conditional_losses_29196tω=’:
3’0
*'
inputs?????????
p
ͺ "/’,
%"
0?????????
 
/__inference_random_rotation_layer_call_fn_29067c=’:
3’0
*'
inputs?????????
p 
ͺ ""?????????
/__inference_random_rotation_layer_call_fn_29074gω=’:
3’0
*'
inputs?????????
p
ͺ ""?????????Ά
F__inference_rescaling_2_layer_call_and_return_conditional_losses_28888l9’6
/’,
*'
inputs?????????
ͺ "/’,
%"
0?????????
 
+__inference_rescaling_2_layer_call_fn_28880_9’6
/’,
*'
inputs?????????
ͺ ""?????????΅
E__inference_resizing_2_layer_call_and_return_conditional_losses_28875l9’6
/’,
*'
inputs?????????
ͺ "/’,
%"
0?????????
 
*__inference_resizing_2_layer_call_fn_28869_9’6
/’,
*'
inputs?????????
ͺ ""?????????Ι
G__inference_sequential_2_layer_call_and_return_conditional_losses_26755~K’H
A’>
41
resizing_2_input?????????
p 

 
ͺ "/’,
%"
0?????????
 Ι
G__inference_sequential_2_layer_call_and_return_conditional_losses_26761~K’H
A’>
41
resizing_2_input?????????
p

 
ͺ "/’,
%"
0?????????
 Ώ
G__inference_sequential_2_layer_call_and_return_conditional_losses_28333tA’>
7’4
*'
inputs?????????
p 

 
ͺ "/’,
%"
0?????????
 Ώ
G__inference_sequential_2_layer_call_and_return_conditional_losses_28343tA’>
7’4
*'
inputs?????????
p

 
ͺ "/’,
%"
0?????????
 ‘
,__inference_sequential_2_layer_call_fn_26716qK’H
A’>
41
resizing_2_input?????????
p 

 
ͺ ""?????????‘
,__inference_sequential_2_layer_call_fn_26749qK’H
A’>
41
resizing_2_input?????????
p

 
ͺ ""?????????
,__inference_sequential_2_layer_call_fn_28318gA’>
7’4
*'
inputs?????????
p 

 
ͺ ""?????????
,__inference_sequential_2_layer_call_fn_28323gA’>
7’4
*'
inputs?????????
p

 
ͺ ""?????????Κ
G__inference_sequential_3_layer_call_and_return_conditional_losses_27125L’I
B’?
52
random_flip_input?????????
p 

 
ͺ "/’,
%"
0?????????
 Ρ
G__inference_sequential_3_layer_call_and_return_conditional_losses_27135ψωL’I
B’?
52
random_flip_input?????????
p

 
ͺ "/’,
%"
0?????????
 Ώ
G__inference_sequential_3_layer_call_and_return_conditional_losses_28361tA’>
7’4
*'
inputs?????????
p 

 
ͺ "/’,
%"
0?????????
 Ε
G__inference_sequential_3_layer_call_and_return_conditional_losses_28633zψωA’>
7’4
*'
inputs?????????
p

 
ͺ "/’,
%"
0?????????
 ’
,__inference_sequential_3_layer_call_fn_26784rL’I
B’?
52
random_flip_input?????????
p 

 
ͺ ""?????????¨
,__inference_sequential_3_layer_call_fn_27119xψωL’I
B’?
52
random_flip_input?????????
p

 
ͺ ""?????????
,__inference_sequential_3_layer_call_fn_28348gA’>
7’4
*'
inputs?????????
p 

 
ͺ ""?????????
,__inference_sequential_3_layer_call_fn_28357mψωA’>
7’4
*'
inputs?????????
p

 
ͺ ""?????????Ψ
G__inference_sequential_7_layer_call_and_return_conditional_losses_2771712@AOP^_mn|}M’J
C’@
63
sequential_2_input?????????
p 

 
ͺ "%’"

0?????????
 ά
G__inference_sequential_7_layer_call_and_return_conditional_losses_27774ψω12@AOP^_mn|}M’J
C’@
63
sequential_2_input?????????
p

 
ͺ "%’"

0?????????
 Μ
G__inference_sequential_7_layer_call_and_return_conditional_losses_2797112@AOP^_mn|}A’>
7’4
*'
inputs?????????
p 

 
ͺ "%’"

0?????????
 Π
G__inference_sequential_7_layer_call_and_return_conditional_losses_28313ψω12@AOP^_mn|}A’>
7’4
*'
inputs?????????
p

 
ͺ "%’"

0?????????
 ―
,__inference_sequential_7_layer_call_fn_2740212@AOP^_mn|}M’J
C’@
63
sequential_2_input?????????
p 

 
ͺ "?????????΄
,__inference_sequential_7_layer_call_fn_27664ψω12@AOP^_mn|}M’J
C’@
63
sequential_2_input?????????
p

 
ͺ "?????????£
,__inference_sequential_7_layer_call_fn_27856s12@AOP^_mn|}A’>
7’4
*'
inputs?????????
p 

 
ͺ "?????????§
,__inference_sequential_7_layer_call_fn_27897wψω12@AOP^_mn|}A’>
7’4
*'
inputs?????????
p

 
ͺ "?????????Ξ
#__inference_signature_wrapper_27819¦12@AOP^_mn|}[’X
’ 
QͺN
L
sequential_2_input63
sequential_2_input?????????"1ͺ.
,
dense_7!
dense_7?????????