function varargout = interfaz2(varargin)
% INTERFAZ2 MATLAB code for interfaz2.fig
%      INTERFAZ2, by itself, creates a new INTERFAZ2 or raises the existing
%      singleton*.
%
%      H = INTERFAZ2 returns the handle to a new INTERFAZ2 or the handle to
%      the existing singleton*.
%
%      INTERFAZ2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ2.M with the given input arguments.
%
%      INTERFAZ2('Property','Value',...) creates a new INTERFAZ2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfaz2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfaz2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfaz2

% Last Modified by GUIDE v2.5 21-Mar-2020 10:52:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfaz2_OpeningFcn, ...
                   'gui_OutputFcn',  @interfaz2_OutputFcn, ...
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


% --- Executes just before interfaz2 is made visible.
function interfaz2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfaz2 (see VARARGIN)

% Choose default command line output for interfaz2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfaz2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfaz2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
    I=imread('Dibujo.jpeg');
    axes(handles.axes1);
    imshow(I);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
