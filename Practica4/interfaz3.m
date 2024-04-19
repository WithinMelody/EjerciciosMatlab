function varargout = interfaz3(varargin)
% INTERFAZ3 MATLAB code for interfaz3.fig
%      INTERFAZ3, by itself, creates a new INTERFAZ3 or raises the existing
%      singleton*.
%
%      H = INTERFAZ3 returns the handle to a new INTERFAZ3 or the handle to
%      the existing singleton*.
%
%      INTERFAZ3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ3.M with the given input arguments.
%
%      INTERFAZ3('Property','Value',...) creates a new INTERFAZ3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfaz3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfaz3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfaz3

% Last Modified by GUIDE v2.5 21-Mar-2020 11:14:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfaz3_OpeningFcn, ...
                   'gui_OutputFcn',  @interfaz3_OutputFcn, ...
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


% --- Executes just before interfaz3 is made visible.
function interfaz3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfaz3 (see VARARGIN)

% Choose default command line output for interfaz3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfaz3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfaz3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.

function pushbutton1_Callback(hObject, eventdata, handles)
    axes(handles.axes1);
    I=imread('Dibujo.jpeg');
    imshow(I);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
    axes(handles.axes2);
    I=imread('Dibujo.jpeg');
    [im_binaria,im_gray] = fprocesa(I);
    imshow(im_binaria);
    axes(handles.axes3);
    imshow(im_gray);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
