# https://rudycorradetti.com/2022/08/08/setting-up-kubernetes-in-hyper-v-manual-method/
New-VMSwitch -SwitchName "NATSwitch" -SwitchType Internal
New-NetIPAddress -IPAddress 192.168.0.1 -PrefixLength 24 -InterfaceAlias "vEthernet (NATSwitch)"
New-NetNat -Name "NATNetwork" -InternalIPInterfaceAddressPrefix 192.168.0.0/24
