﻿# This is already done in RDPSecurity as well, stays disabled by default.

$RDPPorts = [ordered] @{
    Enable = $false
    Source = [ordered] @{
        Name = 'RDP Port is open'
        Data = {
            Test-ComputerPort -ComputerName $DomainController -PortTCP 3389 -WarningAction SilentlyContinue
        }
        Details = [ordered] @{
            Area             = ''
            Description      = ''
            Resolution   = ''
            RiskLevel        = 10
            Resources = @(

            )
        }
    }
    Tests  = [ordered] @{
        PortOpen = [ordered] @{
            Enable     = $false
            Name       = 'Port is OPEN'
            Parameters = @{
                Property              = 'Status'
                ExpectedValue         = $true
                OperationType         = 'eq'
                PropertyExtendedValue = 'Summary'
            }
        }
    }
}