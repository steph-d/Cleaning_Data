### Experiment

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Feature Selection 
=================

 [1] "idsubject" 	: id of the person participated to the experiment (1 to 30)                                         
 [2] "type"   		: type of data from which the person belongs after selection (training or test)                                             
 [3] "activity"     : activity performed during the experiment (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)                     

Only features in terms of average (mean) and standard deviation (std) are presented in this database. 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

 [4] "timebodyaccelerationmeaninx"     : mean in x-axis of the time body acceleration		                    
 [5] "timebodyaccelerationmeaniny"     : mean in y-axis of the time body acceleration                   
 [6] "timebodyaccelerationmeaninz"     : mean in z-axis of the time body acceleration                   
 [7] "timebodyaccelerationstdinx"      : standard deviation (std) in x-axis of the time body acceleration                   
 [8] "timebodyaccelerationstdiny"      : standard deviation (std) in y-axis of the time body acceleration                     
 [9] "timebodyaccelerationstdinz"      : standard deviation (std) in z-axis of the time body acceleration  
 [10] "timegravityaccelerationmeaninx"  : mean in x-axis of the time gravity acceleration                  
 [11] "timegravityaccelerationmeaniny"  : mean in y-axis of the time gravity acceleration                    
 [12] "timegravityaccelerationmeaninz"  : mean in z-axis of the time gravity acceleration                    
 [13] "timegravityaccelerationstdinx"   : standard deviation (std) in x-axis of the time gravity acceleration                   
 [14] "timegravityaccelerationstdiny"   : standard deviation (std) in y-axis of the time gravity acceleration                    
 [15] "timegravityaccelerationstdinz"   : standard deviation (std) in z-axis of the time gravity acceleration   
 [22] "timebodygyroscopemeaninx"         : mean in x-axis of the time body gyroscope                    
 [23] "timebodygyroscopemeaniny"         : mean in y-axis of the time body gyroscope                   
 [24] "timebodygyroscopemeaninz"         : mean in z-axis of the time body gyroscope                   
 [25] "timebodygyroscopestdinx"          : standard deviation (std) in x-axis of the time body gyroscope                   
 [26] "timebodygyroscopestdiny"          : standard deviation (std) in y-axis of the time body gyroscope                   
 [27] "timebodygyroscopestdinz"          : standard deviation (std) in z-axis of the time body gyroscope

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 
[16] "timebodyaccelerationjerkmeaninx"  : mean of jerk signals from the body linear acceleration in x-axis                  
[17] "timebodyaccelerationjerkmeaniny"  : mean of jerk signals from the body linear acceleration in y-axis                  
[18] "timebodyaccelerationjerkmeaninz"  : mean of jerk signals from the body linear acceleration in z-axis                  
[19] "timebodyaccelerationjerkstdinx"   : standard deviation (std) of jerk signals from the body linear acceleration in x-axis                  
[20] "timebodyaccelerationjerkstdiny"   : standard deviation (std) of jerk signals from the body linear acceleration in y-axis                  
[21] "timebodyaccelerationjerkstdinz"   : standard deviation (std) of jerk signals from the body linear acceleration in z-axis
[28] "timebodygyroscopejerkmeaninx"      : mean of jerk signals from the angular velocity in x-axis                   
[29] "timebodygyroscopejerkmeaniny"      : mean of jerk signals from the angular velocity in y-axis                   
[30] "timebodygyroscopejerkmeaninz"      : mean of jerk signals from the angular velocity in z-axis                  
[31] "timebodygyroscopejerkstdinx"       : standard deviation (std) of jerk signals from the angular velocity in x-axis                  
[32] "timebodygyroscopejerkstdiny"       : standard deviation (std) of jerk signals from the angular velocity in y-axis                  
[33] "timebodygyroscopejerkstdinz"       : standard deviation (std) of jerk signals from the angular velocity in z-axis

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 
[34] "timebodyaccelerationmagnitudemean"      : mean of the magnitude of the time body acceleration signal          
[35] "timebodyaccelerationmagnitudestd"       : standard deviation (std) of the magnitude of the time body acceleration signal            
[36] "timegravityaccelerationmagnitudemean"   : mean of the magnitude of the time gravity accelerometer signal            
[37] "timegravityaccelerationmagnitudestd"    : standard deviation (std) of the magnitude of the time gravity accelerometer signal            
[38] "timebodyaccelerationjerkmagnitudemean"  : mean of the magnitude of the time body acceleration Jerk signal            
[39] "timebodyaccelerationjerkmagnitudestd"   : standard deviation (std) of the magnitude of the time body acceleration Jerk signal            
[40] "timebodygyroscopemagnitudemean"          : mean of the magnitude of the time body gyroscope signal            
[41] "timebodygyroscopemagnitudestd"           : standard deviation (std) of the magnitude of the time body gyroscope signal            
[42] "timebodygyroscopejerkmagnitudemean"      : mean of the magnitude of the time body gyroscope Jerk signal            
[43] "timebodygyroscopejerkmagnitudestd"       : standard deviation (std) of the magnitude of the time body gyroscope Jerk signal     



Finally a Fast Fourier Transform (FFT) was applied to some of these signals (Note the 'frequency' to indicate frequency domain signals). 

