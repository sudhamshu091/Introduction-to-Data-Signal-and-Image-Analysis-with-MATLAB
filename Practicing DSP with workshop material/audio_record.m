% Program to record audio from system microphone and ply back
recObj=audiorecorder% Prepares audio device for recording
%when program is run the properties are displayed
disp('Start speaking.');%Start speaking once this message is displayed
recordblocking(recObj, 5);
disp('End of Recording.');% It records for 5 seconds and displays this
%message.you can increase time
play(recObj,recObj.samplerate);%plays the recorded sound with same
frequency as recording.

