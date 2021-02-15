import os
import sys

import matplotlib.pyplot as plt
import numpy as np
from PIL import Image
from flask import Flask, request, after_this_request, jsonify

CurrentDir = os.path.dirname(os.path.realpath(__file__))
ParentDir = os.path.dirname(CurrentDir)
RepoRoot = os.path.dirname(ParentDir)
sys.path.append(RepoRoot)
from Models.crop_roi import get_coords

app = Flask(__name__)


def allow_CORS():
    @after_this_request
    def add_header(response):
        # To allow CORS (Cross Origin Resource Sharing)
        response.headers['Access-Control-Allow-Origin'] = '*'
        return response


@app.route('/')
def hello_world():
    allow_CORS()
    return 'Hello World!!!'


@app.route('/process')
def calculate_caScore():
    allow_CORS()
    print("Data Received..")

    print("Done.")
    return "CaScore: BlahBlah"


@app.route('/crop', methods=['POST'])
def GetSlice():
    if request.method == 'POST':
        # Names of Received Slices
        Names = ["Ax1", "Ax2", "Ax3", "Sag1", "Sag2", "Sag3", "Cor1", "Cor2", "Cor3"]
        # print(request.files)
        # Get first Axial Slice Data & Shift Value
        slices = request.files
        shift = request.form
        # Open Slice & reset shift
        if slices:
            AxSlices = []
            SagSlices = []
            CorSlices = []

            for SliceName in Names:
                Slice = Image.open(slices[SliceName])
                SliceArray = np.array(Slice, dtype="int16")
                SliceArray += int(shift[SliceName])
                if "Ax" in SliceName:
                    AxSlices.append(SliceArray)
                elif "Sag" in SliceName:
                    SagSlices.append(SliceArray)
                elif "Cor" in SliceName:
                    CorSlices.append(SliceArray)
                    plt.imshow(SliceArray, cmap="gray")
                    plt.show()

            AxCoor = [int(i) for i in get_coords(AxSlices)]
            SagCoor = [int(i) for i in get_coords(SagSlices)]
            CorCoor = [int(i) for i in get_coords(CorSlices)]
            Coor = [AxCoor, SagCoor, CorCoor]
            return jsonify({"Coor": Coor})
    return "Good"


if __name__ == '__main__':
    app.run(debug=True)
