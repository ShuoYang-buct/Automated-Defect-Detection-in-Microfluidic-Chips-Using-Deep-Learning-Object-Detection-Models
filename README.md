# Automatic Defect Detection in Microfluidic Chips Using Machine Learning Object Detection Models 
Author List:

Shuo Yang 1 †, Qingzheng Wang 1 †, Yuhan Lu 1 †, Yu Cheng 1 †, Yiqiang Fan 1,2*  

1 School of Mechanical & Electrical Engineering, Beijing University of Chemical Technology, Beijing 100029   

* Correspondence: fan@mail.buct.edu.cn;

† These authors contributed equally to this work.

### Note: The dataset used and the prediction model trained using Roboflow Train 3.0 can be found at [roboflow](https://universe.roboflow.com/project-ptbeh/datasets-nbdxy/model/1). The Google Drive link for the cloud platform used for YOLOv8 training is https://drive.google.com/drive/home.

# Training Steps:
1. Dataset Preparation:
This paper uses the YOLOv8 format for training. The dataset has been trained on Roboflow and integrated into the ipynb file. If you only want to reproduce the paper's training, simply run the yolov8n-detect-completed file. If you need to use the dataset, you can find and download it from the aforementioned website.

2. Dataset Processing: 
The dataset has been processed on the Roboflow website, and the relevant processing procedures can be found on the website.

3. Network Training:
The focus of this paper is to use the native YOLOv8 and Roboflow Train 3.0 for training and comparison, so no modifications have been made to the structure. A. When using YOLOv8 for training, due to some naming conventions in Roboflow, you need to modify part of the "data.yaml" file before training. The specific parts that need to be modified are already written in the yolov8n-detect-completed file. You can import the yolov8n-detect-completed file and the EXP folder into Google Drive, then install Google Colab in Google Drive and run the "Setup" and "Train" sections in the yolov8n-detect-completed file to start the training process. After several epochs of training, the weights will be generated in the "run" folder. B. Using Roboflow Train 3.0, the training has been completed at the aforementioned Roboflow URL, and you can use it directly by opening the URL.

# Prediction Steps:

A. For predictions using the YOLOv8 training results, there are two ways to obtain the required files: 1. You can generate them after training and run them directly using the existing code. 2. If you have imported the EXP folder into the root directory of Google Drive, you can directly run the "Tasks" section and use the model I provided for training. After running, you can detect using the preset image paths. You can change the image paths and names in the code to replace the prediction photos. For convenience, defective images are provided in the photos folder in EXP for you to use.

B. When using Roboflow Train 3.0 for training, you can directly open the aforementioned Roboflow URL, click the top right corner of the Overview tab, try the pre-trained model, then click Switch Model and select the v1 model. Select an image from the photos folder in EXP and upload it to complete the prediction.
