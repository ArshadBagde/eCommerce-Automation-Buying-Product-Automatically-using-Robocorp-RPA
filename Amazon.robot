*** Settings ***
#Documentation    Robot that logs into the RobobtSparebinInduatries Intranet
#Library          RPA.Browser
#Library          RPA.Desktop.Windows
#Library          Process

*** Keywords ***
#Open the search Option
#Open Available Browser    https://www.amazon.com/    Maximized=True    alias=SecondBrowser

*** Tasks ***
#Open the search Option
#Input Text    twotabsearchtextbox    SamsungMobiles
#Submit Form
