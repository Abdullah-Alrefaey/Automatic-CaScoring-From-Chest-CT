??'
??
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
?
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

.
Identity

input"T
output"T"	
Ttype
?
	MaxPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.0-dev202104072v1.12.1-54425-g18a6a9fc87f8??
?
conv3d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d/kernel
{
!conv3d/kernel/Read/ReadVariableOpReadVariableOpconv3d/kernel**
_output_shapes
: *
dtype0
n
conv3d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv3d/bias
g
conv3d/bias/Read/ReadVariableOpReadVariableOpconv3d/bias*
_output_shapes
: *
dtype0
?
conv3d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv3d_1/kernel

#conv3d_1/kernel/Read/ReadVariableOpReadVariableOpconv3d_1/kernel**
_output_shapes
: @*
dtype0
r
conv3d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_1/bias
k
!conv3d_1/bias/Read/ReadVariableOpReadVariableOpconv3d_1/bias*
_output_shapes
:@*
dtype0
?
conv3d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv3d_2/kernel

#conv3d_2/kernel/Read/ReadVariableOpReadVariableOpconv3d_2/kernel**
_output_shapes
:@@*
dtype0
r
conv3d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_2/bias
k
!conv3d_2/bias/Read/ReadVariableOpReadVariableOpconv3d_2/bias*
_output_shapes
:@*
dtype0
?
conv3d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:@?* 
shared_nameconv3d_3/kernel
?
#conv3d_3/kernel/Read/ReadVariableOpReadVariableOpconv3d_3/kernel*+
_output_shapes
:@?*
dtype0
s
conv3d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_3/bias
l
!conv3d_3/bias/Read/ReadVariableOpReadVariableOpconv3d_3/bias*
_output_shapes	
:?*
dtype0
?
conv3d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??* 
shared_nameconv3d_4/kernel
?
#conv3d_4/kernel/Read/ReadVariableOpReadVariableOpconv3d_4/kernel*,
_output_shapes
:??*
dtype0
s
conv3d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_4/bias
l
!conv3d_4/bias/Read/ReadVariableOpReadVariableOpconv3d_4/bias*
_output_shapes	
:?*
dtype0
?
conv3d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??* 
shared_nameconv3d_5/kernel
?
#conv3d_5/kernel/Read/ReadVariableOpReadVariableOpconv3d_5/kernel*,
_output_shapes
:??*
dtype0
s
conv3d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_5/bias
l
!conv3d_5/bias/Read/ReadVariableOpReadVariableOpconv3d_5/bias*
_output_shapes	
:?*
dtype0
?
conv3d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??* 
shared_nameconv3d_6/kernel
?
#conv3d_6/kernel/Read/ReadVariableOpReadVariableOpconv3d_6/kernel*,
_output_shapes
:??*
dtype0
s
conv3d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_6/bias
l
!conv3d_6/bias/Read/ReadVariableOpReadVariableOpconv3d_6/bias*
_output_shapes	
:?*
dtype0
?
conv3d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??* 
shared_nameconv3d_7/kernel
?
#conv3d_7/kernel/Read/ReadVariableOpReadVariableOpconv3d_7/kernel*,
_output_shapes
:??*
dtype0
s
conv3d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_7/bias
l
!conv3d_7/bias/Read/ReadVariableOpReadVariableOpconv3d_7/bias*
_output_shapes	
:?*
dtype0
?
conv3d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??* 
shared_nameconv3d_8/kernel
?
#conv3d_8/kernel/Read/ReadVariableOpReadVariableOpconv3d_8/kernel*,
_output_shapes
:??*
dtype0
s
conv3d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_8/bias
l
!conv3d_8/bias/Read/ReadVariableOpReadVariableOpconv3d_8/bias*
_output_shapes	
:?*
dtype0
?
conv3d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??* 
shared_nameconv3d_9/kernel
?
#conv3d_9/kernel/Read/ReadVariableOpReadVariableOpconv3d_9/kernel*,
_output_shapes
:??*
dtype0
s
conv3d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_9/bias
l
!conv3d_9/bias/Read/ReadVariableOpReadVariableOpconv3d_9/bias*
_output_shapes	
:?*
dtype0
?
conv3d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??*!
shared_nameconv3d_10/kernel
?
$conv3d_10/kernel/Read/ReadVariableOpReadVariableOpconv3d_10/kernel*,
_output_shapes
:??*
dtype0
u
conv3d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_10/bias
n
"conv3d_10/bias/Read/ReadVariableOpReadVariableOpconv3d_10/bias*
_output_shapes	
:?*
dtype0
?
conv3d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??*!
shared_nameconv3d_11/kernel
?
$conv3d_11/kernel/Read/ReadVariableOpReadVariableOpconv3d_11/kernel*,
_output_shapes
:??*
dtype0
u
conv3d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_11/bias
n
"conv3d_11/bias/Read/ReadVariableOpReadVariableOpconv3d_11/bias*
_output_shapes	
:?*
dtype0
?
conv3d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??*!
shared_nameconv3d_12/kernel
?
$conv3d_12/kernel/Read/ReadVariableOpReadVariableOpconv3d_12/kernel*,
_output_shapes
:??*
dtype0
u
conv3d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_12/bias
n
"conv3d_12/bias/Read/ReadVariableOpReadVariableOpconv3d_12/bias*
_output_shapes	
:?*
dtype0
?
conv3d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*!
shape:??*!
shared_nameconv3d_13/kernel
?
$conv3d_13/kernel/Read/ReadVariableOpReadVariableOpconv3d_13/kernel*,
_output_shapes
:??*
dtype0
u
conv3d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv3d_13/bias
n
"conv3d_13/bias/Read/ReadVariableOpReadVariableOpconv3d_13/bias*
_output_shapes	
:?*
dtype0
?
conv3d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:?@*!
shared_nameconv3d_14/kernel
?
$conv3d_14/kernel/Read/ReadVariableOpReadVariableOpconv3d_14/kernel*+
_output_shapes
:?@*
dtype0
t
conv3d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_14/bias
m
"conv3d_14/bias/Read/ReadVariableOpReadVariableOpconv3d_14/bias*
_output_shapes
:@*
dtype0
?
conv3d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv3d_15/kernel
?
$conv3d_15/kernel/Read/ReadVariableOpReadVariableOpconv3d_15/kernel**
_output_shapes
:@@*
dtype0
t
conv3d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_15/bias
m
"conv3d_15/bias/Read/ReadVariableOpReadVariableOpconv3d_15/bias*
_output_shapes
:@*
dtype0
?
conv3d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
shape:?@*!
shared_nameconv3d_16/kernel
?
$conv3d_16/kernel/Read/ReadVariableOpReadVariableOpconv3d_16/kernel*+
_output_shapes
:?@*
dtype0
t
conv3d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_16/bias
m
"conv3d_16/bias/Read/ReadVariableOpReadVariableOpconv3d_16/bias*
_output_shapes
:@*
dtype0
?
conv3d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv3d_17/kernel
?
$conv3d_17/kernel/Read/ReadVariableOpReadVariableOpconv3d_17/kernel**
_output_shapes
:@@*
dtype0
t
conv3d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv3d_17/bias
m
"conv3d_17/bias/Read/ReadVariableOpReadVariableOpconv3d_17/bias*
_output_shapes
:@*
dtype0
?
conv3d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv3d_18/kernel
?
$conv3d_18/kernel/Read/ReadVariableOpReadVariableOpconv3d_18/kernel**
_output_shapes
:@*
dtype0
t
conv3d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_18/bias
m
"conv3d_18/bias/Read/ReadVariableOpReadVariableOpconv3d_18/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?y
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?x
value?xB?x B?x
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer-19
layer-20
layer_with_weights-12
layer-21
layer_with_weights-13
layer-22
layer-23
layer-24
layer_with_weights-14
layer-25
layer_with_weights-15
layer-26
layer-27
layer-28
layer_with_weights-16
layer-29
layer_with_weights-17
layer-30
 layer_with_weights-18
 layer-31
!trainable_variables
"regularization_losses
#	variables
$	keras_api
%
signatures
 
h

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
h

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
R
2trainable_variables
3regularization_losses
4	variables
5	keras_api
h

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
h

<kernel
=bias
>trainable_variables
?regularization_losses
@	variables
A	keras_api
R
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
h

Fkernel
Gbias
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
h

Lkernel
Mbias
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
R
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
h

Vkernel
Wbias
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
h

\kernel
]bias
^trainable_variables
_regularization_losses
`	variables
a	keras_api
R
btrainable_variables
cregularization_losses
d	variables
e	keras_api
h

fkernel
gbias
htrainable_variables
iregularization_losses
j	variables
k	keras_api
h

lkernel
mbias
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
R
rtrainable_variables
sregularization_losses
t	variables
u	keras_api
R
vtrainable_variables
wregularization_losses
x	variables
y	keras_api
h

zkernel
{bias
|trainable_variables
}regularization_losses
~	variables
	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
?
&0
'1
,2
-3
64
75
<6
=7
F8
G9
L10
M11
V12
W13
\14
]15
f16
g17
l18
m19
z20
{21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
 
?
&0
'1
,2
-3
64
75
<6
=7
F8
G9
L10
M11
V12
W13
\14
]15
f16
g17
l18
m19
z20
{21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?
?metrics
 ?layer_regularization_losses
!trainable_variables
?non_trainable_variables
?layer_metrics
"regularization_losses
#	variables
?layers
 
YW
VARIABLE_VALUEconv3d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv3d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1
 

&0
'1
?
?metrics
 ?layer_regularization_losses
(trainable_variables
?non_trainable_variables
?layer_metrics
)regularization_losses
*	variables
?layers
[Y
VARIABLE_VALUEconv3d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
 

,0
-1
?
?metrics
 ?layer_regularization_losses
.trainable_variables
?non_trainable_variables
?layer_metrics
/regularization_losses
0	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
2trainable_variables
?non_trainable_variables
?layer_metrics
3regularization_losses
4	variables
?layers
[Y
VARIABLE_VALUEconv3d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
?
?metrics
 ?layer_regularization_losses
8trainable_variables
?non_trainable_variables
?layer_metrics
9regularization_losses
:	variables
?layers
[Y
VARIABLE_VALUEconv3d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
?
?metrics
 ?layer_regularization_losses
>trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
@	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
Btrainable_variables
?non_trainable_variables
?layer_metrics
Cregularization_losses
D	variables
?layers
[Y
VARIABLE_VALUEconv3d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

F0
G1
 

F0
G1
?
?metrics
 ?layer_regularization_losses
Htrainable_variables
?non_trainable_variables
?layer_metrics
Iregularization_losses
J	variables
?layers
[Y
VARIABLE_VALUEconv3d_5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

L0
M1
 

L0
M1
?
?metrics
 ?layer_regularization_losses
Ntrainable_variables
?non_trainable_variables
?layer_metrics
Oregularization_losses
P	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
Rtrainable_variables
?non_trainable_variables
?layer_metrics
Sregularization_losses
T	variables
?layers
[Y
VARIABLE_VALUEconv3d_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

V0
W1
 

V0
W1
?
?metrics
 ?layer_regularization_losses
Xtrainable_variables
?non_trainable_variables
?layer_metrics
Yregularization_losses
Z	variables
?layers
[Y
VARIABLE_VALUEconv3d_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

\0
]1
 

\0
]1
?
?metrics
 ?layer_regularization_losses
^trainable_variables
?non_trainable_variables
?layer_metrics
_regularization_losses
`	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
btrainable_variables
?non_trainable_variables
?layer_metrics
cregularization_losses
d	variables
?layers
[Y
VARIABLE_VALUEconv3d_8/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_8/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

f0
g1
 

f0
g1
?
?metrics
 ?layer_regularization_losses
htrainable_variables
?non_trainable_variables
?layer_metrics
iregularization_losses
j	variables
?layers
[Y
VARIABLE_VALUEconv3d_9/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv3d_9/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

l0
m1
 

l0
m1
?
?metrics
 ?layer_regularization_losses
ntrainable_variables
?non_trainable_variables
?layer_metrics
oregularization_losses
p	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
rtrainable_variables
?non_trainable_variables
?layer_metrics
sregularization_losses
t	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
vtrainable_variables
?non_trainable_variables
?layer_metrics
wregularization_losses
x	variables
?layers
][
VARIABLE_VALUEconv3d_10/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_10/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

z0
{1
 

z0
{1
?
?metrics
 ?layer_regularization_losses
|trainable_variables
?non_trainable_variables
?layer_metrics
}regularization_losses
~	variables
?layers
][
VARIABLE_VALUEconv3d_11/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_11/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
][
VARIABLE_VALUEconv3d_12/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_12/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
][
VARIABLE_VALUEconv3d_13/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_13/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
][
VARIABLE_VALUEconv3d_14/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_14/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
][
VARIABLE_VALUEconv3d_15/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_15/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
 
 
 
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
][
VARIABLE_VALUEconv3d_16/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_16/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
][
VARIABLE_VALUEconv3d_17/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_17/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
][
VARIABLE_VALUEconv3d_18/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv3d_18/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
 
 
 
 
?
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
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_input_1Placeholder*3
_output_shapes!
:?????????ppp*
dtype0*(
shape:?????????ppp
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv3d/kernelconv3d/biasconv3d_1/kernelconv3d_1/biasconv3d_2/kernelconv3d_2/biasconv3d_3/kernelconv3d_3/biasconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasconv3d_6/kernelconv3d_6/biasconv3d_7/kernelconv3d_7/biasconv3d_8/kernelconv3d_8/biasconv3d_9/kernelconv3d_9/biasconv3d_10/kernelconv3d_10/biasconv3d_11/kernelconv3d_11/biasconv3d_12/kernelconv3d_12/biasconv3d_13/kernelconv3d_13/biasconv3d_14/kernelconv3d_14/biasconv3d_15/kernelconv3d_15/biasconv3d_16/kernelconv3d_16/biasconv3d_17/kernelconv3d_17/biasconv3d_18/kernelconv3d_18/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2 *0J 8? *+
f&R$
"__inference_signature_wrapper_3748
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv3d/kernel/Read/ReadVariableOpconv3d/bias/Read/ReadVariableOp#conv3d_1/kernel/Read/ReadVariableOp!conv3d_1/bias/Read/ReadVariableOp#conv3d_2/kernel/Read/ReadVariableOp!conv3d_2/bias/Read/ReadVariableOp#conv3d_3/kernel/Read/ReadVariableOp!conv3d_3/bias/Read/ReadVariableOp#conv3d_4/kernel/Read/ReadVariableOp!conv3d_4/bias/Read/ReadVariableOp#conv3d_5/kernel/Read/ReadVariableOp!conv3d_5/bias/Read/ReadVariableOp#conv3d_6/kernel/Read/ReadVariableOp!conv3d_6/bias/Read/ReadVariableOp#conv3d_7/kernel/Read/ReadVariableOp!conv3d_7/bias/Read/ReadVariableOp#conv3d_8/kernel/Read/ReadVariableOp!conv3d_8/bias/Read/ReadVariableOp#conv3d_9/kernel/Read/ReadVariableOp!conv3d_9/bias/Read/ReadVariableOp$conv3d_10/kernel/Read/ReadVariableOp"conv3d_10/bias/Read/ReadVariableOp$conv3d_11/kernel/Read/ReadVariableOp"conv3d_11/bias/Read/ReadVariableOp$conv3d_12/kernel/Read/ReadVariableOp"conv3d_12/bias/Read/ReadVariableOp$conv3d_13/kernel/Read/ReadVariableOp"conv3d_13/bias/Read/ReadVariableOp$conv3d_14/kernel/Read/ReadVariableOp"conv3d_14/bias/Read/ReadVariableOp$conv3d_15/kernel/Read/ReadVariableOp"conv3d_15/bias/Read/ReadVariableOp$conv3d_16/kernel/Read/ReadVariableOp"conv3d_16/bias/Read/ReadVariableOp$conv3d_17/kernel/Read/ReadVariableOp"conv3d_17/bias/Read/ReadVariableOp$conv3d_18/kernel/Read/ReadVariableOp"conv3d_18/bias/Read/ReadVariableOpConst*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *&
f!R
__inference__traced_save_5866
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d/kernelconv3d/biasconv3d_1/kernelconv3d_1/biasconv3d_2/kernelconv3d_2/biasconv3d_3/kernelconv3d_3/biasconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasconv3d_6/kernelconv3d_6/biasconv3d_7/kernelconv3d_7/biasconv3d_8/kernelconv3d_8/biasconv3d_9/kernelconv3d_9/biasconv3d_10/kernelconv3d_10/biasconv3d_11/kernelconv3d_11/biasconv3d_12/kernelconv3d_12/biasconv3d_13/kernelconv3d_13/biasconv3d_14/kernelconv3d_14/biasconv3d_15/kernelconv3d_15/biasconv3d_16/kernelconv3d_16/biasconv3d_17/kernelconv3d_17/biasconv3d_18/kernelconv3d_18/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *)
f$R"
 __inference__traced_restore_5990??
?
?
C__inference_conv3d_17_layer_call_and_return_conditional_losses_5700

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????ppp@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp@
 
_user_specified_nameinputs
?
?
C__inference_conv3d_11_layer_call_and_return_conditional_losses_2276

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
J
.__inference_up_sampling3d_1_layer_call_fn_5262

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_23372
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
q
G__inference_concatenate_1_layer_call_and_return_conditional_losses_2346

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
J
.__inference_up_sampling3d_3_layer_call_fn_5656

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_27052
PartitionedCallx
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????ppp@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????888@:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
J
.__inference_max_pooling3d_1_layer_call_fn_1998

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_19922
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
q
G__inference_concatenate_3_layer_call_and_return_conditional_losses_2714

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????ppp?2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :?????????ppp?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:?????????ppp@:?????????ppp@:[ W
3
_output_shapes!
:?????????ppp@
 
_user_specified_nameinputs:[W
3
_output_shapes!
:?????????ppp@
 
_user_specified_nameinputs
?
?
+__inference_Unet_5x2_32F_layer_call_fn_4910

inputs%
unknown: 
	unknown_0: '
	unknown_1: @
	unknown_2:@'
	unknown_3:@@
	unknown_4:@(
	unknown_5:@?
	unknown_6:	?)
	unknown_7:??
	unknown_8:	?)
	unknown_9:??

unknown_10:	?*

unknown_11:??

unknown_12:	?*

unknown_13:??

unknown_14:	?*

unknown_15:??

unknown_16:	?*

unknown_17:??

unknown_18:	?*

unknown_19:??

unknown_20:	?*

unknown_21:??

unknown_22:	?*

unknown_23:??

unknown_24:	?*

unknown_25:??

unknown_26:	?)

unknown_27:?@

unknown_28:@(

unknown_29:@@

unknown_30:@)

unknown_31:?@

unknown_32:@(

unknown_33:@@

unknown_34:@(

unknown_35:@

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_32832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????ppp
 
_user_specified_nameinputs
?
?
(__inference_conv3d_12_layer_call_fn_5295

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_12_layer_call_and_return_conditional_losses_23592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
H
,__inference_max_pooling3d_layer_call_fn_1986

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_max_pooling3d_layer_call_and_return_conditional_losses_19802
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_conv3d_10_layer_call_fn_5182

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_10_layer_call_and_return_conditional_losses_22592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
??
?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_3283

inputs)
conv3d_3175: 
conv3d_3177: +
conv3d_1_3180: @
conv3d_1_3182:@+
conv3d_2_3186:@@
conv3d_2_3188:@,
conv3d_3_3191:@?
conv3d_3_3193:	?-
conv3d_4_3197:??
conv3d_4_3199:	?-
conv3d_5_3202:??
conv3d_5_3204:	?-
conv3d_6_3208:??
conv3d_6_3210:	?-
conv3d_7_3213:??
conv3d_7_3215:	?-
conv3d_8_3219:??
conv3d_8_3221:	?-
conv3d_9_3224:??
conv3d_9_3226:	?.
conv3d_10_3231:??
conv3d_10_3233:	?.
conv3d_11_3236:??
conv3d_11_3238:	?.
conv3d_12_3243:??
conv3d_12_3245:	?.
conv3d_13_3248:??
conv3d_13_3250:	?-
conv3d_14_3255:?@
conv3d_14_3257:@,
conv3d_15_3260:@@
conv3d_15_3262:@-
conv3d_16_3267:?@
conv3d_16_3269:@,
conv3d_17_3272:@@
conv3d_17_3274:@,
conv3d_18_3277:@
conv3d_18_3279:
identity??conv3d/StatefulPartitionedCall? conv3d_1/StatefulPartitionedCall?!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall?!conv3d_12/StatefulPartitionedCall?!conv3d_13/StatefulPartitionedCall?!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall?!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall?!conv3d_18/StatefulPartitionedCall? conv3d_2/StatefulPartitionedCall? conv3d_3/StatefulPartitionedCall? conv3d_4/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall? conv3d_7/StatefulPartitionedCall? conv3d_8/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall?
conv3d/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_3175conv3d_3177*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_conv3d_layer_call_and_return_conditional_losses_20402 
conv3d/StatefulPartitionedCall?
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall'conv3d/StatefulPartitionedCall:output:0conv3d_1_3180conv3d_1_3182*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_1_layer_call_and_return_conditional_losses_20572"
 conv3d_1/StatefulPartitionedCall?
max_pooling3d/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_max_pooling3d_layer_call_and_return_conditional_losses_19802
max_pooling3d/PartitionedCall?
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling3d/PartitionedCall:output:0conv3d_2_3186conv3d_2_3188*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_2_layer_call_and_return_conditional_losses_20752"
 conv3d_2/StatefulPartitionedCall?
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0conv3d_3_3191conv3d_3_3193*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_3_layer_call_and_return_conditional_losses_20922"
 conv3d_3/StatefulPartitionedCall?
max_pooling3d_1/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_19922!
max_pooling3d_1/PartitionedCall?
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_1/PartitionedCall:output:0conv3d_4_3197conv3d_4_3199*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_4_layer_call_and_return_conditional_losses_21102"
 conv3d_4/StatefulPartitionedCall?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0conv3d_5_3202conv3d_5_3204*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_5_layer_call_and_return_conditional_losses_21272"
 conv3d_5/StatefulPartitionedCall?
max_pooling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_20042!
max_pooling3d_2/PartitionedCall?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv3d_6_3208conv3d_6_3210*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_6_layer_call_and_return_conditional_losses_21452"
 conv3d_6/StatefulPartitionedCall?
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0conv3d_7_3213conv3d_7_3215*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_7_layer_call_and_return_conditional_losses_21622"
 conv3d_7/StatefulPartitionedCall?
max_pooling3d_3/PartitionedCallPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_20162!
max_pooling3d_3/PartitionedCall?
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_3/PartitionedCall:output:0conv3d_8_3219conv3d_8_3221*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_8_layer_call_and_return_conditional_losses_21802"
 conv3d_8/StatefulPartitionedCall?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCall)conv3d_8/StatefulPartitionedCall:output:0conv3d_9_3224conv3d_9_3226*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_9_layer_call_and_return_conditional_losses_21972"
 conv3d_9/StatefulPartitionedCall?
up_sampling3d/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_up_sampling3d_layer_call_and_return_conditional_losses_22372
up_sampling3d/PartitionedCall?
concatenate/PartitionedCallPartitionedCall&up_sampling3d/PartitionedCall:output:0)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_22462
concatenate/PartitionedCall?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv3d_10_3231conv3d_10_3233*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_10_layer_call_and_return_conditional_losses_22592#
!conv3d_10/StatefulPartitionedCall?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0conv3d_11_3236conv3d_11_3238*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_11_layer_call_and_return_conditional_losses_22762#
!conv3d_11/StatefulPartitionedCall?
up_sampling3d_1/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_23372!
up_sampling3d_1/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall(up_sampling3d_1/PartitionedCall:output:0)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_23462
concatenate_1/PartitionedCall?
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv3d_12_3243conv3d_12_3245*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_12_layer_call_and_return_conditional_losses_23592#
!conv3d_12/StatefulPartitionedCall?
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0conv3d_13_3248conv3d_13_3250*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_13_layer_call_and_return_conditional_losses_23762#
!conv3d_13/StatefulPartitionedCall?
up_sampling3d_2/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_24792!
up_sampling3d_2/PartitionedCall?
concatenate_2/PartitionedCallPartitionedCall(up_sampling3d_2/PartitionedCall:output:0)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_24882
concatenate_2/PartitionedCall?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv3d_14_3255conv3d_14_3257*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_14_layer_call_and_return_conditional_losses_25012#
!conv3d_14/StatefulPartitionedCall?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0conv3d_15_3260conv3d_15_3262*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_15_layer_call_and_return_conditional_losses_25182#
!conv3d_15/StatefulPartitionedCall?
up_sampling3d_3/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_27052!
up_sampling3d_3/PartitionedCall?
concatenate_3/PartitionedCallPartitionedCall(up_sampling3d_3/PartitionedCall:output:0)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????ppp?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_27142
concatenate_3/PartitionedCall?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv3d_16_3267conv3d_16_3269*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_16_layer_call_and_return_conditional_losses_27272#
!conv3d_16/StatefulPartitionedCall?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0conv3d_17_3272conv3d_17_3274*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_17_layer_call_and_return_conditional_losses_27442#
!conv3d_17/StatefulPartitionedCall?
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0conv3d_18_3277conv3d_18_3279*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_18_layer_call_and_return_conditional_losses_27612#
!conv3d_18/StatefulPartitionedCall?
IdentityIdentity*conv3d_18/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

Identity?
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall"^conv3d_18/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????ppp
 
_user_specified_nameinputs
?
?
C__inference_conv3d_10_layer_call_and_return_conditional_losses_5173

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
@__inference_conv3d_layer_call_and_return_conditional_losses_2040

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp *
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp 2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp 2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????ppp 2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp
 
_user_specified_nameinputs
?
?
B__inference_conv3d_6_layer_call_and_return_conditional_losses_5041

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
'__inference_conv3d_6_layer_call_fn_5050

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_6_layer_call_and_return_conditional_losses_21452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
X
,__inference_concatenate_1_layer_call_fn_5275
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_23462
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:??????????:^ Z
4
_output_shapes"
 :??????????
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :??????????
"
_user_specified_name
inputs/1
?
?
C__inference_conv3d_12_layer_call_and_return_conditional_losses_5286

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
B__inference_conv3d_8_layer_call_and_return_conditional_losses_2180

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
+__inference_Unet_5x2_32F_layer_call_fn_2847
input_1%
unknown: 
	unknown_0: '
	unknown_1: @
	unknown_2:@'
	unknown_3:@@
	unknown_4:@(
	unknown_5:@?
	unknown_6:	?)
	unknown_7:??
	unknown_8:	?)
	unknown_9:??

unknown_10:	?*

unknown_11:??

unknown_12:	?*

unknown_13:??

unknown_14:	?*

unknown_15:??

unknown_16:	?*

unknown_17:??

unknown_18:	?*

unknown_19:??

unknown_20:	?*

unknown_21:??

unknown_22:	?*

unknown_23:??

unknown_24:	?*

unknown_25:??

unknown_26:	?)

unknown_27:?@

unknown_28:@(

unknown_29:@@

unknown_30:@)

unknown_31:?@

unknown_32:@(

unknown_33:@@

unknown_34:@(

unknown_35:@

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_27682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:?????????ppp
!
_user_specified_name	input_1
?
?
B__inference_conv3d_1_layer_call_and_return_conditional_losses_4941

inputs<
conv3d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: @*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????ppp@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp 
 
_user_specified_nameinputs
?
?
C__inference_conv3d_18_layer_call_and_return_conditional_losses_2761

inputs<
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp2	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp2	
Sigmoidr
IdentityIdentitySigmoid:y:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp@
 
_user_specified_nameinputs
?
s
G__inference_concatenate_3_layer_call_and_return_conditional_losses_5663
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????ppp?2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :?????????ppp?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:?????????ppp@:?????????ppp@:] Y
3
_output_shapes!
:?????????ppp@
"
_user_specified_name
inputs/0:]Y
3
_output_shapes!
:?????????ppp@
"
_user_specified_name
inputs/1
?
q
G__inference_concatenate_2_layer_call_and_return_conditional_losses_2488

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????888?2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :?????????888?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:?????????888?:?????????888?:\ X
4
_output_shapes"
 :?????????888?
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :?????????888?
 
_user_specified_nameinputs
?
?
'__inference_conv3d_8_layer_call_fn_5090

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_8_layer_call_and_return_conditional_losses_21802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
C__inference_conv3d_11_layer_call_and_return_conditional_losses_5193

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
??
?
 __inference__traced_restore_5990
file_prefix<
assignvariableop_conv3d_kernel: ,
assignvariableop_1_conv3d_bias: @
"assignvariableop_2_conv3d_1_kernel: @.
 assignvariableop_3_conv3d_1_bias:@@
"assignvariableop_4_conv3d_2_kernel:@@.
 assignvariableop_5_conv3d_2_bias:@A
"assignvariableop_6_conv3d_3_kernel:@?/
 assignvariableop_7_conv3d_3_bias:	?B
"assignvariableop_8_conv3d_4_kernel:??/
 assignvariableop_9_conv3d_4_bias:	?C
#assignvariableop_10_conv3d_5_kernel:??0
!assignvariableop_11_conv3d_5_bias:	?C
#assignvariableop_12_conv3d_6_kernel:??0
!assignvariableop_13_conv3d_6_bias:	?C
#assignvariableop_14_conv3d_7_kernel:??0
!assignvariableop_15_conv3d_7_bias:	?C
#assignvariableop_16_conv3d_8_kernel:??0
!assignvariableop_17_conv3d_8_bias:	?C
#assignvariableop_18_conv3d_9_kernel:??0
!assignvariableop_19_conv3d_9_bias:	?D
$assignvariableop_20_conv3d_10_kernel:??1
"assignvariableop_21_conv3d_10_bias:	?D
$assignvariableop_22_conv3d_11_kernel:??1
"assignvariableop_23_conv3d_11_bias:	?D
$assignvariableop_24_conv3d_12_kernel:??1
"assignvariableop_25_conv3d_12_bias:	?D
$assignvariableop_26_conv3d_13_kernel:??1
"assignvariableop_27_conv3d_13_bias:	?C
$assignvariableop_28_conv3d_14_kernel:?@0
"assignvariableop_29_conv3d_14_bias:@B
$assignvariableop_30_conv3d_15_kernel:@@0
"assignvariableop_31_conv3d_15_bias:@C
$assignvariableop_32_conv3d_16_kernel:?@0
"assignvariableop_33_conv3d_16_bias:@B
$assignvariableop_34_conv3d_17_kernel:@@0
"assignvariableop_35_conv3d_17_bias:@B
$assignvariableop_36_conv3d_18_kernel:@0
"assignvariableop_37_conv3d_18_bias:
identity_39??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv3d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv3d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv3d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv3d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv3d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv3d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv3d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv3d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv3d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv3d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv3d_5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv3d_5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv3d_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv3d_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv3d_7_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv3d_7_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv3d_8_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv3d_8_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv3d_9_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv3d_9_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp$assignvariableop_20_conv3d_10_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp"assignvariableop_21_conv3d_10_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp$assignvariableop_22_conv3d_11_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp"assignvariableop_23_conv3d_11_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv3d_12_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv3d_12_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp$assignvariableop_26_conv3d_13_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp"assignvariableop_27_conv3d_13_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv3d_14_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp"assignvariableop_29_conv3d_14_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv3d_15_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp"assignvariableop_31_conv3d_15_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp$assignvariableop_32_conv3d_16_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp"assignvariableop_33_conv3d_16_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp$assignvariableop_34_conv3d_17_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp"assignvariableop_35_conv3d_17_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp$assignvariableop_36_conv3d_18_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp"assignvariableop_37_conv3d_18_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_379
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_38Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_38f
Identity_39IdentityIdentity_38:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_39?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 2
NoOp_1"#
identity_39Identity_39:output:0*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_37AssignVariableOp_372(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
C__inference_conv3d_18_layer_call_and_return_conditional_losses_5720

inputs<
conv3d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp2	
BiasAddm
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp2	
Sigmoidr
IdentityIdentitySigmoid:y:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp@
 
_user_specified_nameinputs
?
X
,__inference_concatenate_3_layer_call_fn_5669
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????ppp?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_27142
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :?????????ppp?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:?????????ppp@:?????????ppp@:] Y
3
_output_shapes!
:?????????ppp@
"
_user_specified_name
inputs/0:]Y
3
_output_shapes!
:?????????ppp@
"
_user_specified_name
inputs/1
?
?
B__inference_conv3d_4_layer_call_and_return_conditional_losses_2110

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
??
?%
__inference__wrapped_model_1974
input_1P
2unet_5x2_32f_conv3d_conv3d_readvariableop_resource: A
3unet_5x2_32f_conv3d_biasadd_readvariableop_resource: R
4unet_5x2_32f_conv3d_1_conv3d_readvariableop_resource: @C
5unet_5x2_32f_conv3d_1_biasadd_readvariableop_resource:@R
4unet_5x2_32f_conv3d_2_conv3d_readvariableop_resource:@@C
5unet_5x2_32f_conv3d_2_biasadd_readvariableop_resource:@S
4unet_5x2_32f_conv3d_3_conv3d_readvariableop_resource:@?D
5unet_5x2_32f_conv3d_3_biasadd_readvariableop_resource:	?T
4unet_5x2_32f_conv3d_4_conv3d_readvariableop_resource:??D
5unet_5x2_32f_conv3d_4_biasadd_readvariableop_resource:	?T
4unet_5x2_32f_conv3d_5_conv3d_readvariableop_resource:??D
5unet_5x2_32f_conv3d_5_biasadd_readvariableop_resource:	?T
4unet_5x2_32f_conv3d_6_conv3d_readvariableop_resource:??D
5unet_5x2_32f_conv3d_6_biasadd_readvariableop_resource:	?T
4unet_5x2_32f_conv3d_7_conv3d_readvariableop_resource:??D
5unet_5x2_32f_conv3d_7_biasadd_readvariableop_resource:	?T
4unet_5x2_32f_conv3d_8_conv3d_readvariableop_resource:??D
5unet_5x2_32f_conv3d_8_biasadd_readvariableop_resource:	?T
4unet_5x2_32f_conv3d_9_conv3d_readvariableop_resource:??D
5unet_5x2_32f_conv3d_9_biasadd_readvariableop_resource:	?U
5unet_5x2_32f_conv3d_10_conv3d_readvariableop_resource:??E
6unet_5x2_32f_conv3d_10_biasadd_readvariableop_resource:	?U
5unet_5x2_32f_conv3d_11_conv3d_readvariableop_resource:??E
6unet_5x2_32f_conv3d_11_biasadd_readvariableop_resource:	?U
5unet_5x2_32f_conv3d_12_conv3d_readvariableop_resource:??E
6unet_5x2_32f_conv3d_12_biasadd_readvariableop_resource:	?U
5unet_5x2_32f_conv3d_13_conv3d_readvariableop_resource:??E
6unet_5x2_32f_conv3d_13_biasadd_readvariableop_resource:	?T
5unet_5x2_32f_conv3d_14_conv3d_readvariableop_resource:?@D
6unet_5x2_32f_conv3d_14_biasadd_readvariableop_resource:@S
5unet_5x2_32f_conv3d_15_conv3d_readvariableop_resource:@@D
6unet_5x2_32f_conv3d_15_biasadd_readvariableop_resource:@T
5unet_5x2_32f_conv3d_16_conv3d_readvariableop_resource:?@D
6unet_5x2_32f_conv3d_16_biasadd_readvariableop_resource:@S
5unet_5x2_32f_conv3d_17_conv3d_readvariableop_resource:@@D
6unet_5x2_32f_conv3d_17_biasadd_readvariableop_resource:@S
5unet_5x2_32f_conv3d_18_conv3d_readvariableop_resource:@D
6unet_5x2_32f_conv3d_18_biasadd_readvariableop_resource:
identity??*Unet_5x2_32F/conv3d/BiasAdd/ReadVariableOp?)Unet_5x2_32F/conv3d/Conv3D/ReadVariableOp?,Unet_5x2_32F/conv3d_1/BiasAdd/ReadVariableOp?+Unet_5x2_32F/conv3d_1/Conv3D/ReadVariableOp?-Unet_5x2_32F/conv3d_10/BiasAdd/ReadVariableOp?,Unet_5x2_32F/conv3d_10/Conv3D/ReadVariableOp?-Unet_5x2_32F/conv3d_11/BiasAdd/ReadVariableOp?,Unet_5x2_32F/conv3d_11/Conv3D/ReadVariableOp?-Unet_5x2_32F/conv3d_12/BiasAdd/ReadVariableOp?,Unet_5x2_32F/conv3d_12/Conv3D/ReadVariableOp?-Unet_5x2_32F/conv3d_13/BiasAdd/ReadVariableOp?,Unet_5x2_32F/conv3d_13/Conv3D/ReadVariableOp?-Unet_5x2_32F/conv3d_14/BiasAdd/ReadVariableOp?,Unet_5x2_32F/conv3d_14/Conv3D/ReadVariableOp?-Unet_5x2_32F/conv3d_15/BiasAdd/ReadVariableOp?,Unet_5x2_32F/conv3d_15/Conv3D/ReadVariableOp?-Unet_5x2_32F/conv3d_16/BiasAdd/ReadVariableOp?,Unet_5x2_32F/conv3d_16/Conv3D/ReadVariableOp?-Unet_5x2_32F/conv3d_17/BiasAdd/ReadVariableOp?,Unet_5x2_32F/conv3d_17/Conv3D/ReadVariableOp?-Unet_5x2_32F/conv3d_18/BiasAdd/ReadVariableOp?,Unet_5x2_32F/conv3d_18/Conv3D/ReadVariableOp?,Unet_5x2_32F/conv3d_2/BiasAdd/ReadVariableOp?+Unet_5x2_32F/conv3d_2/Conv3D/ReadVariableOp?,Unet_5x2_32F/conv3d_3/BiasAdd/ReadVariableOp?+Unet_5x2_32F/conv3d_3/Conv3D/ReadVariableOp?,Unet_5x2_32F/conv3d_4/BiasAdd/ReadVariableOp?+Unet_5x2_32F/conv3d_4/Conv3D/ReadVariableOp?,Unet_5x2_32F/conv3d_5/BiasAdd/ReadVariableOp?+Unet_5x2_32F/conv3d_5/Conv3D/ReadVariableOp?,Unet_5x2_32F/conv3d_6/BiasAdd/ReadVariableOp?+Unet_5x2_32F/conv3d_6/Conv3D/ReadVariableOp?,Unet_5x2_32F/conv3d_7/BiasAdd/ReadVariableOp?+Unet_5x2_32F/conv3d_7/Conv3D/ReadVariableOp?,Unet_5x2_32F/conv3d_8/BiasAdd/ReadVariableOp?+Unet_5x2_32F/conv3d_8/Conv3D/ReadVariableOp?,Unet_5x2_32F/conv3d_9/BiasAdd/ReadVariableOp?+Unet_5x2_32F/conv3d_9/Conv3D/ReadVariableOp?
)Unet_5x2_32F/conv3d/Conv3D/ReadVariableOpReadVariableOp2unet_5x2_32f_conv3d_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02+
)Unet_5x2_32F/conv3d/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d/Conv3DConv3Dinput_11Unet_5x2_32F/conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp *
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d/Conv3D?
*Unet_5x2_32F/conv3d/BiasAdd/ReadVariableOpReadVariableOp3unet_5x2_32f_conv3d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*Unet_5x2_32F/conv3d/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d/BiasAddBiasAdd#Unet_5x2_32F/conv3d/Conv3D:output:02Unet_5x2_32F/conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp 2
Unet_5x2_32F/conv3d/BiasAdd?
Unet_5x2_32F/conv3d/ReluRelu$Unet_5x2_32F/conv3d/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp 2
Unet_5x2_32F/conv3d/Relu?
+Unet_5x2_32F/conv3d_1/Conv3D/ReadVariableOpReadVariableOp4unet_5x2_32f_conv3d_1_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype02-
+Unet_5x2_32F/conv3d_1/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_1/Conv3DConv3D&Unet_5x2_32F/conv3d/Relu:activations:03Unet_5x2_32F/conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_1/Conv3D?
,Unet_5x2_32F/conv3d_1/BiasAdd/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,Unet_5x2_32F/conv3d_1/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_1/BiasAddBiasAdd%Unet_5x2_32F/conv3d_1/Conv3D:output:04Unet_5x2_32F/conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2
Unet_5x2_32F/conv3d_1/BiasAdd?
Unet_5x2_32F/conv3d_1/ReluRelu&Unet_5x2_32F/conv3d_1/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
Unet_5x2_32F/conv3d_1/Relu?
$Unet_5x2_32F/max_pooling3d/MaxPool3D	MaxPool3D(Unet_5x2_32F/conv3d_1/Relu:activations:0*
T0*3
_output_shapes!
:?????????888@*
ksize	
*
paddingVALID*
strides	
2&
$Unet_5x2_32F/max_pooling3d/MaxPool3D?
+Unet_5x2_32F/conv3d_2/Conv3D/ReadVariableOpReadVariableOp4unet_5x2_32f_conv3d_2_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02-
+Unet_5x2_32F/conv3d_2/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_2/Conv3DConv3D-Unet_5x2_32F/max_pooling3d/MaxPool3D:output:03Unet_5x2_32F/conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_2/Conv3D?
,Unet_5x2_32F/conv3d_2/BiasAdd/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,Unet_5x2_32F/conv3d_2/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_2/BiasAddBiasAdd%Unet_5x2_32F/conv3d_2/Conv3D:output:04Unet_5x2_32F/conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2
Unet_5x2_32F/conv3d_2/BiasAdd?
Unet_5x2_32F/conv3d_2/ReluRelu&Unet_5x2_32F/conv3d_2/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
Unet_5x2_32F/conv3d_2/Relu?
+Unet_5x2_32F/conv3d_3/Conv3D/ReadVariableOpReadVariableOp4unet_5x2_32f_conv3d_3_conv3d_readvariableop_resource*+
_output_shapes
:@?*
dtype02-
+Unet_5x2_32F/conv3d_3/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_3/Conv3DConv3D(Unet_5x2_32F/conv3d_2/Relu:activations:03Unet_5x2_32F/conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_3/Conv3D?
,Unet_5x2_32F/conv3d_3/BiasAdd/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,Unet_5x2_32F/conv3d_3/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_3/BiasAddBiasAdd%Unet_5x2_32F/conv3d_3/Conv3D:output:04Unet_5x2_32F/conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?2
Unet_5x2_32F/conv3d_3/BiasAdd?
Unet_5x2_32F/conv3d_3/ReluRelu&Unet_5x2_32F/conv3d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :?????????888?2
Unet_5x2_32F/conv3d_3/Relu?
&Unet_5x2_32F/max_pooling3d_1/MaxPool3D	MaxPool3D(Unet_5x2_32F/conv3d_3/Relu:activations:0*
T0*4
_output_shapes"
 :??????????*
ksize	
*
paddingVALID*
strides	
2(
&Unet_5x2_32F/max_pooling3d_1/MaxPool3D?
+Unet_5x2_32F/conv3d_4/Conv3D/ReadVariableOpReadVariableOp4unet_5x2_32f_conv3d_4_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02-
+Unet_5x2_32F/conv3d_4/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_4/Conv3DConv3D/Unet_5x2_32F/max_pooling3d_1/MaxPool3D:output:03Unet_5x2_32F/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_4/Conv3D?
,Unet_5x2_32F/conv3d_4/BiasAdd/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,Unet_5x2_32F/conv3d_4/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_4/BiasAddBiasAdd%Unet_5x2_32F/conv3d_4/Conv3D:output:04Unet_5x2_32F/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_4/BiasAdd?
Unet_5x2_32F/conv3d_4/ReluRelu&Unet_5x2_32F/conv3d_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_4/Relu?
+Unet_5x2_32F/conv3d_5/Conv3D/ReadVariableOpReadVariableOp4unet_5x2_32f_conv3d_5_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02-
+Unet_5x2_32F/conv3d_5/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_5/Conv3DConv3D(Unet_5x2_32F/conv3d_4/Relu:activations:03Unet_5x2_32F/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_5/Conv3D?
,Unet_5x2_32F/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,Unet_5x2_32F/conv3d_5/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_5/BiasAddBiasAdd%Unet_5x2_32F/conv3d_5/Conv3D:output:04Unet_5x2_32F/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_5/BiasAdd?
Unet_5x2_32F/conv3d_5/ReluRelu&Unet_5x2_32F/conv3d_5/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_5/Relu?
&Unet_5x2_32F/max_pooling3d_2/MaxPool3D	MaxPool3D(Unet_5x2_32F/conv3d_5/Relu:activations:0*
T0*4
_output_shapes"
 :??????????*
ksize	
*
paddingVALID*
strides	
2(
&Unet_5x2_32F/max_pooling3d_2/MaxPool3D?
+Unet_5x2_32F/conv3d_6/Conv3D/ReadVariableOpReadVariableOp4unet_5x2_32f_conv3d_6_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02-
+Unet_5x2_32F/conv3d_6/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_6/Conv3DConv3D/Unet_5x2_32F/max_pooling3d_2/MaxPool3D:output:03Unet_5x2_32F/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_6/Conv3D?
,Unet_5x2_32F/conv3d_6/BiasAdd/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,Unet_5x2_32F/conv3d_6/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_6/BiasAddBiasAdd%Unet_5x2_32F/conv3d_6/Conv3D:output:04Unet_5x2_32F/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_6/BiasAdd?
Unet_5x2_32F/conv3d_6/ReluRelu&Unet_5x2_32F/conv3d_6/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_6/Relu?
+Unet_5x2_32F/conv3d_7/Conv3D/ReadVariableOpReadVariableOp4unet_5x2_32f_conv3d_7_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02-
+Unet_5x2_32F/conv3d_7/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_7/Conv3DConv3D(Unet_5x2_32F/conv3d_6/Relu:activations:03Unet_5x2_32F/conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_7/Conv3D?
,Unet_5x2_32F/conv3d_7/BiasAdd/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,Unet_5x2_32F/conv3d_7/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_7/BiasAddBiasAdd%Unet_5x2_32F/conv3d_7/Conv3D:output:04Unet_5x2_32F/conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_7/BiasAdd?
Unet_5x2_32F/conv3d_7/ReluRelu&Unet_5x2_32F/conv3d_7/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_7/Relu?
&Unet_5x2_32F/max_pooling3d_3/MaxPool3D	MaxPool3D(Unet_5x2_32F/conv3d_7/Relu:activations:0*
T0*4
_output_shapes"
 :??????????*
ksize	
*
paddingVALID*
strides	
2(
&Unet_5x2_32F/max_pooling3d_3/MaxPool3D?
+Unet_5x2_32F/conv3d_8/Conv3D/ReadVariableOpReadVariableOp4unet_5x2_32f_conv3d_8_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02-
+Unet_5x2_32F/conv3d_8/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_8/Conv3DConv3D/Unet_5x2_32F/max_pooling3d_3/MaxPool3D:output:03Unet_5x2_32F/conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_8/Conv3D?
,Unet_5x2_32F/conv3d_8/BiasAdd/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,Unet_5x2_32F/conv3d_8/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_8/BiasAddBiasAdd%Unet_5x2_32F/conv3d_8/Conv3D:output:04Unet_5x2_32F/conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_8/BiasAdd?
Unet_5x2_32F/conv3d_8/ReluRelu&Unet_5x2_32F/conv3d_8/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_8/Relu?
+Unet_5x2_32F/conv3d_9/Conv3D/ReadVariableOpReadVariableOp4unet_5x2_32f_conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02-
+Unet_5x2_32F/conv3d_9/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_9/Conv3DConv3D(Unet_5x2_32F/conv3d_8/Relu:activations:03Unet_5x2_32F/conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_9/Conv3D?
,Unet_5x2_32F/conv3d_9/BiasAdd/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,Unet_5x2_32F/conv3d_9/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_9/BiasAddBiasAdd%Unet_5x2_32F/conv3d_9/Conv3D:output:04Unet_5x2_32F/conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_9/BiasAdd?
Unet_5x2_32F/conv3d_9/ReluRelu&Unet_5x2_32F/conv3d_9/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_9/Relu?
*Unet_5x2_32F/up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*Unet_5x2_32F/up_sampling3d/split/split_dim?
 Unet_5x2_32F/up_sampling3d/splitSplit3Unet_5x2_32F/up_sampling3d/split/split_dim:output:0(Unet_5x2_32F/conv3d_9/Relu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2"
 Unet_5x2_32F/up_sampling3d/split?
&Unet_5x2_32F/up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&Unet_5x2_32F/up_sampling3d/concat/axis?
!Unet_5x2_32F/up_sampling3d/concatConcatV2)Unet_5x2_32F/up_sampling3d/split:output:0)Unet_5x2_32F/up_sampling3d/split:output:0)Unet_5x2_32F/up_sampling3d/split:output:1)Unet_5x2_32F/up_sampling3d/split:output:1)Unet_5x2_32F/up_sampling3d/split:output:2)Unet_5x2_32F/up_sampling3d/split:output:2)Unet_5x2_32F/up_sampling3d/split:output:3)Unet_5x2_32F/up_sampling3d/split:output:3)Unet_5x2_32F/up_sampling3d/split:output:4)Unet_5x2_32F/up_sampling3d/split:output:4)Unet_5x2_32F/up_sampling3d/split:output:5)Unet_5x2_32F/up_sampling3d/split:output:5)Unet_5x2_32F/up_sampling3d/split:output:6)Unet_5x2_32F/up_sampling3d/split:output:6/Unet_5x2_32F/up_sampling3d/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2#
!Unet_5x2_32F/up_sampling3d/concat?
,Unet_5x2_32F/up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,Unet_5x2_32F/up_sampling3d/split_1/split_dim?
"Unet_5x2_32F/up_sampling3d/split_1Split5Unet_5x2_32F/up_sampling3d/split_1/split_dim:output:0*Unet_5x2_32F/up_sampling3d/concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2$
"Unet_5x2_32F/up_sampling3d/split_1?
(Unet_5x2_32F/up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(Unet_5x2_32F/up_sampling3d/concat_1/axis?
#Unet_5x2_32F/up_sampling3d/concat_1ConcatV2+Unet_5x2_32F/up_sampling3d/split_1:output:0+Unet_5x2_32F/up_sampling3d/split_1:output:0+Unet_5x2_32F/up_sampling3d/split_1:output:1+Unet_5x2_32F/up_sampling3d/split_1:output:1+Unet_5x2_32F/up_sampling3d/split_1:output:2+Unet_5x2_32F/up_sampling3d/split_1:output:2+Unet_5x2_32F/up_sampling3d/split_1:output:3+Unet_5x2_32F/up_sampling3d/split_1:output:3+Unet_5x2_32F/up_sampling3d/split_1:output:4+Unet_5x2_32F/up_sampling3d/split_1:output:4+Unet_5x2_32F/up_sampling3d/split_1:output:5+Unet_5x2_32F/up_sampling3d/split_1:output:5+Unet_5x2_32F/up_sampling3d/split_1:output:6+Unet_5x2_32F/up_sampling3d/split_1:output:61Unet_5x2_32F/up_sampling3d/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2%
#Unet_5x2_32F/up_sampling3d/concat_1?
,Unet_5x2_32F/up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,Unet_5x2_32F/up_sampling3d/split_2/split_dim?
"Unet_5x2_32F/up_sampling3d/split_2Split5Unet_5x2_32F/up_sampling3d/split_2/split_dim:output:0,Unet_5x2_32F/up_sampling3d/concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2$
"Unet_5x2_32F/up_sampling3d/split_2?
(Unet_5x2_32F/up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(Unet_5x2_32F/up_sampling3d/concat_2/axis?
#Unet_5x2_32F/up_sampling3d/concat_2ConcatV2+Unet_5x2_32F/up_sampling3d/split_2:output:0+Unet_5x2_32F/up_sampling3d/split_2:output:0+Unet_5x2_32F/up_sampling3d/split_2:output:1+Unet_5x2_32F/up_sampling3d/split_2:output:1+Unet_5x2_32F/up_sampling3d/split_2:output:2+Unet_5x2_32F/up_sampling3d/split_2:output:2+Unet_5x2_32F/up_sampling3d/split_2:output:3+Unet_5x2_32F/up_sampling3d/split_2:output:3+Unet_5x2_32F/up_sampling3d/split_2:output:4+Unet_5x2_32F/up_sampling3d/split_2:output:4+Unet_5x2_32F/up_sampling3d/split_2:output:5+Unet_5x2_32F/up_sampling3d/split_2:output:5+Unet_5x2_32F/up_sampling3d/split_2:output:6+Unet_5x2_32F/up_sampling3d/split_2:output:61Unet_5x2_32F/up_sampling3d/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2%
#Unet_5x2_32F/up_sampling3d/concat_2?
$Unet_5x2_32F/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2&
$Unet_5x2_32F/concatenate/concat/axis?
Unet_5x2_32F/concatenate/concatConcatV2,Unet_5x2_32F/up_sampling3d/concat_2:output:0(Unet_5x2_32F/conv3d_7/Relu:activations:0-Unet_5x2_32F/concatenate/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2!
Unet_5x2_32F/concatenate/concat?
,Unet_5x2_32F/conv3d_10/Conv3D/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_10_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02.
,Unet_5x2_32F/conv3d_10/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_10/Conv3DConv3D(Unet_5x2_32F/concatenate/concat:output:04Unet_5x2_32F/conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_10/Conv3D?
-Unet_5x2_32F/conv3d_10/BiasAdd/ReadVariableOpReadVariableOp6unet_5x2_32f_conv3d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Unet_5x2_32F/conv3d_10/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_10/BiasAddBiasAdd&Unet_5x2_32F/conv3d_10/Conv3D:output:05Unet_5x2_32F/conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2 
Unet_5x2_32F/conv3d_10/BiasAdd?
Unet_5x2_32F/conv3d_10/ReluRelu'Unet_5x2_32F/conv3d_10/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_10/Relu?
,Unet_5x2_32F/conv3d_11/Conv3D/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_11_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02.
,Unet_5x2_32F/conv3d_11/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_11/Conv3DConv3D)Unet_5x2_32F/conv3d_10/Relu:activations:04Unet_5x2_32F/conv3d_11/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_11/Conv3D?
-Unet_5x2_32F/conv3d_11/BiasAdd/ReadVariableOpReadVariableOp6unet_5x2_32f_conv3d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Unet_5x2_32F/conv3d_11/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_11/BiasAddBiasAdd&Unet_5x2_32F/conv3d_11/Conv3D:output:05Unet_5x2_32F/conv3d_11/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2 
Unet_5x2_32F/conv3d_11/BiasAdd?
Unet_5x2_32F/conv3d_11/ReluRelu'Unet_5x2_32F/conv3d_11/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_11/Relu?
,Unet_5x2_32F/up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,Unet_5x2_32F/up_sampling3d_1/split/split_dim?
"Unet_5x2_32F/up_sampling3d_1/splitSplit5Unet_5x2_32F/up_sampling3d_1/split/split_dim:output:0)Unet_5x2_32F/conv3d_11/Relu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2$
"Unet_5x2_32F/up_sampling3d_1/split?
(Unet_5x2_32F/up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(Unet_5x2_32F/up_sampling3d_1/concat/axis?
#Unet_5x2_32F/up_sampling3d_1/concatConcatV2+Unet_5x2_32F/up_sampling3d_1/split:output:0+Unet_5x2_32F/up_sampling3d_1/split:output:0+Unet_5x2_32F/up_sampling3d_1/split:output:1+Unet_5x2_32F/up_sampling3d_1/split:output:1+Unet_5x2_32F/up_sampling3d_1/split:output:2+Unet_5x2_32F/up_sampling3d_1/split:output:2+Unet_5x2_32F/up_sampling3d_1/split:output:3+Unet_5x2_32F/up_sampling3d_1/split:output:3+Unet_5x2_32F/up_sampling3d_1/split:output:4+Unet_5x2_32F/up_sampling3d_1/split:output:4+Unet_5x2_32F/up_sampling3d_1/split:output:5+Unet_5x2_32F/up_sampling3d_1/split:output:5+Unet_5x2_32F/up_sampling3d_1/split:output:6+Unet_5x2_32F/up_sampling3d_1/split:output:6+Unet_5x2_32F/up_sampling3d_1/split:output:7+Unet_5x2_32F/up_sampling3d_1/split:output:7+Unet_5x2_32F/up_sampling3d_1/split:output:8+Unet_5x2_32F/up_sampling3d_1/split:output:8+Unet_5x2_32F/up_sampling3d_1/split:output:9+Unet_5x2_32F/up_sampling3d_1/split:output:9,Unet_5x2_32F/up_sampling3d_1/split:output:10,Unet_5x2_32F/up_sampling3d_1/split:output:10,Unet_5x2_32F/up_sampling3d_1/split:output:11,Unet_5x2_32F/up_sampling3d_1/split:output:11,Unet_5x2_32F/up_sampling3d_1/split:output:12,Unet_5x2_32F/up_sampling3d_1/split:output:12,Unet_5x2_32F/up_sampling3d_1/split:output:13,Unet_5x2_32F/up_sampling3d_1/split:output:131Unet_5x2_32F/up_sampling3d_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2%
#Unet_5x2_32F/up_sampling3d_1/concat?
.Unet_5x2_32F/up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.Unet_5x2_32F/up_sampling3d_1/split_1/split_dim?
$Unet_5x2_32F/up_sampling3d_1/split_1Split7Unet_5x2_32F/up_sampling3d_1/split_1/split_dim:output:0,Unet_5x2_32F/up_sampling3d_1/concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2&
$Unet_5x2_32F/up_sampling3d_1/split_1?
*Unet_5x2_32F/up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*Unet_5x2_32F/up_sampling3d_1/concat_1/axis?
%Unet_5x2_32F/up_sampling3d_1/concat_1ConcatV2-Unet_5x2_32F/up_sampling3d_1/split_1:output:0-Unet_5x2_32F/up_sampling3d_1/split_1:output:0-Unet_5x2_32F/up_sampling3d_1/split_1:output:1-Unet_5x2_32F/up_sampling3d_1/split_1:output:1-Unet_5x2_32F/up_sampling3d_1/split_1:output:2-Unet_5x2_32F/up_sampling3d_1/split_1:output:2-Unet_5x2_32F/up_sampling3d_1/split_1:output:3-Unet_5x2_32F/up_sampling3d_1/split_1:output:3-Unet_5x2_32F/up_sampling3d_1/split_1:output:4-Unet_5x2_32F/up_sampling3d_1/split_1:output:4-Unet_5x2_32F/up_sampling3d_1/split_1:output:5-Unet_5x2_32F/up_sampling3d_1/split_1:output:5-Unet_5x2_32F/up_sampling3d_1/split_1:output:6-Unet_5x2_32F/up_sampling3d_1/split_1:output:6-Unet_5x2_32F/up_sampling3d_1/split_1:output:7-Unet_5x2_32F/up_sampling3d_1/split_1:output:7-Unet_5x2_32F/up_sampling3d_1/split_1:output:8-Unet_5x2_32F/up_sampling3d_1/split_1:output:8-Unet_5x2_32F/up_sampling3d_1/split_1:output:9-Unet_5x2_32F/up_sampling3d_1/split_1:output:9.Unet_5x2_32F/up_sampling3d_1/split_1:output:10.Unet_5x2_32F/up_sampling3d_1/split_1:output:10.Unet_5x2_32F/up_sampling3d_1/split_1:output:11.Unet_5x2_32F/up_sampling3d_1/split_1:output:11.Unet_5x2_32F/up_sampling3d_1/split_1:output:12.Unet_5x2_32F/up_sampling3d_1/split_1:output:12.Unet_5x2_32F/up_sampling3d_1/split_1:output:13.Unet_5x2_32F/up_sampling3d_1/split_1:output:133Unet_5x2_32F/up_sampling3d_1/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2'
%Unet_5x2_32F/up_sampling3d_1/concat_1?
.Unet_5x2_32F/up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.Unet_5x2_32F/up_sampling3d_1/split_2/split_dim?
$Unet_5x2_32F/up_sampling3d_1/split_2Split7Unet_5x2_32F/up_sampling3d_1/split_2/split_dim:output:0.Unet_5x2_32F/up_sampling3d_1/concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2&
$Unet_5x2_32F/up_sampling3d_1/split_2?
*Unet_5x2_32F/up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*Unet_5x2_32F/up_sampling3d_1/concat_2/axis?
%Unet_5x2_32F/up_sampling3d_1/concat_2ConcatV2-Unet_5x2_32F/up_sampling3d_1/split_2:output:0-Unet_5x2_32F/up_sampling3d_1/split_2:output:0-Unet_5x2_32F/up_sampling3d_1/split_2:output:1-Unet_5x2_32F/up_sampling3d_1/split_2:output:1-Unet_5x2_32F/up_sampling3d_1/split_2:output:2-Unet_5x2_32F/up_sampling3d_1/split_2:output:2-Unet_5x2_32F/up_sampling3d_1/split_2:output:3-Unet_5x2_32F/up_sampling3d_1/split_2:output:3-Unet_5x2_32F/up_sampling3d_1/split_2:output:4-Unet_5x2_32F/up_sampling3d_1/split_2:output:4-Unet_5x2_32F/up_sampling3d_1/split_2:output:5-Unet_5x2_32F/up_sampling3d_1/split_2:output:5-Unet_5x2_32F/up_sampling3d_1/split_2:output:6-Unet_5x2_32F/up_sampling3d_1/split_2:output:6-Unet_5x2_32F/up_sampling3d_1/split_2:output:7-Unet_5x2_32F/up_sampling3d_1/split_2:output:7-Unet_5x2_32F/up_sampling3d_1/split_2:output:8-Unet_5x2_32F/up_sampling3d_1/split_2:output:8-Unet_5x2_32F/up_sampling3d_1/split_2:output:9-Unet_5x2_32F/up_sampling3d_1/split_2:output:9.Unet_5x2_32F/up_sampling3d_1/split_2:output:10.Unet_5x2_32F/up_sampling3d_1/split_2:output:10.Unet_5x2_32F/up_sampling3d_1/split_2:output:11.Unet_5x2_32F/up_sampling3d_1/split_2:output:11.Unet_5x2_32F/up_sampling3d_1/split_2:output:12.Unet_5x2_32F/up_sampling3d_1/split_2:output:12.Unet_5x2_32F/up_sampling3d_1/split_2:output:13.Unet_5x2_32F/up_sampling3d_1/split_2:output:133Unet_5x2_32F/up_sampling3d_1/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2'
%Unet_5x2_32F/up_sampling3d_1/concat_2?
&Unet_5x2_32F/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&Unet_5x2_32F/concatenate_1/concat/axis?
!Unet_5x2_32F/concatenate_1/concatConcatV2.Unet_5x2_32F/up_sampling3d_1/concat_2:output:0(Unet_5x2_32F/conv3d_5/Relu:activations:0/Unet_5x2_32F/concatenate_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2#
!Unet_5x2_32F/concatenate_1/concat?
,Unet_5x2_32F/conv3d_12/Conv3D/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_12_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02.
,Unet_5x2_32F/conv3d_12/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_12/Conv3DConv3D*Unet_5x2_32F/concatenate_1/concat:output:04Unet_5x2_32F/conv3d_12/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_12/Conv3D?
-Unet_5x2_32F/conv3d_12/BiasAdd/ReadVariableOpReadVariableOp6unet_5x2_32f_conv3d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Unet_5x2_32F/conv3d_12/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_12/BiasAddBiasAdd&Unet_5x2_32F/conv3d_12/Conv3D:output:05Unet_5x2_32F/conv3d_12/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2 
Unet_5x2_32F/conv3d_12/BiasAdd?
Unet_5x2_32F/conv3d_12/ReluRelu'Unet_5x2_32F/conv3d_12/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_12/Relu?
,Unet_5x2_32F/conv3d_13/Conv3D/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_13_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02.
,Unet_5x2_32F/conv3d_13/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_13/Conv3DConv3D)Unet_5x2_32F/conv3d_12/Relu:activations:04Unet_5x2_32F/conv3d_13/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_13/Conv3D?
-Unet_5x2_32F/conv3d_13/BiasAdd/ReadVariableOpReadVariableOp6unet_5x2_32f_conv3d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Unet_5x2_32F/conv3d_13/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_13/BiasAddBiasAdd&Unet_5x2_32F/conv3d_13/Conv3D:output:05Unet_5x2_32F/conv3d_13/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2 
Unet_5x2_32F/conv3d_13/BiasAdd?
Unet_5x2_32F/conv3d_13/ReluRelu'Unet_5x2_32F/conv3d_13/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Unet_5x2_32F/conv3d_13/Relu?
,Unet_5x2_32F/up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,Unet_5x2_32F/up_sampling3d_2/split/split_dim?
"Unet_5x2_32F/up_sampling3d_2/splitSplit5Unet_5x2_32F/up_sampling3d_2/split/split_dim:output:0)Unet_5x2_32F/conv3d_13/Relu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2$
"Unet_5x2_32F/up_sampling3d_2/split?
(Unet_5x2_32F/up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(Unet_5x2_32F/up_sampling3d_2/concat/axis?
#Unet_5x2_32F/up_sampling3d_2/concatConcatV2+Unet_5x2_32F/up_sampling3d_2/split:output:0+Unet_5x2_32F/up_sampling3d_2/split:output:0+Unet_5x2_32F/up_sampling3d_2/split:output:1+Unet_5x2_32F/up_sampling3d_2/split:output:1+Unet_5x2_32F/up_sampling3d_2/split:output:2+Unet_5x2_32F/up_sampling3d_2/split:output:2+Unet_5x2_32F/up_sampling3d_2/split:output:3+Unet_5x2_32F/up_sampling3d_2/split:output:3+Unet_5x2_32F/up_sampling3d_2/split:output:4+Unet_5x2_32F/up_sampling3d_2/split:output:4+Unet_5x2_32F/up_sampling3d_2/split:output:5+Unet_5x2_32F/up_sampling3d_2/split:output:5+Unet_5x2_32F/up_sampling3d_2/split:output:6+Unet_5x2_32F/up_sampling3d_2/split:output:6+Unet_5x2_32F/up_sampling3d_2/split:output:7+Unet_5x2_32F/up_sampling3d_2/split:output:7+Unet_5x2_32F/up_sampling3d_2/split:output:8+Unet_5x2_32F/up_sampling3d_2/split:output:8+Unet_5x2_32F/up_sampling3d_2/split:output:9+Unet_5x2_32F/up_sampling3d_2/split:output:9,Unet_5x2_32F/up_sampling3d_2/split:output:10,Unet_5x2_32F/up_sampling3d_2/split:output:10,Unet_5x2_32F/up_sampling3d_2/split:output:11,Unet_5x2_32F/up_sampling3d_2/split:output:11,Unet_5x2_32F/up_sampling3d_2/split:output:12,Unet_5x2_32F/up_sampling3d_2/split:output:12,Unet_5x2_32F/up_sampling3d_2/split:output:13,Unet_5x2_32F/up_sampling3d_2/split:output:13,Unet_5x2_32F/up_sampling3d_2/split:output:14,Unet_5x2_32F/up_sampling3d_2/split:output:14,Unet_5x2_32F/up_sampling3d_2/split:output:15,Unet_5x2_32F/up_sampling3d_2/split:output:15,Unet_5x2_32F/up_sampling3d_2/split:output:16,Unet_5x2_32F/up_sampling3d_2/split:output:16,Unet_5x2_32F/up_sampling3d_2/split:output:17,Unet_5x2_32F/up_sampling3d_2/split:output:17,Unet_5x2_32F/up_sampling3d_2/split:output:18,Unet_5x2_32F/up_sampling3d_2/split:output:18,Unet_5x2_32F/up_sampling3d_2/split:output:19,Unet_5x2_32F/up_sampling3d_2/split:output:19,Unet_5x2_32F/up_sampling3d_2/split:output:20,Unet_5x2_32F/up_sampling3d_2/split:output:20,Unet_5x2_32F/up_sampling3d_2/split:output:21,Unet_5x2_32F/up_sampling3d_2/split:output:21,Unet_5x2_32F/up_sampling3d_2/split:output:22,Unet_5x2_32F/up_sampling3d_2/split:output:22,Unet_5x2_32F/up_sampling3d_2/split:output:23,Unet_5x2_32F/up_sampling3d_2/split:output:23,Unet_5x2_32F/up_sampling3d_2/split:output:24,Unet_5x2_32F/up_sampling3d_2/split:output:24,Unet_5x2_32F/up_sampling3d_2/split:output:25,Unet_5x2_32F/up_sampling3d_2/split:output:25,Unet_5x2_32F/up_sampling3d_2/split:output:26,Unet_5x2_32F/up_sampling3d_2/split:output:26,Unet_5x2_32F/up_sampling3d_2/split:output:27,Unet_5x2_32F/up_sampling3d_2/split:output:271Unet_5x2_32F/up_sampling3d_2/concat/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????8?2%
#Unet_5x2_32F/up_sampling3d_2/concat?
.Unet_5x2_32F/up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.Unet_5x2_32F/up_sampling3d_2/split_1/split_dim?
$Unet_5x2_32F/up_sampling3d_2/split_1Split7Unet_5x2_32F/up_sampling3d_2/split_1/split_dim:output:0,Unet_5x2_32F/up_sampling3d_2/concat:output:0*
T0*?
_output_shapes?
?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?*
	num_split2&
$Unet_5x2_32F/up_sampling3d_2/split_1?
*Unet_5x2_32F/up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*Unet_5x2_32F/up_sampling3d_2/concat_1/axis?
%Unet_5x2_32F/up_sampling3d_2/concat_1ConcatV2-Unet_5x2_32F/up_sampling3d_2/split_1:output:0-Unet_5x2_32F/up_sampling3d_2/split_1:output:0-Unet_5x2_32F/up_sampling3d_2/split_1:output:1-Unet_5x2_32F/up_sampling3d_2/split_1:output:1-Unet_5x2_32F/up_sampling3d_2/split_1:output:2-Unet_5x2_32F/up_sampling3d_2/split_1:output:2-Unet_5x2_32F/up_sampling3d_2/split_1:output:3-Unet_5x2_32F/up_sampling3d_2/split_1:output:3-Unet_5x2_32F/up_sampling3d_2/split_1:output:4-Unet_5x2_32F/up_sampling3d_2/split_1:output:4-Unet_5x2_32F/up_sampling3d_2/split_1:output:5-Unet_5x2_32F/up_sampling3d_2/split_1:output:5-Unet_5x2_32F/up_sampling3d_2/split_1:output:6-Unet_5x2_32F/up_sampling3d_2/split_1:output:6-Unet_5x2_32F/up_sampling3d_2/split_1:output:7-Unet_5x2_32F/up_sampling3d_2/split_1:output:7-Unet_5x2_32F/up_sampling3d_2/split_1:output:8-Unet_5x2_32F/up_sampling3d_2/split_1:output:8-Unet_5x2_32F/up_sampling3d_2/split_1:output:9-Unet_5x2_32F/up_sampling3d_2/split_1:output:9.Unet_5x2_32F/up_sampling3d_2/split_1:output:10.Unet_5x2_32F/up_sampling3d_2/split_1:output:10.Unet_5x2_32F/up_sampling3d_2/split_1:output:11.Unet_5x2_32F/up_sampling3d_2/split_1:output:11.Unet_5x2_32F/up_sampling3d_2/split_1:output:12.Unet_5x2_32F/up_sampling3d_2/split_1:output:12.Unet_5x2_32F/up_sampling3d_2/split_1:output:13.Unet_5x2_32F/up_sampling3d_2/split_1:output:13.Unet_5x2_32F/up_sampling3d_2/split_1:output:14.Unet_5x2_32F/up_sampling3d_2/split_1:output:14.Unet_5x2_32F/up_sampling3d_2/split_1:output:15.Unet_5x2_32F/up_sampling3d_2/split_1:output:15.Unet_5x2_32F/up_sampling3d_2/split_1:output:16.Unet_5x2_32F/up_sampling3d_2/split_1:output:16.Unet_5x2_32F/up_sampling3d_2/split_1:output:17.Unet_5x2_32F/up_sampling3d_2/split_1:output:17.Unet_5x2_32F/up_sampling3d_2/split_1:output:18.Unet_5x2_32F/up_sampling3d_2/split_1:output:18.Unet_5x2_32F/up_sampling3d_2/split_1:output:19.Unet_5x2_32F/up_sampling3d_2/split_1:output:19.Unet_5x2_32F/up_sampling3d_2/split_1:output:20.Unet_5x2_32F/up_sampling3d_2/split_1:output:20.Unet_5x2_32F/up_sampling3d_2/split_1:output:21.Unet_5x2_32F/up_sampling3d_2/split_1:output:21.Unet_5x2_32F/up_sampling3d_2/split_1:output:22.Unet_5x2_32F/up_sampling3d_2/split_1:output:22.Unet_5x2_32F/up_sampling3d_2/split_1:output:23.Unet_5x2_32F/up_sampling3d_2/split_1:output:23.Unet_5x2_32F/up_sampling3d_2/split_1:output:24.Unet_5x2_32F/up_sampling3d_2/split_1:output:24.Unet_5x2_32F/up_sampling3d_2/split_1:output:25.Unet_5x2_32F/up_sampling3d_2/split_1:output:25.Unet_5x2_32F/up_sampling3d_2/split_1:output:26.Unet_5x2_32F/up_sampling3d_2/split_1:output:26.Unet_5x2_32F/up_sampling3d_2/split_1:output:27.Unet_5x2_32F/up_sampling3d_2/split_1:output:273Unet_5x2_32F/up_sampling3d_2/concat_1/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????88?2'
%Unet_5x2_32F/up_sampling3d_2/concat_1?
.Unet_5x2_32F/up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.Unet_5x2_32F/up_sampling3d_2/split_2/split_dim?
$Unet_5x2_32F/up_sampling3d_2/split_2Split7Unet_5x2_32F/up_sampling3d_2/split_2/split_dim:output:0.Unet_5x2_32F/up_sampling3d_2/concat_1:output:0*
T0*?
_output_shapes?
?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?*
	num_split2&
$Unet_5x2_32F/up_sampling3d_2/split_2?
*Unet_5x2_32F/up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*Unet_5x2_32F/up_sampling3d_2/concat_2/axis?
%Unet_5x2_32F/up_sampling3d_2/concat_2ConcatV2-Unet_5x2_32F/up_sampling3d_2/split_2:output:0-Unet_5x2_32F/up_sampling3d_2/split_2:output:0-Unet_5x2_32F/up_sampling3d_2/split_2:output:1-Unet_5x2_32F/up_sampling3d_2/split_2:output:1-Unet_5x2_32F/up_sampling3d_2/split_2:output:2-Unet_5x2_32F/up_sampling3d_2/split_2:output:2-Unet_5x2_32F/up_sampling3d_2/split_2:output:3-Unet_5x2_32F/up_sampling3d_2/split_2:output:3-Unet_5x2_32F/up_sampling3d_2/split_2:output:4-Unet_5x2_32F/up_sampling3d_2/split_2:output:4-Unet_5x2_32F/up_sampling3d_2/split_2:output:5-Unet_5x2_32F/up_sampling3d_2/split_2:output:5-Unet_5x2_32F/up_sampling3d_2/split_2:output:6-Unet_5x2_32F/up_sampling3d_2/split_2:output:6-Unet_5x2_32F/up_sampling3d_2/split_2:output:7-Unet_5x2_32F/up_sampling3d_2/split_2:output:7-Unet_5x2_32F/up_sampling3d_2/split_2:output:8-Unet_5x2_32F/up_sampling3d_2/split_2:output:8-Unet_5x2_32F/up_sampling3d_2/split_2:output:9-Unet_5x2_32F/up_sampling3d_2/split_2:output:9.Unet_5x2_32F/up_sampling3d_2/split_2:output:10.Unet_5x2_32F/up_sampling3d_2/split_2:output:10.Unet_5x2_32F/up_sampling3d_2/split_2:output:11.Unet_5x2_32F/up_sampling3d_2/split_2:output:11.Unet_5x2_32F/up_sampling3d_2/split_2:output:12.Unet_5x2_32F/up_sampling3d_2/split_2:output:12.Unet_5x2_32F/up_sampling3d_2/split_2:output:13.Unet_5x2_32F/up_sampling3d_2/split_2:output:13.Unet_5x2_32F/up_sampling3d_2/split_2:output:14.Unet_5x2_32F/up_sampling3d_2/split_2:output:14.Unet_5x2_32F/up_sampling3d_2/split_2:output:15.Unet_5x2_32F/up_sampling3d_2/split_2:output:15.Unet_5x2_32F/up_sampling3d_2/split_2:output:16.Unet_5x2_32F/up_sampling3d_2/split_2:output:16.Unet_5x2_32F/up_sampling3d_2/split_2:output:17.Unet_5x2_32F/up_sampling3d_2/split_2:output:17.Unet_5x2_32F/up_sampling3d_2/split_2:output:18.Unet_5x2_32F/up_sampling3d_2/split_2:output:18.Unet_5x2_32F/up_sampling3d_2/split_2:output:19.Unet_5x2_32F/up_sampling3d_2/split_2:output:19.Unet_5x2_32F/up_sampling3d_2/split_2:output:20.Unet_5x2_32F/up_sampling3d_2/split_2:output:20.Unet_5x2_32F/up_sampling3d_2/split_2:output:21.Unet_5x2_32F/up_sampling3d_2/split_2:output:21.Unet_5x2_32F/up_sampling3d_2/split_2:output:22.Unet_5x2_32F/up_sampling3d_2/split_2:output:22.Unet_5x2_32F/up_sampling3d_2/split_2:output:23.Unet_5x2_32F/up_sampling3d_2/split_2:output:23.Unet_5x2_32F/up_sampling3d_2/split_2:output:24.Unet_5x2_32F/up_sampling3d_2/split_2:output:24.Unet_5x2_32F/up_sampling3d_2/split_2:output:25.Unet_5x2_32F/up_sampling3d_2/split_2:output:25.Unet_5x2_32F/up_sampling3d_2/split_2:output:26.Unet_5x2_32F/up_sampling3d_2/split_2:output:26.Unet_5x2_32F/up_sampling3d_2/split_2:output:27.Unet_5x2_32F/up_sampling3d_2/split_2:output:273Unet_5x2_32F/up_sampling3d_2/concat_2/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????888?2'
%Unet_5x2_32F/up_sampling3d_2/concat_2?
&Unet_5x2_32F/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&Unet_5x2_32F/concatenate_2/concat/axis?
!Unet_5x2_32F/concatenate_2/concatConcatV2.Unet_5x2_32F/up_sampling3d_2/concat_2:output:0(Unet_5x2_32F/conv3d_3/Relu:activations:0/Unet_5x2_32F/concatenate_2/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????888?2#
!Unet_5x2_32F/concatenate_2/concat?
,Unet_5x2_32F/conv3d_14/Conv3D/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_14_conv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02.
,Unet_5x2_32F/conv3d_14/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_14/Conv3DConv3D*Unet_5x2_32F/concatenate_2/concat:output:04Unet_5x2_32F/conv3d_14/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_14/Conv3D?
-Unet_5x2_32F/conv3d_14/BiasAdd/ReadVariableOpReadVariableOp6unet_5x2_32f_conv3d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Unet_5x2_32F/conv3d_14/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_14/BiasAddBiasAdd&Unet_5x2_32F/conv3d_14/Conv3D:output:05Unet_5x2_32F/conv3d_14/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2 
Unet_5x2_32F/conv3d_14/BiasAdd?
Unet_5x2_32F/conv3d_14/ReluRelu'Unet_5x2_32F/conv3d_14/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
Unet_5x2_32F/conv3d_14/Relu?
,Unet_5x2_32F/conv3d_15/Conv3D/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02.
,Unet_5x2_32F/conv3d_15/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_15/Conv3DConv3D)Unet_5x2_32F/conv3d_14/Relu:activations:04Unet_5x2_32F/conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_15/Conv3D?
-Unet_5x2_32F/conv3d_15/BiasAdd/ReadVariableOpReadVariableOp6unet_5x2_32f_conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Unet_5x2_32F/conv3d_15/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_15/BiasAddBiasAdd&Unet_5x2_32F/conv3d_15/Conv3D:output:05Unet_5x2_32F/conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2 
Unet_5x2_32F/conv3d_15/BiasAdd?
Unet_5x2_32F/conv3d_15/ReluRelu'Unet_5x2_32F/conv3d_15/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
Unet_5x2_32F/conv3d_15/Relu?
,Unet_5x2_32F/up_sampling3d_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,Unet_5x2_32F/up_sampling3d_3/split/split_dim?
"Unet_5x2_32F/up_sampling3d_3/splitSplit5Unet_5x2_32F/up_sampling3d_3/split/split_dim:output:0)Unet_5x2_32F/conv3d_15/Relu:activations:0*
T0*?
_output_shapes?
?:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@*
	num_split82$
"Unet_5x2_32F/up_sampling3d_3/split?
(Unet_5x2_32F/up_sampling3d_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2*
(Unet_5x2_32F/up_sampling3d_3/concat/axis?)
#Unet_5x2_32F/up_sampling3d_3/concatConcatV2+Unet_5x2_32F/up_sampling3d_3/split:output:0+Unet_5x2_32F/up_sampling3d_3/split:output:0+Unet_5x2_32F/up_sampling3d_3/split:output:1+Unet_5x2_32F/up_sampling3d_3/split:output:1+Unet_5x2_32F/up_sampling3d_3/split:output:2+Unet_5x2_32F/up_sampling3d_3/split:output:2+Unet_5x2_32F/up_sampling3d_3/split:output:3+Unet_5x2_32F/up_sampling3d_3/split:output:3+Unet_5x2_32F/up_sampling3d_3/split:output:4+Unet_5x2_32F/up_sampling3d_3/split:output:4+Unet_5x2_32F/up_sampling3d_3/split:output:5+Unet_5x2_32F/up_sampling3d_3/split:output:5+Unet_5x2_32F/up_sampling3d_3/split:output:6+Unet_5x2_32F/up_sampling3d_3/split:output:6+Unet_5x2_32F/up_sampling3d_3/split:output:7+Unet_5x2_32F/up_sampling3d_3/split:output:7+Unet_5x2_32F/up_sampling3d_3/split:output:8+Unet_5x2_32F/up_sampling3d_3/split:output:8+Unet_5x2_32F/up_sampling3d_3/split:output:9+Unet_5x2_32F/up_sampling3d_3/split:output:9,Unet_5x2_32F/up_sampling3d_3/split:output:10,Unet_5x2_32F/up_sampling3d_3/split:output:10,Unet_5x2_32F/up_sampling3d_3/split:output:11,Unet_5x2_32F/up_sampling3d_3/split:output:11,Unet_5x2_32F/up_sampling3d_3/split:output:12,Unet_5x2_32F/up_sampling3d_3/split:output:12,Unet_5x2_32F/up_sampling3d_3/split:output:13,Unet_5x2_32F/up_sampling3d_3/split:output:13,Unet_5x2_32F/up_sampling3d_3/split:output:14,Unet_5x2_32F/up_sampling3d_3/split:output:14,Unet_5x2_32F/up_sampling3d_3/split:output:15,Unet_5x2_32F/up_sampling3d_3/split:output:15,Unet_5x2_32F/up_sampling3d_3/split:output:16,Unet_5x2_32F/up_sampling3d_3/split:output:16,Unet_5x2_32F/up_sampling3d_3/split:output:17,Unet_5x2_32F/up_sampling3d_3/split:output:17,Unet_5x2_32F/up_sampling3d_3/split:output:18,Unet_5x2_32F/up_sampling3d_3/split:output:18,Unet_5x2_32F/up_sampling3d_3/split:output:19,Unet_5x2_32F/up_sampling3d_3/split:output:19,Unet_5x2_32F/up_sampling3d_3/split:output:20,Unet_5x2_32F/up_sampling3d_3/split:output:20,Unet_5x2_32F/up_sampling3d_3/split:output:21,Unet_5x2_32F/up_sampling3d_3/split:output:21,Unet_5x2_32F/up_sampling3d_3/split:output:22,Unet_5x2_32F/up_sampling3d_3/split:output:22,Unet_5x2_32F/up_sampling3d_3/split:output:23,Unet_5x2_32F/up_sampling3d_3/split:output:23,Unet_5x2_32F/up_sampling3d_3/split:output:24,Unet_5x2_32F/up_sampling3d_3/split:output:24,Unet_5x2_32F/up_sampling3d_3/split:output:25,Unet_5x2_32F/up_sampling3d_3/split:output:25,Unet_5x2_32F/up_sampling3d_3/split:output:26,Unet_5x2_32F/up_sampling3d_3/split:output:26,Unet_5x2_32F/up_sampling3d_3/split:output:27,Unet_5x2_32F/up_sampling3d_3/split:output:27,Unet_5x2_32F/up_sampling3d_3/split:output:28,Unet_5x2_32F/up_sampling3d_3/split:output:28,Unet_5x2_32F/up_sampling3d_3/split:output:29,Unet_5x2_32F/up_sampling3d_3/split:output:29,Unet_5x2_32F/up_sampling3d_3/split:output:30,Unet_5x2_32F/up_sampling3d_3/split:output:30,Unet_5x2_32F/up_sampling3d_3/split:output:31,Unet_5x2_32F/up_sampling3d_3/split:output:31,Unet_5x2_32F/up_sampling3d_3/split:output:32,Unet_5x2_32F/up_sampling3d_3/split:output:32,Unet_5x2_32F/up_sampling3d_3/split:output:33,Unet_5x2_32F/up_sampling3d_3/split:output:33,Unet_5x2_32F/up_sampling3d_3/split:output:34,Unet_5x2_32F/up_sampling3d_3/split:output:34,Unet_5x2_32F/up_sampling3d_3/split:output:35,Unet_5x2_32F/up_sampling3d_3/split:output:35,Unet_5x2_32F/up_sampling3d_3/split:output:36,Unet_5x2_32F/up_sampling3d_3/split:output:36,Unet_5x2_32F/up_sampling3d_3/split:output:37,Unet_5x2_32F/up_sampling3d_3/split:output:37,Unet_5x2_32F/up_sampling3d_3/split:output:38,Unet_5x2_32F/up_sampling3d_3/split:output:38,Unet_5x2_32F/up_sampling3d_3/split:output:39,Unet_5x2_32F/up_sampling3d_3/split:output:39,Unet_5x2_32F/up_sampling3d_3/split:output:40,Unet_5x2_32F/up_sampling3d_3/split:output:40,Unet_5x2_32F/up_sampling3d_3/split:output:41,Unet_5x2_32F/up_sampling3d_3/split:output:41,Unet_5x2_32F/up_sampling3d_3/split:output:42,Unet_5x2_32F/up_sampling3d_3/split:output:42,Unet_5x2_32F/up_sampling3d_3/split:output:43,Unet_5x2_32F/up_sampling3d_3/split:output:43,Unet_5x2_32F/up_sampling3d_3/split:output:44,Unet_5x2_32F/up_sampling3d_3/split:output:44,Unet_5x2_32F/up_sampling3d_3/split:output:45,Unet_5x2_32F/up_sampling3d_3/split:output:45,Unet_5x2_32F/up_sampling3d_3/split:output:46,Unet_5x2_32F/up_sampling3d_3/split:output:46,Unet_5x2_32F/up_sampling3d_3/split:output:47,Unet_5x2_32F/up_sampling3d_3/split:output:47,Unet_5x2_32F/up_sampling3d_3/split:output:48,Unet_5x2_32F/up_sampling3d_3/split:output:48,Unet_5x2_32F/up_sampling3d_3/split:output:49,Unet_5x2_32F/up_sampling3d_3/split:output:49,Unet_5x2_32F/up_sampling3d_3/split:output:50,Unet_5x2_32F/up_sampling3d_3/split:output:50,Unet_5x2_32F/up_sampling3d_3/split:output:51,Unet_5x2_32F/up_sampling3d_3/split:output:51,Unet_5x2_32F/up_sampling3d_3/split:output:52,Unet_5x2_32F/up_sampling3d_3/split:output:52,Unet_5x2_32F/up_sampling3d_3/split:output:53,Unet_5x2_32F/up_sampling3d_3/split:output:53,Unet_5x2_32F/up_sampling3d_3/split:output:54,Unet_5x2_32F/up_sampling3d_3/split:output:54,Unet_5x2_32F/up_sampling3d_3/split:output:55,Unet_5x2_32F/up_sampling3d_3/split:output:551Unet_5x2_32F/up_sampling3d_3/concat/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????p88@2%
#Unet_5x2_32F/up_sampling3d_3/concat?
.Unet_5x2_32F/up_sampling3d_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.Unet_5x2_32F/up_sampling3d_3/split_1/split_dim?
$Unet_5x2_32F/up_sampling3d_3/split_1Split7Unet_5x2_32F/up_sampling3d_3/split_1/split_dim:output:0,Unet_5x2_32F/up_sampling3d_3/concat:output:0*
T0*?
_output_shapes?
?:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@*
	num_split82&
$Unet_5x2_32F/up_sampling3d_3/split_1?
*Unet_5x2_32F/up_sampling3d_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*Unet_5x2_32F/up_sampling3d_3/concat_1/axis?+
%Unet_5x2_32F/up_sampling3d_3/concat_1ConcatV2-Unet_5x2_32F/up_sampling3d_3/split_1:output:0-Unet_5x2_32F/up_sampling3d_3/split_1:output:0-Unet_5x2_32F/up_sampling3d_3/split_1:output:1-Unet_5x2_32F/up_sampling3d_3/split_1:output:1-Unet_5x2_32F/up_sampling3d_3/split_1:output:2-Unet_5x2_32F/up_sampling3d_3/split_1:output:2-Unet_5x2_32F/up_sampling3d_3/split_1:output:3-Unet_5x2_32F/up_sampling3d_3/split_1:output:3-Unet_5x2_32F/up_sampling3d_3/split_1:output:4-Unet_5x2_32F/up_sampling3d_3/split_1:output:4-Unet_5x2_32F/up_sampling3d_3/split_1:output:5-Unet_5x2_32F/up_sampling3d_3/split_1:output:5-Unet_5x2_32F/up_sampling3d_3/split_1:output:6-Unet_5x2_32F/up_sampling3d_3/split_1:output:6-Unet_5x2_32F/up_sampling3d_3/split_1:output:7-Unet_5x2_32F/up_sampling3d_3/split_1:output:7-Unet_5x2_32F/up_sampling3d_3/split_1:output:8-Unet_5x2_32F/up_sampling3d_3/split_1:output:8-Unet_5x2_32F/up_sampling3d_3/split_1:output:9-Unet_5x2_32F/up_sampling3d_3/split_1:output:9.Unet_5x2_32F/up_sampling3d_3/split_1:output:10.Unet_5x2_32F/up_sampling3d_3/split_1:output:10.Unet_5x2_32F/up_sampling3d_3/split_1:output:11.Unet_5x2_32F/up_sampling3d_3/split_1:output:11.Unet_5x2_32F/up_sampling3d_3/split_1:output:12.Unet_5x2_32F/up_sampling3d_3/split_1:output:12.Unet_5x2_32F/up_sampling3d_3/split_1:output:13.Unet_5x2_32F/up_sampling3d_3/split_1:output:13.Unet_5x2_32F/up_sampling3d_3/split_1:output:14.Unet_5x2_32F/up_sampling3d_3/split_1:output:14.Unet_5x2_32F/up_sampling3d_3/split_1:output:15.Unet_5x2_32F/up_sampling3d_3/split_1:output:15.Unet_5x2_32F/up_sampling3d_3/split_1:output:16.Unet_5x2_32F/up_sampling3d_3/split_1:output:16.Unet_5x2_32F/up_sampling3d_3/split_1:output:17.Unet_5x2_32F/up_sampling3d_3/split_1:output:17.Unet_5x2_32F/up_sampling3d_3/split_1:output:18.Unet_5x2_32F/up_sampling3d_3/split_1:output:18.Unet_5x2_32F/up_sampling3d_3/split_1:output:19.Unet_5x2_32F/up_sampling3d_3/split_1:output:19.Unet_5x2_32F/up_sampling3d_3/split_1:output:20.Unet_5x2_32F/up_sampling3d_3/split_1:output:20.Unet_5x2_32F/up_sampling3d_3/split_1:output:21.Unet_5x2_32F/up_sampling3d_3/split_1:output:21.Unet_5x2_32F/up_sampling3d_3/split_1:output:22.Unet_5x2_32F/up_sampling3d_3/split_1:output:22.Unet_5x2_32F/up_sampling3d_3/split_1:output:23.Unet_5x2_32F/up_sampling3d_3/split_1:output:23.Unet_5x2_32F/up_sampling3d_3/split_1:output:24.Unet_5x2_32F/up_sampling3d_3/split_1:output:24.Unet_5x2_32F/up_sampling3d_3/split_1:output:25.Unet_5x2_32F/up_sampling3d_3/split_1:output:25.Unet_5x2_32F/up_sampling3d_3/split_1:output:26.Unet_5x2_32F/up_sampling3d_3/split_1:output:26.Unet_5x2_32F/up_sampling3d_3/split_1:output:27.Unet_5x2_32F/up_sampling3d_3/split_1:output:27.Unet_5x2_32F/up_sampling3d_3/split_1:output:28.Unet_5x2_32F/up_sampling3d_3/split_1:output:28.Unet_5x2_32F/up_sampling3d_3/split_1:output:29.Unet_5x2_32F/up_sampling3d_3/split_1:output:29.Unet_5x2_32F/up_sampling3d_3/split_1:output:30.Unet_5x2_32F/up_sampling3d_3/split_1:output:30.Unet_5x2_32F/up_sampling3d_3/split_1:output:31.Unet_5x2_32F/up_sampling3d_3/split_1:output:31.Unet_5x2_32F/up_sampling3d_3/split_1:output:32.Unet_5x2_32F/up_sampling3d_3/split_1:output:32.Unet_5x2_32F/up_sampling3d_3/split_1:output:33.Unet_5x2_32F/up_sampling3d_3/split_1:output:33.Unet_5x2_32F/up_sampling3d_3/split_1:output:34.Unet_5x2_32F/up_sampling3d_3/split_1:output:34.Unet_5x2_32F/up_sampling3d_3/split_1:output:35.Unet_5x2_32F/up_sampling3d_3/split_1:output:35.Unet_5x2_32F/up_sampling3d_3/split_1:output:36.Unet_5x2_32F/up_sampling3d_3/split_1:output:36.Unet_5x2_32F/up_sampling3d_3/split_1:output:37.Unet_5x2_32F/up_sampling3d_3/split_1:output:37.Unet_5x2_32F/up_sampling3d_3/split_1:output:38.Unet_5x2_32F/up_sampling3d_3/split_1:output:38.Unet_5x2_32F/up_sampling3d_3/split_1:output:39.Unet_5x2_32F/up_sampling3d_3/split_1:output:39.Unet_5x2_32F/up_sampling3d_3/split_1:output:40.Unet_5x2_32F/up_sampling3d_3/split_1:output:40.Unet_5x2_32F/up_sampling3d_3/split_1:output:41.Unet_5x2_32F/up_sampling3d_3/split_1:output:41.Unet_5x2_32F/up_sampling3d_3/split_1:output:42.Unet_5x2_32F/up_sampling3d_3/split_1:output:42.Unet_5x2_32F/up_sampling3d_3/split_1:output:43.Unet_5x2_32F/up_sampling3d_3/split_1:output:43.Unet_5x2_32F/up_sampling3d_3/split_1:output:44.Unet_5x2_32F/up_sampling3d_3/split_1:output:44.Unet_5x2_32F/up_sampling3d_3/split_1:output:45.Unet_5x2_32F/up_sampling3d_3/split_1:output:45.Unet_5x2_32F/up_sampling3d_3/split_1:output:46.Unet_5x2_32F/up_sampling3d_3/split_1:output:46.Unet_5x2_32F/up_sampling3d_3/split_1:output:47.Unet_5x2_32F/up_sampling3d_3/split_1:output:47.Unet_5x2_32F/up_sampling3d_3/split_1:output:48.Unet_5x2_32F/up_sampling3d_3/split_1:output:48.Unet_5x2_32F/up_sampling3d_3/split_1:output:49.Unet_5x2_32F/up_sampling3d_3/split_1:output:49.Unet_5x2_32F/up_sampling3d_3/split_1:output:50.Unet_5x2_32F/up_sampling3d_3/split_1:output:50.Unet_5x2_32F/up_sampling3d_3/split_1:output:51.Unet_5x2_32F/up_sampling3d_3/split_1:output:51.Unet_5x2_32F/up_sampling3d_3/split_1:output:52.Unet_5x2_32F/up_sampling3d_3/split_1:output:52.Unet_5x2_32F/up_sampling3d_3/split_1:output:53.Unet_5x2_32F/up_sampling3d_3/split_1:output:53.Unet_5x2_32F/up_sampling3d_3/split_1:output:54.Unet_5x2_32F/up_sampling3d_3/split_1:output:54.Unet_5x2_32F/up_sampling3d_3/split_1:output:55.Unet_5x2_32F/up_sampling3d_3/split_1:output:553Unet_5x2_32F/up_sampling3d_3/concat_1/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????pp8@2'
%Unet_5x2_32F/up_sampling3d_3/concat_1?
.Unet_5x2_32F/up_sampling3d_3/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :20
.Unet_5x2_32F/up_sampling3d_3/split_2/split_dim?
$Unet_5x2_32F/up_sampling3d_3/split_2Split7Unet_5x2_32F/up_sampling3d_3/split_2/split_dim:output:0.Unet_5x2_32F/up_sampling3d_3/concat_1:output:0*
T0*?
_output_shapes?
?:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@*
	num_split82&
$Unet_5x2_32F/up_sampling3d_3/split_2?
*Unet_5x2_32F/up_sampling3d_3/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*Unet_5x2_32F/up_sampling3d_3/concat_2/axis?+
%Unet_5x2_32F/up_sampling3d_3/concat_2ConcatV2-Unet_5x2_32F/up_sampling3d_3/split_2:output:0-Unet_5x2_32F/up_sampling3d_3/split_2:output:0-Unet_5x2_32F/up_sampling3d_3/split_2:output:1-Unet_5x2_32F/up_sampling3d_3/split_2:output:1-Unet_5x2_32F/up_sampling3d_3/split_2:output:2-Unet_5x2_32F/up_sampling3d_3/split_2:output:2-Unet_5x2_32F/up_sampling3d_3/split_2:output:3-Unet_5x2_32F/up_sampling3d_3/split_2:output:3-Unet_5x2_32F/up_sampling3d_3/split_2:output:4-Unet_5x2_32F/up_sampling3d_3/split_2:output:4-Unet_5x2_32F/up_sampling3d_3/split_2:output:5-Unet_5x2_32F/up_sampling3d_3/split_2:output:5-Unet_5x2_32F/up_sampling3d_3/split_2:output:6-Unet_5x2_32F/up_sampling3d_3/split_2:output:6-Unet_5x2_32F/up_sampling3d_3/split_2:output:7-Unet_5x2_32F/up_sampling3d_3/split_2:output:7-Unet_5x2_32F/up_sampling3d_3/split_2:output:8-Unet_5x2_32F/up_sampling3d_3/split_2:output:8-Unet_5x2_32F/up_sampling3d_3/split_2:output:9-Unet_5x2_32F/up_sampling3d_3/split_2:output:9.Unet_5x2_32F/up_sampling3d_3/split_2:output:10.Unet_5x2_32F/up_sampling3d_3/split_2:output:10.Unet_5x2_32F/up_sampling3d_3/split_2:output:11.Unet_5x2_32F/up_sampling3d_3/split_2:output:11.Unet_5x2_32F/up_sampling3d_3/split_2:output:12.Unet_5x2_32F/up_sampling3d_3/split_2:output:12.Unet_5x2_32F/up_sampling3d_3/split_2:output:13.Unet_5x2_32F/up_sampling3d_3/split_2:output:13.Unet_5x2_32F/up_sampling3d_3/split_2:output:14.Unet_5x2_32F/up_sampling3d_3/split_2:output:14.Unet_5x2_32F/up_sampling3d_3/split_2:output:15.Unet_5x2_32F/up_sampling3d_3/split_2:output:15.Unet_5x2_32F/up_sampling3d_3/split_2:output:16.Unet_5x2_32F/up_sampling3d_3/split_2:output:16.Unet_5x2_32F/up_sampling3d_3/split_2:output:17.Unet_5x2_32F/up_sampling3d_3/split_2:output:17.Unet_5x2_32F/up_sampling3d_3/split_2:output:18.Unet_5x2_32F/up_sampling3d_3/split_2:output:18.Unet_5x2_32F/up_sampling3d_3/split_2:output:19.Unet_5x2_32F/up_sampling3d_3/split_2:output:19.Unet_5x2_32F/up_sampling3d_3/split_2:output:20.Unet_5x2_32F/up_sampling3d_3/split_2:output:20.Unet_5x2_32F/up_sampling3d_3/split_2:output:21.Unet_5x2_32F/up_sampling3d_3/split_2:output:21.Unet_5x2_32F/up_sampling3d_3/split_2:output:22.Unet_5x2_32F/up_sampling3d_3/split_2:output:22.Unet_5x2_32F/up_sampling3d_3/split_2:output:23.Unet_5x2_32F/up_sampling3d_3/split_2:output:23.Unet_5x2_32F/up_sampling3d_3/split_2:output:24.Unet_5x2_32F/up_sampling3d_3/split_2:output:24.Unet_5x2_32F/up_sampling3d_3/split_2:output:25.Unet_5x2_32F/up_sampling3d_3/split_2:output:25.Unet_5x2_32F/up_sampling3d_3/split_2:output:26.Unet_5x2_32F/up_sampling3d_3/split_2:output:26.Unet_5x2_32F/up_sampling3d_3/split_2:output:27.Unet_5x2_32F/up_sampling3d_3/split_2:output:27.Unet_5x2_32F/up_sampling3d_3/split_2:output:28.Unet_5x2_32F/up_sampling3d_3/split_2:output:28.Unet_5x2_32F/up_sampling3d_3/split_2:output:29.Unet_5x2_32F/up_sampling3d_3/split_2:output:29.Unet_5x2_32F/up_sampling3d_3/split_2:output:30.Unet_5x2_32F/up_sampling3d_3/split_2:output:30.Unet_5x2_32F/up_sampling3d_3/split_2:output:31.Unet_5x2_32F/up_sampling3d_3/split_2:output:31.Unet_5x2_32F/up_sampling3d_3/split_2:output:32.Unet_5x2_32F/up_sampling3d_3/split_2:output:32.Unet_5x2_32F/up_sampling3d_3/split_2:output:33.Unet_5x2_32F/up_sampling3d_3/split_2:output:33.Unet_5x2_32F/up_sampling3d_3/split_2:output:34.Unet_5x2_32F/up_sampling3d_3/split_2:output:34.Unet_5x2_32F/up_sampling3d_3/split_2:output:35.Unet_5x2_32F/up_sampling3d_3/split_2:output:35.Unet_5x2_32F/up_sampling3d_3/split_2:output:36.Unet_5x2_32F/up_sampling3d_3/split_2:output:36.Unet_5x2_32F/up_sampling3d_3/split_2:output:37.Unet_5x2_32F/up_sampling3d_3/split_2:output:37.Unet_5x2_32F/up_sampling3d_3/split_2:output:38.Unet_5x2_32F/up_sampling3d_3/split_2:output:38.Unet_5x2_32F/up_sampling3d_3/split_2:output:39.Unet_5x2_32F/up_sampling3d_3/split_2:output:39.Unet_5x2_32F/up_sampling3d_3/split_2:output:40.Unet_5x2_32F/up_sampling3d_3/split_2:output:40.Unet_5x2_32F/up_sampling3d_3/split_2:output:41.Unet_5x2_32F/up_sampling3d_3/split_2:output:41.Unet_5x2_32F/up_sampling3d_3/split_2:output:42.Unet_5x2_32F/up_sampling3d_3/split_2:output:42.Unet_5x2_32F/up_sampling3d_3/split_2:output:43.Unet_5x2_32F/up_sampling3d_3/split_2:output:43.Unet_5x2_32F/up_sampling3d_3/split_2:output:44.Unet_5x2_32F/up_sampling3d_3/split_2:output:44.Unet_5x2_32F/up_sampling3d_3/split_2:output:45.Unet_5x2_32F/up_sampling3d_3/split_2:output:45.Unet_5x2_32F/up_sampling3d_3/split_2:output:46.Unet_5x2_32F/up_sampling3d_3/split_2:output:46.Unet_5x2_32F/up_sampling3d_3/split_2:output:47.Unet_5x2_32F/up_sampling3d_3/split_2:output:47.Unet_5x2_32F/up_sampling3d_3/split_2:output:48.Unet_5x2_32F/up_sampling3d_3/split_2:output:48.Unet_5x2_32F/up_sampling3d_3/split_2:output:49.Unet_5x2_32F/up_sampling3d_3/split_2:output:49.Unet_5x2_32F/up_sampling3d_3/split_2:output:50.Unet_5x2_32F/up_sampling3d_3/split_2:output:50.Unet_5x2_32F/up_sampling3d_3/split_2:output:51.Unet_5x2_32F/up_sampling3d_3/split_2:output:51.Unet_5x2_32F/up_sampling3d_3/split_2:output:52.Unet_5x2_32F/up_sampling3d_3/split_2:output:52.Unet_5x2_32F/up_sampling3d_3/split_2:output:53.Unet_5x2_32F/up_sampling3d_3/split_2:output:53.Unet_5x2_32F/up_sampling3d_3/split_2:output:54.Unet_5x2_32F/up_sampling3d_3/split_2:output:54.Unet_5x2_32F/up_sampling3d_3/split_2:output:55.Unet_5x2_32F/up_sampling3d_3/split_2:output:553Unet_5x2_32F/up_sampling3d_3/concat_2/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????ppp@2'
%Unet_5x2_32F/up_sampling3d_3/concat_2?
&Unet_5x2_32F/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&Unet_5x2_32F/concatenate_3/concat/axis?
!Unet_5x2_32F/concatenate_3/concatConcatV2.Unet_5x2_32F/up_sampling3d_3/concat_2:output:0(Unet_5x2_32F/conv3d_1/Relu:activations:0/Unet_5x2_32F/concatenate_3/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????ppp?2#
!Unet_5x2_32F/concatenate_3/concat?
,Unet_5x2_32F/conv3d_16/Conv3D/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_16_conv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02.
,Unet_5x2_32F/conv3d_16/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_16/Conv3DConv3D*Unet_5x2_32F/concatenate_3/concat:output:04Unet_5x2_32F/conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_16/Conv3D?
-Unet_5x2_32F/conv3d_16/BiasAdd/ReadVariableOpReadVariableOp6unet_5x2_32f_conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Unet_5x2_32F/conv3d_16/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_16/BiasAddBiasAdd&Unet_5x2_32F/conv3d_16/Conv3D:output:05Unet_5x2_32F/conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2 
Unet_5x2_32F/conv3d_16/BiasAdd?
Unet_5x2_32F/conv3d_16/ReluRelu'Unet_5x2_32F/conv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
Unet_5x2_32F/conv3d_16/Relu?
,Unet_5x2_32F/conv3d_17/Conv3D/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02.
,Unet_5x2_32F/conv3d_17/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_17/Conv3DConv3D)Unet_5x2_32F/conv3d_16/Relu:activations:04Unet_5x2_32F/conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_17/Conv3D?
-Unet_5x2_32F/conv3d_17/BiasAdd/ReadVariableOpReadVariableOp6unet_5x2_32f_conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Unet_5x2_32F/conv3d_17/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_17/BiasAddBiasAdd&Unet_5x2_32F/conv3d_17/Conv3D:output:05Unet_5x2_32F/conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2 
Unet_5x2_32F/conv3d_17/BiasAdd?
Unet_5x2_32F/conv3d_17/ReluRelu'Unet_5x2_32F/conv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
Unet_5x2_32F/conv3d_17/Relu?
,Unet_5x2_32F/conv3d_18/Conv3D/ReadVariableOpReadVariableOp5unet_5x2_32f_conv3d_18_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype02.
,Unet_5x2_32F/conv3d_18/Conv3D/ReadVariableOp?
Unet_5x2_32F/conv3d_18/Conv3DConv3D)Unet_5x2_32F/conv3d_17/Relu:activations:04Unet_5x2_32F/conv3d_18/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp*
paddingSAME*
strides	
2
Unet_5x2_32F/conv3d_18/Conv3D?
-Unet_5x2_32F/conv3d_18/BiasAdd/ReadVariableOpReadVariableOp6unet_5x2_32f_conv3d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-Unet_5x2_32F/conv3d_18/BiasAdd/ReadVariableOp?
Unet_5x2_32F/conv3d_18/BiasAddBiasAdd&Unet_5x2_32F/conv3d_18/Conv3D:output:05Unet_5x2_32F/conv3d_18/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp2 
Unet_5x2_32F/conv3d_18/BiasAdd?
Unet_5x2_32F/conv3d_18/SigmoidSigmoid'Unet_5x2_32F/conv3d_18/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp2 
Unet_5x2_32F/conv3d_18/Sigmoid?
IdentityIdentity"Unet_5x2_32F/conv3d_18/Sigmoid:y:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

Identity?
NoOpNoOp+^Unet_5x2_32F/conv3d/BiasAdd/ReadVariableOp*^Unet_5x2_32F/conv3d/Conv3D/ReadVariableOp-^Unet_5x2_32F/conv3d_1/BiasAdd/ReadVariableOp,^Unet_5x2_32F/conv3d_1/Conv3D/ReadVariableOp.^Unet_5x2_32F/conv3d_10/BiasAdd/ReadVariableOp-^Unet_5x2_32F/conv3d_10/Conv3D/ReadVariableOp.^Unet_5x2_32F/conv3d_11/BiasAdd/ReadVariableOp-^Unet_5x2_32F/conv3d_11/Conv3D/ReadVariableOp.^Unet_5x2_32F/conv3d_12/BiasAdd/ReadVariableOp-^Unet_5x2_32F/conv3d_12/Conv3D/ReadVariableOp.^Unet_5x2_32F/conv3d_13/BiasAdd/ReadVariableOp-^Unet_5x2_32F/conv3d_13/Conv3D/ReadVariableOp.^Unet_5x2_32F/conv3d_14/BiasAdd/ReadVariableOp-^Unet_5x2_32F/conv3d_14/Conv3D/ReadVariableOp.^Unet_5x2_32F/conv3d_15/BiasAdd/ReadVariableOp-^Unet_5x2_32F/conv3d_15/Conv3D/ReadVariableOp.^Unet_5x2_32F/conv3d_16/BiasAdd/ReadVariableOp-^Unet_5x2_32F/conv3d_16/Conv3D/ReadVariableOp.^Unet_5x2_32F/conv3d_17/BiasAdd/ReadVariableOp-^Unet_5x2_32F/conv3d_17/Conv3D/ReadVariableOp.^Unet_5x2_32F/conv3d_18/BiasAdd/ReadVariableOp-^Unet_5x2_32F/conv3d_18/Conv3D/ReadVariableOp-^Unet_5x2_32F/conv3d_2/BiasAdd/ReadVariableOp,^Unet_5x2_32F/conv3d_2/Conv3D/ReadVariableOp-^Unet_5x2_32F/conv3d_3/BiasAdd/ReadVariableOp,^Unet_5x2_32F/conv3d_3/Conv3D/ReadVariableOp-^Unet_5x2_32F/conv3d_4/BiasAdd/ReadVariableOp,^Unet_5x2_32F/conv3d_4/Conv3D/ReadVariableOp-^Unet_5x2_32F/conv3d_5/BiasAdd/ReadVariableOp,^Unet_5x2_32F/conv3d_5/Conv3D/ReadVariableOp-^Unet_5x2_32F/conv3d_6/BiasAdd/ReadVariableOp,^Unet_5x2_32F/conv3d_6/Conv3D/ReadVariableOp-^Unet_5x2_32F/conv3d_7/BiasAdd/ReadVariableOp,^Unet_5x2_32F/conv3d_7/Conv3D/ReadVariableOp-^Unet_5x2_32F/conv3d_8/BiasAdd/ReadVariableOp,^Unet_5x2_32F/conv3d_8/Conv3D/ReadVariableOp-^Unet_5x2_32F/conv3d_9/BiasAdd/ReadVariableOp,^Unet_5x2_32F/conv3d_9/Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*Unet_5x2_32F/conv3d/BiasAdd/ReadVariableOp*Unet_5x2_32F/conv3d/BiasAdd/ReadVariableOp2V
)Unet_5x2_32F/conv3d/Conv3D/ReadVariableOp)Unet_5x2_32F/conv3d/Conv3D/ReadVariableOp2\
,Unet_5x2_32F/conv3d_1/BiasAdd/ReadVariableOp,Unet_5x2_32F/conv3d_1/BiasAdd/ReadVariableOp2Z
+Unet_5x2_32F/conv3d_1/Conv3D/ReadVariableOp+Unet_5x2_32F/conv3d_1/Conv3D/ReadVariableOp2^
-Unet_5x2_32F/conv3d_10/BiasAdd/ReadVariableOp-Unet_5x2_32F/conv3d_10/BiasAdd/ReadVariableOp2\
,Unet_5x2_32F/conv3d_10/Conv3D/ReadVariableOp,Unet_5x2_32F/conv3d_10/Conv3D/ReadVariableOp2^
-Unet_5x2_32F/conv3d_11/BiasAdd/ReadVariableOp-Unet_5x2_32F/conv3d_11/BiasAdd/ReadVariableOp2\
,Unet_5x2_32F/conv3d_11/Conv3D/ReadVariableOp,Unet_5x2_32F/conv3d_11/Conv3D/ReadVariableOp2^
-Unet_5x2_32F/conv3d_12/BiasAdd/ReadVariableOp-Unet_5x2_32F/conv3d_12/BiasAdd/ReadVariableOp2\
,Unet_5x2_32F/conv3d_12/Conv3D/ReadVariableOp,Unet_5x2_32F/conv3d_12/Conv3D/ReadVariableOp2^
-Unet_5x2_32F/conv3d_13/BiasAdd/ReadVariableOp-Unet_5x2_32F/conv3d_13/BiasAdd/ReadVariableOp2\
,Unet_5x2_32F/conv3d_13/Conv3D/ReadVariableOp,Unet_5x2_32F/conv3d_13/Conv3D/ReadVariableOp2^
-Unet_5x2_32F/conv3d_14/BiasAdd/ReadVariableOp-Unet_5x2_32F/conv3d_14/BiasAdd/ReadVariableOp2\
,Unet_5x2_32F/conv3d_14/Conv3D/ReadVariableOp,Unet_5x2_32F/conv3d_14/Conv3D/ReadVariableOp2^
-Unet_5x2_32F/conv3d_15/BiasAdd/ReadVariableOp-Unet_5x2_32F/conv3d_15/BiasAdd/ReadVariableOp2\
,Unet_5x2_32F/conv3d_15/Conv3D/ReadVariableOp,Unet_5x2_32F/conv3d_15/Conv3D/ReadVariableOp2^
-Unet_5x2_32F/conv3d_16/BiasAdd/ReadVariableOp-Unet_5x2_32F/conv3d_16/BiasAdd/ReadVariableOp2\
,Unet_5x2_32F/conv3d_16/Conv3D/ReadVariableOp,Unet_5x2_32F/conv3d_16/Conv3D/ReadVariableOp2^
-Unet_5x2_32F/conv3d_17/BiasAdd/ReadVariableOp-Unet_5x2_32F/conv3d_17/BiasAdd/ReadVariableOp2\
,Unet_5x2_32F/conv3d_17/Conv3D/ReadVariableOp,Unet_5x2_32F/conv3d_17/Conv3D/ReadVariableOp2^
-Unet_5x2_32F/conv3d_18/BiasAdd/ReadVariableOp-Unet_5x2_32F/conv3d_18/BiasAdd/ReadVariableOp2\
,Unet_5x2_32F/conv3d_18/Conv3D/ReadVariableOp,Unet_5x2_32F/conv3d_18/Conv3D/ReadVariableOp2\
,Unet_5x2_32F/conv3d_2/BiasAdd/ReadVariableOp,Unet_5x2_32F/conv3d_2/BiasAdd/ReadVariableOp2Z
+Unet_5x2_32F/conv3d_2/Conv3D/ReadVariableOp+Unet_5x2_32F/conv3d_2/Conv3D/ReadVariableOp2\
,Unet_5x2_32F/conv3d_3/BiasAdd/ReadVariableOp,Unet_5x2_32F/conv3d_3/BiasAdd/ReadVariableOp2Z
+Unet_5x2_32F/conv3d_3/Conv3D/ReadVariableOp+Unet_5x2_32F/conv3d_3/Conv3D/ReadVariableOp2\
,Unet_5x2_32F/conv3d_4/BiasAdd/ReadVariableOp,Unet_5x2_32F/conv3d_4/BiasAdd/ReadVariableOp2Z
+Unet_5x2_32F/conv3d_4/Conv3D/ReadVariableOp+Unet_5x2_32F/conv3d_4/Conv3D/ReadVariableOp2\
,Unet_5x2_32F/conv3d_5/BiasAdd/ReadVariableOp,Unet_5x2_32F/conv3d_5/BiasAdd/ReadVariableOp2Z
+Unet_5x2_32F/conv3d_5/Conv3D/ReadVariableOp+Unet_5x2_32F/conv3d_5/Conv3D/ReadVariableOp2\
,Unet_5x2_32F/conv3d_6/BiasAdd/ReadVariableOp,Unet_5x2_32F/conv3d_6/BiasAdd/ReadVariableOp2Z
+Unet_5x2_32F/conv3d_6/Conv3D/ReadVariableOp+Unet_5x2_32F/conv3d_6/Conv3D/ReadVariableOp2\
,Unet_5x2_32F/conv3d_7/BiasAdd/ReadVariableOp,Unet_5x2_32F/conv3d_7/BiasAdd/ReadVariableOp2Z
+Unet_5x2_32F/conv3d_7/Conv3D/ReadVariableOp+Unet_5x2_32F/conv3d_7/Conv3D/ReadVariableOp2\
,Unet_5x2_32F/conv3d_8/BiasAdd/ReadVariableOp,Unet_5x2_32F/conv3d_8/BiasAdd/ReadVariableOp2Z
+Unet_5x2_32F/conv3d_8/Conv3D/ReadVariableOp+Unet_5x2_32F/conv3d_8/Conv3D/ReadVariableOp2\
,Unet_5x2_32F/conv3d_9/BiasAdd/ReadVariableOp,Unet_5x2_32F/conv3d_9/BiasAdd/ReadVariableOp2Z
+Unet_5x2_32F/conv3d_9/Conv3D/ReadVariableOp+Unet_5x2_32F/conv3d_9/Conv3D/ReadVariableOp:\ X
3
_output_shapes!
:?????????ppp
!
_user_specified_name	input_1
?
e
I__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1992

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
@__inference_conv3d_layer_call_and_return_conditional_losses_4921

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp *
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp 2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp 2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????ppp 2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp
 
_user_specified_nameinputs
?
H
,__inference_up_sampling3d_layer_call_fn_5149

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_up_sampling3d_layer_call_and_return_conditional_losses_22372
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
+__inference_Unet_5x2_32F_layer_call_fn_4829

inputs%
unknown: 
	unknown_0: '
	unknown_1: @
	unknown_2:@'
	unknown_3:@@
	unknown_4:@(
	unknown_5:@?
	unknown_6:	?)
	unknown_7:??
	unknown_8:	?)
	unknown_9:??

unknown_10:	?*

unknown_11:??

unknown_12:	?*

unknown_13:??

unknown_14:	?*

unknown_15:??

unknown_16:	?*

unknown_17:??

unknown_18:	?*

unknown_19:??

unknown_20:	?*

unknown_21:??

unknown_22:	?*

unknown_23:??

unknown_24:	?*

unknown_25:??

unknown_26:	?)

unknown_27:?@

unknown_28:@(

unknown_29:@@

unknown_30:@)

unknown_31:?@

unknown_32:@(

unknown_33:@@

unknown_34:@(

unknown_35:@

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_27682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????ppp
 
_user_specified_nameinputs
?
o
E__inference_concatenate_layer_call_and_return_conditional_losses_2246

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
(__inference_conv3d_13_layer_call_fn_5315

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_13_layer_call_and_return_conditional_losses_23762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?f
e
I__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_5651

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@*
	num_split82
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15split:output:16split:output:16split:output:17split:output:17split:output:18split:output:18split:output:19split:output:19split:output:20split:output:20split:output:21split:output:21split:output:22split:output:22split:output:23split:output:23split:output:24split:output:24split:output:25split:output:25split:output:26split:output:26split:output:27split:output:27split:output:28split:output:28split:output:29split:output:29split:output:30split:output:30split:output:31split:output:31split:output:32split:output:32split:output:33split:output:33split:output:34split:output:34split:output:35split:output:35split:output:36split:output:36split:output:37split:output:37split:output:38split:output:38split:output:39split:output:39split:output:40split:output:40split:output:41split:output:41split:output:42split:output:42split:output:43split:output:43split:output:44split:output:44split:output:45split:output:45split:output:46split:output:46split:output:47split:output:47split:output:48split:output:48split:output:49split:output:49split:output:50split:output:50split:output:51split:output:51split:output:52split:output:52split:output:53split:output:53split:output:54split:output:54split:output:55split:output:55concat/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????p88@2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@*
	num_split82	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13split_1:output:14split_1:output:14split_1:output:15split_1:output:15split_1:output:16split_1:output:16split_1:output:17split_1:output:17split_1:output:18split_1:output:18split_1:output:19split_1:output:19split_1:output:20split_1:output:20split_1:output:21split_1:output:21split_1:output:22split_1:output:22split_1:output:23split_1:output:23split_1:output:24split_1:output:24split_1:output:25split_1:output:25split_1:output:26split_1:output:26split_1:output:27split_1:output:27split_1:output:28split_1:output:28split_1:output:29split_1:output:29split_1:output:30split_1:output:30split_1:output:31split_1:output:31split_1:output:32split_1:output:32split_1:output:33split_1:output:33split_1:output:34split_1:output:34split_1:output:35split_1:output:35split_1:output:36split_1:output:36split_1:output:37split_1:output:37split_1:output:38split_1:output:38split_1:output:39split_1:output:39split_1:output:40split_1:output:40split_1:output:41split_1:output:41split_1:output:42split_1:output:42split_1:output:43split_1:output:43split_1:output:44split_1:output:44split_1:output:45split_1:output:45split_1:output:46split_1:output:46split_1:output:47split_1:output:47split_1:output:48split_1:output:48split_1:output:49split_1:output:49split_1:output:50split_1:output:50split_1:output:51split_1:output:51split_1:output:52split_1:output:52split_1:output:53split_1:output:53split_1:output:54split_1:output:54split_1:output:55split_1:output:55concat_1/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????pp8@2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@*
	num_split82	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13split_2:output:14split_2:output:14split_2:output:15split_2:output:15split_2:output:16split_2:output:16split_2:output:17split_2:output:17split_2:output:18split_2:output:18split_2:output:19split_2:output:19split_2:output:20split_2:output:20split_2:output:21split_2:output:21split_2:output:22split_2:output:22split_2:output:23split_2:output:23split_2:output:24split_2:output:24split_2:output:25split_2:output:25split_2:output:26split_2:output:26split_2:output:27split_2:output:27split_2:output:28split_2:output:28split_2:output:29split_2:output:29split_2:output:30split_2:output:30split_2:output:31split_2:output:31split_2:output:32split_2:output:32split_2:output:33split_2:output:33split_2:output:34split_2:output:34split_2:output:35split_2:output:35split_2:output:36split_2:output:36split_2:output:37split_2:output:37split_2:output:38split_2:output:38split_2:output:39split_2:output:39split_2:output:40split_2:output:40split_2:output:41split_2:output:41split_2:output:42split_2:output:42split_2:output:43split_2:output:43split_2:output:44split_2:output:44split_2:output:45split_2:output:45split_2:output:46split_2:output:46split_2:output:47split_2:output:47split_2:output:48split_2:output:48split_2:output:49split_2:output:49split_2:output:50split_2:output:50split_2:output:51split_2:output:51split_2:output:52split_2:output:52split_2:output:53split_2:output:53split_2:output:54split_2:output:54split_2:output:55split_2:output:55concat_2/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????ppp@2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:?????????ppp@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????888@:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
?
C__inference_conv3d_13_layer_call_and_return_conditional_losses_5306

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
B__inference_conv3d_4_layer_call_and_return_conditional_losses_5001

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
??
?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_3554
input_1)
conv3d_3446: 
conv3d_3448: +
conv3d_1_3451: @
conv3d_1_3453:@+
conv3d_2_3457:@@
conv3d_2_3459:@,
conv3d_3_3462:@?
conv3d_3_3464:	?-
conv3d_4_3468:??
conv3d_4_3470:	?-
conv3d_5_3473:??
conv3d_5_3475:	?-
conv3d_6_3479:??
conv3d_6_3481:	?-
conv3d_7_3484:??
conv3d_7_3486:	?-
conv3d_8_3490:??
conv3d_8_3492:	?-
conv3d_9_3495:??
conv3d_9_3497:	?.
conv3d_10_3502:??
conv3d_10_3504:	?.
conv3d_11_3507:??
conv3d_11_3509:	?.
conv3d_12_3514:??
conv3d_12_3516:	?.
conv3d_13_3519:??
conv3d_13_3521:	?-
conv3d_14_3526:?@
conv3d_14_3528:@,
conv3d_15_3531:@@
conv3d_15_3533:@-
conv3d_16_3538:?@
conv3d_16_3540:@,
conv3d_17_3543:@@
conv3d_17_3545:@,
conv3d_18_3548:@
conv3d_18_3550:
identity??conv3d/StatefulPartitionedCall? conv3d_1/StatefulPartitionedCall?!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall?!conv3d_12/StatefulPartitionedCall?!conv3d_13/StatefulPartitionedCall?!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall?!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall?!conv3d_18/StatefulPartitionedCall? conv3d_2/StatefulPartitionedCall? conv3d_3/StatefulPartitionedCall? conv3d_4/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall? conv3d_7/StatefulPartitionedCall? conv3d_8/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall?
conv3d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_3446conv3d_3448*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_conv3d_layer_call_and_return_conditional_losses_20402 
conv3d/StatefulPartitionedCall?
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall'conv3d/StatefulPartitionedCall:output:0conv3d_1_3451conv3d_1_3453*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_1_layer_call_and_return_conditional_losses_20572"
 conv3d_1/StatefulPartitionedCall?
max_pooling3d/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_max_pooling3d_layer_call_and_return_conditional_losses_19802
max_pooling3d/PartitionedCall?
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling3d/PartitionedCall:output:0conv3d_2_3457conv3d_2_3459*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_2_layer_call_and_return_conditional_losses_20752"
 conv3d_2/StatefulPartitionedCall?
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0conv3d_3_3462conv3d_3_3464*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_3_layer_call_and_return_conditional_losses_20922"
 conv3d_3/StatefulPartitionedCall?
max_pooling3d_1/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_19922!
max_pooling3d_1/PartitionedCall?
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_1/PartitionedCall:output:0conv3d_4_3468conv3d_4_3470*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_4_layer_call_and_return_conditional_losses_21102"
 conv3d_4/StatefulPartitionedCall?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0conv3d_5_3473conv3d_5_3475*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_5_layer_call_and_return_conditional_losses_21272"
 conv3d_5/StatefulPartitionedCall?
max_pooling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_20042!
max_pooling3d_2/PartitionedCall?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv3d_6_3479conv3d_6_3481*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_6_layer_call_and_return_conditional_losses_21452"
 conv3d_6/StatefulPartitionedCall?
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0conv3d_7_3484conv3d_7_3486*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_7_layer_call_and_return_conditional_losses_21622"
 conv3d_7/StatefulPartitionedCall?
max_pooling3d_3/PartitionedCallPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_20162!
max_pooling3d_3/PartitionedCall?
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_3/PartitionedCall:output:0conv3d_8_3490conv3d_8_3492*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_8_layer_call_and_return_conditional_losses_21802"
 conv3d_8/StatefulPartitionedCall?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCall)conv3d_8/StatefulPartitionedCall:output:0conv3d_9_3495conv3d_9_3497*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_9_layer_call_and_return_conditional_losses_21972"
 conv3d_9/StatefulPartitionedCall?
up_sampling3d/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_up_sampling3d_layer_call_and_return_conditional_losses_22372
up_sampling3d/PartitionedCall?
concatenate/PartitionedCallPartitionedCall&up_sampling3d/PartitionedCall:output:0)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_22462
concatenate/PartitionedCall?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv3d_10_3502conv3d_10_3504*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_10_layer_call_and_return_conditional_losses_22592#
!conv3d_10/StatefulPartitionedCall?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0conv3d_11_3507conv3d_11_3509*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_11_layer_call_and_return_conditional_losses_22762#
!conv3d_11/StatefulPartitionedCall?
up_sampling3d_1/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_23372!
up_sampling3d_1/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall(up_sampling3d_1/PartitionedCall:output:0)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_23462
concatenate_1/PartitionedCall?
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv3d_12_3514conv3d_12_3516*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_12_layer_call_and_return_conditional_losses_23592#
!conv3d_12/StatefulPartitionedCall?
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0conv3d_13_3519conv3d_13_3521*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_13_layer_call_and_return_conditional_losses_23762#
!conv3d_13/StatefulPartitionedCall?
up_sampling3d_2/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_24792!
up_sampling3d_2/PartitionedCall?
concatenate_2/PartitionedCallPartitionedCall(up_sampling3d_2/PartitionedCall:output:0)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_24882
concatenate_2/PartitionedCall?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv3d_14_3526conv3d_14_3528*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_14_layer_call_and_return_conditional_losses_25012#
!conv3d_14/StatefulPartitionedCall?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0conv3d_15_3531conv3d_15_3533*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_15_layer_call_and_return_conditional_losses_25182#
!conv3d_15/StatefulPartitionedCall?
up_sampling3d_3/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_27052!
up_sampling3d_3/PartitionedCall?
concatenate_3/PartitionedCallPartitionedCall(up_sampling3d_3/PartitionedCall:output:0)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????ppp?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_27142
concatenate_3/PartitionedCall?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv3d_16_3538conv3d_16_3540*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_16_layer_call_and_return_conditional_losses_27272#
!conv3d_16/StatefulPartitionedCall?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0conv3d_17_3543conv3d_17_3545*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_17_layer_call_and_return_conditional_losses_27442#
!conv3d_17/StatefulPartitionedCall?
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0conv3d_18_3548conv3d_18_3550*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_18_layer_call_and_return_conditional_losses_27612#
!conv3d_18/StatefulPartitionedCall?
IdentityIdentity*conv3d_18/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

Identity?
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall"^conv3d_18/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:\ X
3
_output_shapes!
:?????????ppp
!
_user_specified_name	input_1
?
?
B__inference_conv3d_2_layer_call_and_return_conditional_losses_2075

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????888@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????888@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
?
(__inference_conv3d_18_layer_call_fn_5729

inputs%
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_18_layer_call_and_return_conditional_losses_27612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????ppp@
 
_user_specified_nameinputs
?
?
'__inference_conv3d_4_layer_call_fn_5010

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_4_layer_call_and_return_conditional_losses_21102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
(__inference_conv3d_17_layer_call_fn_5709

inputs%
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_17_layer_call_and_return_conditional_losses_27442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp@2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????ppp@
 
_user_specified_nameinputs
?
q
E__inference_concatenate_layer_call_and_return_conditional_losses_5156
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:??????????:^ Z
4
_output_shapes"
 :??????????
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :??????????
"
_user_specified_name
inputs/1
??
?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_3665
input_1)
conv3d_3557: 
conv3d_3559: +
conv3d_1_3562: @
conv3d_1_3564:@+
conv3d_2_3568:@@
conv3d_2_3570:@,
conv3d_3_3573:@?
conv3d_3_3575:	?-
conv3d_4_3579:??
conv3d_4_3581:	?-
conv3d_5_3584:??
conv3d_5_3586:	?-
conv3d_6_3590:??
conv3d_6_3592:	?-
conv3d_7_3595:??
conv3d_7_3597:	?-
conv3d_8_3601:??
conv3d_8_3603:	?-
conv3d_9_3606:??
conv3d_9_3608:	?.
conv3d_10_3613:??
conv3d_10_3615:	?.
conv3d_11_3618:??
conv3d_11_3620:	?.
conv3d_12_3625:??
conv3d_12_3627:	?.
conv3d_13_3630:??
conv3d_13_3632:	?-
conv3d_14_3637:?@
conv3d_14_3639:@,
conv3d_15_3642:@@
conv3d_15_3644:@-
conv3d_16_3649:?@
conv3d_16_3651:@,
conv3d_17_3654:@@
conv3d_17_3656:@,
conv3d_18_3659:@
conv3d_18_3661:
identity??conv3d/StatefulPartitionedCall? conv3d_1/StatefulPartitionedCall?!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall?!conv3d_12/StatefulPartitionedCall?!conv3d_13/StatefulPartitionedCall?!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall?!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall?!conv3d_18/StatefulPartitionedCall? conv3d_2/StatefulPartitionedCall? conv3d_3/StatefulPartitionedCall? conv3d_4/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall? conv3d_7/StatefulPartitionedCall? conv3d_8/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall?
conv3d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv3d_3557conv3d_3559*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_conv3d_layer_call_and_return_conditional_losses_20402 
conv3d/StatefulPartitionedCall?
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall'conv3d/StatefulPartitionedCall:output:0conv3d_1_3562conv3d_1_3564*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_1_layer_call_and_return_conditional_losses_20572"
 conv3d_1/StatefulPartitionedCall?
max_pooling3d/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_max_pooling3d_layer_call_and_return_conditional_losses_19802
max_pooling3d/PartitionedCall?
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling3d/PartitionedCall:output:0conv3d_2_3568conv3d_2_3570*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_2_layer_call_and_return_conditional_losses_20752"
 conv3d_2/StatefulPartitionedCall?
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0conv3d_3_3573conv3d_3_3575*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_3_layer_call_and_return_conditional_losses_20922"
 conv3d_3/StatefulPartitionedCall?
max_pooling3d_1/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_19922!
max_pooling3d_1/PartitionedCall?
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_1/PartitionedCall:output:0conv3d_4_3579conv3d_4_3581*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_4_layer_call_and_return_conditional_losses_21102"
 conv3d_4/StatefulPartitionedCall?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0conv3d_5_3584conv3d_5_3586*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_5_layer_call_and_return_conditional_losses_21272"
 conv3d_5/StatefulPartitionedCall?
max_pooling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_20042!
max_pooling3d_2/PartitionedCall?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv3d_6_3590conv3d_6_3592*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_6_layer_call_and_return_conditional_losses_21452"
 conv3d_6/StatefulPartitionedCall?
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0conv3d_7_3595conv3d_7_3597*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_7_layer_call_and_return_conditional_losses_21622"
 conv3d_7/StatefulPartitionedCall?
max_pooling3d_3/PartitionedCallPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_20162!
max_pooling3d_3/PartitionedCall?
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_3/PartitionedCall:output:0conv3d_8_3601conv3d_8_3603*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_8_layer_call_and_return_conditional_losses_21802"
 conv3d_8/StatefulPartitionedCall?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCall)conv3d_8/StatefulPartitionedCall:output:0conv3d_9_3606conv3d_9_3608*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_9_layer_call_and_return_conditional_losses_21972"
 conv3d_9/StatefulPartitionedCall?
up_sampling3d/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_up_sampling3d_layer_call_and_return_conditional_losses_22372
up_sampling3d/PartitionedCall?
concatenate/PartitionedCallPartitionedCall&up_sampling3d/PartitionedCall:output:0)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_22462
concatenate/PartitionedCall?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv3d_10_3613conv3d_10_3615*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_10_layer_call_and_return_conditional_losses_22592#
!conv3d_10/StatefulPartitionedCall?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0conv3d_11_3618conv3d_11_3620*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_11_layer_call_and_return_conditional_losses_22762#
!conv3d_11/StatefulPartitionedCall?
up_sampling3d_1/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_23372!
up_sampling3d_1/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall(up_sampling3d_1/PartitionedCall:output:0)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_23462
concatenate_1/PartitionedCall?
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv3d_12_3625conv3d_12_3627*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_12_layer_call_and_return_conditional_losses_23592#
!conv3d_12/StatefulPartitionedCall?
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0conv3d_13_3630conv3d_13_3632*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_13_layer_call_and_return_conditional_losses_23762#
!conv3d_13/StatefulPartitionedCall?
up_sampling3d_2/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_24792!
up_sampling3d_2/PartitionedCall?
concatenate_2/PartitionedCallPartitionedCall(up_sampling3d_2/PartitionedCall:output:0)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_24882
concatenate_2/PartitionedCall?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv3d_14_3637conv3d_14_3639*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_14_layer_call_and_return_conditional_losses_25012#
!conv3d_14/StatefulPartitionedCall?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0conv3d_15_3642conv3d_15_3644*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_15_layer_call_and_return_conditional_losses_25182#
!conv3d_15/StatefulPartitionedCall?
up_sampling3d_3/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_27052!
up_sampling3d_3/PartitionedCall?
concatenate_3/PartitionedCallPartitionedCall(up_sampling3d_3/PartitionedCall:output:0)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????ppp?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_27142
concatenate_3/PartitionedCall?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv3d_16_3649conv3d_16_3651*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_16_layer_call_and_return_conditional_losses_27272#
!conv3d_16/StatefulPartitionedCall?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0conv3d_17_3654conv3d_17_3656*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_17_layer_call_and_return_conditional_losses_27442#
!conv3d_17/StatefulPartitionedCall?
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0conv3d_18_3659conv3d_18_3661*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_18_layer_call_and_return_conditional_losses_27612#
!conv3d_18/StatefulPartitionedCall?
IdentityIdentity*conv3d_18/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

Identity?
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall"^conv3d_18/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:\ X
3
_output_shapes!
:?????????ppp
!
_user_specified_name	input_1
??
?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_2768

inputs)
conv3d_2041: 
conv3d_2043: +
conv3d_1_2058: @
conv3d_1_2060:@+
conv3d_2_2076:@@
conv3d_2_2078:@,
conv3d_3_2093:@?
conv3d_3_2095:	?-
conv3d_4_2111:??
conv3d_4_2113:	?-
conv3d_5_2128:??
conv3d_5_2130:	?-
conv3d_6_2146:??
conv3d_6_2148:	?-
conv3d_7_2163:??
conv3d_7_2165:	?-
conv3d_8_2181:??
conv3d_8_2183:	?-
conv3d_9_2198:??
conv3d_9_2200:	?.
conv3d_10_2260:??
conv3d_10_2262:	?.
conv3d_11_2277:??
conv3d_11_2279:	?.
conv3d_12_2360:??
conv3d_12_2362:	?.
conv3d_13_2377:??
conv3d_13_2379:	?-
conv3d_14_2502:?@
conv3d_14_2504:@,
conv3d_15_2519:@@
conv3d_15_2521:@-
conv3d_16_2728:?@
conv3d_16_2730:@,
conv3d_17_2745:@@
conv3d_17_2747:@,
conv3d_18_2762:@
conv3d_18_2764:
identity??conv3d/StatefulPartitionedCall? conv3d_1/StatefulPartitionedCall?!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall?!conv3d_12/StatefulPartitionedCall?!conv3d_13/StatefulPartitionedCall?!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall?!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall?!conv3d_18/StatefulPartitionedCall? conv3d_2/StatefulPartitionedCall? conv3d_3/StatefulPartitionedCall? conv3d_4/StatefulPartitionedCall? conv3d_5/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall? conv3d_7/StatefulPartitionedCall? conv3d_8/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall?
conv3d/StatefulPartitionedCallStatefulPartitionedCallinputsconv3d_2041conv3d_2043*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_conv3d_layer_call_and_return_conditional_losses_20402 
conv3d/StatefulPartitionedCall?
 conv3d_1/StatefulPartitionedCallStatefulPartitionedCall'conv3d/StatefulPartitionedCall:output:0conv3d_1_2058conv3d_1_2060*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_1_layer_call_and_return_conditional_losses_20572"
 conv3d_1/StatefulPartitionedCall?
max_pooling3d/PartitionedCallPartitionedCall)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_max_pooling3d_layer_call_and_return_conditional_losses_19802
max_pooling3d/PartitionedCall?
 conv3d_2/StatefulPartitionedCallStatefulPartitionedCall&max_pooling3d/PartitionedCall:output:0conv3d_2_2076conv3d_2_2078*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_2_layer_call_and_return_conditional_losses_20752"
 conv3d_2/StatefulPartitionedCall?
 conv3d_3/StatefulPartitionedCallStatefulPartitionedCall)conv3d_2/StatefulPartitionedCall:output:0conv3d_3_2093conv3d_3_2095*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_3_layer_call_and_return_conditional_losses_20922"
 conv3d_3/StatefulPartitionedCall?
max_pooling3d_1/PartitionedCallPartitionedCall)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_19922!
max_pooling3d_1/PartitionedCall?
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_1/PartitionedCall:output:0conv3d_4_2111conv3d_4_2113*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_4_layer_call_and_return_conditional_losses_21102"
 conv3d_4/StatefulPartitionedCall?
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0conv3d_5_2128conv3d_5_2130*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_5_layer_call_and_return_conditional_losses_21272"
 conv3d_5/StatefulPartitionedCall?
