$TenantId = "1e3500cc-d08f-42c8-8678-ce352b7de55e"
$URL = "https://login.microsoftonline.com/$TenantId/oauth2/token"
$Params = @{
"URI" = $URL
"Method" = "POST"
}
$Body = @{
"grant_type" = "srv_challenge"
}
$Result = Invoke-RestMethod @Params -UseBasicParsing -Body $Body
$Result.Nonce