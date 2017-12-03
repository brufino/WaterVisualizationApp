function varargout = graphPage(varargin)
% GRAPHPAGE MATLAB code for graphPage.fig
%      GRAPHPAGE, by itself, creates a new GRAPHPAGE or raises the existing
%      singleton*.
%
%      H = GRAPHPAGE returns the handle to a new GRAPHPAGE or the handle to
%      the existing singleton*.
%
%      GRAPHPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPHPAGE.M with the given input arguments.
%
%      GRAPHPAGE('Property','Value',...) creates a new GRAPHPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before graphPage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to graphPage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help graphPage

% Last Modified by GUIDE v2.5 02-Dec-2017 21:10:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @graphPage_OpeningFcn, ...
                   'gui_OutputFcn',  @graphPage_OutputFcn, ...
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

% --- Executes just before graphPage is made visible.
function graphPage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to graphPage (see VARARGIN)

axes(handles.smallTitleAxes);
titleImage = imread('Chug2PuffTitleText.png');
set(handles.smallTitleAxes,'xtick',[],'ytick',[]);
image(titleImage);
axis off;
axis image;

col1 = getappdata(0,'col1');
handles.col1 = col1; 
col2 = getappdata(0,'col2');
handles.col2 = col2; 

totalIntakeGoal = getappdata(0,'totalIntakeGoal');
axes(handles.graphAxes); hold on; 
bar(col1, col2);
line([1,30],[totalIntakeGoal,totalIntakeGoal]); 
title('Daily Water Consumption')
xlabel('December Progress')
ylabel('Amount of Water Consumed (mL)')
legend('Daily Intake', 'Reccomended Intake')
axis([1 30 0 8000])

hold off; 

% Choose default command line output for graphPage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

end

% UIWAIT makes graphPage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = graphPage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end
