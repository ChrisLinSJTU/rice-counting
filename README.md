# Rice-counting
This is a rice counting algorithm. We run the code in MARLAB 2016b. 

First, run the get_average_area.m script to get the average area of each rice grains. To simplify the image preprocessing, some of the Non-target object in the image have been artificially removed. The image is showed below.

![Image text](https://github.com/ChrisLinSJTU/rice-counting/raw/master/image-in-readme/img_area.png)

Second, run the get_avg_fre_without_overlap.m to get the average frequency of the sequence of rice grains without overlap. The image is showed below.

![Image text](https://github.com/ChrisLinSJTU/rice-counting/raw/master/image-in-readme/img_get_base_fre.jpg)

Finally, run the cal_number_of_rice.m to caltulation the number of rice in the image we provided. The left is the original image, and the right is the binary image which is used in this repository.

![image](https://github.com/ChrisLinSJTU/rice-counting/raw/master/image-in-readme/sample_img.png)
