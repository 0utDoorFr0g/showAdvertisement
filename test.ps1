Add-Type -AssemblyName PresentationCore,PresentationFramework

$msgBody = "blabla is blabla"
$msgTitle = "Question!"
$msgButton = 'YesNoCancel'
$msgImage = 'Question'
$Result = [System.Windows.MessageBox]::Show($msgBody,$msgTitle,$msgButton,$msgImage)
