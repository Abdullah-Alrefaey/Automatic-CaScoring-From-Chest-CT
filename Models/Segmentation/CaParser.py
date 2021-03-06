#
# CaParser.py
# Author: Ahmad Abdalmageed
# Date: 7/18/21
#

import os
import SimpleITK as sITK
import Inference
import numpy as np
import tensorflow.keras.backend as bck
from skimage.morphology import binary_dilation

# TODO: 1- Parse Files of CAC and Load Patient Scan,
#       2- Load Localization model and predict Heart Location,
#       3- Save Heart Localization


def dice_coef(y_true: np.ndarray, y_pred: np.ndarray, smooth=1.):
    y_true_f = y_true.flatten()
    y_pred_f = y_pred.flatten()
    intersection = np.sum(y_true_f * y_pred_f)
    return (2. * intersection + smooth) / (np.sum(y_true_f) + np.sum(y_pred_f) + smooth)


parse_train = True
data_dir = './CaData'

if parse_train:
    data_dir = os.path.join(data_dir, 'Training')
else:
    data_dir = os.path.join(data_dir, 'Validation')

data_files = sorted(os.listdir(data_dir))
model = Inference.Infer('./Models_Saved/Heart_Localization', model_input=(112, 112, 112))

# for patient_scan in data_files:
#     # Load Patient CT Scan
#     patient_dir = os.path.join(data_dir, patient_scan)
#
#     patient_image = sITK.ReadImage(os.path.join(patient_dir, patient_scan+'.mhd'))
#     patient_ref = sITK.ReadImage(os.path.join(patient_dir, patient_scan[:-3]+'r.mhd'))
#
#     patient_image = sITK.GetArrayFromImage(patient_image)
#     patient_ref = sITK.GetArrayFromImage(patient_ref)
#
#     print(f"Loaded Scan with Shape, {patient_image.shape, patient_ref.shape}")
#
#     # Localize the Heart Location
#     heart_location_pred = model.predict(patient_image)
#     print(heart_location_pred.shape)
#
#     # Normalize Heart Reference Data
#     patient_ref[patient_ref > 1] = 1
#     print(np.unique(patient_ref, return_counts=True))
#
#     # Create Bounding Box
#     heart_loc = np.where(heart_location_pred > 0)
#
#     heart_bb = [np.min(heart_loc[0]), np.max(heart_loc[0]),
#                 np.min(heart_loc[1]), np.max(heart_loc[1]),
#                 np.min(heart_loc[2]), np.max(heart_loc[2])]
#
#     heart_cropped_scan = patient_image[heart_bb[0]: heart_bb[1], heart_bb[2]: heart_bb[3], heart_bb[4]: heart_bb[5]]
#     heart_cropped_ref = patient_ref[heart_bb[0]: heart_bb[1], heart_bb[2]: heart_bb[3], heart_bb[4]: heart_bb[5]]
#
#     # Save Localization
#     heart_image_scan = sITK.GetImageFromArray(heart_cropped_scan)
#     heart_image_ref = sITK.GetImageFromArray(heart_cropped_ref)
#     writer = sITK.ImageFileWriter()
#
#     writer.SetFileName(os.path.join(patient_dir, patient_scan+'h.mhd'))
#     writer.Execute(heart_image_scan)
#
#     writer.SetFileName(os.path.join(patient_dir, patient_scan[:-3]+'rh.mhd'))
#     writer.Execute(heart_image_ref)

for patient_scan in data_files:
    # Load Patient CT Scan
    patient_dir = os.path.join(data_dir, patient_scan)

    print("Loading Patient , ", patient_scan)
    patient_image = sITK.ReadImage(os.path.join(patient_dir, patient_scan+'.mhd'))
    patient_ref = sITK.ReadImage(os.path.join(patient_dir, patient_scan[:-3]+'r.mhd'))

    patient_image = sITK.GetArrayFromImage(patient_image)
    patient_ref = sITK.GetArrayFromImage(patient_ref)
    print(patient_image.min(), patient_image.max())

    patient_ref[patient_ref > 1] = 1
    print(np.unique(patient_ref, return_counts=True))
    patient_image = ((np.clip(patient_image, -1024.0, 3071.0)) - 1023.5) / 2047.5
    print(patient_image.min(), patient_image.max())
    print(patient_ref.min(), patient_ref.max())

    dc = []
    pred_mask = np.zeros((patient_image.shape))
    dc.append(dice_coef(patient_ref, pred_mask))
    print(np.mean(dc))

    # print("Reference ", np.unique(patient_ref, return_counts=True))
    #
    # # Prediction
    # heart = model.predict(patient_image)
    # print("Heart", np.unique(heart, return_counts=True))
    #
    # # Processing Input Patient Scan
    # patient_image = heart * patient_image
    # patient_image[patient_image < 130] = 0
    # patient_image[patient_image >= 130] = 1
    # patient_image = binary_dilation(patient_image).astype('int16')
    #
    # print("CAC ", np.unique(patient_image, return_counts=True))
    #
    # # Calculate Dice Coefficient
    # dice = dice_coef(patient_ref, patient_image)
    # print("Dice Coefficient .. ", dice)
    #
    # Save Localization
    # cac_thresh = sITK.GetImageFromArray(patient_image)
    # ref_norm = sITK.GetImageFromArray(patient_ref)
    # writer = sITK.ImageFileWriter()
    #
    # writer.SetFileName(os.path.join(patient_dir, patient_scan+'test.mhd'))
    # writer.Execute(cac_thresh)

    # writer.SetFileName(os.path.join(patient_dir, patient_scan+'test.mhd'))
    # writer.Execute(ref_norm)

print("Done Cropping!!")
