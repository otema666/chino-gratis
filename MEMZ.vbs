Dim speaks, speech
speaks="TIENES UN GRAN VIRUS EN TU COMPUTADOR.UN CHINO ESTA HJAKQUEANDO."
Set speech=CreateObject("sapi.spvoice")
speech.Speak speaks
do
msgbox "CHINO"
loop