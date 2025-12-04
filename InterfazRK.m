function varargout = InterfazRK(varargin)
% INTERFAZRK MATLAB code for InterfazRK.fig
%      INTERFAZRK, by itself, creates a new INTERFAZRK or raises the existing
%      singleton*.
%
%      H = INTERFAZRK returns the handle to a new INTERFAZRK or the handle to
%      the existing singleton*.
%
%      INTERFAZRK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZRK.M with the given input arguments.
%
%      INTERFAZRK('Property','Value',...) creates a new INTERFAZRK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InterfazRK_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InterfazRK_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InterfazRK

% Last Modified by GUIDE v2.5 04-Dec-2025 09:35:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InterfazRK_OpeningFcn, ...
                   'gui_OutputFcn',  @InterfazRK_OutputFcn, ...
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


% --- Executes just before InterfazRK is made visible.
function InterfazRK_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InterfazRK (see VARARGIN)

% Choose default command line output for InterfazRK
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes InterfazRK wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InterfazRK_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function funcion_Callback(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcion as text
%        str2double(get(hObject,'String')) returns contents of funcion as a double


% --- Executes during object creation, after setting all properties.
function funcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x0_Callback(hObject, eventdata, handles)
% hObject    handle to x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x0 as text
%        str2double(get(hObject,'String')) returns contents of x0 as a double


% --- Executes during object creation, after setting all properties.
function x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y0_Callback(hObject, eventdata, handles)
% hObject    handle to y0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y0 as text
%        str2double(get(hObject,'String')) returns contents of y0 as a double


% --- Executes during object creation, after setting all properties.
function y0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xn_Callback(hObject, eventdata, handles)
% hObject    handle to xn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xn as text
%        str2double(get(hObject,'String')) returns contents of xn as a double


% --- Executes during object creation, after setting all properties.
function xn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
% hObject    handle to calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    f_txt = get(handles.funcion, 'String');
    f = str2func(['@(x,y)' f_txt]);

    x0 = str2double(get(handles.x0, 'String'));
    y0 = str2double(get(handles.y0, 'String'));
    xn = str2double(get(handles.xn, 'String'));
    n = str2double(get(handles.n, 'String'));

    C = Eddo_RK(f, x0, y0, xn, n); 
    E = 0.0001;

    set(handles.resultado1, 'String', num2str(C)); 
    set(handles.error1, 'String', num2str(E));
    [X, Y] = edo_RK_plot(f, x0, y0, xn, n);
    axes(handles.axes1);  
    plot(X, Y, 'b.-', 'LineWidth', 1.5);
    grid on;
    xlabel('x');
    ylabel('y(x)');
    title('Solución usando RK4');
    
    
% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.funcion, 'String', '');
set(handles.x0, 'String', '');
set(handles.y0, 'String', '');
set(handles.xn, 'String', '');
set(handles.n, 'String', '');

set(handles.resultado1, 'String', '');

axes(handles.axes1);
cla reset;     
grid off;
title('');

guidata(hObject, handles);

% --- Executes on button press in comparar.
function comparar_Callback(hObject, eventdata, handles)
% hObject    handle to comparar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    f_txt = get(handles.funcion, 'String');
    f = str2func(['@(x,y)' f_txt]);

    x0 = str2double(get(handles.x0, 'String'));
    y0 = str2double(get(handles.y0, 'String'));
    xn = str2double(get(handles.xn, 'String'));
    n  = str2double(get(handles.n, 'String'));
    
    C = Eddo_RK(f, x0, y0, xn, n); 
    RK2 = Eddo_RK2(f, x0, y0, xn, n);             
    T2  = edo_taylor(f, x0, y0, xn, n);     
    E2 = abs(C - RK2);
    E3 = abs(C - T2); 
    
    set(handles.resultado2, 'String', num2str(RK2));
    set(handles.resultado3, 'String', num2str(T2));
    set(handles.error2, 'String', num2str(E2)); 
    set(handles.error3, 'String', num2str(E3)); 
    



