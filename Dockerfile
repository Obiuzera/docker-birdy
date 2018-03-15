FROM tensorflow/tensorflow:1.4.1-gpu-py3

RUN apt-get update && apt-get install -y \
    python-opencv \
    libblas-common \
    python-qt4 \
    libopencv-dev \
    python3-tk \
    git \
    build-essential \
    cmake

RUN pip install Cython
RUN pip install Mako
RUN pip install numpy scipy==0.19.1 scikit-learn==0.19.1 
RUN pip install matplotlib==2.1.0
RUN pip install keras==2.0.6
RUN pip install librosa==0.5.1
RUN pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip
RUN pip install --upgrade https://github.com/dnouri/nolearn/archive/master.zip#egg=nolearn
RUN pip install pandas==0.20.3
RUN pip install munkres==1.0.7
RUN pip install opencv-python
RUN pip install python_speech_features
RUN pip install xmltodict

RUN git clone https://github.com/Theano/libgpuarray.git && \
	mkdir -p libgpuarray/Build && \
	cd libgpuarray/Build && \
	cmake .. -DCMAKE_BUILD_TYPE=Release && \
	make && \
	make install && \
	cd .. && \
	ldconfig && \
	python3 setup.py build && \
	python3 setup.py install

RUN pip install --upgrade https://github.com/Theano/Theano/archive/master.zip#egg=Theano
