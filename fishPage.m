function varargout = fishPage(varargin)
% FISHPAGE MATLAB code for fishPage.fig
%      FISHPAGE, by itself, creates a new FISHPAGE or raises the existing
%      singleton*.
%
%      H = FISHPAGE returns the handle to a new FISHPAGE or the handle to
%      the existing singleton*.
%
%      FISHPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FISHPAGE.M with the given input arguments.
%
%      FISHPAGE('Property','Value',...) creates a new FISHPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fishPage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fishPage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fishPage

% Last Modified by GUIDE v2.5 02-Dec-2017 10:46:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fishPage_OpeningFcn, ...
                   'gui_OutputFcn',  @fishPage_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

end

% --- Executes just before fishPage is made visible.
function fishPage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fishPage (see VARARGIN)

axes(handles.smallTitleAxes);
titleImage = imread('Chug2PuffTitleText.png');
set(handles.smallTitleAxes,'xtick',[],'ytick',[]);
image(titleImage);
axis off;
axis image;

axes(handles.fishImageAxes);
fishImage0 = imread('waterVisualizationStep0.png');
image(fishImage0);
fishIndex = 0; 
handles.fishIndex = fishIndex; 
set(handles.fishImageAxes,'xtick',[],'ytick',[]);
axis off;
axis image;

totalIntakeNum = getappdata(0,'totalIntakeGoal'); % Calculated ideal user consumption for water intake, from user input in userInputPage.m
handles.totalIntakeNum = totalIntakeNum; 
set(handles.totalIntake,'String',num2str(totalIntakeNum));

dailyIntakeNum = 0; 
handles.dailyIntakeNum = dailyIntakeNum;
set(handles.dailyIntake,'String',num2str(dailyIntakeNum));

set(handles.currentDate,'String',date);

% Choose default command line output for fishPage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fishPage wait for user response (see UIRESUME)
% uiwait(handles.figure1);

end

% --- Outputs from this function are returned to the command line.
function varargout = fishPage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end

function userIntakeInput_Callback(hObject, eventdata, handles)
% hObject    handle to userIntakeInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of userIntakeInput as text
%        str2double(get(hObject,'String')) returns contents of userIntakeInput as a double

end

% --- Executes during object creation, after setting all properties.
function userIntakeInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to userIntakeInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end


% --- Executes on button press in goButton.
function goButton_Callback(hObject, eventdata, handles)
% hObject    handle to goButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

currentIntake = str2double(get(handles.userIntakeInput,'String')); % Taking in the added cup/amount of water in textbox
dailyIntakeNum = handles.dailyIntakeNum; % Taking the current, stored daily intake
dailyIntakeNum = water_input(currentIntake, dailyIntakeNum); % Adding the two to get a new, accumulated value

set(handles.dailyIntake,'String',num2str(dailyIntakeNum)); % Update GUI current daily
handles.dailyIntakeNum = dailyIntakeNum; 

totalIntake = str2double(get(handles.totalIntake,'String'));

fishIndex = fish_change(totalIntake, dailyIntakeNum);
handles.fishIndex = fishIndex; % Update fish index
save('check.mat','currentIntake','dailyIntakeNum','totalIntake','fishIndex');

% Change intake values

handles.output = hObject; % Update all the data
guidata(hObject, handles);

% Change fish image
fishImage0 = imread('waterVisualizationStep0.png');
fishImage1 = imread('waterVisualizationStep1.png');
fishImage2 = imread('waterVisualizationStep2.png');

if fishIndex == 0
    image(fishImage0);
elseif fishIndex == 1
    image(fishImage1);
else
    image(fishImage2);
end


set(handles.fishImageAxes,'xtick',[],'ytick',[]);
axis off;
axis image;
        


end
