FROM tensorflow/tensorflow:1.3.0-gpu-py3

RUN apt-get update && apt-get install -y \
    pkg-config \
    python-dev \
    libblas-common \
    python-opencv \
    libopencv-dev \
    python-opencv

RUN pip install numpy scipy==0.19.1 theano==0.9.0 scikit-learn==0.19.1
RUN pip install matplotlib==2.1.0
RUN pip install keras==2.0.6
RUN pip install librosa==0.5.1
RUN pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip
RUN pip install https://github.com/dnouri/nolearn/archive/master.zip#egg=nolearn
RUN pip install pandas==0.20.3
RUN pip install munkres==1.0.7
RUN pip install opencv-python
RUN pip install python_speech_features
RUN pip install xmltodict

