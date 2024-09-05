# Interval Timer for Java Check
$interval = 10

# Start Message
Write-Output "(WELCOME) Welcome to the Celestial Installer. Built by Gluonmaster."
Write-Output "(INFO) If anything goes wrong then discord Gluon."
Write-Output "(INFO) If you really need to, close out of the installer with task manager. Otherwise let it run. It will let you know when it is done"
Write-Output "(WARN) This installer rapidly installs the mods by opening tabs. Do not be alarmed. Please wait 30 seconds before using your computer while mods install once you hit okay. You will see all files installed in downloads."

# Download Path Function
function Get-DownloadsFolder {
    $shell = New-Object -ComObject Shell.Application
    $downloadsFolder = $shell.Namespace('shell:Downloads').Self.Path
    return $downloadsFolder
}

# Pathing
$downloadsPath = Get-DownloadsFolder
$minecraftModsPath = "$env:APPDATA\.minecraft\mods"
$javaInstallerPath = [System.IO.Path]::Combine($downloadsPath, 'JavaSetup8u421.exe')
$forgeInstallerPath = [System.IO.Path]::Combine($downloadsPath, 'forge-1.20.1-47.3.7-installer.jar')
$javaExecutablePath = "C:\Program Files (x86)\Common Files\Oracle\Java\java8path\java.exe"

# Tethering Files
$filesToMove = @(
    "dimdoors-5.4.1-1.20.1-forge.jar",
    "ftb-quests-forge-2001.4.8.jar",
    "ftb-library-forge-2001.2.4.jar",
    "ftb-teams-forge-2001.3.0.jar",
    "cloth-config-11.1.118-forge.jar",
    "architectury-9.2.14-forge.jar",
    "ftb-ranks-forge-2001.1.3.jar",
    "origins-classes-forge-1.2.1.jar",
    "origins-forge-1.20.1-1.10.0.9-all.jar",
    "caelus-forge-3.2.0+1.20.1.jar",
    "simpleshops-1.2.2.jar",
    "RoughlyEnoughItems-12.1.750-forge.jar",
    "CraftTweaker-forge-1.20.1-14.0.43.jar",
    "worldborder-1.20.1-4.7.jar",
    "collective-1.20.1-7.84.jar",
    "journeymap-1.20.1-5.10.1-forge.jar",
    "MapFrontiers-1.20.1-2.6.0p4-forge.jar",
    "aether-1.20.1-1.4.2-neoforge.jar",
    "twilightforest-1.20.1-4.3.2508-universal.jar",
    "incontrol-1.20-9.2.6.jar",
    "bettercombat-forge-1.8.6+1.20.1.jar",
    "player-animation-lib-forge-1.0.2-rc1+1.20.jar",
    "SimpleLogin-1.20.1-1.0.2-all.jar",
    "modernfix-forge-5.19.1+mc1.20.1.jar",
    "radium-mc1.20.1-0.12.3+git.50c5c33.jar",
    "ImmediatelyFast-Forge-1.2.20+1.20.4.jar",
    "ferritecore-6.0.1-forge.jar",
    "starlight-1.1.2+forge.1cda73c.jar",
    "embeddium-0.3.30+mc1.20.1.jar",
    "Cuffed-1.20.1-1.2.3.jar",
    "CreativeCore_FORGE_v2.11.37_mc1.20.1.jar",
    "ItemBlocker-1.20.1-1.0.1.jar",
    "EnderMail-1.20.1-1.2.9.jar",
    "CustomSkinLoader_ForgeV2-14.20.jar",
    "LittleFrames_FORGE_v1.3.9_mc1.20.1.jar",
    "watermedia-2.0.70.jar",
    "refinedstorage-1.12.4.jar",
    "questsadditions-1.4.3.jar",
    "mod_whitelist-1.1.0.jar",
    "antixray-forge-1.4.6+1.20.1.jar",
    "corpse-forge-1.20.1-1.0.14.jar",
    "refurbished_furniture-forge-1.20.1-1.0.6.jar",
    "constructionwand-1.20.1-2.11.jar",
    "framework-forge-1.20.1-0.7.7.jar",
    "alexscaves-1.1.5.jar",
    "citadel-2.6.0-1.20.1.jar",
    "CobbleForDays-1.8.0.jar",
    "K-Turrets-3.0.27-1.20.1.jar",
    "Satako-7.0.16-1.20.1.jar",
    "PerDimensionGameRules-1.20.1-forge-3.1.0.jar",
    "Kiwi-1.20.1-Forge-11.8.20.jar",
    "valhelsia_structures-forge-1.20.1-1.1.2.jar",
    "valhelsia_core-forge-1.20.1-1.1.2.jar",
    "infernalmobs-1.20.1.3.jar",
    "obscure_api-15.jar",
    "Bountiful-6.0.3+1.20.1-forge.jar",
    "Kambrik-6.1.1+1.20.1-forge.jar",
    "kotlinforforge-4.11.0-all.jar",
    "aquamirae-6.API15.jar",
    "libraryferret-forge-1.20.1-4.0.0.jar"
    # Add more filenames as needed
)

