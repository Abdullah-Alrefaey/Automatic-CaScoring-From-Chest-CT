#
# U-NET TF Implementation
#

from tensorflow.keras.layers import Conv2D, Conv3D, Conv2DTranspose, Conv3DTranspose, MaxPool2D, MaxPool3D,\
    AveragePooling2D, AveragePooling3D, Concatenate, Input, BatchNormalization, Dropout, UpSampling2D, UpSampling3D
from tensorflow.keras.models import Model
from enum import Enum


# Modes Used by the User
class Transpose(Enum):
    transpose2D = Conv2DTranspose
    transpose3D = Conv3DTranspose


class UpSample(Enum):
    upSample2D = UpSampling2D
    upSample3D = UpSampling3D


class Conv(Enum):
    conv2D = Conv2D
    conv3D = Conv3D


class Pooling(Enum):
    max2D = MaxPool2D
    max3D = MaxPool3D
    average2D = AveragePooling2D
    average3D = AveragePooling3D


class UNet:
    def __init__(self, conv: str = "conv2D", up_sample: str = None, transpose: str = None, pool: str = "max2D"):
        """
        Implementation of the Unet Architecture, using Tensorflow's Keras API

        Added Functionality:
            - Convolutional and Up Sampling layers are now in both 2D and 3D
            - Added Up sampling using tf`s UpSampling2D
            - Added Average Pooling using tf`s AveragePooling2D

        :param conv:
        :param up_sample:
        :param transpose:
        :param pool:
        """
        print("Initializing UNET")
        self.dimensional = conv
        self.transpose = False
        self.up_sample = False

        # Catch the Entered Mode from User
        if transpose:
            self.expand = Transpose[transpose].value
            self.transpose = True
        if up_sample:
            self.expand = UpSample[up_sample].value
            self.up_sample = True

        self.contract = Conv[conv].value
        self.Pool = Pooling[pool].value

    def __call__(self, levels, convolutions, input_shape, kernel_size, out_channels=1, activation='relu',
                 batch_norm=False, drop_out=None, initial_features=16):
        """
            Implementation of the Unet Arch, using tensorflow Layers
            and Functional API
        :param levels: Number of Down sampling Levels
        :param convolutions: Number of consecutive Convolutions
        :param input_shape: Data Input Shape
        :param kernel_size: Convolution kernel Size
        :param out_channels: Number of channels in the Final Layer
        :param activation: Default Relu
        :param batch_norm: Boolean used to apply Batch normalization
        :param drop_out: if Float Apply Drop out
        :param initial_features: Number of Initial Convolutional Features
        :return: tf Model() instance
        """
        # Parameters that are constant for all Layers
        parameters = dict(kernel_size=kernel_size, padding='same', activation=activation)

        # Model Input
        inputs = Input(input_shape)
        x = inputs

        # Encoder Part
        connects = {}
        print(f"Connections for a {levels} is {len(connects)} ... ")

        for level in range(levels):
            for _ in range(convolutions):
                x = self.contract(initial_features * (2 ** level), **parameters)(x)
                if batch_norm:
                    x = BatchNormalization()(x)
                if drop_out is not None:
                    x = Dropout(drop_out)(x)

            if level < levels - 1:
                connects[level] = x
                x = self.Pool()(x)

        # Decoder Part
        for level in reversed(range(levels - 1)):
            if self.transpose:
                x = self.expand(initial_features * (2 ** level), strides=2, **parameters)(x)
            if self.up_sample:
                x = self.expand()(x)

            x = Concatenate()([x, connects[level]])

            for _ in range(convolutions):
                x = self.contract(initial_features * 2 ** level, **parameters)(x)
                if batch_norm:
                    x = BatchNormalization()(x)
                if drop_out is not None:
                    x = Dropout(drop_out)(x)

        # Model Output
        x = self.contract(out_channels, kernel_size=1, activation='sigmoid', padding='same')(x)

        return Model(inputs=[inputs], outputs=[x], name=f'Unet_{levels}x{convolutions}_{initial_features}F')


# TESTING
if __name__ == '__main__':
    from tensorflow.keras.utils import plot_model
    unet3D = UNet("conv3D", up_sample="upSample3D", transpose=None, pool="average3D")
    model = unet3D(4, 4, (128, 128, 128, 1), (3, 3, 3))
    print(model.summary())
    plot_model(model, show_shapes=True)