max_pooling3d_2/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_20042!
max_pooling3d_2/PartitionedCall?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv3d_6_2146conv3d_6_2148*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_6_layer_call_and_return_conditional_losses_21452"
 conv3d_6/StatefulPartitionedCall?
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0conv3d_7_2163conv3d_7_2165*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_7_layer_call_and_return_conditional_losses_21622"
 conv3d_7/StatefulPartitionedCall?
max_pooling3d_3/PartitionedCallPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_20162!
max_pooling3d_3/PartitionedCall?
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_3/PartitionedCall:output:0conv3d_8_2181conv3d_8_2183*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_8_layer_call_and_return_conditional_losses_21802"
 conv3d_8/StatefulPartitionedCall?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCall)conv3d_8/StatefulPartitionedCall:output:0conv3d_9_2198conv3d_9_2200*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_9_layer_call_and_return_conditional_losses_21972"
 conv3d_9/StatefulPartitionedCall?
up_sampling3d/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_up_sampling3d_layer_call_and_return_conditional_losses_22372
up_sampling3d/PartitionedCall?
concatenate/PartitionedCallPartitionedCall&up_sampling3d/PartitionedCall:output:0)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_22462
concatenate/PartitionedCall?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv3d_10_2260conv3d_10_2262*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_10_layer_call_and_return_conditional_losses_22592#
!conv3d_10/StatefulPartitionedCall?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0conv3d_11_2277conv3d_11_2279*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_11_layer_call_and_return_conditional_losses_22762#
!conv3d_11/StatefulPartitionedCall?
up_sampling3d_1/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_23372!
up_sampling3d_1/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall(up_sampling3d_1/PartitionedCall:output:0)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_1_layer_call_and_return_conditional_losses_23462
concatenate_1/PartitionedCall?
!conv3d_12/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv3d_12_2360conv3d_12_2362*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_12_layer_call_and_return_conditional_losses_23592#
!conv3d_12/StatefulPartitionedCall?
!conv3d_13/StatefulPartitionedCallStatefulPartitionedCall*conv3d_12/StatefulPartitionedCall:output:0conv3d_13_2377conv3d_13_2379*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_13_layer_call_and_return_conditional_losses_23762#
!conv3d_13/StatefulPartitionedCall?
up_sampling3d_2/PartitionedCallPartitionedCall*conv3d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_24792!
up_sampling3d_2/PartitionedCall?
concatenate_2/PartitionedCallPartitionedCall(up_sampling3d_2/PartitionedCall:output:0)conv3d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_24882
concatenate_2/PartitionedCall?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv3d_14_2502conv3d_14_2504*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_14_layer_call_and_return_conditional_losses_25012#
!conv3d_14/StatefulPartitionedCall?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0conv3d_15_2519conv3d_15_2521*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_15_layer_call_and_return_conditional_losses_25182#
!conv3d_15/StatefulPartitionedCall?
up_sampling3d_3/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_27052!
up_sampling3d_3/PartitionedCall?
concatenate_3/PartitionedCallPartitionedCall(up_sampling3d_3/PartitionedCall:output:0)conv3d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????ppp?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_3_layer_call_and_return_conditional_losses_27142
concatenate_3/PartitionedCall?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv3d_16_2728conv3d_16_2730*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_16_layer_call_and_return_conditional_losses_27272#
!conv3d_16/StatefulPartitionedCall?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0conv3d_17_2745conv3d_17_2747*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_17_layer_call_and_return_conditional_losses_27442#
!conv3d_17/StatefulPartitionedCall?
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0conv3d_18_2762conv3d_18_2764*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_18_layer_call_and_return_conditional_losses_27612#
!conv3d_18/StatefulPartitionedCall?
IdentityIdentity*conv3d_18/StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

