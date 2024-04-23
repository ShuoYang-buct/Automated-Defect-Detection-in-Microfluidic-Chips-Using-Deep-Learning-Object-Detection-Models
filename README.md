# Automatic Defect Detection in Microfluidic Chips Using Machine Learning Object Detection Models 
Author List:

Shuo Yang 1 †, Qingzheng Wang 1 †, Yuhan Lu 1 †, Yu Cheng 1 †, Yiqiang Fan 1,2*  

1 School of Mechanical & Electrical Engineering, Beijing University of Chemical Technology, Beijing 100029   

* Correspondence: fan@mail.buct.edu.cn;

† These authors contributed equally to this work.

### Note: The dataset used and the prediction model trained using Roboflow Train 3.0 can be found at [roboflow](https://universe.roboflow.com/project-ptbeh/datasets-nbdxy/model/1). The Google Drive link for the cloud platform used for YOLOv8 training is https://drive.google.com/drive/home. Click the button here to use the pretrained model using Binder.
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ShuoYang-buct/Automated-Defect-Detection-in-Microfluidic-Chips-Using- Deep-Learning-Object-Detection-Models/main)

# Training Steps:
1. Dataset Preparation:
This paper uses the YOLOv8 format for training. The dataset has been trained on Roboflow and integrated into the ipynb file. If you only want to reproduce the paper's training, simply run the yolov8n-detect-completed file. If you need to use the dataset, you can find and download it from the aforementioned website.

2. Dataset Processing: 
The dataset has been processed on the Roboflow website, and the relevant processing procedures can be found on the website.

3. Network Training:
The focus of this paper is to use the native YOLOv8 and Roboflow Train 3.0 for training and comparison, so no modifications have been made to the structure. A. When using YOLOv8 for training, due to some naming conventions in Roboflow, you need to modify part of the "data.yaml" file before training. The specific parts that need to be modified are already written in the yolov8n-detect-completed file. You can import the yolov8n-detect-completed file and the EXP folder into Google Drive, then install Google Colab in Google Drive and run the "Setup" and "Train" sections in the yolov8n-detect-completed file to start the training process. After several epochs of training, the weights will be generated in the "run" folder. B. Using Roboflow Train 3.0, the training has been completed at the aforementioned Roboflow URL, and you can use it directly by opening the URL.![image](https://github.com/ShuoYang-buct/Automated-Defect-Detection-in-Microfluidic-Chips-Using-Machine-Learning-Object-Detection-Models/assets/125955811/19a2da4d-fd4f-4e49-a464-e3a3e1c84f57)


# Prediction Steps:
A. Just click on the binder link, and it automatically installs all the required libraries and opens the Task.ipynb.By running them sequentially, you can make predictions directly without any additional conditions. Please click the button below to use Binder.
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ShuoYang-buct/Automated-Defect-Detection-in-Microfluidic-Chips-Using-Deep-Learning-Object-Detection-Models/main)
![image](https://github.com/ShuoYang-buct/Automated-Defect-Detection-in-Microfluidic-Chips-Using-Machine-Learning-Object-Detection-Models/assets/125955811/d567e5a1-31e5-49a0-b05d-806e02b456b1)
Please click Task.ipynb.
![image](https://github.com/ShuoYang-buct/Automated-Defect-Detection-in-Microfluidic-Chips-Using-Machine-Learning-Object-Detection-Models/assets/125955811/4c1ebb34-a3a9-4845-89a3-48aa4351959b)
First click on the first line of code to select it, and then press the run key continuously.

B. For predictions using the YOLOv8 training results, there are two ways to obtain the required files: 1. You can generate them after training and run them directly using the existing code. 2. If you have imported the EXP folder into the root directory of Google Drive, you can directly run the "Tasks" section and use the model I provided for training. After running, you can detect using the preset image paths. You can change the image paths and names in the code to replace the prediction photos. For convenience, defective images are provided in the photos folder in EXP for you to use.

C. When using Roboflow Train 3.0 for training, you can directly open [roboflow](https://universe.roboflow.com/project-ptbeh/datasets-nbdxy/model/1).
   Click the model on the left,
   ![image](https://github.com/ShuoYang-buct/Automated-Defect-Detection-in-Microfluidic-Chips-Using-Machine-Learning-Object-Detection-Models/assets/125955811/392afce1-298a-4ba5-9315-34927b00fbf9)
Then change the pre-trained model, click Switch Model, and select the v1 model.
Download the EXP file, select an image from the Photos folder, click Select File and upload,
![image](https://github.com/ShuoYang-buct/Automated-Defect-Detection-in-Microfluidic-Chips-Using-Machine-Learning-Object-Detection-Models/assets/125955811/4c9e0f5d-cbd2-4705-86b3-9f84a8436c70)
The prediction is successfully completed.
