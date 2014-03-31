# Copyright 2012 Aaron Jensen
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function Get-IisWebsite
{
    <#
    .SYNOPSIS
    Gets details about a website.
    
    .DESCRIPTION
    Returns a Microsoft.Web.Administration.Site object representing the website.
     
    .OUTPUTS
    Microsoft.Web.Administration.Site.
    
    .LINK
    http://msdn.microsoft.com/en-us/library/microsoft.web.administration.site(v=VS.90).aspx
     
    .EXAMPLE
    Get-IisWebsite -SiteName 'WebsiteName'
     
    Returns the details for the site named `WebsiteName`.
    #>
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]
        # The name of the site to get.
        $SiteName
    )
    
    if( -not (Test-IisWebsite -Name $SiteName) )
    {
        return $null
    }
    
    $mgr = New-Object Microsoft.Web.Administration.ServerManager
    $mgr.Sites[$SiteName]
}
