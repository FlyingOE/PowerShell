<#
.SYNOPSIS
    Send a message to DingTalk (https://www.dingtalk.com).
.LINK
    https://open-doc.dingtalk.com/docs/doc.htm?spm=a219a.7629140.0.0.karFPe&treeId=257&articleId=105735&docType=1
#>

$webhook = 'https://oapi.dingtalk.com/robot/send?access_token=XXXXXXXX'

# Other message types are also possible. Refer to the link above for details.
$message = @{
    msgtype = "markdown"
    markdown = @{
        title = "Test"
        text = "Test message with **BOLD** text."
    }
}

$message | ConvertTo-Json | Invoke-RestMethod -Method Post -Uri $webhook -ContentType "application/json;charset=utf-8"