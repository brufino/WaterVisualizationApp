function varargout = userInputPage(varargin)
% USERINPUTPAGE MATLAB code for userInputPage.fig
%      USERINPUTPAGE, by itself, creates a new USERINPUTPAGE or raises the existing
%      singleton*.
%
%      H = USERINPUTPAGE returns the handle to a new USERINPUTPAGE or the handle to
%      the existing singleton*.
%
%      USERINPUTPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in USERINPUTPAGE.M with the given input arguments.
%
%      USERINPUTPAGE('Property','Value',...) creates a new USERINPUTPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before userInputPage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to userInputPage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help userInputPage

% Last Modified by GUIDE v2.5 02-Dec-2017 15:55:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @userInputPage_OpeningFcn, ...
                   'gui_OutputFcn',  @userInputPage_OutputFcn, ...
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

% --- Executes just before userInputPage is made visible.
function userInputPage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to userInputPage (see VARARGIN)

titleImage = imread('Chug2PuffTitle.png');
image(titleImage);
set(handles.titleAxes,'xtick',[],'ytick',[]);
axis off;
axis image;

% Choose default command line output for userInputPage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes userInputPage wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = userInputPage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end


function ageTextBox_Callback(hObject, eventdata, handles)
% hObject    handle to ageTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

age = str2double(get(handles.ageTextBox,'String'));
handles.age = age; 

handles.output = hObject;
guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of ageTextBox as text
%        str2double(get(hObject,'String')) returns contents of ageTextBox as a double
end

% --- Executes during object creation, after setting all properties.
function ageTextBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ageTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in genderTextBox.
function genderTextBox_Callback(hObject, eventdata, handles)
% hObject    handle to genderTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns genderTextBox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from genderTextBox

gender = get(handles.genderTextBox, 'String');
handles.gender = gender;

handles.output = hObject;
guidata(hObject, handles);

end

% --- Executes during object creation, after setting all properties.
function genderTextBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to genderTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in exerciseTextBox.
function exerciseTextBox_Callback(hObject, eventdata, handles)
% hObject    handle to exerciseTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

exercise = get(handles.exerciseTextBox,'String');
handles.exercise = exercise;

handles.output = hObject;
guidata(hObject, handles);

% Hints: contents = cellstr(get(hObject,'String')) returns exerciseTextBox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from exerciseTextBox
end

% --- Executes during object creation, after setting all properties.
function exerciseTextBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to exerciseTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

function weightTextBox_Callback(hObject, eventdata, handles)
% hObject    handle to weightTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

weight = str2double(get(handles.weightTextBox,'String'));
handles.weight = weight; 

handles.output = hObject;
guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of weightTextBox as text
%        str2double(get(hObject,'String')) returns contents of weightTextBox as a double

end

% --- Executes during object creation, after setting all properties.
function weightTextBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to weightTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end


% --- Executes on button press in calculateButton.
function calculateButton_Callback(hObject, eventdata, handles)
% hObject    handle to calculateButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

age = handles.age;
gender = handles.gender; save('check2.mat','gender');

exercise = handles.exercise;
weight = handles.weight;

totalIntakeGoal = calc_water_goal(age, gender, exercise, weight);
handles.totalIntakeGoal = totalIntakeGoal; 
setappdata(0,'totalIntakeGoal',totalIntakeGoal);

close(userInputPage);
fishPage;

end