# Download Forge and Java Installers
Start-Process "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=250111_d8aa705069af427f9b83e66b34f5e380"
Start-Process "https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.3.7/forge-1.20.1-47.3.7-installer.jar"

# Download Mods
Start-Process "https://mediafilez.forgecdn.net/files/5617/415/dimdoors-5.4.1-1.20.1-forge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5543/955/ftb-quests-forge-2001.4.8.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5267/190/ftb-teams-forge-2001.3.0.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5567/591/ftb-library-forge-2001.2.4.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4973/441/cloth-config-11.1.118-forge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5137/938/architectury-9.2.14-forge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4596/742/ftb-ranks-forge-2001.1.3.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4965/453/origins-classes-forge-1.2.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5468/648/twilightforest-1.20.1-4.3.2508-universal.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5314/209/origins-forge-1.20.1-1.10.0.9-all.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5281/700/caelus-forge-3.2.0%2B1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4716/851/simpleshops-1.2.2.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5627/518/RoughlyEnoughItems-12.1.750-forge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5648/765/CraftTweaker-forge-1.20.1-14.0.43.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5571/545/worldborder-1.20.1-4.7.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5631/814/collective-1.20.1-7.84.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5540/985/journeymap-1.20.1-5.10.1-forge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5486/960/MapFrontiers-1.20.1-2.6.0p4-forge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5302/178/aether-1.20.1-1.4.2-neoforge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5380/330/incontrol-1.20-9.2.6.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5625/757/bettercombat-forge-1.8.6%2B1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4745/380/SimpleLogin-1.20.1-1.0.2-all.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4587/214/player-animation-lib-forge-1.0.2-rc1%2B1.20.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5616/612/modernfix-forge-5.19.1%2Bmc1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5229/844/radium-mc1.20.1-0.12.3%2Bgit.50c5c33.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5616/496/ImmediatelyFast-Forge-1.2.20%2B1.20.4.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4810/975/ferritecore-6.0.1-forge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4631/193/starlight-1.1.2%2Bforge.1cda73c.jar"
Start-Sleep -Seconds 1
Write-Output "(INFO) Half way done."
Start-Process "https://mediafilez.forgecdn.net/files/5630/140/embeddium-0.3.30%2Bmc1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5439/388/Cuffed-1.20.1-1.2.3.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5649/821/CreativeCore_FORGE_v2.11.37_mc1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4811/373/ItemBlocker-1.20.1-1.0.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4606/473/EnderMail-1.20.1-1.2.9.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5497/382/CustomSkinLoader_ForgeV2-14.20.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5292/935/LittleFrames_FORGE_v1.3.9_mc1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5619/771/watermedia-2.0.70.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4844/585/refinedstorage-1.12.4.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5616/79/questsadditions-1.4.3.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4971/494/mod_whitelist-1.1.0.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5634/623/antixray-forge-1.4.6%2B1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5661/478/corpse-forge-1.20.1-1.0.14.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5651/939/refurbished_furniture-forge-1.20.1-1.0.6.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4684/54/constructionwand-1.20.1-2.11.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5680/64/framework-forge-1.20.1-0.7.7.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5633/305/alexscaves-1.1.5.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5633/260/citadel-2.6.0-1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4653/625/CobbleForDays-1.8.0.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5605/459/K-Turrets-3.0.27-1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5135/86/Satako-7.0.16-1.20.1.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5091/341/PerDimensionGameRules-1.20.1-forge-3.1.0.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5603/816/Kiwi-1.20.1-Forge-11.8.20.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5195/707/valhelsia_structures-forge-1.20.1-1.1.2.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5189/548/valhelsia_core-forge-1.20.1-1.1.2.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5470/117/infernalmobs-1.20.1.3.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4616/373/aquamirae-6.API15.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4650/415/Bountiful-6.0.3%2B1.20.1-forge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4654/401/Kambrik-6.1.1%2B1.20.1-forge.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4616/364/obscure_api-15.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/5402/61/kotlinforforge-4.11.0-all.jar"
Start-Sleep -Seconds 1
Start-Process "https://mediafilez.forgecdn.net/files/4601/234/libraryferret-forge-1.20.1-4.0.0.jar"
Start-Sleep -Seconds 1

