@echo off

set SSID=CS-Guest
set HEXSTR=CS#GuEsT@2020
set XML_OUTPUT_PATH=%TEMP%%SSID%-wireless-profile-generated.xml

echo ^xml version=1.0^^WLANProfile xmlns=httpwww.microsoft.comnetworkingWLANprofilev1^^name^%SSID%^name^^SSIDConfig^^SSID^^name^%SSID%^name^^SSID^^SSIDConfig^^connectionType^ESS^connectionType^^connectionMode^auto^connectionMode^^MSM^^security^^authEncryption^^authentication^WPA2PSK^authentication^^encryption^AES^encryption^^useOneX^false^useOneX^^authEncryption^^sharedKey^^keyType^passPhrase^keyType^^protected^false^protected^^keyMaterial^%HEXSTR%^keyMaterial^^sharedKey^^security^^MSM^^MacRandomization xmlns=httpwww.microsoft.comnetworkingWLANprofilev3^^enableRandomization^false^enableRandomization^^MacRandomization^^WLANProfile^ %XML_OUTPUT_PATH%

netsh wlan add profile filename=%XML_OUTPUT_PATH%
netsh wlan connect name=%SSID%

del %XML_OUTPUT_PATH%
echo.
pause
