# Custom clear/clr function
function Invoke-ClearAndFetch {
    clear
    fastfetch
}
# Set Aliases:
Set-Alias -Name clearfetch -Value Invoke-ClearAndFetch
Set-Alias -Name exp -Value explorer
Set-Alias -Name ob -Value obsidian-cli
Set-Alias -Name vsc -Value vscodium
# Show system info:
fastfetch
# Initialize stuff:
Invoke-Expression (& { (zoxide init powershell | Out-String) })
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/purple.omp.json" | Invoke-Expression