Identity?
NoOpNoOp^conv3d/StatefulPartitionedCall!^conv3d_1/StatefulPartitionedCall"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall"^conv3d_12/StatefulPartitionedCall"^conv3d_13/StatefulPartitionedCall"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall"^conv3d_18/StatefulPartitionedCall!^conv3d_2/StatefulPartitionedCall!^conv3d_3/StatefulPartitionedCall!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv3d/StatefulPartitionedCallconv3d/StatefulPartitionedCall2D
 conv3d_1/StatefulPartitionedCall conv3d_1/StatefulPartitionedCall2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2F
!conv3d_12/StatefulPartitionedCall!conv3d_12/StatefulPartitionedCall2F
!conv3d_13/StatefulPartitionedCall!conv3d_13/StatefulPartitionedCall2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2D
 conv3d_2/StatefulPartitionedCall conv3d_2/StatefulPartitionedCall2D
 conv3d_3/StatefulPartitionedCall conv3d_3/StatefulPartitionedCall2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????ppp
 
_user_specified_nameinputs
??
?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_4248

inputsC
%conv3d_conv3d_readvariableop_resource: 4
&conv3d_biasadd_readvariableop_resource: E
'conv3d_1_conv3d_readvariableop_resource: @6
(conv3d_1_biasadd_readvariableop_resource:@E
'conv3d_2_conv3d_readvariableop_resource:@@6
(conv3d_2_biasadd_readvariableop_resource:@F
'conv3d_3_conv3d_readvariableop_resource:@?7
(conv3d_3_biasadd_readvariableop_resource:	?G
'conv3d_4_conv3d_readvariableop_resource:??7
(conv3d_4_biasadd_readvariableop_resource:	?G
'conv3d_5_conv3d_readvariableop_resource:??7
(conv3d_5_biasadd_readvariableop_resource:	?G
'conv3d_6_conv3d_readvariableop_resource:??7
(conv3d_6_biasadd_readvariableop_resource:	?G
'conv3d_7_conv3d_readvariableop_resource:??7
(conv3d_7_biasadd_readvariableop_resource:	?G
'conv3d_8_conv3d_readvariableop_resource:??7
(conv3d_8_biasadd_readvariableop_resource:	?G
'conv3d_9_conv3d_readvariableop_resource:??7
(conv3d_9_biasadd_readvariableop_resource:	?H
(conv3d_10_conv3d_readvariableop_resource:??8
)conv3d_10_biasadd_readvariableop_resource:	?H
(conv3d_11_conv3d_readvariableop_resource:??8
)conv3d_11_biasadd_readvariableop_resource:	?H
(conv3d_12_conv3d_readvariableop_resource:??8
)conv3d_12_biasadd_readvariableop_resource:	?H
(conv3d_13_conv3d_readvariableop_resource:??8
)conv3d_13_biasadd_readvariableop_resource:	?G
(conv3d_14_conv3d_readvariableop_resource:?@7
)conv3d_14_biasadd_readvariableop_resource:@F
(conv3d_15_conv3d_readvariableop_resource:@@7
)conv3d_15_biasadd_readvariableop_resource:@G
(conv3d_16_conv3d_readvariableop_resource:?@7
)conv3d_16_biasadd_readvariableop_resource:@F
(conv3d_17_conv3d_readvariableop_resource:@@7
)conv3d_17_biasadd_readvariableop_resource:@F
(conv3d_18_conv3d_readvariableop_resource:@7
)conv3d_18_biasadd_readvariableop_resource:
identity??conv3d/BiasAdd/ReadVariableOp?conv3d/Conv3D/ReadVariableOp?conv3d_1/BiasAdd/ReadVariableOp?conv3d_1/Conv3D/ReadVariableOp? conv3d_10/BiasAdd/ReadVariableOp?conv3d_10/Conv3D/ReadVariableOp? conv3d_11/BiasAdd/ReadVariableOp?conv3d_11/Conv3D/ReadVariableOp? conv3d_12/BiasAdd/ReadVariableOp?conv3d_12/Conv3D/ReadVariableOp? conv3d_13/BiasAdd/ReadVariableOp?conv3d_13/Conv3D/ReadVariableOp? conv3d_14/BiasAdd/ReadVariableOp?conv3d_14/Conv3D/ReadVariableOp? conv3d_15/BiasAdd/ReadVariableOp?conv3d_15/Conv3D/ReadVariableOp? conv3d_16/BiasAdd/ReadVariableOp?conv3d_16/Conv3D/ReadVariableOp? conv3d_17/BiasAdd/ReadVariableOp?conv3d_17/Conv3D/ReadVariableOp? conv3d_18/BiasAdd/ReadVariableOp?conv3d_18/Conv3D/ReadVariableOp?conv3d_2/BiasAdd/ReadVariableOp?conv3d_2/Conv3D/ReadVariableOp?conv3d_3/BiasAdd/ReadVariableOp?conv3d_3/Conv3D/ReadVariableOp?conv3d_4/BiasAdd/ReadVariableOp?conv3d_4/Conv3D/ReadVariableOp?conv3d_5/BiasAdd/ReadVariableOp?conv3d_5/Conv3D/ReadVariableOp?conv3d_6/BiasAdd/ReadVariableOp?conv3d_6/Conv3D/ReadVariableOp?conv3d_7/BiasAdd/ReadVariableOp?conv3d_7/Conv3D/ReadVariableOp?conv3d_8/BiasAdd/ReadVariableOp?conv3d_8/Conv3D/ReadVariableOp?conv3d_9/BiasAdd/ReadVariableOp?conv3d_9/Conv3D/ReadVariableOp?
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02
conv3d/Conv3D/ReadVariableOp?
conv3d/Conv3DConv3Dinputs$conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp *
paddingSAME*
strides	
2
conv3d/Conv3D?
conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv3d/BiasAdd/ReadVariableOp?
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp 2
conv3d/BiasAddy
conv3d/ReluReluconv3d/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp 2
conv3d/Relu?
conv3d_1/Conv3D/ReadVariableOpReadVariableOp'conv3d_1_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype02 
conv3d_1/Conv3D/ReadVariableOp?
conv3d_1/Conv3DConv3Dconv3d/Relu:activations:0&conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
conv3d_1/Conv3D?
conv3d_1/BiasAdd/ReadVariableOpReadVariableOp(conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv3d_1/BiasAdd/ReadVariableOp?
conv3d_1/BiasAddBiasAddconv3d_1/Conv3D:output:0'conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_1/BiasAdd
conv3d_1/ReluReluconv3d_1/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_1/Relu?
max_pooling3d/MaxPool3D	MaxPool3Dconv3d_1/Relu:activations:0*
T0*3
_output_shapes!
:?????????888@*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d/MaxPool3D?
conv3d_2/Conv3D/ReadVariableOpReadVariableOp'conv3d_2_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02 
conv3d_2/Conv3D/ReadVariableOp?
conv3d_2/Conv3DConv3D max_pooling3d/MaxPool3D:output:0&conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
conv3d_2/Conv3D?
conv3d_2/BiasAdd/ReadVariableOpReadVariableOp(conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv3d_2/BiasAdd/ReadVariableOp?
conv3d_2/BiasAddBiasAddconv3d_2/Conv3D:output:0'conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_2/BiasAdd
conv3d_2/ReluReluconv3d_2/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_2/Relu?
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource*+
_output_shapes
:@?*
dtype02 
conv3d_3/Conv3D/ReadVariableOp?
conv3d_3/Conv3DConv3Dconv3d_2/Relu:activations:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?*
paddingSAME*
strides	
2
conv3d_3/Conv3D?
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_3/BiasAdd/ReadVariableOp?
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?2
conv3d_3/BiasAdd?
conv3d_3/ReluReluconv3d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :?????????888?2
conv3d_3/Relu?
max_pooling3d_1/MaxPool3D	MaxPool3Dconv3d_3/Relu:activations:0*
T0*4
_output_shapes"
 :??????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_1/MaxPool3D?
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_4/Conv3D/ReadVariableOp?
conv3d_4/Conv3DConv3D"max_pooling3d_1/MaxPool3D:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_4/Conv3D?
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_4/BiasAdd/ReadVariableOp?
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_4/BiasAdd?
conv3d_4/ReluReluconv3d_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_4/Relu?
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_5/Conv3D/ReadVariableOp?
conv3d_5/Conv3DConv3Dconv3d_4/Relu:activations:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_5/Conv3D?
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_5/BiasAdd/ReadVariableOp?
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_5/BiasAdd?
conv3d_5/ReluReluconv3d_5/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_5/Relu?
max_pooling3d_2/MaxPool3D	MaxPool3Dconv3d_5/Relu:activations:0*
T0*4
_output_shapes"
 :??????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_2/MaxPool3D?
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_6/Conv3D/ReadVariableOp?
conv3d_6/Conv3DConv3D"max_pooling3d_2/MaxPool3D:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_6/Conv3D?
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_6/BiasAdd/ReadVariableOp?
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_6/BiasAdd?
conv3d_6/ReluReluconv3d_6/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_6/Relu?
conv3d_7/Conv3D/ReadVariableOpReadVariableOp'conv3d_7_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_7/Conv3D/ReadVariableOp?
conv3d_7/Conv3DConv3Dconv3d_6/Relu:activations:0&conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_7/Conv3D?
conv3d_7/BiasAdd/ReadVariableOpReadVariableOp(conv3d_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_7/BiasAdd/ReadVariableOp?
conv3d_7/BiasAddBiasAddconv3d_7/Conv3D:output:0'conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_7/BiasAdd?
conv3d_7/ReluReluconv3d_7/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_7/Relu?
max_pooling3d_3/MaxPool3D	MaxPool3Dconv3d_7/Relu:activations:0*
T0*4
_output_shapes"
 :??????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_3/MaxPool3D?
conv3d_8/Conv3D/ReadVariableOpReadVariableOp'conv3d_8_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_8/Conv3D/ReadVariableOp?
conv3d_8/Conv3DConv3D"max_pooling3d_3/MaxPool3D:output:0&conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_8/Conv3D?
conv3d_8/BiasAdd/ReadVariableOpReadVariableOp(conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_8/BiasAdd/ReadVariableOp?
conv3d_8/BiasAddBiasAddconv3d_8/Conv3D:output:0'conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_8/BiasAdd?
conv3d_8/ReluReluconv3d_8/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_8/Relu?
conv3d_9/Conv3D/ReadVariableOpReadVariableOp'conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_9/Conv3D/ReadVariableOp?
conv3d_9/Conv3DConv3Dconv3d_8/Relu:activations:0&conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_9/Conv3D?
conv3d_9/BiasAdd/ReadVariableOpReadVariableOp(conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_9/BiasAdd/ReadVariableOp?
conv3d_9/BiasAddBiasAddconv3d_9/Conv3D:output:0'conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_9/BiasAdd?
conv3d_9/ReluReluconv3d_9/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_9/Relu?
up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/split/split_dim?
up_sampling3d/splitSplit&up_sampling3d/split/split_dim:output:0conv3d_9/Relu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d/splitx
up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat/axis?
up_sampling3d/concatConcatV2up_sampling3d/split:output:0up_sampling3d/split:output:0up_sampling3d/split:output:1up_sampling3d/split:output:1up_sampling3d/split:output:2up_sampling3d/split:output:2up_sampling3d/split:output:3up_sampling3d/split:output:3up_sampling3d/split:output:4up_sampling3d/split:output:4up_sampling3d/split:output:5up_sampling3d/split:output:5up_sampling3d/split:output:6up_sampling3d/split:output:6"up_sampling3d/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat?
up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_1/split_dim?
up_sampling3d/split_1Split(up_sampling3d/split_1/split_dim:output:0up_sampling3d/concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d/split_1|
up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_1/axis?
up_sampling3d/concat_1ConcatV2up_sampling3d/split_1:output:0up_sampling3d/split_1:output:0up_sampling3d/split_1:output:1up_sampling3d/split_1:output:1up_sampling3d/split_1:output:2up_sampling3d/split_1:output:2up_sampling3d/split_1:output:3up_sampling3d/split_1:output:3up_sampling3d/split_1:output:4up_sampling3d/split_1:output:4up_sampling3d/split_1:output:5up_sampling3d/split_1:output:5up_sampling3d/split_1:output:6up_sampling3d/split_1:output:6$up_sampling3d/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat_1?
up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_2/split_dim?
up_sampling3d/split_2Split(up_sampling3d/split_2/split_dim:output:0up_sampling3d/concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d/split_2|
up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_2/axis?
up_sampling3d/concat_2ConcatV2up_sampling3d/split_2:output:0up_sampling3d/split_2:output:0up_sampling3d/split_2:output:1up_sampling3d/split_2:output:1up_sampling3d/split_2:output:2up_sampling3d/split_2:output:2up_sampling3d/split_2:output:3up_sampling3d/split_2:output:3up_sampling3d/split_2:output:4up_sampling3d/split_2:output:4up_sampling3d/split_2:output:5up_sampling3d/split_2:output:5up_sampling3d/split_2:output:6up_sampling3d/split_2:output:6$up_sampling3d/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat_2t
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2up_sampling3d/concat_2:output:0conv3d_7/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concatenate/concat?
conv3d_10/Conv3D/ReadVariableOpReadVariableOp(conv3d_10_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02!
conv3d_10/Conv3D/ReadVariableOp?
conv3d_10/Conv3DConv3Dconcatenate/concat:output:0'conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_10/Conv3D?
 conv3d_10/BiasAdd/ReadVariableOpReadVariableOp)conv3d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv3d_10/BiasAdd/ReadVariableOp?
conv3d_10/BiasAddBiasAddconv3d_10/Conv3D:output:0(conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_10/BiasAdd?
conv3d_10/ReluReluconv3d_10/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_10/Relu?
conv3d_11/Conv3D/ReadVariableOpReadVariableOp(conv3d_11_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02!
conv3d_11/Conv3D/ReadVariableOp?
conv3d_11/Conv3DConv3Dconv3d_10/Relu:activations:0'conv3d_11/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_11/Conv3D?
 conv3d_11/BiasAdd/ReadVariableOpReadVariableOp)conv3d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv3d_11/BiasAdd/ReadVariableOp?
conv3d_11/BiasAddBiasAddconv3d_11/Conv3D:output:0(conv3d_11/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_11/BiasAdd?
conv3d_11/ReluReluconv3d_11/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_11/Relu?
up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_1/split/split_dim?
up_sampling3d_1/splitSplit(up_sampling3d_1/split/split_dim:output:0conv3d_11/Relu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d_1/split|
up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat/axis?
up_sampling3d_1/concatConcatV2up_sampling3d_1/split:output:0up_sampling3d_1/split:output:0up_sampling3d_1/split:output:1up_sampling3d_1/split:output:1up_sampling3d_1/split:output:2up_sampling3d_1/split:output:2up_sampling3d_1/split:output:3up_sampling3d_1/split:output:3up_sampling3d_1/split:output:4up_sampling3d_1/split:output:4up_sampling3d_1/split:output:5up_sampling3d_1/split:output:5up_sampling3d_1/split:output:6up_sampling3d_1/split:output:6up_sampling3d_1/split:output:7up_sampling3d_1/split:output:7up_sampling3d_1/split:output:8up_sampling3d_1/split:output:8up_sampling3d_1/split:output:9up_sampling3d_1/split:output:9up_sampling3d_1/split:output:10up_sampling3d_1/split:output:10up_sampling3d_1/split:output:11up_sampling3d_1/split:output:11up_sampling3d_1/split:output:12up_sampling3d_1/split:output:12up_sampling3d_1/split:output:13up_sampling3d_1/split:output:13$up_sampling3d_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d_1/concat?
!up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_1/split_dim?
up_sampling3d_1/split_1Split*up_sampling3d_1/split_1/split_dim:output:0up_sampling3d_1/concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d_1/split_1?
up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_1/axis?
up_sampling3d_1/concat_1ConcatV2 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:6 up_sampling3d_1/split_1:output:6 up_sampling3d_1/split_1:output:7 up_sampling3d_1/split_1:output:7 up_sampling3d_1/split_1:output:8 up_sampling3d_1/split_1:output:8 up_sampling3d_1/split_1:output:9 up_sampling3d_1/split_1:output:9!up_sampling3d_1/split_1:output:10!up_sampling3d_1/split_1:output:10!up_sampling3d_1/split_1:output:11!up_sampling3d_1/split_1:output:11!up_sampling3d_1/split_1:output:12!up_sampling3d_1/split_1:output:12!up_sampling3d_1/split_1:output:13!up_sampling3d_1/split_1:output:13&up_sampling3d_1/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d_1/concat_1?
!up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_2/split_dim?
up_sampling3d_1/split_2Split*up_sampling3d_1/split_2/split_dim:output:0!up_sampling3d_1/concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d_1/split_2?
up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_2/axis?
up_sampling3d_1/concat_2ConcatV2 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:6 up_sampling3d_1/split_2:output:6 up_sampling3d_1/split_2:output:7 up_sampling3d_1/split_2:output:7 up_sampling3d_1/split_2:output:8 up_sampling3d_1/split_2:output:8 up_sampling3d_1/split_2:output:9 up_sampling3d_1/split_2:output:9!up_sampling3d_1/split_2:output:10!up_sampling3d_1/split_2:output:10!up_sampling3d_1/split_2:output:11!up_sampling3d_1/split_2:output:11!up_sampling3d_1/split_2:output:12!up_sampling3d_1/split_2:output:12!up_sampling3d_1/split_2:output:13!up_sampling3d_1/split_2:output:13&up_sampling3d_1/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d_1/concat_2x
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2!up_sampling3d_1/concat_2:output:0conv3d_5/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concatenate_1/concat?
conv3d_12/Conv3D/ReadVariableOpReadVariableOp(conv3d_12_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02!
conv3d_12/Conv3D/ReadVariableOp?
conv3d_12/Conv3DConv3Dconcatenate_1/concat:output:0'conv3d_12/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_12/Conv3D?
 conv3d_12/BiasAdd/ReadVariableOpReadVariableOp)conv3d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv3d_12/BiasAdd/ReadVariableOp?
conv3d_12/BiasAddBiasAddconv3d_12/Conv3D:output:0(conv3d_12/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_12/BiasAdd?
conv3d_12/ReluReluconv3d_12/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_12/Relu?
conv3d_13/Conv3D/ReadVariableOpReadVariableOp(conv3d_13_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02!
conv3d_13/Conv3D/ReadVariableOp?
conv3d_13/Conv3DConv3Dconv3d_12/Relu:activations:0'conv3d_13/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_13/Conv3D?
 conv3d_13/BiasAdd/ReadVariableOpReadVariableOp)conv3d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv3d_13/BiasAdd/ReadVariableOp?
conv3d_13/BiasAddBiasAddconv3d_13/Conv3D:output:0(conv3d_13/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_13/BiasAdd?
conv3d_13/ReluReluconv3d_13/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_13/Relu?
up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_2/split/split_dim?
up_sampling3d_2/splitSplit(up_sampling3d_2/split/split_dim:output:0conv3d_13/Relu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d_2/split|
up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat/axis?
up_sampling3d_2/concatConcatV2up_sampling3d_2/split:output:0up_sampling3d_2/split:output:0up_sampling3d_2/split:output:1up_sampling3d_2/split:output:1up_sampling3d_2/split:output:2up_sampling3d_2/split:output:2up_sampling3d_2/split:output:3up_sampling3d_2/split:output:3up_sampling3d_2/split:output:4up_sampling3d_2/split:output:4up_sampling3d_2/split:output:5up_sampling3d_2/split:output:5up_sampling3d_2/split:output:6up_sampling3d_2/split:output:6up_sampling3d_2/split:output:7up_sampling3d_2/split:output:7up_sampling3d_2/split:output:8up_sampling3d_2/split:output:8up_sampling3d_2/split:output:9up_sampling3d_2/split:output:9up_sampling3d_2/split:output:10up_sampling3d_2/split:output:10up_sampling3d_2/split:output:11up_sampling3d_2/split:output:11up_sampling3d_2/split:output:12up_sampling3d_2/split:output:12up_sampling3d_2/split:output:13up_sampling3d_2/split:output:13up_sampling3d_2/split:output:14up_sampling3d_2/split:output:14up_sampling3d_2/split:output:15up_sampling3d_2/split:output:15up_sampling3d_2/split:output:16up_sampling3d_2/split:output:16up_sampling3d_2/split:output:17up_sampling3d_2/split:output:17up_sampling3d_2/split:output:18up_sampling3d_2/split:output:18up_sampling3d_2/split:output:19up_sampling3d_2/split:output:19up_sampling3d_2/split:output:20up_sampling3d_2/split:output:20up_sampling3d_2/split:output:21up_sampling3d_2/split:output:21up_sampling3d_2/split:output:22up_sampling3d_2/split:output:22up_sampling3d_2/split:output:23up_sampling3d_2/split:output:23up_sampling3d_2/split:output:24up_sampling3d_2/split:output:24up_sampling3d_2/split:output:25up_sampling3d_2/split:output:25up_sampling3d_2/split:output:26up_sampling3d_2/split:output:26up_sampling3d_2/split:output:27up_sampling3d_2/split:output:27$up_sampling3d_2/concat/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????8?2
up_sampling3d_2/concat?
!up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_1/split_dim?
up_sampling3d_2/split_1Split*up_sampling3d_2/split_1/split_dim:output:0up_sampling3d_2/concat:output:0*
T0*?
_output_shapes?
?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?*
	num_split2
up_sampling3d_2/split_1?
up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_1/axis?
up_sampling3d_2/concat_1ConcatV2 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:9 up_sampling3d_2/split_1:output:9!up_sampling3d_2/split_1:output:10!up_sampling3d_2/split_1:output:10!up_sampling3d_2/split_1:output:11!up_sampling3d_2/split_1:output:11!up_sampling3d_2/split_1:output:12!up_sampling3d_2/split_1:output:12!up_sampling3d_2/split_1:output:13!up_sampling3d_2/split_1:output:13!up_sampling3d_2/split_1:output:14!up_sampling3d_2/split_1:output:14!up_sampling3d_2/split_1:output:15!up_sampling3d_2/split_1:output:15!up_sampling3d_2/split_1:output:16!up_sampling3d_2/split_1:output:16!up_sampling3d_2/split_1:output:17!up_sampling3d_2/split_1:output:17!up_sampling3d_2/split_1:output:18!up_sampling3d_2/split_1:output:18!up_sampling3d_2/split_1:output:19!up_sampling3d_2/split_1:output:19!up_sampling3d_2/split_1:output:20!up_sampling3d_2/split_1:output:20!up_sampling3d_2/split_1:output:21!up_sampling3d_2/split_1:output:21!up_sampling3d_2/split_1:output:22!up_sampling3d_2/split_1:output:22!up_sampling3d_2/split_1:output:23!up_sampling3d_2/split_1:output:23!up_sampling3d_2/split_1:output:24!up_sampling3d_2/split_1:output:24!up_sampling3d_2/split_1:output:25!up_sampling3d_2/split_1:output:25!up_sampling3d_2/split_1:output:26!up_sampling3d_2/split_1:output:26!up_sampling3d_2/split_1:output:27!up_sampling3d_2/split_1:output:27&up_sampling3d_2/concat_1/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????88?2
up_sampling3d_2/concat_1?
!up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_2/split_dim?
up_sampling3d_2/split_2Split*up_sampling3d_2/split_2/split_dim:output:0!up_sampling3d_2/concat_1:output:0*
T0*?
_output_shapes?
?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?*
	num_split2
up_sampling3d_2/split_2?
up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_2/axis?
up_sampling3d_2/concat_2ConcatV2 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:9 up_sampling3d_2/split_2:output:9!up_sampling3d_2/split_2:output:10!up_sampling3d_2/split_2:output:10!up_sampling3d_2/split_2:output:11!up_sampling3d_2/split_2:output:11!up_sampling3d_2/split_2:output:12!up_sampling3d_2/split_2:output:12!up_sampling3d_2/split_2:output:13!up_sampling3d_2/split_2:output:13!up_sampling3d_2/split_2:output:14!up_sampling3d_2/split_2:output:14!up_sampling3d_2/split_2:output:15!up_sampling3d_2/split_2:output:15!up_sampling3d_2/split_2:output:16!up_sampling3d_2/split_2:output:16!up_sampling3d_2/split_2:output:17!up_sampling3d_2/split_2:output:17!up_sampling3d_2/split_2:output:18!up_sampling3d_2/split_2:output:18!up_sampling3d_2/split_2:output:19!up_sampling3d_2/split_2:output:19!up_sampling3d_2/split_2:output:20!up_sampling3d_2/split_2:output:20!up_sampling3d_2/split_2:output:21!up_sampling3d_2/split_2:output:21!up_sampling3d_2/split_2:output:22!up_sampling3d_2/split_2:output:22!up_sampling3d_2/split_2:output:23!up_sampling3d_2/split_2:output:23!up_sampling3d_2/split_2:output:24!up_sampling3d_2/split_2:output:24!up_sampling3d_2/split_2:output:25!up_sampling3d_2/split_2:output:25!up_sampling3d_2/split_2:output:26!up_sampling3d_2/split_2:output:26!up_sampling3d_2/split_2:output:27!up_sampling3d_2/split_2:output:27&up_sampling3d_2/concat_2/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????888?2
up_sampling3d_2/concat_2x
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axis?
concatenate_2/concatConcatV2!up_sampling3d_2/concat_2:output:0conv3d_3/Relu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????888?2
concatenate_2/concat?
conv3d_14/Conv3D/ReadVariableOpReadVariableOp(conv3d_14_conv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02!
conv3d_14/Conv3D/ReadVariableOp?
conv3d_14/Conv3DConv3Dconcatenate_2/concat:output:0'conv3d_14/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
conv3d_14/Conv3D?
 conv3d_14/BiasAdd/ReadVariableOpReadVariableOp)conv3d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv3d_14/BiasAdd/ReadVariableOp?
conv3d_14/BiasAddBiasAddconv3d_14/Conv3D:output:0(conv3d_14/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_14/BiasAdd?
conv3d_14/ReluReluconv3d_14/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_14/Relu?
conv3d_15/Conv3D/ReadVariableOpReadVariableOp(conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02!
conv3d_15/Conv3D/ReadVariableOp?
conv3d_15/Conv3DConv3Dconv3d_14/Relu:activations:0'conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
conv3d_15/Conv3D?
 conv3d_15/BiasAdd/ReadVariableOpReadVariableOp)conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv3d_15/BiasAdd/ReadVariableOp?
conv3d_15/BiasAddBiasAddconv3d_15/Conv3D:output:0(conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_15/BiasAdd?
conv3d_15/ReluReluconv3d_15/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_15/Relu?
up_sampling3d_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_3/split/split_dim?
up_sampling3d_3/splitSplit(up_sampling3d_3/split/split_dim:output:0conv3d_15/Relu:activations:0*
T0*?
_output_shapes?
?:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@*
	num_split82
up_sampling3d_3/split|
up_sampling3d_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_3/concat/axis?
up_sampling3d_3/concatConcatV2up_sampling3d_3/split:output:0up_sampling3d_3/split:output:0up_sampling3d_3/split:output:1up_sampling3d_3/split:output:1up_sampling3d_3/split:output:2up_sampling3d_3/split:output:2up_sampling3d_3/split:output:3up_sampling3d_3/split:output:3up_sampling3d_3/split:output:4up_sampling3d_3/split:output:4up_sampling3d_3/split:output:5up_sampling3d_3/split:output:5up_sampling3d_3/split:output:6up_sampling3d_3/split:output:6up_sampling3d_3/split:output:7up_sampling3d_3/split:output:7up_sampling3d_3/split:output:8up_sampling3d_3/split:output:8up_sampling3d_3/split:output:9up_sampling3d_3/split:output:9up_sampling3d_3/split:output:10up_sampling3d_3/split:output:10up_sampling3d_3/split:output:11up_sampling3d_3/split:output:11up_sampling3d_3/split:output:12up_sampling3d_3/split:output:12up_sampling3d_3/split:output:13up_sampling3d_3/split:output:13up_sampling3d_3/split:output:14up_sampling3d_3/split:output:14up_sampling3d_3/split:output:15up_sampling3d_3/split:output:15up_sampling3d_3/split:output:16up_sampling3d_3/split:output:16up_sampling3d_3/split:output:17up_sampling3d_3/split:output:17up_sampling3d_3/split:output:18up_sampling3d_3/split:output:18up_sampling3d_3/split:output:19up_sampling3d_3/split:output:19up_sampling3d_3/split:output:20up_sampling3d_3/split:output:20up_sampling3d_3/split:output:21up_sampling3d_3/split:output:21up_sampling3d_3/split:output:22up_sampling3d_3/split:output:22up_sampling3d_3/split:output:23up_sampling3d_3/split:output:23up_sampling3d_3/split:output:24up_sampling3d_3/split:output:24up_sampling3d_3/split:output:25up_sampling3d_3/split:output:25up_sampling3d_3/split:output:26up_sampling3d_3/split:output:26up_sampling3d_3/split:output:27up_sampling3d_3/split:output:27up_sampling3d_3/split:output:28up_sampling3d_3/split:output:28up_sampling3d_3/split:output:29up_sampling3d_3/split:output:29up_sampling3d_3/split:output:30up_sampling3d_3/split:output:30up_sampling3d_3/split:output:31up_sampling3d_3/split:output:31up_sampling3d_3/split:output:32up_sampling3d_3/split:output:32up_sampling3d_3/split:output:33up_sampling3d_3/split:output:33up_sampling3d_3/split:output:34up_sampling3d_3/split:output:34up_sampling3d_3/split:output:35up_sampling3d_3/split:output:35up_sampling3d_3/split:output:36up_sampling3d_3/split:output:36up_sampling3d_3/split:output:37up_sampling3d_3/split:output:37up_sampling3d_3/split:output:38up_sampling3d_3/split:output:38up_sampling3d_3/split:output:39up_sampling3d_3/split:output:39up_sampling3d_3/split:output:40up_sampling3d_3/split:output:40up_sampling3d_3/split:output:41up_sampling3d_3/split:output:41up_sampling3d_3/split:output:42up_sampling3d_3/split:output:42up_sampling3d_3/split:output:43up_sampling3d_3/split:output:43up_sampling3d_3/split:output:44up_sampling3d_3/split:output:44up_sampling3d_3/split:output:45up_sampling3d_3/split:output:45up_sampling3d_3/split:output:46up_sampling3d_3/split:output:46up_sampling3d_3/split:output:47up_sampling3d_3/split:output:47up_sampling3d_3/split:output:48up_sampling3d_3/split:output:48up_sampling3d_3/split:output:49up_sampling3d_3/split:output:49up_sampling3d_3/split:output:50up_sampling3d_3/split:output:50up_sampling3d_3/split:output:51up_sampling3d_3/split:output:51up_sampling3d_3/split:output:52up_sampling3d_3/split:output:52up_sampling3d_3/split:output:53up_sampling3d_3/split:output:53up_sampling3d_3/split:output:54up_sampling3d_3/split:output:54up_sampling3d_3/split:output:55up_sampling3d_3/split:output:55$up_sampling3d_3/concat/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????p88@2
up_sampling3d_3/concat?
!up_sampling3d_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_3/split_1/split_dim?
up_sampling3d_3/split_1Split*up_sampling3d_3/split_1/split_dim:output:0up_sampling3d_3/concat:output:0*
T0*?
_output_shapes?
?:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@*
	num_split82
up_sampling3d_3/split_1?
up_sampling3d_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_3/concat_1/axis?
up_sampling3d_3/concat_1ConcatV2 up_sampling3d_3/split_1:output:0 up_sampling3d_3/split_1:output:0 up_sampling3d_3/split_1:output:1 up_sampling3d_3/split_1:output:1 up_sampling3d_3/split_1:output:2 up_sampling3d_3/split_1:output:2 up_sampling3d_3/split_1:output:3 up_sampling3d_3/split_1:output:3 up_sampling3d_3/split_1:output:4 up_sampling3d_3/split_1:output:4 up_sampling3d_3/split_1:output:5 up_sampling3d_3/split_1:output:5 up_sampling3d_3/split_1:output:6 up_sampling3d_3/split_1:output:6 up_sampling3d_3/split_1:output:7 up_sampling3d_3/split_1:output:7 up_sampling3d_3/split_1:output:8 up_sampling3d_3/split_1:output:8 up_sampling3d_3/split_1:output:9 up_sampling3d_3/split_1:output:9!up_sampling3d_3/split_1:output:10!up_sampling3d_3/split_1:output:10!up_sampling3d_3/split_1:output:11!up_sampling3d_3/split_1:output:11!up_sampling3d_3/split_1:output:12!up_sampling3d_3/split_1:output:12!up_sampling3d_3/split_1:output:13!up_sampling3d_3/split_1:output:13!up_sampling3d_3/split_1:output:14!up_sampling3d_3/split_1:output:14!up_sampling3d_3/split_1:output:15!up_sampling3d_3/split_1:output:15!up_sampling3d_3/split_1:output:16!up_sampling3d_3/split_1:output:16!up_sampling3d_3/split_1:output:17!up_sampling3d_3/split_1:output:17!up_sampling3d_3/split_1:output:18!up_sampling3d_3/split_1:output:18!up_sampling3d_3/split_1:output:19!up_sampling3d_3/split_1:output:19!up_sampling3d_3/split_1:output:20!up_sampling3d_3/split_1:output:20!up_sampling3d_3/split_1:output:21!up_sampling3d_3/split_1:output:21!up_sampling3d_3/split_1:output:22!up_sampling3d_3/split_1:output:22!up_sampling3d_3/split_1:output:23!up_sampling3d_3/split_1:output:23!up_sampling3d_3/split_1:output:24!up_sampling3d_3/split_1:output:24!up_sampling3d_3/split_1:output:25!up_sampling3d_3/split_1:output:25!up_sampling3d_3/split_1:output:26!up_sampling3d_3/split_1:output:26!up_sampling3d_3/split_1:output:27!up_sampling3d_3/split_1:output:27!up_sampling3d_3/split_1:output:28!up_sampling3d_3/split_1:output:28!up_sampling3d_3/split_1:output:29!up_sampling3d_3/split_1:output:29!up_sampling3d_3/split_1:output:30!up_sampling3d_3/split_1:output:30!up_sampling3d_3/split_1:output:31!up_sampling3d_3/split_1:output:31!up_sampling3d_3/split_1:output:32!up_sampling3d_3/split_1:output:32!up_sampling3d_3/split_1:output:33!up_sampling3d_3/split_1:output:33!up_sampling3d_3/split_1:output:34!up_sampling3d_3/split_1:output:34!up_sampling3d_3/split_1:output:35!up_sampling3d_3/split_1:output:35!up_sampling3d_3/split_1:output:36!up_sampling3d_3/split_1:output:36!up_sampling3d_3/split_1:output:37!up_sampling3d_3/split_1:output:37!up_sampling3d_3/split_1:output:38!up_sampling3d_3/split_1:output:38!up_sampling3d_3/split_1:output:39!up_sampling3d_3/split_1:output:39!up_sampling3d_3/split_1:output:40!up_sampling3d_3/split_1:output:40!up_sampling3d_3/split_1:output:41!up_sampling3d_3/split_1:output:41!up_sampling3d_3/split_1:output:42!up_sampling3d_3/split_1:output:42!up_sampling3d_3/split_1:output:43!up_sampling3d_3/split_1:output:43!up_sampling3d_3/split_1:output:44!up_sampling3d_3/split_1:output:44!up_sampling3d_3/split_1:output:45!up_sampling3d_3/split_1:output:45!up_sampling3d_3/split_1:output:46!up_sampling3d_3/split_1:output:46!up_sampling3d_3/split_1:output:47!up_sampling3d_3/split_1:output:47!up_sampling3d_3/split_1:output:48!up_sampling3d_3/split_1:output:48!up_sampling3d_3/split_1:output:49!up_sampling3d_3/split_1:output:49!up_sampling3d_3/split_1:output:50!up_sampling3d_3/split_1:output:50!up_sampling3d_3/split_1:output:51!up_sampling3d_3/split_1:output:51!up_sampling3d_3/split_1:output:52!up_sampling3d_3/split_1:output:52!up_sampling3d_3/split_1:output:53!up_sampling3d_3/split_1:output:53!up_sampling3d_3/split_1:output:54!up_sampling3d_3/split_1:output:54!up_sampling3d_3/split_1:output:55!up_sampling3d_3/split_1:output:55&up_sampling3d_3/concat_1/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????pp8@2
up_sampling3d_3/concat_1?
!up_sampling3d_3/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_3/split_2/split_dim?
up_sampling3d_3/split_2Split*up_sampling3d_3/split_2/split_dim:output:0!up_sampling3d_3/concat_1:output:0*
T0*?
_output_shapes?
?:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@*
	num_split82
up_sampling3d_3/split_2?
up_sampling3d_3/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_3/concat_2/axis?
up_sampling3d_3/concat_2ConcatV2 up_sampling3d_3/split_2:output:0 up_sampling3d_3/split_2:output:0 up_sampling3d_3/split_2:output:1 up_sampling3d_3/split_2:output:1 up_sampling3d_3/split_2:output:2 up_sampling3d_3/split_2:output:2 up_sampling3d_3/split_2:output:3 up_sampling3d_3/split_2:output:3 up_sampling3d_3/split_2:output:4 up_sampling3d_3/split_2:output:4 up_sampling3d_3/split_2:output:5 up_sampling3d_3/split_2:output:5 up_sampling3d_3/split_2:output:6 up_sampling3d_3/split_2:output:6 up_sampling3d_3/split_2:output:7 up_sampling3d_3/split_2:output:7 up_sampling3d_3/split_2:output:8 up_sampling3d_3/split_2:output:8 up_sampling3d_3/split_2:output:9 up_sampling3d_3/split_2:output:9!up_sampling3d_3/split_2:output:10!up_sampling3d_3/split_2:output:10!up_sampling3d_3/split_2:output:11!up_sampling3d_3/split_2:output:11!up_sampling3d_3/split_2:output:12!up_sampling3d_3/split_2:output:12!up_sampling3d_3/split_2:output:13!up_sampling3d_3/split_2:output:13!up_sampling3d_3/split_2:output:14!up_sampling3d_3/split_2:output:14!up_sampling3d_3/split_2:output:15!up_sampling3d_3/split_2:output:15!up_sampling3d_3/split_2:output:16!up_sampling3d_3/split_2:output:16!up_sampling3d_3/split_2:output:17!up_sampling3d_3/split_2:output:17!up_sampling3d_3/split_2:output:18!up_sampling3d_3/split_2:output:18!up_sampling3d_3/split_2:output:19!up_sampling3d_3/split_2:output:19!up_sampling3d_3/split_2:output:20!up_sampling3d_3/split_2:output:20!up_sampling3d_3/split_2:output:21!up_sampling3d_3/split_2:output:21!up_sampling3d_3/split_2:output:22!up_sampling3d_3/split_2:output:22!up_sampling3d_3/split_2:output:23!up_sampling3d_3/split_2:output:23!up_sampling3d_3/split_2:output:24!up_sampling3d_3/split_2:output:24!up_sampling3d_3/split_2:output:25!up_sampling3d_3/split_2:output:25!up_sampling3d_3/split_2:output:26!up_sampling3d_3/split_2:output:26!up_sampling3d_3/split_2:output:27!up_sampling3d_3/split_2:output:27!up_sampling3d_3/split_2:output:28!up_sampling3d_3/split_2:output:28!up_sampling3d_3/split_2:output:29!up_sampling3d_3/split_2:output:29!up_sampling3d_3/split_2:output:30!up_sampling3d_3/split_2:output:30!up_sampling3d_3/split_2:output:31!up_sampling3d_3/split_2:output:31!up_sampling3d_3/split_2:output:32!up_sampling3d_3/split_2:output:32!up_sampling3d_3/split_2:output:33!up_sampling3d_3/split_2:output:33!up_sampling3d_3/split_2:output:34!up_sampling3d_3/split_2:output:34!up_sampling3d_3/split_2:output:35!up_sampling3d_3/split_2:output:35!up_sampling3d_3/split_2:output:36!up_sampling3d_3/split_2:output:36!up_sampling3d_3/split_2:output:37!up_sampling3d_3/split_2:output:37!up_sampling3d_3/split_2:output:38!up_sampling3d_3/split_2:output:38!up_sampling3d_3/split_2:output:39!up_sampling3d_3/split_2:output:39!up_sampling3d_3/split_2:output:40!up_sampling3d_3/split_2:output:40!up_sampling3d_3/split_2:output:41!up_sampling3d_3/split_2:output:41!up_sampling3d_3/split_2:output:42!up_sampling3d_3/split_2:output:42!up_sampling3d_3/split_2:output:43!up_sampling3d_3/split_2:output:43!up_sampling3d_3/split_2:output:44!up_sampling3d_3/split_2:output:44!up_sampling3d_3/split_2:output:45!up_sampling3d_3/split_2:output:45!up_sampling3d_3/split_2:output:46!up_sampling3d_3/split_2:output:46!up_sampling3d_3/split_2:output:47!up_sampling3d_3/split_2:output:47!up_sampling3d_3/split_2:output:48!up_sampling3d_3/split_2:output:48!up_sampling3d_3/split_2:output:49!up_sampling3d_3/split_2:output:49!up_sampling3d_3/split_2:output:50!up_sampling3d_3/split_2:output:50!up_sampling3d_3/split_2:output:51!up_sampling3d_3/split_2:output:51!up_sampling3d_3/split_2:output:52!up_sampling3d_3/split_2:output:52!up_sampling3d_3/split_2:output:53!up_sampling3d_3/split_2:output:53!up_sampling3d_3/split_2:output:54!up_sampling3d_3/split_2:output:54!up_sampling3d_3/split_2:output:55!up_sampling3d_3/split_2:output:55&up_sampling3d_3/concat_2/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????ppp@2
up_sampling3d_3/concat_2x
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axis?
concatenate_3/concatConcatV2!up_sampling3d_3/concat_2:output:0conv3d_1/Relu:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????ppp?2
concatenate_3/concat?
conv3d_16/Conv3D/ReadVariableOpReadVariableOp(conv3d_16_conv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02!
conv3d_16/Conv3D/ReadVariableOp?
conv3d_16/Conv3DConv3Dconcatenate_3/concat:output:0'conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
conv3d_16/Conv3D?
 conv3d_16/BiasAdd/ReadVariableOpReadVariableOp)conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv3d_16/BiasAdd/ReadVariableOp?
conv3d_16/BiasAddBiasAddconv3d_16/Conv3D:output:0(conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_16/BiasAdd?
conv3d_16/ReluReluconv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_16/Relu?
conv3d_17/Conv3D/ReadVariableOpReadVariableOp(conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02!
conv3d_17/Conv3D/ReadVariableOp?
conv3d_17/Conv3DConv3Dconv3d_16/Relu:activations:0'conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
conv3d_17/Conv3D?
 conv3d_17/BiasAdd/ReadVariableOpReadVariableOp)conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv3d_17/BiasAdd/ReadVariableOp?
conv3d_17/BiasAddBiasAddconv3d_17/Conv3D:output:0(conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_17/BiasAdd?
conv3d_17/ReluReluconv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_17/Relu?
conv3d_18/Conv3D/ReadVariableOpReadVariableOp(conv3d_18_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype02!
conv3d_18/Conv3D/ReadVariableOp?
conv3d_18/Conv3DConv3Dconv3d_17/Relu:activations:0'conv3d_18/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp*
paddingSAME*
strides	
2
conv3d_18/Conv3D?
 conv3d_18/BiasAdd/ReadVariableOpReadVariableOp)conv3d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_18/BiasAdd/ReadVariableOp?
conv3d_18/BiasAddBiasAddconv3d_18/Conv3D:output:0(conv3d_18/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp2
conv3d_18/BiasAdd?
conv3d_18/SigmoidSigmoidconv3d_18/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp2
conv3d_18/Sigmoid|
IdentityIdentityconv3d_18/Sigmoid:y:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

Identity?

NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp ^conv3d_1/BiasAdd/ReadVariableOp^conv3d_1/Conv3D/ReadVariableOp!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp!^conv3d_18/BiasAdd/ReadVariableOp ^conv3d_18/Conv3D/ReadVariableOp ^conv3d_2/BiasAdd/ReadVariableOp^conv3d_2/Conv3D/ReadVariableOp ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp ^conv3d_7/BiasAdd/ReadVariableOp^conv3d_7/Conv3D/ReadVariableOp ^conv3d_8/BiasAdd/ReadVariableOp^conv3d_8/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp2B
conv3d_1/BiasAdd/ReadVariableOpconv3d_1/BiasAdd/ReadVariableOp2@
conv3d_1/Conv3D/ReadVariableOpconv3d_1/Conv3D/ReadVariableOp2D
 conv3d_10/BiasAdd/ReadVariableOp conv3d_10/BiasAdd/ReadVariableOp2B
conv3d_10/Conv3D/ReadVariableOpconv3d_10/Conv3D/ReadVariableOp2D
 conv3d_11/BiasAdd/ReadVariableOp conv3d_11/BiasAdd/ReadVariableOp2B
conv3d_11/Conv3D/ReadVariableOpconv3d_11/Conv3D/ReadVariableOp2D
 conv3d_12/BiasAdd/ReadVariableOp conv3d_12/BiasAdd/ReadVariableOp2B
conv3d_12/Conv3D/ReadVariableOpconv3d_12/Conv3D/ReadVariableOp2D
 conv3d_13/BiasAdd/ReadVariableOp conv3d_13/BiasAdd/ReadVariableOp2B
conv3d_13/Conv3D/ReadVariableOpconv3d_13/Conv3D/ReadVariableOp2D
 conv3d_14/BiasAdd/ReadVariableOp conv3d_14/BiasAdd/ReadVariableOp2B
conv3d_14/Conv3D/ReadVariableOpconv3d_14/Conv3D/ReadVariableOp2D
 conv3d_15/BiasAdd/ReadVariableOp conv3d_15/BiasAdd/ReadVariableOp2B
conv3d_15/Conv3D/ReadVariableOpconv3d_15/Conv3D/ReadVariableOp2D
 conv3d_16/BiasAdd/ReadVariableOp conv3d_16/BiasAdd/ReadVariableOp2B
conv3d_16/Conv3D/ReadVariableOpconv3d_16/Conv3D/ReadVariableOp2D
 conv3d_17/BiasAdd/ReadVariableOp conv3d_17/BiasAdd/ReadVariableOp2B
conv3d_17/Conv3D/ReadVariableOpconv3d_17/Conv3D/ReadVariableOp2D
 conv3d_18/BiasAdd/ReadVariableOp conv3d_18/BiasAdd/ReadVariableOp2B
conv3d_18/Conv3D/ReadVariableOpconv3d_18/Conv3D/ReadVariableOp2B
conv3d_2/BiasAdd/ReadVariableOpconv3d_2/BiasAdd/ReadVariableOp2@
conv3d_2/Conv3D/ReadVariableOpconv3d_2/Conv3D/ReadVariableOp2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2B
conv3d_7/BiasAdd/ReadVariableOpconv3d_7/BiasAdd/ReadVariableOp2@
conv3d_7/Conv3D/ReadVariableOpconv3d_7/Conv3D/ReadVariableOp2B
conv3d_8/BiasAdd/ReadVariableOpconv3d_8/BiasAdd/ReadVariableOp2@
conv3d_8/Conv3D/ReadVariableOpconv3d_8/Conv3D/ReadVariableOp2B
conv3d_9/BiasAdd/ReadVariableOpconv3d_9/BiasAdd/ReadVariableOp2@
conv3d_9/Conv3D/ReadVariableOpconv3d_9/Conv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp
 
_user_specified_nameinputs
??
?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_4748

inputsC
%conv3d_conv3d_readvariableop_resource: 4
&conv3d_biasadd_readvariableop_resource: E
'conv3d_1_conv3d_readvariableop_resource: @6
(conv3d_1_biasadd_readvariableop_resource:@E
'conv3d_2_conv3d_readvariableop_resource:@@6
(conv3d_2_biasadd_readvariableop_resource:@F
'conv3d_3_conv3d_readvariableop_resource:@?7
(conv3d_3_biasadd_readvariableop_resource:	?G
'conv3d_4_conv3d_readvariableop_resource:??7
(conv3d_4_biasadd_readvariableop_resource:	?G
'conv3d_5_conv3d_readvariableop_resource:??7
(conv3d_5_biasadd_readvariableop_resource:	?G
'conv3d_6_conv3d_readvariableop_resource:??7
(conv3d_6_biasadd_readvariableop_resource:	?G
'conv3d_7_conv3d_readvariableop_resource:??7
(conv3d_7_biasadd_readvariableop_resource:	?G
'conv3d_8_conv3d_readvariableop_resource:??7
(conv3d_8_biasadd_readvariableop_resource:	?G
'conv3d_9_conv3d_readvariableop_resource:??7
(conv3d_9_biasadd_readvariableop_resource:	?H
(conv3d_10_conv3d_readvariableop_resource:??8
)conv3d_10_biasadd_readvariableop_resource:	?H
(conv3d_11_conv3d_readvariableop_resource:??8
)conv3d_11_biasadd_readvariableop_resource:	?H
(conv3d_12_conv3d_readvariableop_resource:??8
)conv3d_12_biasadd_readvariableop_resource:	?H
(conv3d_13_conv3d_readvariableop_resource:??8
)conv3d_13_biasadd_readvariableop_resource:	?G
(conv3d_14_conv3d_readvariableop_resource:?@7
)conv3d_14_biasadd_readvariableop_resource:@F
(conv3d_15_conv3d_readvariableop_resource:@@7
)conv3d_15_biasadd_readvariableop_resource:@G
(conv3d_16_conv3d_readvariableop_resource:?@7
)conv3d_16_biasadd_readvariableop_resource:@F
(conv3d_17_conv3d_readvariableop_resource:@@7
)conv3d_17_biasadd_readvariableop_resource:@F
(conv3d_18_conv3d_readvariableop_resource:@7
)conv3d_18_biasadd_readvariableop_resource:
identity??conv3d/BiasAdd/ReadVariableOp?conv3d/Conv3D/ReadVariableOp?conv3d_1/BiasAdd/ReadVariableOp?conv3d_1/Conv3D/ReadVariableOp? conv3d_10/BiasAdd/ReadVariableOp?conv3d_10/Conv3D/ReadVariableOp? conv3d_11/BiasAdd/ReadVariableOp?conv3d_11/Conv3D/ReadVariableOp? conv3d_12/BiasAdd/ReadVariableOp?conv3d_12/Conv3D/ReadVariableOp? conv3d_13/BiasAdd/ReadVariableOp?conv3d_13/Conv3D/ReadVariableOp? conv3d_14/BiasAdd/ReadVariableOp?conv3d_14/Conv3D/ReadVariableOp? conv3d_15/BiasAdd/ReadVariableOp?conv3d_15/Conv3D/ReadVariableOp? conv3d_16/BiasAdd/ReadVariableOp?conv3d_16/Conv3D/ReadVariableOp? conv3d_17/BiasAdd/ReadVariableOp?conv3d_17/Conv3D/ReadVariableOp? conv3d_18/BiasAdd/ReadVariableOp?conv3d_18/Conv3D/ReadVariableOp?conv3d_2/BiasAdd/ReadVariableOp?conv3d_2/Conv3D/ReadVariableOp?conv3d_3/BiasAdd/ReadVariableOp?conv3d_3/Conv3D/ReadVariableOp?conv3d_4/BiasAdd/ReadVariableOp?conv3d_4/Conv3D/ReadVariableOp?conv3d_5/BiasAdd/ReadVariableOp?conv3d_5/Conv3D/ReadVariableOp?conv3d_6/BiasAdd/ReadVariableOp?conv3d_6/Conv3D/ReadVariableOp?conv3d_7/BiasAdd/ReadVariableOp?conv3d_7/Conv3D/ReadVariableOp?conv3d_8/BiasAdd/ReadVariableOp?conv3d_8/Conv3D/ReadVariableOp?conv3d_9/BiasAdd/ReadVariableOp?conv3d_9/Conv3D/ReadVariableOp?
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02
conv3d/Conv3D/ReadVariableOp?
conv3d/Conv3DConv3Dinputs$conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp *
paddingSAME*
strides	
2
conv3d/Conv3D?
conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv3d/BiasAdd/ReadVariableOp?
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp 2
conv3d/BiasAddy
conv3d/ReluReluconv3d/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp 2
conv3d/Relu?
conv3d_1/Conv3D/ReadVariableOpReadVariableOp'conv3d_1_conv3d_readvariableop_resource**
_output_shapes
: @*
dtype02 
conv3d_1/Conv3D/ReadVariableOp?
conv3d_1/Conv3DConv3Dconv3d/Relu:activations:0&conv3d_1/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
conv3d_1/Conv3D?
conv3d_1/BiasAdd/ReadVariableOpReadVariableOp(conv3d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv3d_1/BiasAdd/ReadVariableOp?
conv3d_1/BiasAddBiasAddconv3d_1/Conv3D:output:0'conv3d_1/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_1/BiasAdd
conv3d_1/ReluReluconv3d_1/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_1/Relu?
max_pooling3d/MaxPool3D	MaxPool3Dconv3d_1/Relu:activations:0*
T0*3
_output_shapes!
:?????????888@*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d/MaxPool3D?
conv3d_2/Conv3D/ReadVariableOpReadVariableOp'conv3d_2_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02 
conv3d_2/Conv3D/ReadVariableOp?
conv3d_2/Conv3DConv3D max_pooling3d/MaxPool3D:output:0&conv3d_2/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
conv3d_2/Conv3D?
conv3d_2/BiasAdd/ReadVariableOpReadVariableOp(conv3d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv3d_2/BiasAdd/ReadVariableOp?
conv3d_2/BiasAddBiasAddconv3d_2/Conv3D:output:0'conv3d_2/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_2/BiasAdd
conv3d_2/ReluReluconv3d_2/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_2/Relu?
conv3d_3/Conv3D/ReadVariableOpReadVariableOp'conv3d_3_conv3d_readvariableop_resource*+
_output_shapes
:@?*
dtype02 
conv3d_3/Conv3D/ReadVariableOp?
conv3d_3/Conv3DConv3Dconv3d_2/Relu:activations:0&conv3d_3/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?*
paddingSAME*
strides	
2
conv3d_3/Conv3D?
conv3d_3/BiasAdd/ReadVariableOpReadVariableOp(conv3d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_3/BiasAdd/ReadVariableOp?
conv3d_3/BiasAddBiasAddconv3d_3/Conv3D:output:0'conv3d_3/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?2
conv3d_3/BiasAdd?
conv3d_3/ReluReluconv3d_3/BiasAdd:output:0*
T0*4
_output_shapes"
 :?????????888?2
conv3d_3/Relu?
max_pooling3d_1/MaxPool3D	MaxPool3Dconv3d_3/Relu:activations:0*
T0*4
_output_shapes"
 :??????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_1/MaxPool3D?
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_4/Conv3D/ReadVariableOp?
conv3d_4/Conv3DConv3D"max_pooling3d_1/MaxPool3D:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_4/Conv3D?
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_4/BiasAdd/ReadVariableOp?
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_4/BiasAdd?
conv3d_4/ReluReluconv3d_4/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_4/Relu?
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_5/Conv3D/ReadVariableOp?
conv3d_5/Conv3DConv3Dconv3d_4/Relu:activations:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_5/Conv3D?
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_5/BiasAdd/ReadVariableOp?
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_5/BiasAdd?
conv3d_5/ReluReluconv3d_5/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_5/Relu?
max_pooling3d_2/MaxPool3D	MaxPool3Dconv3d_5/Relu:activations:0*
T0*4
_output_shapes"
 :??????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_2/MaxPool3D?
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_6/Conv3D/ReadVariableOp?
conv3d_6/Conv3DConv3D"max_pooling3d_2/MaxPool3D:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_6/Conv3D?
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_6/BiasAdd/ReadVariableOp?
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_6/BiasAdd?
conv3d_6/ReluReluconv3d_6/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_6/Relu?
conv3d_7/Conv3D/ReadVariableOpReadVariableOp'conv3d_7_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_7/Conv3D/ReadVariableOp?
conv3d_7/Conv3DConv3Dconv3d_6/Relu:activations:0&conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_7/Conv3D?
conv3d_7/BiasAdd/ReadVariableOpReadVariableOp(conv3d_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_7/BiasAdd/ReadVariableOp?
conv3d_7/BiasAddBiasAddconv3d_7/Conv3D:output:0'conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_7/BiasAdd?
conv3d_7/ReluReluconv3d_7/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_7/Relu?
max_pooling3d_3/MaxPool3D	MaxPool3Dconv3d_7/Relu:activations:0*
T0*4
_output_shapes"
 :??????????*
ksize	
*
paddingVALID*
strides	
2
max_pooling3d_3/MaxPool3D?
conv3d_8/Conv3D/ReadVariableOpReadVariableOp'conv3d_8_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_8/Conv3D/ReadVariableOp?
conv3d_8/Conv3DConv3D"max_pooling3d_3/MaxPool3D:output:0&conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_8/Conv3D?
conv3d_8/BiasAdd/ReadVariableOpReadVariableOp(conv3d_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_8/BiasAdd/ReadVariableOp?
conv3d_8/BiasAddBiasAddconv3d_8/Conv3D:output:0'conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_8/BiasAdd?
conv3d_8/ReluReluconv3d_8/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_8/Relu?
conv3d_9/Conv3D/ReadVariableOpReadVariableOp'conv3d_9_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02 
conv3d_9/Conv3D/ReadVariableOp?
conv3d_9/Conv3DConv3Dconv3d_8/Relu:activations:0&conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_9/Conv3D?
conv3d_9/BiasAdd/ReadVariableOpReadVariableOp(conv3d_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv3d_9/BiasAdd/ReadVariableOp?
conv3d_9/BiasAddBiasAddconv3d_9/Conv3D:output:0'conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_9/BiasAdd?
conv3d_9/ReluReluconv3d_9/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_9/Relu?
up_sampling3d/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/split/split_dim?
up_sampling3d/splitSplit&up_sampling3d/split/split_dim:output:0conv3d_9/Relu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d/splitx
up_sampling3d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat/axis?
up_sampling3d/concatConcatV2up_sampling3d/split:output:0up_sampling3d/split:output:0up_sampling3d/split:output:1up_sampling3d/split:output:1up_sampling3d/split:output:2up_sampling3d/split:output:2up_sampling3d/split:output:3up_sampling3d/split:output:3up_sampling3d/split:output:4up_sampling3d/split:output:4up_sampling3d/split:output:5up_sampling3d/split:output:5up_sampling3d/split:output:6up_sampling3d/split:output:6"up_sampling3d/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat?
up_sampling3d/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_1/split_dim?
up_sampling3d/split_1Split(up_sampling3d/split_1/split_dim:output:0up_sampling3d/concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d/split_1|
up_sampling3d/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_1/axis?
up_sampling3d/concat_1ConcatV2up_sampling3d/split_1:output:0up_sampling3d/split_1:output:0up_sampling3d/split_1:output:1up_sampling3d/split_1:output:1up_sampling3d/split_1:output:2up_sampling3d/split_1:output:2up_sampling3d/split_1:output:3up_sampling3d/split_1:output:3up_sampling3d/split_1:output:4up_sampling3d/split_1:output:4up_sampling3d/split_1:output:5up_sampling3d/split_1:output:5up_sampling3d/split_1:output:6up_sampling3d/split_1:output:6$up_sampling3d/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat_1?
up_sampling3d/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d/split_2/split_dim?
up_sampling3d/split_2Split(up_sampling3d/split_2/split_dim:output:0up_sampling3d/concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d/split_2|
up_sampling3d/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d/concat_2/axis?
up_sampling3d/concat_2ConcatV2up_sampling3d/split_2:output:0up_sampling3d/split_2:output:0up_sampling3d/split_2:output:1up_sampling3d/split_2:output:1up_sampling3d/split_2:output:2up_sampling3d/split_2:output:2up_sampling3d/split_2:output:3up_sampling3d/split_2:output:3up_sampling3d/split_2:output:4up_sampling3d/split_2:output:4up_sampling3d/split_2:output:5up_sampling3d/split_2:output:5up_sampling3d/split_2:output:6up_sampling3d/split_2:output:6$up_sampling3d/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d/concat_2t
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2up_sampling3d/concat_2:output:0conv3d_7/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concatenate/concat?
conv3d_10/Conv3D/ReadVariableOpReadVariableOp(conv3d_10_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02!
conv3d_10/Conv3D/ReadVariableOp?
conv3d_10/Conv3DConv3Dconcatenate/concat:output:0'conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_10/Conv3D?
 conv3d_10/BiasAdd/ReadVariableOpReadVariableOp)conv3d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv3d_10/BiasAdd/ReadVariableOp?
conv3d_10/BiasAddBiasAddconv3d_10/Conv3D:output:0(conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_10/BiasAdd?
conv3d_10/ReluReluconv3d_10/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_10/Relu?
conv3d_11/Conv3D/ReadVariableOpReadVariableOp(conv3d_11_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02!
conv3d_11/Conv3D/ReadVariableOp?
conv3d_11/Conv3DConv3Dconv3d_10/Relu:activations:0'conv3d_11/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_11/Conv3D?
 conv3d_11/BiasAdd/ReadVariableOpReadVariableOp)conv3d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv3d_11/BiasAdd/ReadVariableOp?
conv3d_11/BiasAddBiasAddconv3d_11/Conv3D:output:0(conv3d_11/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_11/BiasAdd?
conv3d_11/ReluReluconv3d_11/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_11/Relu?
up_sampling3d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_1/split/split_dim?
up_sampling3d_1/splitSplit(up_sampling3d_1/split/split_dim:output:0conv3d_11/Relu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d_1/split|
up_sampling3d_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat/axis?
up_sampling3d_1/concatConcatV2up_sampling3d_1/split:output:0up_sampling3d_1/split:output:0up_sampling3d_1/split:output:1up_sampling3d_1/split:output:1up_sampling3d_1/split:output:2up_sampling3d_1/split:output:2up_sampling3d_1/split:output:3up_sampling3d_1/split:output:3up_sampling3d_1/split:output:4up_sampling3d_1/split:output:4up_sampling3d_1/split:output:5up_sampling3d_1/split:output:5up_sampling3d_1/split:output:6up_sampling3d_1/split:output:6up_sampling3d_1/split:output:7up_sampling3d_1/split:output:7up_sampling3d_1/split:output:8up_sampling3d_1/split:output:8up_sampling3d_1/split:output:9up_sampling3d_1/split:output:9up_sampling3d_1/split:output:10up_sampling3d_1/split:output:10up_sampling3d_1/split:output:11up_sampling3d_1/split:output:11up_sampling3d_1/split:output:12up_sampling3d_1/split:output:12up_sampling3d_1/split:output:13up_sampling3d_1/split:output:13$up_sampling3d_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d_1/concat?
!up_sampling3d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_1/split_dim?
up_sampling3d_1/split_1Split*up_sampling3d_1/split_1/split_dim:output:0up_sampling3d_1/concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d_1/split_1?
up_sampling3d_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_1/axis?
up_sampling3d_1/concat_1ConcatV2 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:0 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:1 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:2 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:3 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:4 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:5 up_sampling3d_1/split_1:output:6 up_sampling3d_1/split_1:output:6 up_sampling3d_1/split_1:output:7 up_sampling3d_1/split_1:output:7 up_sampling3d_1/split_1:output:8 up_sampling3d_1/split_1:output:8 up_sampling3d_1/split_1:output:9 up_sampling3d_1/split_1:output:9!up_sampling3d_1/split_1:output:10!up_sampling3d_1/split_1:output:10!up_sampling3d_1/split_1:output:11!up_sampling3d_1/split_1:output:11!up_sampling3d_1/split_1:output:12!up_sampling3d_1/split_1:output:12!up_sampling3d_1/split_1:output:13!up_sampling3d_1/split_1:output:13&up_sampling3d_1/concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d_1/concat_1?
!up_sampling3d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_1/split_2/split_dim?
up_sampling3d_1/split_2Split*up_sampling3d_1/split_2/split_dim:output:0!up_sampling3d_1/concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d_1/split_2?
up_sampling3d_1/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_1/concat_2/axis?
up_sampling3d_1/concat_2ConcatV2 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:0 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:1 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:2 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:3 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:4 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:5 up_sampling3d_1/split_2:output:6 up_sampling3d_1/split_2:output:6 up_sampling3d_1/split_2:output:7 up_sampling3d_1/split_2:output:7 up_sampling3d_1/split_2:output:8 up_sampling3d_1/split_2:output:8 up_sampling3d_1/split_2:output:9 up_sampling3d_1/split_2:output:9!up_sampling3d_1/split_2:output:10!up_sampling3d_1/split_2:output:10!up_sampling3d_1/split_2:output:11!up_sampling3d_1/split_2:output:11!up_sampling3d_1/split_2:output:12!up_sampling3d_1/split_2:output:12!up_sampling3d_1/split_2:output:13!up_sampling3d_1/split_2:output:13&up_sampling3d_1/concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
up_sampling3d_1/concat_2x
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2!up_sampling3d_1/concat_2:output:0conv3d_5/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concatenate_1/concat?
conv3d_12/Conv3D/ReadVariableOpReadVariableOp(conv3d_12_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02!
conv3d_12/Conv3D/ReadVariableOp?
conv3d_12/Conv3DConv3Dconcatenate_1/concat:output:0'conv3d_12/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_12/Conv3D?
 conv3d_12/BiasAdd/ReadVariableOpReadVariableOp)conv3d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv3d_12/BiasAdd/ReadVariableOp?
conv3d_12/BiasAddBiasAddconv3d_12/Conv3D:output:0(conv3d_12/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_12/BiasAdd?
conv3d_12/ReluReluconv3d_12/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_12/Relu?
conv3d_13/Conv3D/ReadVariableOpReadVariableOp(conv3d_13_conv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02!
conv3d_13/Conv3D/ReadVariableOp?
conv3d_13/Conv3DConv3Dconv3d_12/Relu:activations:0'conv3d_13/Conv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
conv3d_13/Conv3D?
 conv3d_13/BiasAdd/ReadVariableOpReadVariableOp)conv3d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv3d_13/BiasAdd/ReadVariableOp?
conv3d_13/BiasAddBiasAddconv3d_13/Conv3D:output:0(conv3d_13/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2
conv3d_13/BiasAdd?
conv3d_13/ReluReluconv3d_13/BiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
conv3d_13/Relu?
up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_2/split/split_dim?
up_sampling3d_2/splitSplit(up_sampling3d_2/split/split_dim:output:0conv3d_13/Relu:activations:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
up_sampling3d_2/split|
up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat/axis?
up_sampling3d_2/concatConcatV2up_sampling3d_2/split:output:0up_sampling3d_2/split:output:0up_sampling3d_2/split:output:1up_sampling3d_2/split:output:1up_sampling3d_2/split:output:2up_sampling3d_2/split:output:2up_sampling3d_2/split:output:3up_sampling3d_2/split:output:3up_sampling3d_2/split:output:4up_sampling3d_2/split:output:4up_sampling3d_2/split:output:5up_sampling3d_2/split:output:5up_sampling3d_2/split:output:6up_sampling3d_2/split:output:6up_sampling3d_2/split:output:7up_sampling3d_2/split:output:7up_sampling3d_2/split:output:8up_sampling3d_2/split:output:8up_sampling3d_2/split:output:9up_sampling3d_2/split:output:9up_sampling3d_2/split:output:10up_sampling3d_2/split:output:10up_sampling3d_2/split:output:11up_sampling3d_2/split:output:11up_sampling3d_2/split:output:12up_sampling3d_2/split:output:12up_sampling3d_2/split:output:13up_sampling3d_2/split:output:13up_sampling3d_2/split:output:14up_sampling3d_2/split:output:14up_sampling3d_2/split:output:15up_sampling3d_2/split:output:15up_sampling3d_2/split:output:16up_sampling3d_2/split:output:16up_sampling3d_2/split:output:17up_sampling3d_2/split:output:17up_sampling3d_2/split:output:18up_sampling3d_2/split:output:18up_sampling3d_2/split:output:19up_sampling3d_2/split:output:19up_sampling3d_2/split:output:20up_sampling3d_2/split:output:20up_sampling3d_2/split:output:21up_sampling3d_2/split:output:21up_sampling3d_2/split:output:22up_sampling3d_2/split:output:22up_sampling3d_2/split:output:23up_sampling3d_2/split:output:23up_sampling3d_2/split:output:24up_sampling3d_2/split:output:24up_sampling3d_2/split:output:25up_sampling3d_2/split:output:25up_sampling3d_2/split:output:26up_sampling3d_2/split:output:26up_sampling3d_2/split:output:27up_sampling3d_2/split:output:27$up_sampling3d_2/concat/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????8?2
up_sampling3d_2/concat?
!up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_1/split_dim?
up_sampling3d_2/split_1Split*up_sampling3d_2/split_1/split_dim:output:0up_sampling3d_2/concat:output:0*
T0*?
_output_shapes?
?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?*
	num_split2
up_sampling3d_2/split_1?
up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_1/axis?
up_sampling3d_2/concat_1ConcatV2 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:2 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:3 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:4 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:5 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:6 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:7 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:8 up_sampling3d_2/split_1:output:9 up_sampling3d_2/split_1:output:9!up_sampling3d_2/split_1:output:10!up_sampling3d_2/split_1:output:10!up_sampling3d_2/split_1:output:11!up_sampling3d_2/split_1:output:11!up_sampling3d_2/split_1:output:12!up_sampling3d_2/split_1:output:12!up_sampling3d_2/split_1:output:13!up_sampling3d_2/split_1:output:13!up_sampling3d_2/split_1:output:14!up_sampling3d_2/split_1:output:14!up_sampling3d_2/split_1:output:15!up_sampling3d_2/split_1:output:15!up_sampling3d_2/split_1:output:16!up_sampling3d_2/split_1:output:16!up_sampling3d_2/split_1:output:17!up_sampling3d_2/split_1:output:17!up_sampling3d_2/split_1:output:18!up_sampling3d_2/split_1:output:18!up_sampling3d_2/split_1:output:19!up_sampling3d_2/split_1:output:19!up_sampling3d_2/split_1:output:20!up_sampling3d_2/split_1:output:20!up_sampling3d_2/split_1:output:21!up_sampling3d_2/split_1:output:21!up_sampling3d_2/split_1:output:22!up_sampling3d_2/split_1:output:22!up_sampling3d_2/split_1:output:23!up_sampling3d_2/split_1:output:23!up_sampling3d_2/split_1:output:24!up_sampling3d_2/split_1:output:24!up_sampling3d_2/split_1:output:25!up_sampling3d_2/split_1:output:25!up_sampling3d_2/split_1:output:26!up_sampling3d_2/split_1:output:26!up_sampling3d_2/split_1:output:27!up_sampling3d_2/split_1:output:27&up_sampling3d_2/concat_1/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????88?2
up_sampling3d_2/concat_1?
!up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_2/split_2/split_dim?
up_sampling3d_2/split_2Split*up_sampling3d_2/split_2/split_dim:output:0!up_sampling3d_2/concat_1:output:0*
T0*?
_output_shapes?
?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?*
	num_split2
up_sampling3d_2/split_2?
up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_2/concat_2/axis?
up_sampling3d_2/concat_2ConcatV2 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:1 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:2 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:3 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:4 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:5 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:6 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:7 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:8 up_sampling3d_2/split_2:output:9 up_sampling3d_2/split_2:output:9!up_sampling3d_2/split_2:output:10!up_sampling3d_2/split_2:output:10!up_sampling3d_2/split_2:output:11!up_sampling3d_2/split_2:output:11!up_sampling3d_2/split_2:output:12!up_sampling3d_2/split_2:output:12!up_sampling3d_2/split_2:output:13!up_sampling3d_2/split_2:output:13!up_sampling3d_2/split_2:output:14!up_sampling3d_2/split_2:output:14!up_sampling3d_2/split_2:output:15!up_sampling3d_2/split_2:output:15!up_sampling3d_2/split_2:output:16!up_sampling3d_2/split_2:output:16!up_sampling3d_2/split_2:output:17!up_sampling3d_2/split_2:output:17!up_sampling3d_2/split_2:output:18!up_sampling3d_2/split_2:output:18!up_sampling3d_2/split_2:output:19!up_sampling3d_2/split_2:output:19!up_sampling3d_2/split_2:output:20!up_sampling3d_2/split_2:output:20!up_sampling3d_2/split_2:output:21!up_sampling3d_2/split_2:output:21!up_sampling3d_2/split_2:output:22!up_sampling3d_2/split_2:output:22!up_sampling3d_2/split_2:output:23!up_sampling3d_2/split_2:output:23!up_sampling3d_2/split_2:output:24!up_sampling3d_2/split_2:output:24!up_sampling3d_2/split_2:output:25!up_sampling3d_2/split_2:output:25!up_sampling3d_2/split_2:output:26!up_sampling3d_2/split_2:output:26!up_sampling3d_2/split_2:output:27!up_sampling3d_2/split_2:output:27&up_sampling3d_2/concat_2/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????888?2
up_sampling3d_2/concat_2x
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axis?
concatenate_2/concatConcatV2!up_sampling3d_2/concat_2:output:0conv3d_3/Relu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????888?2
concatenate_2/concat?
conv3d_14/Conv3D/ReadVariableOpReadVariableOp(conv3d_14_conv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02!
conv3d_14/Conv3D/ReadVariableOp?
conv3d_14/Conv3DConv3Dconcatenate_2/concat:output:0'conv3d_14/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
conv3d_14/Conv3D?
 conv3d_14/BiasAdd/ReadVariableOpReadVariableOp)conv3d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv3d_14/BiasAdd/ReadVariableOp?
conv3d_14/BiasAddBiasAddconv3d_14/Conv3D:output:0(conv3d_14/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_14/BiasAdd?
conv3d_14/ReluReluconv3d_14/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_14/Relu?
conv3d_15/Conv3D/ReadVariableOpReadVariableOp(conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02!
conv3d_15/Conv3D/ReadVariableOp?
conv3d_15/Conv3DConv3Dconv3d_14/Relu:activations:0'conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
conv3d_15/Conv3D?
 conv3d_15/BiasAdd/ReadVariableOpReadVariableOp)conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv3d_15/BiasAdd/ReadVariableOp?
conv3d_15/BiasAddBiasAddconv3d_15/Conv3D:output:0(conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_15/BiasAdd?
conv3d_15/ReluReluconv3d_15/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
conv3d_15/Relu?
up_sampling3d_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
up_sampling3d_3/split/split_dim?
up_sampling3d_3/splitSplit(up_sampling3d_3/split/split_dim:output:0conv3d_15/Relu:activations:0*
T0*?
_output_shapes?
?:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@*
	num_split82
up_sampling3d_3/split|
up_sampling3d_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_3/concat/axis?
up_sampling3d_3/concatConcatV2up_sampling3d_3/split:output:0up_sampling3d_3/split:output:0up_sampling3d_3/split:output:1up_sampling3d_3/split:output:1up_sampling3d_3/split:output:2up_sampling3d_3/split:output:2up_sampling3d_3/split:output:3up_sampling3d_3/split:output:3up_sampling3d_3/split:output:4up_sampling3d_3/split:output:4up_sampling3d_3/split:output:5up_sampling3d_3/split:output:5up_sampling3d_3/split:output:6up_sampling3d_3/split:output:6up_sampling3d_3/split:output:7up_sampling3d_3/split:output:7up_sampling3d_3/split:output:8up_sampling3d_3/split:output:8up_sampling3d_3/split:output:9up_sampling3d_3/split:output:9up_sampling3d_3/split:output:10up_sampling3d_3/split:output:10up_sampling3d_3/split:output:11up_sampling3d_3/split:output:11up_sampling3d_3/split:output:12up_sampling3d_3/split:output:12up_sampling3d_3/split:output:13up_sampling3d_3/split:output:13up_sampling3d_3/split:output:14up_sampling3d_3/split:output:14up_sampling3d_3/split:output:15up_sampling3d_3/split:output:15up_sampling3d_3/split:output:16up_sampling3d_3/split:output:16up_sampling3d_3/split:output:17up_sampling3d_3/split:output:17up_sampling3d_3/split:output:18up_sampling3d_3/split:output:18up_sampling3d_3/split:output:19up_sampling3d_3/split:output:19up_sampling3d_3/split:output:20up_sampling3d_3/split:output:20up_sampling3d_3/split:output:21up_sampling3d_3/split:output:21up_sampling3d_3/split:output:22up_sampling3d_3/split:output:22up_sampling3d_3/split:output:23up_sampling3d_3/split:output:23up_sampling3d_3/split:output:24up_sampling3d_3/split:output:24up_sampling3d_3/split:output:25up_sampling3d_3/split:output:25up_sampling3d_3/split:output:26up_sampling3d_3/split:output:26up_sampling3d_3/split:output:27up_sampling3d_3/split:output:27up_sampling3d_3/split:output:28up_sampling3d_3/split:output:28up_sampling3d_3/split:output:29up_sampling3d_3/split:output:29up_sampling3d_3/split:output:30up_sampling3d_3/split:output:30up_sampling3d_3/split:output:31up_sampling3d_3/split:output:31up_sampling3d_3/split:output:32up_sampling3d_3/split:output:32up_sampling3d_3/split:output:33up_sampling3d_3/split:output:33up_sampling3d_3/split:output:34up_sampling3d_3/split:output:34up_sampling3d_3/split:output:35up_sampling3d_3/split:output:35up_sampling3d_3/split:output:36up_sampling3d_3/split:output:36up_sampling3d_3/split:output:37up_sampling3d_3/split:output:37up_sampling3d_3/split:output:38up_sampling3d_3/split:output:38up_sampling3d_3/split:output:39up_sampling3d_3/split:output:39up_sampling3d_3/split:output:40up_sampling3d_3/split:output:40up_sampling3d_3/split:output:41up_sampling3d_3/split:output:41up_sampling3d_3/split:output:42up_sampling3d_3/split:output:42up_sampling3d_3/split:output:43up_sampling3d_3/split:output:43up_sampling3d_3/split:output:44up_sampling3d_3/split:output:44up_sampling3d_3/split:output:45up_sampling3d_3/split:output:45up_sampling3d_3/split:output:46up_sampling3d_3/split:output:46up_sampling3d_3/split:output:47up_sampling3d_3/split:output:47up_sampling3d_3/split:output:48up_sampling3d_3/split:output:48up_sampling3d_3/split:output:49up_sampling3d_3/split:output:49up_sampling3d_3/split:output:50up_sampling3d_3/split:output:50up_sampling3d_3/split:output:51up_sampling3d_3/split:output:51up_sampling3d_3/split:output:52up_sampling3d_3/split:output:52up_sampling3d_3/split:output:53up_sampling3d_3/split:output:53up_sampling3d_3/split:output:54up_sampling3d_3/split:output:54up_sampling3d_3/split:output:55up_sampling3d_3/split:output:55$up_sampling3d_3/concat/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????p88@2
up_sampling3d_3/concat?
!up_sampling3d_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_3/split_1/split_dim?
up_sampling3d_3/split_1Split*up_sampling3d_3/split_1/split_dim:output:0up_sampling3d_3/concat:output:0*
T0*?
_output_shapes?
?:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@*
	num_split82
up_sampling3d_3/split_1?
up_sampling3d_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_3/concat_1/axis?
up_sampling3d_3/concat_1ConcatV2 up_sampling3d_3/split_1:output:0 up_sampling3d_3/split_1:output:0 up_sampling3d_3/split_1:output:1 up_sampling3d_3/split_1:output:1 up_sampling3d_3/split_1:output:2 up_sampling3d_3/split_1:output:2 up_sampling3d_3/split_1:output:3 up_sampling3d_3/split_1:output:3 up_sampling3d_3/split_1:output:4 up_sampling3d_3/split_1:output:4 up_sampling3d_3/split_1:output:5 up_sampling3d_3/split_1:output:5 up_sampling3d_3/split_1:output:6 up_sampling3d_3/split_1:output:6 up_sampling3d_3/split_1:output:7 up_sampling3d_3/split_1:output:7 up_sampling3d_3/split_1:output:8 up_sampling3d_3/split_1:output:8 up_sampling3d_3/split_1:output:9 up_sampling3d_3/split_1:output:9!up_sampling3d_3/split_1:output:10!up_sampling3d_3/split_1:output:10!up_sampling3d_3/split_1:output:11!up_sampling3d_3/split_1:output:11!up_sampling3d_3/split_1:output:12!up_sampling3d_3/split_1:output:12!up_sampling3d_3/split_1:output:13!up_sampling3d_3/split_1:output:13!up_sampling3d_3/split_1:output:14!up_sampling3d_3/split_1:output:14!up_sampling3d_3/split_1:output:15!up_sampling3d_3/split_1:output:15!up_sampling3d_3/split_1:output:16!up_sampling3d_3/split_1:output:16!up_sampling3d_3/split_1:output:17!up_sampling3d_3/split_1:output:17!up_sampling3d_3/split_1:output:18!up_sampling3d_3/split_1:output:18!up_sampling3d_3/split_1:output:19!up_sampling3d_3/split_1:output:19!up_sampling3d_3/split_1:output:20!up_sampling3d_3/split_1:output:20!up_sampling3d_3/split_1:output:21!up_sampling3d_3/split_1:output:21!up_sampling3d_3/split_1:output:22!up_sampling3d_3/split_1:output:22!up_sampling3d_3/split_1:output:23!up_sampling3d_3/split_1:output:23!up_sampling3d_3/split_1:output:24!up_sampling3d_3/split_1:output:24!up_sampling3d_3/split_1:output:25!up_sampling3d_3/split_1:output:25!up_sampling3d_3/split_1:output:26!up_sampling3d_3/split_1:output:26!up_sampling3d_3/split_1:output:27!up_sampling3d_3/split_1:output:27!up_sampling3d_3/split_1:output:28!up_sampling3d_3/split_1:output:28!up_sampling3d_3/split_1:output:29!up_sampling3d_3/split_1:output:29!up_sampling3d_3/split_1:output:30!up_sampling3d_3/split_1:output:30!up_sampling3d_3/split_1:output:31!up_sampling3d_3/split_1:output:31!up_sampling3d_3/split_1:output:32!up_sampling3d_3/split_1:output:32!up_sampling3d_3/split_1:output:33!up_sampling3d_3/split_1:output:33!up_sampling3d_3/split_1:output:34!up_sampling3d_3/split_1:output:34!up_sampling3d_3/split_1:output:35!up_sampling3d_3/split_1:output:35!up_sampling3d_3/split_1:output:36!up_sampling3d_3/split_1:output:36!up_sampling3d_3/split_1:output:37!up_sampling3d_3/split_1:output:37!up_sampling3d_3/split_1:output:38!up_sampling3d_3/split_1:output:38!up_sampling3d_3/split_1:output:39!up_sampling3d_3/split_1:output:39!up_sampling3d_3/split_1:output:40!up_sampling3d_3/split_1:output:40!up_sampling3d_3/split_1:output:41!up_sampling3d_3/split_1:output:41!up_sampling3d_3/split_1:output:42!up_sampling3d_3/split_1:output:42!up_sampling3d_3/split_1:output:43!up_sampling3d_3/split_1:output:43!up_sampling3d_3/split_1:output:44!up_sampling3d_3/split_1:output:44!up_sampling3d_3/split_1:output:45!up_sampling3d_3/split_1:output:45!up_sampling3d_3/split_1:output:46!up_sampling3d_3/split_1:output:46!up_sampling3d_3/split_1:output:47!up_sampling3d_3/split_1:output:47!up_sampling3d_3/split_1:output:48!up_sampling3d_3/split_1:output:48!up_sampling3d_3/split_1:output:49!up_sampling3d_3/split_1:output:49!up_sampling3d_3/split_1:output:50!up_sampling3d_3/split_1:output:50!up_sampling3d_3/split_1:output:51!up_sampling3d_3/split_1:output:51!up_sampling3d_3/split_1:output:52!up_sampling3d_3/split_1:output:52!up_sampling3d_3/split_1:output:53!up_sampling3d_3/split_1:output:53!up_sampling3d_3/split_1:output:54!up_sampling3d_3/split_1:output:54!up_sampling3d_3/split_1:output:55!up_sampling3d_3/split_1:output:55&up_sampling3d_3/concat_1/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????pp8@2
up_sampling3d_3/concat_1?
!up_sampling3d_3/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!up_sampling3d_3/split_2/split_dim?
up_sampling3d_3/split_2Split*up_sampling3d_3/split_2/split_dim:output:0!up_sampling3d_3/concat_1:output:0*
T0*?
_output_shapes?
?:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@*
	num_split82
up_sampling3d_3/split_2?
up_sampling3d_3/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
up_sampling3d_3/concat_2/axis?
up_sampling3d_3/concat_2ConcatV2 up_sampling3d_3/split_2:output:0 up_sampling3d_3/split_2:output:0 up_sampling3d_3/split_2:output:1 up_sampling3d_3/split_2:output:1 up_sampling3d_3/split_2:output:2 up_sampling3d_3/split_2:output:2 up_sampling3d_3/split_2:output:3 up_sampling3d_3/split_2:output:3 up_sampling3d_3/split_2:output:4 up_sampling3d_3/split_2:output:4 up_sampling3d_3/split_2:output:5 up_sampling3d_3/split_2:output:5 up_sampling3d_3/split_2:output:6 up_sampling3d_3/split_2:output:6 up_sampling3d_3/split_2:output:7 up_sampling3d_3/split_2:output:7 up_sampling3d_3/split_2:output:8 up_sampling3d_3/split_2:output:8 up_sampling3d_3/split_2:output:9 up_sampling3d_3/split_2:output:9!up_sampling3d_3/split_2:output:10!up_sampling3d_3/split_2:output:10!up_sampling3d_3/split_2:output:11!up_sampling3d_3/split_2:output:11!up_sampling3d_3/split_2:output:12!up_sampling3d_3/split_2:output:12!up_sampling3d_3/split_2:output:13!up_sampling3d_3/split_2:output:13!up_sampling3d_3/split_2:output:14!up_sampling3d_3/split_2:output:14!up_sampling3d_3/split_2:output:15!up_sampling3d_3/split_2:output:15!up_sampling3d_3/split_2:output:16!up_sampling3d_3/split_2:output:16!up_sampling3d_3/split_2:output:17!up_sampling3d_3/split_2:output:17!up_sampling3d_3/split_2:output:18!up_sampling3d_3/split_2:output:18!up_sampling3d_3/split_2:output:19!up_sampling3d_3/split_2:output:19!up_sampling3d_3/split_2:output:20!up_sampling3d_3/split_2:output:20!up_sampling3d_3/split_2:output:21!up_sampling3d_3/split_2:output:21!up_sampling3d_3/split_2:output:22!up_sampling3d_3/split_2:output:22!up_sampling3d_3/split_2:output:23!up_sampling3d_3/split_2:output:23!up_sampling3d_3/split_2:output:24!up_sampling3d_3/split_2:output:24!up_sampling3d_3/split_2:output:25!up_sampling3d_3/split_2:output:25!up_sampling3d_3/split_2:output:26!up_sampling3d_3/split_2:output:26!up_sampling3d_3/split_2:output:27!up_sampling3d_3/split_2:output:27!up_sampling3d_3/split_2:output:28!up_sampling3d_3/split_2:output:28!up_sampling3d_3/split_2:output:29!up_sampling3d_3/split_2:output:29!up_sampling3d_3/split_2:output:30!up_sampling3d_3/split_2:output:30!up_sampling3d_3/split_2:output:31!up_sampling3d_3/split_2:output:31!up_sampling3d_3/split_2:output:32!up_sampling3d_3/split_2:output:32!up_sampling3d_3/split_2:output:33!up_sampling3d_3/split_2:output:33!up_sampling3d_3/split_2:output:34!up_sampling3d_3/split_2:output:34!up_sampling3d_3/split_2:output:35!up_sampling3d_3/split_2:output:35!up_sampling3d_3/split_2:output:36!up_sampling3d_3/split_2:output:36!up_sampling3d_3/split_2:output:37!up_sampling3d_3/split_2:output:37!up_sampling3d_3/split_2:output:38!up_sampling3d_3/split_2:output:38!up_sampling3d_3/split_2:output:39!up_sampling3d_3/split_2:output:39!up_sampling3d_3/split_2:output:40!up_sampling3d_3/split_2:output:40!up_sampling3d_3/split_2:output:41!up_sampling3d_3/split_2:output:41!up_sampling3d_3/split_2:output:42!up_sampling3d_3/split_2:output:42!up_sampling3d_3/split_2:output:43!up_sampling3d_3/split_2:output:43!up_sampling3d_3/split_2:output:44!up_sampling3d_3/split_2:output:44!up_sampling3d_3/split_2:output:45!up_sampling3d_3/split_2:output:45!up_sampling3d_3/split_2:output:46!up_sampling3d_3/split_2:output:46!up_sampling3d_3/split_2:output:47!up_sampling3d_3/split_2:output:47!up_sampling3d_3/split_2:output:48!up_sampling3d_3/split_2:output:48!up_sampling3d_3/split_2:output:49!up_sampling3d_3/split_2:output:49!up_sampling3d_3/split_2:output:50!up_sampling3d_3/split_2:output:50!up_sampling3d_3/split_2:output:51!up_sampling3d_3/split_2:output:51!up_sampling3d_3/split_2:output:52!up_sampling3d_3/split_2:output:52!up_sampling3d_3/split_2:output:53!up_sampling3d_3/split_2:output:53!up_sampling3d_3/split_2:output:54!up_sampling3d_3/split_2:output:54!up_sampling3d_3/split_2:output:55!up_sampling3d_3/split_2:output:55&up_sampling3d_3/concat_2/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????ppp@2
up_sampling3d_3/concat_2x
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axis?
concatenate_3/concatConcatV2!up_sampling3d_3/concat_2:output:0conv3d_1/Relu:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????ppp?2
concatenate_3/concat?
conv3d_16/Conv3D/ReadVariableOpReadVariableOp(conv3d_16_conv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02!
conv3d_16/Conv3D/ReadVariableOp?
conv3d_16/Conv3DConv3Dconcatenate_3/concat:output:0'conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
conv3d_16/Conv3D?
 conv3d_16/BiasAdd/ReadVariableOpReadVariableOp)conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv3d_16/BiasAdd/ReadVariableOp?
conv3d_16/BiasAddBiasAddconv3d_16/Conv3D:output:0(conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_16/BiasAdd?
conv3d_16/ReluReluconv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_16/Relu?
conv3d_17/Conv3D/ReadVariableOpReadVariableOp(conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02!
conv3d_17/Conv3D/ReadVariableOp?
conv3d_17/Conv3DConv3Dconv3d_16/Relu:activations:0'conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
conv3d_17/Conv3D?
 conv3d_17/BiasAdd/ReadVariableOpReadVariableOp)conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv3d_17/BiasAdd/ReadVariableOp?
conv3d_17/BiasAddBiasAddconv3d_17/Conv3D:output:0(conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_17/BiasAdd?
conv3d_17/ReluReluconv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
conv3d_17/Relu?
conv3d_18/Conv3D/ReadVariableOpReadVariableOp(conv3d_18_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype02!
conv3d_18/Conv3D/ReadVariableOp?
conv3d_18/Conv3DConv3Dconv3d_17/Relu:activations:0'conv3d_18/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp*
paddingSAME*
strides	
2
conv3d_18/Conv3D?
 conv3d_18/BiasAdd/ReadVariableOpReadVariableOp)conv3d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv3d_18/BiasAdd/ReadVariableOp?
conv3d_18/BiasAddBiasAddconv3d_18/Conv3D:output:0(conv3d_18/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp2
conv3d_18/BiasAdd?
conv3d_18/SigmoidSigmoidconv3d_18/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp2
conv3d_18/Sigmoid|
IdentityIdentityconv3d_18/Sigmoid:y:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

Identity?

NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp ^conv3d_1/BiasAdd/ReadVariableOp^conv3d_1/Conv3D/ReadVariableOp!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp!^conv3d_12/BiasAdd/ReadVariableOp ^conv3d_12/Conv3D/ReadVariableOp!^conv3d_13/BiasAdd/ReadVariableOp ^conv3d_13/Conv3D/ReadVariableOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp!^conv3d_18/BiasAdd/ReadVariableOp ^conv3d_18/Conv3D/ReadVariableOp ^conv3d_2/BiasAdd/ReadVariableOp^conv3d_2/Conv3D/ReadVariableOp ^conv3d_3/BiasAdd/ReadVariableOp^conv3d_3/Conv3D/ReadVariableOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp ^conv3d_7/BiasAdd/ReadVariableOp^conv3d_7/Conv3D/ReadVariableOp ^conv3d_8/BiasAdd/ReadVariableOp^conv3d_8/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp2B
conv3d_1/BiasAdd/ReadVariableOpconv3d_1/BiasAdd/ReadVariableOp2@
conv3d_1/Conv3D/ReadVariableOpconv3d_1/Conv3D/ReadVariableOp2D
 conv3d_10/BiasAdd/ReadVariableOp conv3d_10/BiasAdd/ReadVariableOp2B
conv3d_10/Conv3D/ReadVariableOpconv3d_10/Conv3D/ReadVariableOp2D
 conv3d_11/BiasAdd/ReadVariableOp conv3d_11/BiasAdd/ReadVariableOp2B
conv3d_11/Conv3D/ReadVariableOpconv3d_11/Conv3D/ReadVariableOp2D
 conv3d_12/BiasAdd/ReadVariableOp conv3d_12/BiasAdd/ReadVariableOp2B
conv3d_12/Conv3D/ReadVariableOpconv3d_12/Conv3D/ReadVariableOp2D
 conv3d_13/BiasAdd/ReadVariableOp conv3d_13/BiasAdd/ReadVariableOp2B
conv3d_13/Conv3D/ReadVariableOpconv3d_13/Conv3D/ReadVariableOp2D
 conv3d_14/BiasAdd/ReadVariableOp conv3d_14/BiasAdd/ReadVariableOp2B
conv3d_14/Conv3D/ReadVariableOpconv3d_14/Conv3D/ReadVariableOp2D
 conv3d_15/BiasAdd/ReadVariableOp conv3d_15/BiasAdd/ReadVariableOp2B
conv3d_15/Conv3D/ReadVariableOpconv3d_15/Conv3D/ReadVariableOp2D
 conv3d_16/BiasAdd/ReadVariableOp conv3d_16/BiasAdd/ReadVariableOp2B
conv3d_16/Conv3D/ReadVariableOpconv3d_16/Conv3D/ReadVariableOp2D
 conv3d_17/BiasAdd/ReadVariableOp conv3d_17/BiasAdd/ReadVariableOp2B
conv3d_17/Conv3D/ReadVariableOpconv3d_17/Conv3D/ReadVariableOp2D
 conv3d_18/BiasAdd/ReadVariableOp conv3d_18/BiasAdd/ReadVariableOp2B
conv3d_18/Conv3D/ReadVariableOpconv3d_18/Conv3D/ReadVariableOp2B
conv3d_2/BiasAdd/ReadVariableOpconv3d_2/BiasAdd/ReadVariableOp2@
conv3d_2/Conv3D/ReadVariableOpconv3d_2/Conv3D/ReadVariableOp2B
conv3d_3/BiasAdd/ReadVariableOpconv3d_3/BiasAdd/ReadVariableOp2@
conv3d_3/Conv3D/ReadVariableOpconv3d_3/Conv3D/ReadVariableOp2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2B
conv3d_7/BiasAdd/ReadVariableOpconv3d_7/BiasAdd/ReadVariableOp2@
conv3d_7/Conv3D/ReadVariableOpconv3d_7/Conv3D/ReadVariableOp2B
conv3d_8/BiasAdd/ReadVariableOpconv3d_8/BiasAdd/ReadVariableOp2@
conv3d_8/Conv3D/ReadVariableOpconv3d_8/Conv3D/ReadVariableOp2B
conv3d_9/BiasAdd/ReadVariableOpconv3d_9/BiasAdd/ReadVariableOp2@
conv3d_9/Conv3D/ReadVariableOpconv3d_9/Conv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp
 
_user_specified_nameinputs
?
s
G__inference_concatenate_2_layer_call_and_return_conditional_losses_5424
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :?????????888?2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :?????????888?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:?????????888?:?????????888?:^ Z
4
_output_shapes"
 :?????????888?
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :?????????888?
"
_user_specified_name
inputs/1
?
?
%__inference_conv3d_layer_call_fn_4930

inputs%
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_conv3d_layer_call_and_return_conditional_losses_20402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp 2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????ppp
 
_user_specified_nameinputs
?
?
B__inference_conv3d_7_layer_call_and_return_conditional_losses_2162

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
'__inference_conv3d_1_layer_call_fn_4950

inputs%
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_1_layer_call_and_return_conditional_losses_20572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp@2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????ppp 
 
_user_specified_nameinputs
?
?
B__inference_conv3d_1_layer_call_and_return_conditional_losses_2057

inputs<
conv3d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: @*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????ppp@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp 
 
_user_specified_nameinputs
?
?
C__inference_conv3d_10_layer_call_and_return_conditional_losses_2259

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
B__inference_conv3d_3_layer_call_and_return_conditional_losses_4981

inputs=
conv3d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@?*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????888?2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????888?2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????888@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?$
e
I__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_5257

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
C__inference_conv3d_15_layer_call_and_return_conditional_losses_5461

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????888@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????888@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
?
(__inference_conv3d_14_layer_call_fn_5450

inputs&
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_14_layer_call_and_return_conditional_losses_25012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????888@2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????888?: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????888?
 
_user_specified_nameinputs
?
?
'__inference_conv3d_7_layer_call_fn_5070

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_7_layer_call_and_return_conditional_losses_21622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
C__inference_conv3d_16_layer_call_and_return_conditional_losses_5680

inputs=
conv3d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????ppp@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????ppp?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :?????????ppp?
 
_user_specified_nameinputs
?
?
(__inference_conv3d_16_layer_call_fn_5689

inputs&
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_16_layer_call_and_return_conditional_losses_27272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp@2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????ppp?: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????ppp?
 
_user_specified_nameinputs
?
?
+__inference_Unet_5x2_32F_layer_call_fn_3443
input_1%
unknown: 
	unknown_0: '
	unknown_1: @
	unknown_2:@'
	unknown_3:@@
	unknown_4:@(
	unknown_5:@?
	unknown_6:	?)
	unknown_7:??
	unknown_8:	?)
	unknown_9:??

unknown_10:	?*

unknown_11:??

unknown_12:	?*

unknown_13:??

unknown_14:	?*

unknown_15:??

unknown_16:	?*

unknown_17:??

unknown_18:	?*

unknown_19:??

unknown_20:	?*

unknown_21:??

unknown_22:	?*

unknown_23:??

unknown_24:	?*

unknown_25:??

unknown_26:	?)

unknown_27:?@

unknown_28:@(

unknown_29:@@

unknown_30:@)

unknown_31:?@

unknown_32:@(

unknown_33:@@

unknown_34:@(

unknown_35:@

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_32832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:?????????ppp
!
_user_specified_name	input_1
?
?
(__inference_conv3d_15_layer_call_fn_5470

inputs%
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_15_layer_call_and_return_conditional_losses_25182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????888@2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????888@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?:
e
I__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_2479

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15split:output:16split:output:16split:output:17split:output:17split:output:18split:output:18split:output:19split:output:19split:output:20split:output:20split:output:21split:output:21split:output:22split:output:22split:output:23split:output:23split:output:24split:output:24split:output:25split:output:25split:output:26split:output:26split:output:27split:output:27concat/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????8?2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?	
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13split_1:output:14split_1:output:14split_1:output:15split_1:output:15split_1:output:16split_1:output:16split_1:output:17split_1:output:17split_1:output:18split_1:output:18split_1:output:19split_1:output:19split_1:output:20split_1:output:20split_1:output:21split_1:output:21split_1:output:22split_1:output:22split_1:output:23split_1:output:23split_1:output:24split_1:output:24split_1:output:25split_1:output:25split_1:output:26split_1:output:26split_1:output:27split_1:output:27concat_1/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????88?2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?	
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13split_2:output:14split_2:output:14split_2:output:15split_2:output:15split_2:output:16split_2:output:16split_2:output:17split_2:output:17split_2:output:18split_2:output:18split_2:output:19split_2:output:19split_2:output:20split_2:output:20split_2:output:21split_2:output:21split_2:output:22split_2:output:22split_2:output:23split_2:output:23split_2:output:24split_2:output:24split_2:output:25split_2:output:25split_2:output:26split_2:output:26split_2:output:27split_2:output:27concat_2/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????888?2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :?????????888?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
B__inference_conv3d_2_layer_call_and_return_conditional_losses_4961

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????888@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????888@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
?
B__inference_conv3d_9_layer_call_and_return_conditional_losses_5101

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?$
e
I__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_2337

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
J
.__inference_max_pooling3d_2_layer_call_fn_2010

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_20042
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
B__inference_conv3d_7_layer_call_and_return_conditional_losses_5061

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
C__inference_conv3d_15_layer_call_and_return_conditional_losses_2518

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????888@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????888@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
?
C__inference_conv3d_14_layer_call_and_return_conditional_losses_5441

inputs=
conv3d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????888@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????888?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :?????????888?
 
_user_specified_nameinputs
?
?
B__inference_conv3d_3_layer_call_and_return_conditional_losses_2092

inputs=
conv3d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:@?*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????888?2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :?????????888?2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :?????????888?2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????888@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
?
'__inference_conv3d_3_layer_call_fn_4990

inputs&
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_3_layer_call_and_return_conditional_losses_20922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????888?2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????888@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
s
G__inference_concatenate_1_layer_call_and_return_conditional_losses_5269
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:??????????:^ Z
4
_output_shapes"
 :??????????
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :??????????
"
_user_specified_name
inputs/1
?
e
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_2004

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?

"__inference_signature_wrapper_3748
input_1%
unknown: 
	unknown_0: '
	unknown_1: @
	unknown_2:@'
	unknown_3:@@
	unknown_4:@(
	unknown_5:@?
	unknown_6:	?)
	unknown_7:??
	unknown_8:	?)
	unknown_9:??

unknown_10:	?*

unknown_11:??

unknown_12:	?*

unknown_13:??

unknown_14:	?*

unknown_15:??

unknown_16:	?*

unknown_17:??

unknown_18:	?*

unknown_19:??

unknown_20:	?*

unknown_21:??

unknown_22:	?*

unknown_23:??

unknown_24:	?*

unknown_25:??

unknown_26:	?)

unknown_27:?@

unknown_28:@(

unknown_29:@@

unknown_30:@)

unknown_31:?@

unknown_32:@(

unknown_33:@@

unknown_34:@(

unknown_35:@

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????ppp*H
_read_only_resource_inputs*
(&	
 !"#$%&*2
config_proto" 

CPU

GPU2 *0J 8? *(
f#R!
__inference__wrapped_model_19742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????ppp2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:?????????ppp: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:?????????ppp
!
_user_specified_name	input_1
?
J
.__inference_up_sampling3d_2_layer_call_fn_5417

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_24792
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :?????????888?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
X
,__inference_concatenate_2_layer_call_fn_5430
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????888?* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_concatenate_2_layer_call_and_return_conditional_losses_24882
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :?????????888?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:?????????888?:?????????888?:^ Z
4
_output_shapes"
 :?????????888?
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :?????????888?
"
_user_specified_name
inputs/1
?
?
B__inference_conv3d_5_layer_call_and_return_conditional_losses_2127

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?f
e
I__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_2705

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@:?????????88@*
	num_split82
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15split:output:16split:output:16split:output:17split:output:17split:output:18split:output:18split:output:19split:output:19split:output:20split:output:20split:output:21split:output:21split:output:22split:output:22split:output:23split:output:23split:output:24split:output:24split:output:25split:output:25split:output:26split:output:26split:output:27split:output:27split:output:28split:output:28split:output:29split:output:29split:output:30split:output:30split:output:31split:output:31split:output:32split:output:32split:output:33split:output:33split:output:34split:output:34split:output:35split:output:35split:output:36split:output:36split:output:37split:output:37split:output:38split:output:38split:output:39split:output:39split:output:40split:output:40split:output:41split:output:41split:output:42split:output:42split:output:43split:output:43split:output:44split:output:44split:output:45split:output:45split:output:46split:output:46split:output:47split:output:47split:output:48split:output:48split:output:49split:output:49split:output:50split:output:50split:output:51split:output:51split:output:52split:output:52split:output:53split:output:53split:output:54split:output:54split:output:55split:output:55concat/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????p88@2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@:?????????p8@*
	num_split82	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13split_1:output:14split_1:output:14split_1:output:15split_1:output:15split_1:output:16split_1:output:16split_1:output:17split_1:output:17split_1:output:18split_1:output:18split_1:output:19split_1:output:19split_1:output:20split_1:output:20split_1:output:21split_1:output:21split_1:output:22split_1:output:22split_1:output:23split_1:output:23split_1:output:24split_1:output:24split_1:output:25split_1:output:25split_1:output:26split_1:output:26split_1:output:27split_1:output:27split_1:output:28split_1:output:28split_1:output:29split_1:output:29split_1:output:30split_1:output:30split_1:output:31split_1:output:31split_1:output:32split_1:output:32split_1:output:33split_1:output:33split_1:output:34split_1:output:34split_1:output:35split_1:output:35split_1:output:36split_1:output:36split_1:output:37split_1:output:37split_1:output:38split_1:output:38split_1:output:39split_1:output:39split_1:output:40split_1:output:40split_1:output:41split_1:output:41split_1:output:42split_1:output:42split_1:output:43split_1:output:43split_1:output:44split_1:output:44split_1:output:45split_1:output:45split_1:output:46split_1:output:46split_1:output:47split_1:output:47split_1:output:48split_1:output:48split_1:output:49split_1:output:49split_1:output:50split_1:output:50split_1:output:51split_1:output:51split_1:output:52split_1:output:52split_1:output:53split_1:output:53split_1:output:54split_1:output:54split_1:output:55split_1:output:55concat_1/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????pp8@2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@:?????????pp@*
	num_split82	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13split_2:output:14split_2:output:14split_2:output:15split_2:output:15split_2:output:16split_2:output:16split_2:output:17split_2:output:17split_2:output:18split_2:output:18split_2:output:19split_2:output:19split_2:output:20split_2:output:20split_2:output:21split_2:output:21split_2:output:22split_2:output:22split_2:output:23split_2:output:23split_2:output:24split_2:output:24split_2:output:25split_2:output:25split_2:output:26split_2:output:26split_2:output:27split_2:output:27split_2:output:28split_2:output:28split_2:output:29split_2:output:29split_2:output:30split_2:output:30split_2:output:31split_2:output:31split_2:output:32split_2:output:32split_2:output:33split_2:output:33split_2:output:34split_2:output:34split_2:output:35split_2:output:35split_2:output:36split_2:output:36split_2:output:37split_2:output:37split_2:output:38split_2:output:38split_2:output:39split_2:output:39split_2:output:40split_2:output:40split_2:output:41split_2:output:41split_2:output:42split_2:output:42split_2:output:43split_2:output:43split_2:output:44split_2:output:44split_2:output:45split_2:output:45split_2:output:46split_2:output:46split_2:output:47split_2:output:47split_2:output:48split_2:output:48split_2:output:49split_2:output:49split_2:output:50split_2:output:50split_2:output:51split_2:output:51split_2:output:52split_2:output:52split_2:output:53split_2:output:53split_2:output:54split_2:output:54split_2:output:55split_2:output:55concat_2/axis:output:0*
Np*
T0*3
_output_shapes!
:?????????ppp@2

concat_2q
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:?????????ppp@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????888@:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
?
'__inference_conv3d_2_layer_call_fn_4970

inputs%
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????888@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_2_layer_call_and_return_conditional_losses_20752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????888@2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????888@: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????888@
 
_user_specified_nameinputs
?
?
B__inference_conv3d_8_layer_call_and_return_conditional_losses_5081

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
C__inference_conv3d_17_layer_call_and_return_conditional_losses_2744

inputs<
conv3d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:@@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????ppp@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ppp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????ppp@
 
_user_specified_nameinputs
?
?
C__inference_conv3d_13_layer_call_and_return_conditional_losses_2376

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
B__inference_conv3d_6_layer_call_and_return_conditional_losses_2145

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
c
G__inference_max_pooling3d_layer_call_and_return_conditional_losses_1980

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
c
G__inference_up_sampling3d_layer_call_and_return_conditional_losses_2237

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
C__inference_conv3d_16_layer_call_and_return_conditional_losses_2727

inputs=
conv3d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????ppp@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????ppp@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????ppp@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????ppp?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :?????????ppp?
 
_user_specified_nameinputs
?
?
B__inference_conv3d_9_layer_call_and_return_conditional_losses_2197

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
(__inference_conv3d_11_layer_call_fn_5202

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_conv3d_11_layer_call_and_return_conditional_losses_22762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?:
e
I__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_5412

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6split:output:7split:output:7split:output:8split:output:8split:output:9split:output:9split:output:10split:output:10split:output:11split:output:11split:output:12split:output:12split:output:13split:output:13split:output:14split:output:14split:output:15split:output:15split:output:16split:output:16split:output:17split:output:17split:output:18split:output:18split:output:19split:output:19split:output:20split:output:20split:output:21split:output:21split:output:22split:output:22split:output:23split:output:23split:output:24split:output:24split:output:25split:output:25split:output:26split:output:26split:output:27split:output:27concat/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????8?2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?:?????????8?*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?	
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6split_1:output:7split_1:output:7split_1:output:8split_1:output:8split_1:output:9split_1:output:9split_1:output:10split_1:output:10split_1:output:11split_1:output:11split_1:output:12split_1:output:12split_1:output:13split_1:output:13split_1:output:14split_1:output:14split_1:output:15split_1:output:15split_1:output:16split_1:output:16split_1:output:17split_1:output:17split_1:output:18split_1:output:18split_1:output:19split_1:output:19split_1:output:20split_1:output:20split_1:output:21split_1:output:21split_1:output:22split_1:output:22split_1:output:23split_1:output:23split_1:output:24split_1:output:24split_1:output:25split_1:output:25split_1:output:26split_1:output:26split_1:output:27split_1:output:27concat_1/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????88?2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?:?????????88?*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?	
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6split_2:output:7split_2:output:7split_2:output:8split_2:output:8split_2:output:9split_2:output:9split_2:output:10split_2:output:10split_2:output:11split_2:output:11split_2:output:12split_2:output:12split_2:output:13split_2:output:13split_2:output:14split_2:output:14split_2:output:15split_2:output:15split_2:output:16split_2:output:16split_2:output:17split_2:output:17split_2:output:18split_2:output:18split_2:output:19split_2:output:19split_2:output:20split_2:output:20split_2:output:21split_2:output:21split_2:output:22split_2:output:22split_2:output:23split_2:output:23split_2:output:24split_2:output:24split_2:output:25split_2:output:25split_2:output:26split_2:output:26split_2:output:27split_2:output:27concat_2/axis:output:0*
N8*
T0*4
_output_shapes"
 :?????????888?2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :?????????888?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
'__inference_conv3d_5_layer_call_fn_5030

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_5_layer_call_and_return_conditional_losses_21272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
e
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_2016

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingVALID*
strides	
2
	MaxPool3D?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?P
?
__inference__traced_save_5866
file_prefix,
(savev2_conv3d_kernel_read_readvariableop*
&savev2_conv3d_bias_read_readvariableop.
*savev2_conv3d_1_kernel_read_readvariableop,
(savev2_conv3d_1_bias_read_readvariableop.
*savev2_conv3d_2_kernel_read_readvariableop,
(savev2_conv3d_2_bias_read_readvariableop.
*savev2_conv3d_3_kernel_read_readvariableop,
(savev2_conv3d_3_bias_read_readvariableop.
*savev2_conv3d_4_kernel_read_readvariableop,
(savev2_conv3d_4_bias_read_readvariableop.
*savev2_conv3d_5_kernel_read_readvariableop,
(savev2_conv3d_5_bias_read_readvariableop.
*savev2_conv3d_6_kernel_read_readvariableop,
(savev2_conv3d_6_bias_read_readvariableop.
*savev2_conv3d_7_kernel_read_readvariableop,
(savev2_conv3d_7_bias_read_readvariableop.
*savev2_conv3d_8_kernel_read_readvariableop,
(savev2_conv3d_8_bias_read_readvariableop.
*savev2_conv3d_9_kernel_read_readvariableop,
(savev2_conv3d_9_bias_read_readvariableop/
+savev2_conv3d_10_kernel_read_readvariableop-
)savev2_conv3d_10_bias_read_readvariableop/
+savev2_conv3d_11_kernel_read_readvariableop-
)savev2_conv3d_11_bias_read_readvariableop/
+savev2_conv3d_12_kernel_read_readvariableop-
)savev2_conv3d_12_bias_read_readvariableop/
+savev2_conv3d_13_kernel_read_readvariableop-
)savev2_conv3d_13_bias_read_readvariableop/
+savev2_conv3d_14_kernel_read_readvariableop-
)savev2_conv3d_14_bias_read_readvariableop/
+savev2_conv3d_15_kernel_read_readvariableop-
)savev2_conv3d_15_bias_read_readvariableop/
+savev2_conv3d_16_kernel_read_readvariableop-
)savev2_conv3d_16_bias_read_readvariableop/
+savev2_conv3d_17_kernel_read_readvariableop-
)savev2_conv3d_17_bias_read_readvariableop/
+savev2_conv3d_18_kernel_read_readvariableop-
)savev2_conv3d_18_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv3d_kernel_read_readvariableop&savev2_conv3d_bias_read_readvariableop*savev2_conv3d_1_kernel_read_readvariableop(savev2_conv3d_1_bias_read_readvariableop*savev2_conv3d_2_kernel_read_readvariableop(savev2_conv3d_2_bias_read_readvariableop*savev2_conv3d_3_kernel_read_readvariableop(savev2_conv3d_3_bias_read_readvariableop*savev2_conv3d_4_kernel_read_readvariableop(savev2_conv3d_4_bias_read_readvariableop*savev2_conv3d_5_kernel_read_readvariableop(savev2_conv3d_5_bias_read_readvariableop*savev2_conv3d_6_kernel_read_readvariableop(savev2_conv3d_6_bias_read_readvariableop*savev2_conv3d_7_kernel_read_readvariableop(savev2_conv3d_7_bias_read_readvariableop*savev2_conv3d_8_kernel_read_readvariableop(savev2_conv3d_8_bias_read_readvariableop*savev2_conv3d_9_kernel_read_readvariableop(savev2_conv3d_9_bias_read_readvariableop+savev2_conv3d_10_kernel_read_readvariableop)savev2_conv3d_10_bias_read_readvariableop+savev2_conv3d_11_kernel_read_readvariableop)savev2_conv3d_11_bias_read_readvariableop+savev2_conv3d_12_kernel_read_readvariableop)savev2_conv3d_12_bias_read_readvariableop+savev2_conv3d_13_kernel_read_readvariableop)savev2_conv3d_13_bias_read_readvariableop+savev2_conv3d_14_kernel_read_readvariableop)savev2_conv3d_14_bias_read_readvariableop+savev2_conv3d_15_kernel_read_readvariableop)savev2_conv3d_15_bias_read_readvariableop+savev2_conv3d_16_kernel_read_readvariableop)savev2_conv3d_16_bias_read_readvariableop+savev2_conv3d_17_kernel_read_readvariableop)savev2_conv3d_17_bias_read_readvariableop+savev2_conv3d_18_kernel_read_readvariableop)savev2_conv3d_18_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1?
NoOpNoOp^MergeV2Checkpoints*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@@:@:@?:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:?@:@:@@:@:?@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
: : 

_output_shapes
: :0,
*
_output_shapes
: @: 

_output_shapes
:@:0,
*
_output_shapes
:@@: 

_output_shapes
:@:1-
+
_output_shapes
:@?:!

_output_shapes	
:?:2	.
,
_output_shapes
:??:!


_output_shapes	
:?:2.
,
_output_shapes
:??:!

_output_shapes	
:?:2.
,
_output_shapes
:??:!

_output_shapes	
:?:2.
,
_output_shapes
:??:!

_output_shapes	
:?:2.
,
_output_shapes
:??:!

_output_shapes	
:?:2.
,
_output_shapes
:??:!

_output_shapes	
:?:2.
,
_output_shapes
:??:!

_output_shapes	
:?:2.
,
_output_shapes
:??:!

_output_shapes	
:?:2.
,
_output_shapes
:??:!

_output_shapes	
:?:2.
,
_output_shapes
:??:!

_output_shapes	
:?:1-
+
_output_shapes
:?@: 

_output_shapes
:@:0,
*
_output_shapes
:@@:  

_output_shapes
:@:1!-
+
_output_shapes
:?@: "

_output_shapes
:@:0#,
*
_output_shapes
:@@: $

_output_shapes
:@:0%,
*
_output_shapes
:@: &

_output_shapes
::'

_output_shapes
: 
?
?
C__inference_conv3d_14_layer_call_and_return_conditional_losses_2501

inputs=
conv3d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*+
_output_shapes
:?@*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????888@2	
BiasAddd
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????888@2
Reluy
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????888@2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????888?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :?????????888?
 
_user_specified_nameinputs
?
J
.__inference_max_pooling3d_3_layer_call_fn_2022

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_20162
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
B__inference_conv3d_5_layer_call_and_return_conditional_losses_5021

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
c
G__inference_up_sampling3d_layer_call_and_return_conditional_losses_5144

inputs
identityd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2
split\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3split:output:4split:output:4split:output:5split:output:5split:output:6split:output:6concat/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2
concath
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2	
split_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3split_1:output:4split_1:output:4split_1:output:5split_1:output:5split_1:output:6split_1:output:6concat_1/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????*
	num_split2	
split_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/axis?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1split_2:output:2split_2:output:2split_2:output:3split_2:output:3split_2:output:4split_2:output:4split_2:output:5split_2:output:5split_2:output:6split_2:output:6concat_2/axis:output:0*
N*
T0*4
_output_shapes"
 :??????????2

concat_2r
IdentityIdentityconcat_2:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
'__inference_conv3d_9_layer_call_fn_5110

inputs'
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_conv3d_9_layer_call_and_return_conditional_losses_21972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????2

IdentityD
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
?
C__inference_conv3d_12_layer_call_and_return_conditional_losses_2359

inputs>
conv3d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource*,
_output_shapes
:??*
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????2	
BiasAdde
ReluReluBiasAdd:output:0*
T0*4
_output_shapes"
 :??????????2
Reluz
IdentityIdentityRelu:activations:0^NoOp*
T0*4
_output_shapes"
 :??????????2

Identity[
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:\ X
4
_output_shapes"
 :??????????
 
_user_specified_nameinputs
?
V
*__inference_concatenate_layer_call_fn_5162
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_22462
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:??????????:^ Z
4
_output_shapes"
 :??????????
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :??????????
"
_user_specified_name
inputs/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
input_1<
serving_default_input_1:0?????????pppI
	conv3d_18<
StatefulPartitionedCall:0?????????ppptensorflow/serving/predict:??
ܵ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer-19
layer-20
layer_with_weights-12
layer-21
layer_with_weights-13
layer-22
layer-23
layer-24
layer_with_weights-14
layer-25
layer_with_weights-15
layer-26
layer-27
layer-28
layer_with_weights-16
layer-29
layer_with_weights-17
layer-30
 layer_with_weights-18
 layer-31
!trainable_variables
"regularization_losses
#	variables
$	keras_api
%
signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"??
_tf_keras_networkҬ{"name": "Unet_5x2_32F", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "Unet_5x2_32F", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 112, 112, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv3D", "config": {"name": "conv3d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_1", "inbound_nodes": [[["conv3d", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d", "inbound_nodes": [[["conv3d_1", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_2", "inbound_nodes": [[["max_pooling3d", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_3", "inbound_nodes": [[["conv3d_2", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_1", "inbound_nodes": [[["conv3d_3", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_4", "inbound_nodes": [[["max_pooling3d_1", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_5", "inbound_nodes": [[["conv3d_4", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_2", "inbound_nodes": [[["conv3d_5", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_6", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_6", "inbound_nodes": [[["max_pooling3d_2", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_7", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_7", "inbound_nodes": [[["conv3d_6", 0, 0, {}]]]}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_3", "inbound_nodes": [[["conv3d_7", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_8", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_8", "inbound_nodes": [[["max_pooling3d_3", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_9", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_9", "inbound_nodes": [[["conv3d_8", 0, 0, {}]]]}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "up_sampling3d", "inbound_nodes": [[["conv3d_9", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["up_sampling3d", 0, 0, {}], ["conv3d_7", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_10", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_10", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_11", "inbound_nodes": [[["conv3d_10", 0, 0, {}]]]}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "up_sampling3d_1", "inbound_nodes": [[["conv3d_11", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["up_sampling3d_1", 0, 0, {}], ["conv3d_5", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_12", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_13", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_13", "inbound_nodes": [[["conv3d_12", 0, 0, {}]]]}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "up_sampling3d_2", "inbound_nodes": [[["conv3d_13", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["up_sampling3d_2", 0, 0, {}], ["conv3d_3", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_14", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_15", "inbound_nodes": [[["conv3d_14", 0, 0, {}]]]}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "up_sampling3d_3", "inbound_nodes": [[["conv3d_15", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["up_sampling3d_3", 0, 0, {}], ["conv3d_1", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_16", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_17", "inbound_nodes": [[["conv3d_16", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "conv3d_18", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_18", "inbound_nodes": [[["conv3d_17", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["conv3d_18", 0, 0]]}, "shared_object_id": 70, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 112, 112, 112, 1]}, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 112, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 112, 112, 112, 1]}, "float32", "input_1"]}, "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Unet_5x2_32F", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 112, 112, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv3D", "config": {"name": "conv3d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Conv3D", "config": {"name": "conv3d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_1", "inbound_nodes": [[["conv3d", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d", "inbound_nodes": [[["conv3d_1", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Conv3D", "config": {"name": "conv3d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_2", "inbound_nodes": [[["max_pooling3d", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Conv3D", "config": {"name": "conv3d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_3", "inbound_nodes": [[["conv3d_2", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_1", "inbound_nodes": [[["conv3d_3", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "Conv3D", "config": {"name": "conv3d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_4", "inbound_nodes": [[["max_pooling3d_1", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Conv3D", "config": {"name": "conv3d_5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_5", "inbound_nodes": [[["conv3d_4", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_2", "inbound_nodes": [[["conv3d_5", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Conv3D", "config": {"name": "conv3d_6", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_6", "inbound_nodes": [[["max_pooling3d_2", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Conv3D", "config": {"name": "conv3d_7", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_7", "inbound_nodes": [[["conv3d_6", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "max_pooling3d_3", "inbound_nodes": [[["conv3d_7", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Conv3D", "config": {"name": "conv3d_8", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_8", "inbound_nodes": [[["max_pooling3d_3", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "Conv3D", "config": {"name": "conv3d_9", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_9", "inbound_nodes": [[["conv3d_8", 0, 0, {}]]], "shared_object_id": 34}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "up_sampling3d", "inbound_nodes": [[["conv3d_9", 0, 0, {}]]], "shared_object_id": 35}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["up_sampling3d", 0, 0, {}], ["conv3d_7", 0, 0, {}]]], "shared_object_id": 36}, {"class_name": "Conv3D", "config": {"name": "conv3d_10", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_10", "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Conv3D", "config": {"name": "conv3d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 40}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_11", "inbound_nodes": [[["conv3d_10", 0, 0, {}]]], "shared_object_id": 42}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "up_sampling3d_1", "inbound_nodes": [[["conv3d_11", 0, 0, {}]]], "shared_object_id": 43}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["up_sampling3d_1", 0, 0, {}], ["conv3d_5", 0, 0, {}]]], "shared_object_id": 44}, {"class_name": "Conv3D", "config": {"name": "conv3d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 45}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_12", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 47}, {"class_name": "Conv3D", "config": {"name": "conv3d_13", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 48}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 49}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_13", "inbound_nodes": [[["conv3d_12", 0, 0, {}]]], "shared_object_id": 50}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "up_sampling3d_2", "inbound_nodes": [[["conv3d_13", 0, 0, {}]]], "shared_object_id": 51}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["up_sampling3d_2", 0, 0, {}], ["conv3d_3", 0, 0, {}]]], "shared_object_id": 52}, {"class_name": "Conv3D", "config": {"name": "conv3d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 53}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 54}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_14", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 55}, {"class_name": "Conv3D", "config": {"name": "conv3d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 56}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 57}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_15", "inbound_nodes": [[["conv3d_14", 0, 0, {}]]], "shared_object_id": 58}, {"class_name": "UpSampling3D", "config": {"name": "up_sampling3d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "name": "up_sampling3d_3", "inbound_nodes": [[["conv3d_15", 0, 0, {}]]], "shared_object_id": 59}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["up_sampling3d_3", 0, 0, {}], ["conv3d_1", 0, 0, {}]]], "shared_object_id": 60}, {"class_name": "Conv3D", "config": {"name": "conv3d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 61}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 62}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_16", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 63}, {"class_name": "Conv3D", "config": {"name": "conv3d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_17", "inbound_nodes": [[["conv3d_16", 0, 0, {}]]], "shared_object_id": 66}, {"class_name": "Conv3D", "config": {"name": "conv3d_18", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 67}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 68}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3d_18", "inbound_nodes": [[["conv3d_17", 0, 0, {}]]], "shared_object_id": 69}], "input_layers": [["input_1", 0, 0]], "output_layers": [["conv3d_18", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 112, 112, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 112, 112, 112, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
?

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 1}}, "shared_object_id": 72}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 112, 1]}}
?

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 32}}, "shared_object_id": 73}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 112, 32]}}
?
2trainable_variables
3regularization_losses
4	variables
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling3d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling3D", "config": {"name": "max_pooling3d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv3d_1", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 74}}
?

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling3d", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 64}}, "shared_object_id": 75}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 56, 64]}}
?

<kernel
=bias
>trainable_variables
?regularization_losses
@	variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_2", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 64}}, "shared_object_id": 76}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 56, 64]}}
?
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling3d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv3d_3", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 77}}
?

Fkernel
Gbias
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling3d_1", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 128}}, "shared_object_id": 78}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 28, 128]}}
?

Lkernel
Mbias
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_4", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 128}}, "shared_object_id": 79}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 28, 128]}}
?
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling3d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv3d_5", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 80}}
?

Vkernel
Wbias
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_6", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling3d_2", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 256}}, "shared_object_id": 81}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 14, 256]}}
?

\kernel
]bias
^trainable_variables
_regularization_losses
`	variables
a	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_7", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_6", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 256}}, "shared_object_id": 82}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 14, 256]}}
?
btrainable_variables
cregularization_losses
d	variables
e	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling3d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling3D", "config": {"name": "max_pooling3d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv3d_7", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 83}}
?

fkernel
gbias
htrainable_variables
iregularization_losses
j	variables
k	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_8", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling3d_3", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 512}}, "shared_object_id": 84}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 7, 512]}}
?

lkernel
mbias
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_9", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_8", 0, 0, {}]]], "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 256}}, "shared_object_id": 85}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 7, 256]}}
?
rtrainable_variables
sregularization_losses
t	variables
u	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "up_sampling3d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv3d_9", 0, 0, {}]]], "shared_object_id": 35}
?
vtrainable_variables
wregularization_losses
x	variables
y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["up_sampling3d", 0, 0, {}], ["conv3d_7", 0, 0, {}]]], "shared_object_id": 36, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 14, 14, 14, 512]}, {"class_name": "TensorShape", "items": [null, 14, 14, 14, 512]}]}
?

zkernel
{bias
|trainable_variables
}regularization_losses
~	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_10", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 1024}}, "shared_object_id": 86}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 14, 1024]}}
?
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_11", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 40}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_10", 0, 0, {}]]], "shared_object_id": 42, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 256}}, "shared_object_id": 87}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 14, 256]}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "up_sampling3d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d_1", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv3d_11", 0, 0, {}]]], "shared_object_id": 43}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["up_sampling3d_1", 0, 0, {}], ["conv3d_5", 0, 0, {}]]], "shared_object_id": 44, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 28, 28, 28, 256]}, {"class_name": "TensorShape", "items": [null, 28, 28, 28, 256]}]}
?
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 45}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 46}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 47, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 512}}, "shared_object_id": 88}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 28, 512]}}
?
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_13", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 48}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 49}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_12", 0, 0, {}]]], "shared_object_id": 50, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 128}}, "shared_object_id": 89}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 28, 128]}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "up_sampling3d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d_2", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv3d_13", 0, 0, {}]]], "shared_object_id": 51}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "concatenate_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["up_sampling3d_2", 0, 0, {}], ["conv3d_3", 0, 0, {}]]], "shared_object_id": 52, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 56, 56, 56, 128]}, {"class_name": "TensorShape", "items": [null, 56, 56, 56, 128]}]}
?
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 53}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 54}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 55, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 256}}, "shared_object_id": 90}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 56, 256]}}
?
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_15", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 56}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 57}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_14", 0, 0, {}]]], "shared_object_id": 58, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 64}}, "shared_object_id": 91}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 56, 64]}}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "up_sampling3d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling3D", "config": {"name": "up_sampling3d_3", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv3d_15", 0, 0, {}]]], "shared_object_id": 59}
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "concatenate_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["up_sampling3d_3", 0, 0, {}], ["conv3d_1", 0, 0, {}]]], "shared_object_id": 60, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 112, 112, 112, 64]}, {"class_name": "TensorShape", "items": [null, 112, 112, 112, 64]}]}
?
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 61}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 62}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 63, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 128}}, "shared_object_id": 92}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 112, 128]}}
?
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 64}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 65}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_16", 0, 0, {}]]], "shared_object_id": 66, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 64}}, "shared_object_id": 93}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 112, 64]}}
?
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv3d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "conv3d_18", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [1, 1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 67}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 68}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv3d_17", 0, 0, {}]]], "shared_object_id": 69, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 64}}, "shared_object_id": 94}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 112, 64]}}
?
&0
'1
,2
-3
64
75
<6
=7
F8
G9
L10
M11
V12
W13
\14
]15
f16
g17
l18
m19
z20
{21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37"
trackable_list_wrapper
 "
trackable_list_wrapper
?
&0
'1
,2
-3
64
75
<6
=7
F8
G9
L10
M11
V12
W13
\14
]15
f16
g17
l18
m19
z20
{21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
!trainable_variables
?non_trainable_variables
?layer_metrics
"regularization_losses
#	variables
?layers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:) 2conv3d/kernel
: 2conv3d/bias
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
(trainable_variables
?non_trainable_variables
?layer_metrics
)regularization_losses
*	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+ @2conv3d_1/kernel
:@2conv3d_1/bias
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
.trainable_variables
?non_trainable_variables
?layer_metrics
/regularization_losses
0	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
2trainable_variables
?non_trainable_variables
?layer_metrics
3regularization_losses
4	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+@@2conv3d_2/kernel
:@2conv3d_2/bias
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
8trainable_variables
?non_trainable_variables
?layer_metrics
9regularization_losses
:	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,@?2conv3d_3/kernel
:?2conv3d_3/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
>trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
@	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
Btrainable_variables
?non_trainable_variables
?layer_metrics
Cregularization_losses
D	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2conv3d_4/kernel
:?2conv3d_4/bias
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
Htrainable_variables
?non_trainable_variables
?layer_metrics
Iregularization_losses
J	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2conv3d_5/kernel
:?2conv3d_5/bias
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
Ntrainable_variables
?non_trainable_variables
?layer_metrics
Oregularization_losses
P	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
Rtrainable_variables
?non_trainable_variables
?layer_metrics
Sregularization_losses
T	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2conv3d_6/kernel
:?2conv3d_6/bias
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
Xtrainable_variables
?non_trainable_variables
?layer_metrics
Yregularization_losses
Z	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2conv3d_7/kernel
:?2conv3d_7/bias
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
^trainable_variables
?non_trainable_variables
?layer_metrics
_regularization_losses
`	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
btrainable_variables
?non_trainable_variables
?layer_metrics
cregularization_losses
d	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2conv3d_8/kernel
:?2conv3d_8/bias
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
htrainable_variables
?non_trainable_variables
?layer_metrics
iregularization_losses
j	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-??2conv3d_9/kernel
:?2conv3d_9/bias
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
ntrainable_variables
?non_trainable_variables
?layer_metrics
oregularization_losses
p	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
rtrainable_variables
?non_trainable_variables
?layer_metrics
sregularization_losses
t	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
vtrainable_variables
?non_trainable_variables
?layer_metrics
wregularization_losses
x	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0:.??2conv3d_10/kernel
:?2conv3d_10/bias
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
|trainable_variables
?non_trainable_variables
?layer_metrics
}regularization_losses
~	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0:.??2conv3d_11/kernel
:?2conv3d_11/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0:.??2conv3d_12/kernel
:?2conv3d_12/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0:.??2conv3d_13/kernel
:?2conv3d_13/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-?@2conv3d_14/kernel
:@2conv3d_14/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,@@2conv3d_15/kernel
:@2conv3d_15/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/:-?@2conv3d_16/kernel
:@2conv3d_16/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,@@2conv3d_17/kernel
:@2conv3d_17/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,@2conv3d_18/kernel
:2conv3d_18/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?trainable_variables
?non_trainable_variables
?layer_metrics
?regularization_losses
?	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
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
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
?2?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_4248
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_4748
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_3554
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_3665?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__wrapped_model_1974?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *2?/
-?*
input_1?????????ppp
?2?
+__inference_Unet_5x2_32F_layer_call_fn_2847
+__inference_Unet_5x2_32F_layer_call_fn_4829
+__inference_Unet_5x2_32F_layer_call_fn_4910
+__inference_Unet_5x2_32F_layer_call_fn_3443?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_conv3d_layer_call_and_return_conditional_losses_4921?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_conv3d_layer_call_fn_4930?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv3d_1_layer_call_and_return_conditional_losses_4941?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv3d_1_layer_call_fn_4950?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_max_pooling3d_layer_call_and_return_conditional_losses_1980?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
,__inference_max_pooling3d_layer_call_fn_1986?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
B__inference_conv3d_2_layer_call_and_return_conditional_losses_4961?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv3d_2_layer_call_fn_4970?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv3d_3_layer_call_and_return_conditional_losses_4981?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv3d_3_layer_call_fn_4990?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1992?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
.__inference_max_pooling3d_1_layer_call_fn_1998?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
B__inference_conv3d_4_layer_call_and_return_conditional_losses_5001?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv3d_4_layer_call_fn_5010?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv3d_5_layer_call_and_return_conditional_losses_5021?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv3d_5_layer_call_fn_5030?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_2004?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
.__inference_max_pooling3d_2_layer_call_fn_2010?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
B__inference_conv3d_6_layer_call_and_return_conditional_losses_5041?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv3d_6_layer_call_fn_5050?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv3d_7_layer_call_and_return_conditional_losses_5061?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv3d_7_layer_call_fn_5070?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_2016?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
.__inference_max_pooling3d_3_layer_call_fn_2022?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *M?J
H?EA?????????????????????????????????????????????
?2?
B__inference_conv3d_8_layer_call_and_return_conditional_losses_5081?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv3d_8_layer_call_fn_5090?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv3d_9_layer_call_and_return_conditional_losses_5101?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv3d_9_layer_call_fn_5110?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_up_sampling3d_layer_call_and_return_conditional_losses_5144?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_up_sampling3d_layer_call_fn_5149?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_concatenate_layer_call_and_return_conditional_losses_5156?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_concatenate_layer_call_fn_5162?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv3d_10_layer_call_and_return_conditional_losses_5173?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv3d_10_layer_call_fn_5182?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv3d_11_layer_call_and_return_conditional_losses_5193?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv3d_11_layer_call_fn_5202?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_5257?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_up_sampling3d_1_layer_call_fn_5262?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_concatenate_1_layer_call_and_return_conditional_losses_5269?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_concatenate_1_layer_call_fn_5275?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv3d_12_layer_call_and_return_conditional_losses_5286?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv3d_12_layer_call_fn_5295?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv3d_13_layer_call_and_return_conditional_losses_5306?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv3d_13_layer_call_fn_5315?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_5412?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_up_sampling3d_2_layer_call_fn_5417?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_concatenate_2_layer_call_and_return_conditional_losses_5424?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_concatenate_2_layer_call_fn_5430?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv3d_14_layer_call_and_return_conditional_losses_5441?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv3d_14_layer_call_fn_5450?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv3d_15_layer_call_and_return_conditional_losses_5461?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv3d_15_layer_call_fn_5470?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_5651?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_up_sampling3d_3_layer_call_fn_5656?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_concatenate_3_layer_call_and_return_conditional_losses_5663?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_concatenate_3_layer_call_fn_5669?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv3d_16_layer_call_and_return_conditional_losses_5680?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv3d_16_layer_call_fn_5689?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv3d_17_layer_call_and_return_conditional_losses_5700?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv3d_17_layer_call_fn_5709?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv3d_18_layer_call_and_return_conditional_losses_5720?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv3d_18_layer_call_fn_5729?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_3748input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_3554?6&',-67<=FGLMVW\]fglmz{????????????????D?A
:?7
-?*
input_1?????????ppp
p 

 
? "1?.
'?$
0?????????ppp
? ?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_3665?6&',-67<=FGLMVW\]fglmz{????????????????D?A
:?7
-?*
input_1?????????ppp
p

 
? "1?.
'?$
0?????????ppp
? ?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_4248?6&',-67<=FGLMVW\]fglmz{????????????????C?@
9?6
,?)
inputs?????????ppp
p 

 
? "1?.
'?$
0?????????ppp
? ?
F__inference_Unet_5x2_32F_layer_call_and_return_conditional_losses_4748?6&',-67<=FGLMVW\]fglmz{????????????????C?@
9?6
,?)
inputs?????????ppp
p

 
? "1?.
'?$
0?????????ppp
? ?
+__inference_Unet_5x2_32F_layer_call_fn_2847?6&',-67<=FGLMVW\]fglmz{????????????????D?A
:?7
-?*
input_1?????????ppp
p 

 
? "$?!?????????ppp?
+__inference_Unet_5x2_32F_layer_call_fn_3443?6&',-67<=FGLMVW\]fglmz{????????????????D?A
:?7
-?*
input_1?????????ppp
p

 
? "$?!?????????ppp?
+__inference_Unet_5x2_32F_layer_call_fn_4829?6&',-67<=FGLMVW\]fglmz{????????????????C?@
9?6
,?)
inputs?????????ppp
p 

 
? "$?!?????????ppp?
+__inference_Unet_5x2_32F_layer_call_fn_4910?6&',-67<=FGLMVW\]fglmz{????????????????C?@
9?6
,?)
inputs?????????ppp
p

 
? "$?!?????????ppp?
__inference__wrapped_model_1974?6&',-67<=FGLMVW\]fglmz{????????????????<?9
2?/
-?*
input_1?????????ppp
? "A?>
<
	conv3d_18/?,
	conv3d_18?????????ppp?
G__inference_concatenate_1_layer_call_and_return_conditional_losses_5269?t?q
j?g
e?b
/?,
inputs/0??????????
/?,
inputs/1??????????
? "2?/
(?%
0??????????
? ?
,__inference_concatenate_1_layer_call_fn_5275?t?q
j?g
e?b
/?,
inputs/0??????????
/?,
inputs/1??????????
? "%?"???????????
G__inference_concatenate_2_layer_call_and_return_conditional_losses_5424?t?q
j?g
e?b
/?,
inputs/0?????????888?
/?,
inputs/1?????????888?
? "2?/
(?%
0?????????888?
? ?
,__inference_concatenate_2_layer_call_fn_5430?t?q
j?g
e?b
/?,
inputs/0?????????888?
/?,
inputs/1?????????888?
? "%?"?????????888??
G__inference_concatenate_3_layer_call_and_return_conditional_losses_5663?r?o
h?e
c?`
.?+
inputs/0?????????ppp@
.?+
inputs/1?????????ppp@
? "2?/
(?%
0?????????ppp?
? ?
,__inference_concatenate_3_layer_call_fn_5669?r?o
h?e
c?`
.?+
inputs/0?????????ppp@
.?+
inputs/1?????????ppp@
? "%?"?????????ppp??
E__inference_concatenate_layer_call_and_return_conditional_losses_5156?t?q
j?g
e?b
/?,
inputs/0??????????
/?,
inputs/1??????????
? "2?/
(?%
0??????????
? ?
*__inference_concatenate_layer_call_fn_5162?t?q
j?g
e?b
/?,
inputs/0??????????
/?,
inputs/1??????????
? "%?"???????????
C__inference_conv3d_10_layer_call_and_return_conditional_losses_5173vz{<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
(__inference_conv3d_10_layer_call_fn_5182iz{<?9
2?/
-?*
inputs??????????
? "%?"???????????
C__inference_conv3d_11_layer_call_and_return_conditional_losses_5193x??<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
(__inference_conv3d_11_layer_call_fn_5202k??<?9
2?/
-?*
inputs??????????
? "%?"???????????
C__inference_conv3d_12_layer_call_and_return_conditional_losses_5286x??<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
(__inference_conv3d_12_layer_call_fn_5295k??<?9
2?/
-?*
inputs??????????
? "%?"???????????
C__inference_conv3d_13_layer_call_and_return_conditional_losses_5306x??<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
(__inference_conv3d_13_layer_call_fn_5315k??<?9
2?/
-?*
inputs??????????
? "%?"???????????
C__inference_conv3d_14_layer_call_and_return_conditional_losses_5441w??<?9
2?/
-?*
inputs?????????888?
? "1?.
'?$
0?????????888@
? ?
(__inference_conv3d_14_layer_call_fn_5450j??<?9
2?/
-?*
inputs?????????888?
? "$?!?????????888@?
C__inference_conv3d_15_layer_call_and_return_conditional_losses_5461v??;?8
1?.
,?)
inputs?????????888@
? "1?.
'?$
0?????????888@
? ?
(__inference_conv3d_15_layer_call_fn_5470i??;?8
1?.
,?)
inputs?????????888@
? "$?!?????????888@?
C__inference_conv3d_16_layer_call_and_return_conditional_losses_5680w??<?9
2?/
-?*
inputs?????????ppp?
? "1?.
'?$
0?????????ppp@
? ?
(__inference_conv3d_16_layer_call_fn_5689j??<?9
2?/
-?*
inputs?????????ppp?
? "$?!?????????ppp@?
C__inference_conv3d_17_layer_call_and_return_conditional_losses_5700v??;?8
1?.
,?)
inputs?????????ppp@
? "1?.
'?$
0?????????ppp@
? ?
(__inference_conv3d_17_layer_call_fn_5709i??;?8
1?.
,?)
inputs?????????ppp@
? "$?!?????????ppp@?
C__inference_conv3d_18_layer_call_and_return_conditional_losses_5720v??;?8
1?.
,?)
inputs?????????ppp@
? "1?.
'?$
0?????????ppp
? ?
(__inference_conv3d_18_layer_call_fn_5729i??;?8
1?.
,?)
inputs?????????ppp@
? "$?!?????????ppp?
B__inference_conv3d_1_layer_call_and_return_conditional_losses_4941t,-;?8
1?.
,?)
inputs?????????ppp 
? "1?.
'?$
0?????????ppp@
? ?
'__inference_conv3d_1_layer_call_fn_4950g,-;?8
1?.
,?)
inputs?????????ppp 
? "$?!?????????ppp@?
B__inference_conv3d_2_layer_call_and_return_conditional_losses_4961t67;?8
1?.
,?)
inputs?????????888@
? "1?.
'?$
0?????????888@
? ?
'__inference_conv3d_2_layer_call_fn_4970g67;?8
1?.
,?)
inputs?????????888@
? "$?!?????????888@?
B__inference_conv3d_3_layer_call_and_return_conditional_losses_4981u<=;?8
1?.
,?)
inputs?????????888@
? "2?/
(?%
0?????????888?
? ?
'__inference_conv3d_3_layer_call_fn_4990h<=;?8
1?.
,?)
inputs?????????888@
? "%?"?????????888??
B__inference_conv3d_4_layer_call_and_return_conditional_losses_5001vFG<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
'__inference_conv3d_4_layer_call_fn_5010iFG<?9
2?/
-?*
inputs??????????
? "%?"???????????
B__inference_conv3d_5_layer_call_and_return_conditional_losses_5021vLM<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
'__inference_conv3d_5_layer_call_fn_5030iLM<?9
2?/
-?*
inputs??????????
? "%?"???????????
B__inference_conv3d_6_layer_call_and_return_conditional_losses_5041vVW<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
'__inference_conv3d_6_layer_call_fn_5050iVW<?9
2?/
-?*
inputs??????????
? "%?"???????????
B__inference_conv3d_7_layer_call_and_return_conditional_losses_5061v\]<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
'__inference_conv3d_7_layer_call_fn_5070i\]<?9
2?/
-?*
inputs??????????
? "%?"???????????
B__inference_conv3d_8_layer_call_and_return_conditional_losses_5081vfg<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
'__inference_conv3d_8_layer_call_fn_5090ifg<?9
2?/
-?*
inputs??????????
? "%?"???????????
B__inference_conv3d_9_layer_call_and_return_conditional_losses_5101vlm<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
'__inference_conv3d_9_layer_call_fn_5110ilm<?9
2?/
-?*
inputs??????????
? "%?"???????????
@__inference_conv3d_layer_call_and_return_conditional_losses_4921t&';?8
1?.
,?)
inputs?????????ppp
? "1?.
'?$
0?????????ppp 
? ?
%__inference_conv3d_layer_call_fn_4930g&';?8
1?.
,?)
inputs?????????ppp
? "$?!?????????ppp ?
I__inference_max_pooling3d_1_layer_call_and_return_conditional_losses_1992?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
.__inference_max_pooling3d_1_layer_call_fn_1998?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
I__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_2004?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
.__inference_max_pooling3d_2_layer_call_fn_2010?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
I__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_2016?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
.__inference_max_pooling3d_3_layer_call_fn_2022?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
G__inference_max_pooling3d_layer_call_and_return_conditional_losses_1980?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
,__inference_max_pooling3d_layer_call_fn_1986?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
"__inference_signature_wrapper_3748?6&',-67<=FGLMVW\]fglmz{????????????????G?D
? 
=?:
8
input_1-?*
input_1?????????ppp"A?>
<
	conv3d_18/?,
	conv3d_18?????????ppp?
I__inference_up_sampling3d_1_layer_call_and_return_conditional_losses_5257r<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
.__inference_up_sampling3d_1_layer_call_fn_5262e<?9
2?/
-?*
inputs??????????
? "%?"???????????
I__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_5412r<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0?????????888?
? ?
.__inference_up_sampling3d_2_layer_call_fn_5417e<?9
2?/
-?*
inputs??????????
? "%?"?????????888??
I__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_5651p;?8
1?.
,?)
inputs?????????888@
? "1?.
'?$
0?????????ppp@
? ?
.__inference_up_sampling3d_3_layer_call_fn_5656c;?8
1?.
,?)
inputs?????????888@
? "$?!?????????ppp@?
G__inference_up_sampling3d_layer_call_and_return_conditional_losses_5144r<?9
2?/
-?*
inputs??????????
? "2?/
(?%
0??????????
? ?
,__inference_up_sampling3d_layer_call_fn_5149e<?9
2?/
-?*
inputs??????????
? "%?"??????????