[44] "frequencybodyaccelerationmeaninx"            		: mean of the frequency of the body acceleration in x_axis       
[45] "frequencybodyaccelerationmeaniny"            		: mean of the frequency of the body acceleration in y_axis       
[46] "frequencybodyaccelerationmeaninz"            		: mean of the frequency of the body acceleration in z_axis       
[47] "frequencybodyaccelerationstdinx"             		: standard deviation (std) of the frequency of the body acceleration in x_axis       
[48] "frequencybodyaccelerationstdiny"             		: standard deviation (std) of the frequency of the body acceleration in y_axis       
[49] "frequencybodyaccelerationstdinz"             		: standard deviation (std) of the frequency of the body acceleration in z_axis       
[50] "frequencybodyaccelerationweightedfrequencemeaninx"   : mean of the weighted frequency of the body acceleration in x-axis     
[51] "frequencybodyaccelerationweightedfrequencemeaniny"   : mean of the weighted frequency of the body acceleration in y-axis       
[52] "frequencybodyaccelerationweightedfrequencemeaninz"   : mean of the weighted frequency of the body acceleration in z-axis       
[53] "frequencybodyaccelerationjerkmeaninx"        		: mean of the frequency of the body acceleration Jerk signal in x-axis       
[54] "frequencybodyaccelerationjerkmeaniny"        		: mean of the frequency of the body acceleration Jerk signal in y-axis       
[55] "frequencybodyaccelerationjerkmeaninz"        		: mean of the frequency of the body acceleration Jerk signal in z-axis       
[56] "frequencybodyaccelerationjerkstdinx"         		: standard deviation (std) of the frequency of the body acceleration Jerk signal in x-axis        
[57] "frequencybodyaccelerationjerkstdiny"         		: standard deviation (std) of the frequency of the body acceleration Jerk signal in y-axis        
[58] "frequencybodyaccelerationjerkstdinz"         		: standard deviation (std) of the frequency of the body acceleration Jerk signal in z-axis        
[59] "frequencybodyaccelerationjerkweightedfrequencemeaninx"  : mean of the weighted frequency of the body acceleration Jerk signal in x-axis    
[60] "frequencybodyaccelerationjerkweightedfrequencemeaniny"  : mean of the weighted frequency of the body acceleration Jerk signal in y-axis    
[61] "frequencybodyaccelerationjerkweightedfrequencemeaninz"  : mean of the weighted frequency of the body acceleration Jerk signal in z-axis    
[62] "frequencybodygyroscopemeaninx"                	: mean of the frequency of the body gyroscope signal in x-axis       
[63] "frequencybodygyroscopemeaniny"                	: mean of the frequency of the body gyroscope signal in y-axis        
[64] "frequencybodygyroscopemeaninz"                	: mean of the frequency of the body gyroscope signal in z-axis        
[65] "frequencybodygyroscopestdinx"                 	: standard deviation (std) of the frequency of the body gyroscope signal in x-axis        
[66] "frequencybodygyroscopestdiny"                 	: standard deviation (std) of the frequency of the body gyroscope signal in y-axis        
[67] "frequencybodygyroscopestdinz"                 	: standard deviation (std) of the frequency of the body gyroscope signal in z-axis        
[68] "frequencybodygyroscopeweightedfrequencemeaninx"         : mean of the weighted frequency of the body gyroscope signal in x-axis 
[69] "frequencybodygyroscopeweightedfrequencemeaniny"         : mean of the weighted frequency of the body gyroscope signal in y-axis
[70] "frequencybodygyroscopeweightedfrequencemeaninz"         : mean of the weighted frequency of the body gyroscope signal in z-axis
[71] "frequencybodyaccelerationmagnitudemean"             	  : mean of the frequency of the body acceleration magnitude 
[72] "frequencybodyaccelerationmagnitudestd"              	  : standard deviation (std) of the frequency of the body acceleration magnitude
[73] "frequencybodyaccelerationmagnitudeweightedfrequencemean" : mean of the weighted frequency of the body acceleration magnitude
[74] "frequencybodyaccelerationjerkmagnitudemean"         	  : mean of the frequency of the body acceleration Jerk signal magnitude
[75] "frequencybodyaccelerationjerkmagnitudestd"          	  : standard deviation (std) of the frequency of the body acceleration Jerk signal magnitude
[76] "frequencybodyaccelerationjerkmagnitudeweightedfrequencemean"  : mean of the weighted frequency of the body acceleration Jerk signal magnitude
[77] "frequencybodygyroscopemagnitudemean"                 	  : mean of the frequency of the body gyroscope magnitude
[78] "frequencybodygyroscopemagnitudestd"                  	  : standard deviation (std) of the frequency of the body gyroscope magnitude
[79] "frequencybodygyroscopemagnitudeweightedfrequencemean"   : mean of the weighted frequency of the body gyroscope magnitude
[80] "frequencybodygyroscopejerkmagnitudemean"                : mean of the frequency of the body gyroscope Jerk signal magnitude
[81] "frequencybodygyroscopejerkmagnitudestd"                 : standard deviation (std) of the frequency of the body gyroscope Jerk signal magnitude
[82] "frequencybodygyroscopejerkmagnitudeweightedfrequencemean"    : mean of the weighted frequency of the body gyroscope Jerk signal magnitude

Finally the angle between vectors obtained by averaging the signals in a signal window sample were calculated.
  
[83] "anglebetweentbodyaccelerationmeanandgravity"           : angle between vectors "mean of body acceleration" and "gravity"
[84] "anglebetweentbodyaccelerationjerkmeanandgravitymean"   : angle between vectors "mean of body acceleration Jerk signal" and "mean gravity"
[85] "anglebetweentbodygyroscopemeanandgravitymean"          : angle between vectors "mean of body gyroscope" and "mean gravity"
[86] "anglebetweentbodygyroscopejerkmeanandgravitymean"      : angle between vectors "mean of body gyroscope Jerk signal" and "mean gravity"
[87] "anglebetweenxandgravitymean"                           : angle between vectors "x_axis" and "mean gravity"
[88] "anglebetweenyandgravitymean"                           : angle between vectors "y_axis" and "mean gravity"
[89] "anglebetweenzandgravitymean"     						 : angle between vectors "z_axis" and "mean gravity"


