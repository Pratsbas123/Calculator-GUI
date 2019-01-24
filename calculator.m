function varargout = calculator(varargin)
% CALCULATOR MATLAB code for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 02-Jun-2017 12:50:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
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


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
% varargin   command line arguments to calculator (see VARARGIN)

% Choose default command line output for calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for text1 response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
close calculator


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
set(handles.text1,'String','');
set(handles.text1,'String','');


% --- Executes on button press in sign.
function sign_Callback(hObject, eventdata, handles)
% hObject    handle to sign (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
s=str2double(str);
e=-(s);                         %For +/-.
t=num2str(e);
set(handles.text1,'String',t);



% --- Executes on button press in root.
function root_Callback(hObject, eventdata, handles)
% hObject    handle to root (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
s=str2double(str);
sqr=sqrt(s);                      %For sqrt.
t=num2str(sqr);
set(handles.text1,'String',t);


% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'7');
set(handles.text1,'String',str);


% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'4');
set(handles.text1,'String',str);


% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'0');
set(handles.text1,'String',str);


% --- Executes on button press in per.
function per_Callback(hObject, eventdata, handles)
% hObject    handle to per (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
s=str2double(str);
percent=s/100;                           %For percentage
t=num2str(percent);
set(handles.text1,'String',t);


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=eval(str);
set(handles.text1,'String',str);


% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'5');
set(handles.text1,'String',str);


% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'/');
set(handles.text1,'String',str);



% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'9');
set(handles.text1,'String',str);


% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'8');
set(handles.text1,'String',str);


% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'-');
set(handles.text1,'String',str);


% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'*');
set(handles.text1,'String',str);


% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'6');
set(handles.text1,'String',str);


% --- Executes on button press in deci.
function deci_Callback(hObject, eventdata, handles)
% hObject    handle to deci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'.');
set(handles.text1,'String',str);



% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'3');
set(handles.text1,'String',str);


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'2');
set(handles.text1,'String',str);


% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'1');
set(handles.text1,'String',str);


% --- Executes on button press in reci.
function reci_Callback(hObject, eventdata, handles)
% hObject    handle to reci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
s=str2double(str);
div=(1/s);                                 %For reciprocal
t=num2str(div);
set(handles.text1,'String',t);



% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)
str=get(handles.text1,'String');
str=strcat(str,'+');
set(handles.text1,'String',str);



function text2_Callback(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and text1 data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text1 as text
%        str2double(get(hObject,'String')) returns contents of text1 as a double
str=get(handles.text1,'String');
n= length(str);
offset=1;
len=-1;
% Calculate starting index of substring:

if offset < 0
   lb= offset + n + 1;   % offset from end of string
   lb= max(lb, 1);
elseif offset == 0
   lb= 1;
else
   lb= offset;
end

% Calculate ending index of substring:
 if len >= 0                      %substr(string name,offset,len)
      ub = lb + len - 1;
   else
      ub = n + len;
   
 end
 
 % Extract substring:

outstr= str(lb : ub);
set(handles.text1,'String',outstr);



% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
