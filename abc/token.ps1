$Token = 'b8d55e29c59801a51a2000c487d93c7f0d71c9a3'
$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

$Headers = @{
  Authorization = 'Basic {0}' -f $Base64Token;
  };
  
    Invoke-RestMethod -Headers $Headers -Uri https://api.github.com/user -Body '{ "Name": "XXX" }' -Method Patch