Write-Output "(WARN) This program will delete a old minecraft mods folder once you click okay or X out of window."
Write-Output "(INFO) Thanks for waiting. You will have to click okay a few more times but feel free to use your computer while the rest of this runs"

# Function to check if files are downloaded
function WaitForFile {
    param (
        [string]$filePath,
        [int]$interval
    )
    while (-not (Test-Path -Path $filePath)) {
        Start-Sleep -Seconds $interval
    }
}

# Remove and Replace Mods Folder Directory
if (Test-Path -Path $minecraftModsPath) {
    Remove-Item -Path $minecraftModsPath -Recurse -Force 
    New-Item -Path $minecraftModsPath -ItemType Directory 
}

if (-not (Test-Path -Path $minecraftModsPath)) {
    New-Item -Path $minecraftModsPath -ItemType Directory 
}

Write-Output "Now moving mods to minecraft folder."

# Move Mods to Mods Directory
foreach ($file in $filesToMove) {
    $sourceFile = [System.IO.Path]::Combine($downloadsPath, $file)
    
    $waitTime = 0
    $maxWaitTime = 600 # Maximum wait time in seconds (10 minutes)
    
    while (-not (Test-Path -Path $sourceFile) -and ($waitTime -lt $maxWaitTime)) {
        Start-Sleep -Seconds 1
        $waitTime++
    }
    
    if (Test-Path -Path $sourceFile) {
        Move-Item -Path $sourceFile -Destination $minecraftModsPath -Force
    }
}

Write-Output "You will need to install java or forge will not work correctly."

# Install Java Function
function Install-Java {
    WaitForFile -filePath $javaInstallerPath
    Start-Process -FilePath $javaInstallerPath -Wait
}

# Install Forge Function
function Install-Forge {
    WaitForFile -filePath $forgeInstallerPath
    Start-Process -FilePath "$javaExecutablePath" -ArgumentList "-jar `"$forgeInstallerPath`"" -Wait
}

# Check Java then Run Install Forge Function
function Check-JavaAndInstallForge {
    $javaDirPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Java"
    while (-not (Test-Path -Path $javaDirPath)) {
        Start-Sleep -Seconds $interval
    }
    Install-Forge
}

# Run Java and Forge Check Functions
Install-Java
Check-JavaAndInstallForge

Write-Output "Installer is finished."
exit 
