#NoTrayIcon
SendMode Input

#NoEnv
#SingleInstance Force
FormatTime, dia, %A_Now%, WDay

if (dia > 1 and dia < 6){
fechaSalida += 1, days
fechaEntrega += 2, days
fechaSalida136 += 1, days
fechaEntrega136 += 3, days
}
else if (dia = 6){
fechaSalida += 3, days
fechaEntrega += 4, days
fechaSalida136 += 1, days
fechaEntrega136 += 3, days
}
else if (dia = 7){
fechaSalida += 2, days
fechaEntrega += 3, days
fechaSalida136 += 0, days
fechaEntrega136 += 2, days
}

FormatTime, fechaSalida, %fechaSalida%, d MMMM yyyy
FormatTime, fechaEntrega, %fechaEntrega%, d MMMM yyyy
FormatTime, fechaSalida136, %fechaSalida136%, d MMMM yyyy
FormatTime, fechaEntrega136, %fechaEntrega136%, d MMMM yyyy
fechaSalida := StrReplace(fechaSalida, ".", "")
fechaEntrega := StrReplace(fechaEntrega, ".", "")
fechaSalida136 := StrReplace(fechaSalida136, ".", "")
fechaEntrega136 := StrReplace(fechaEntrega136, ".", "")
return

::z110::
SEND {TAB 3}
;Fecha de entrega
send %fechaEntrega%{tab 2}
;Fecha de salida
send %fechaSalida%{tab 2}
;Medio de transporte
send {down}{tab}
;Tipo de transporte
send {down 7}{tab}
;Tipo de carga
send {down}{tab}
;Tipo de bulto
send {down}{tab}
;Placa patente
send JYJK70{tab}
return

::z110q::
SEND {TAB 3}
;Fecha de entrega
send %fechaEntrega%{tab 2}
;Fecha de salida
send %fechaSalida%{tab 2}
;Medio de transporte
send {down}{tab}
;Tipo de transporte
send {down 7}{tab}
;Tipo de carga
send {down 2}{tab}
;Tipo de bulto
send {down}{tab}
;Placa patente
send JYJK70{tab}
return

::z122::
SEND {TAB 3}
;Fecha de entrega
send %fechaEntrega%{tab 2}
;Fecha de salida
send %fechaSalida%{tab 2}
;Medio de transporte
send {down}{tab}
;Tipo de transporte
send {down 5}{tab}
;Tipo de carga
send {down}{tab}
;Tipo de bulto
send {down}{tab}
;Placa patente
send RXWY89-5{tab}
return

::z124::
SEND {TAB 3}
;Fecha de entrega
send %fechaEntrega%{tab 2}
;Fecha de salida
send %fechaSalida%{tab 2}
;Medio de transporte
send {down}{tab}
;Tipo de transporte
send {down 5}{tab}
;Tipo de carga
send {down}{tab}
;Tipo de bulto
send {down}{tab}
;Placa patente
send RYTY65-1{tab}
return

::z136::
SEND {TAB 3}
;Fecha de entrega
send %fechaEntrega136%{tab 2}
;Fecha de salida
send %fechaSalida136%{tab 2}
;Medio de transporte
send {down}{tab}
;Tipo de transporte
send {down 8}{tab}
;Tipo de carga
send {down}{tab}
;Tipo de bulto
send {down}{tab}
;Placa patente
send RWXY98{tab}
return

PgDn::
SendInput {F3 2}{F10}{s 4}{enter 2}
Return

PgUp:: 
SendInput {F3 2}{y}{F10}{s 4}{enter 2}
Return

!1::
send falta orden de compra{TAB}Buen día.{enter}por favor enviar orden de compra del pedido:{enter}PEDIDO{TAB}OC{enter 2}Gracias.{up}
return


Pause::process, close, AutoHotkey.exe

!F2::
process, close, corregir_asn.exe
sleep 1000
process, close, corregir_asn.exe
return

^+::
send .Mas123456789#
return

!2::
send Pedidos bloqueados{TAB}Buen día, nos ayudas por favor con estos Rut para despachar los pedidos{enter}RUT{TAB 2}CC{enter 2}Gracias.{up}
return

