#Connects to Azure

Connect-AzAccount

#Lists your Subscriptions associated with your account

#ACTION - Copy the subscription you would like to access as you will need it

get-azsubscription

#Select the relevent subscription you want to create the resources inside of

#ACTION - Paste the subscripn below where it says XXX

Select-AzSubscription -SubscriptionId XXX

#Exports resources in set format ready for import

Get-AzResource  | Select-Object -Property Name,ResourceGroupName,Location,Type | Export-CSV C:\temp\azure-resources2.csv

#disconnects Account

Disconnect-AzAccount