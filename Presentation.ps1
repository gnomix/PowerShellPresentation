# TODO:
# - Working with XML
# - ExecutionPolicy
# drives


<#
 *  ____                        ____  _          _ _ 
 * |  _ \ _____      _____ _ __/ ___|| |__   ___| | |
 * | |_) / _ \ \ /\ / / _ \ '__\___ \| '_ \ / _ \ | |
 * |  __/ (_) \ V  V /  __/ |   ___) | | | |  __/ | |
 * |_|   \___/ \_/\_/ \___|_|  |____/|_| |_|\___|_|_|
 *
 * 
 * A crash course in the shell power of PowerShell
 * 
 * 
 * 
 * 
 *   Jason Jarrett
 *        - @staxmanade
 *        - http://elegantcode.com
 *        - http://github.com/staxmanade
 *        -
 *        - Vertigo - http://vertigo.com
 * 
 * 
 * 
 * 
 * 
 *   J.A.S.O.N.
 *        J - July
 *        A - August
 *        S - September
 *        O - October
 *        N - November
 * 
 * 
 * 
 * 
 * 
 *          ´$$$$`                             ,,, 
 *         ´$$$$$$$`                         ´$$$`
 *          `$$$$$$$`      ,,       ,,      ´$$$$´
 *           `$$$$$$$`    ´$$`    ´$$`     ´$$$$$´
 *            `$$$$$$$` ´$$$$$` ´$$$$$`  ´$$$$$$$´
 *             `$$$$$$$ $$$$$$$ $$$$$$$ ´$$$$$$$´ 
 *              `$$$$$$ $$$$$$$ $$$$$$$`´$$$$$$´ 
 * ,,,,,,       `$$$$$$ $$$$$$$ $$$$$$$ $$$$$$´ 
 * ´$$$$$`      `$$$$$$ $$$$$$$ $$$$$$$ $$$$$$´ 
 *  ´$$$$$$$`  ´$$$$$$$ $$$$$$$ $$$$$$$ $$$$$´ 
 *   ´ $$$$$$$$$$$$$$$$ $$$$$$$ $$$$$$$ $$$$$´ 
 *      `$$$$$$$$$$$$$$ $$$$$$$ $$$$$$ $$$$$$´ 
 *        `$$$$$$$$$$$$$ $$$$$   $$$$$  $$$$´ 
 *         `$$$$$$$$$$$$,___,$$$$,____,$$$$$´ 
 *           `$$$$$$$$$$$$$$$$$$$$$$$$$$$$$´ 
 *            `$$$$$$$$$$$$$$$$$$$$$$$$$$$´ 
 *              `$$$$$$$$$$$$$$$$$$$$$$$$´ 
 * 
 * 
 * 
 * 
 * 
 * 
 #>














# Config
# Start in this directory
cd C:\Mesh\Personal\Presentations\Powershell
$groupName = 'NNSDG'







################
################
# Overview
# 
# 
# What is it?
#
#   PowerShell is the combination of 2 major components
#     1. Language
#     2. Runtime environment
#
#
# Why should I care about it?
#
#
#
#
#
#
#

















################
################
# PowerShell Language/Syntax
################
################












# Comments

    # <--- to comment out a line

    <#
        Comment out a block of stuff
    #>




















# variable declaration
    $v1 = 1
    echo $v1

    $v2 = $v1 + 1;
    echo $v2
    
    # explicitly define it's data type
    [int] $num1 = 1

    # Notice how the .2 gets rounded as it converts it to an integer
    [int] $num2 = 1.2 

    [decimal] $num3 = 1.2




















# Array
    $v3 = @( 1, 2, 3 )
    echo $v3
    
    # Working with Arrays
    
    # Concat 2 arrays
    @(1,2,3) + @('a', 'b', 'c') + @(4,5,6)
    
    # Different ways to add to an array.
    $a1 = @(1,2,3); $a1
    $a1 += 4; $a1
    $a1 += 5; $a1
    $a1 += 6; $a1
    
    $a1 += @(7,8,9); $a1

    # Can't remove from the array.  You'd have to create a new array with just the items you wanted. (Or use a .net class to do it. Like
    $a1 -= 7




















# Hash table
    $v3 = @{
            "name1" = "value1";
            "name2" = "value2"; 
            "name3" = "value3"; 
        }

    # Access value in the hash
    $v3["name1"]
    $v3.name1

    # Set a value
    $v3.HelloKey = "Hello Value"
    $v3.["HelloKey"] = "Hello Value"
    $v3.HelloKey




















# Strings

    # Single quote does not interpolation strings
    'Hello $groupName' 

    # Double quotes will expand variables and evaluate expressions within the string.
    "Hello $groupName"

    # Wrap $(...) around an operation to have powershell evaluate it within the string
    "groupName variable is of type: $($myValue.GetType().FullName)"
    "2 + 1564 = $(2 + 1564)"
    "Current DateTime is = $(get-date)"
    "Current DateTime is = $([System.DateTime]::Now)"


    "Escape a quotation `"This is quoted`"."




















# Comparison operators

    # case-insensitive by default
    
    1 -eq 1 # equal
    1 -ne 0 # not equal 
    1 -gt 0 # greater than
    1 -ge 1 # greater than or equal
    1 -lt 4 # less than
    1 -le 1 # less than or equal
    
    "something" -like "*meth*"                                   # Wildcard comparison
    "something" -notlike "*gni*"                                 # Wildcard comparison
    "This $groupName is boring!" -replace 'boring', 'AWESOME'    # Replace operator
    @(1,2,3) -contains 1                                         # Containment operator
    @(1,2,3) -notcontains 0                                      # Containment operator
    
    # if you want case-sensitive then put  a 'c' in front of each command. 
    # EX: -eq becomes -ceq (Case sensitive equal to)

    "Welcome to the $groupName" -match "Welcome (.*)"            # Regular expression comparison
    $matches
    "Welcome to the $groupName" -notmatch "Welcome (.*)"         # Regular expression comparison
    $matches


    (!$true -eq $false)     # Not
    (-not $true -eq $false) # Not
    $true -and $true        # And
    $false -or $true        # Or




















# general syntax

    # if block
    if( $true -or $false -or 1 -or "hi") {
        $true
    }

    # if if else block
    $v1 = 'c'
    if( $v1 ) {
        "a"
    } elseif( $v1 ) {
        "b"
    } elseif( $v1 ) {
        "c"
    } else {
        "d"
    }


    # while loop
    $v1 = 10
    while( $v1 -gt 0 ) {
        $v1--; $v1
    }

    # do while loop
    $v1 = 10
    do {
        $v1--
        $v1
    } while ( $v1 -gt 0 )
    
    # for loop
    for($i = 0; $i -lt 10; $i++) {
        "$i"
    }

    # foreach
    $files = ls
    foreach($file in $files) {
        "{0,10} bytes" -f $file.Length
    }
    
    # switch
    $v1 = "hi"
    switch($v1) {
        "hello" { "no" }
        "world" { "no" }
        "hi"    { "yes" }
        default { "no" }
    }



    try {
        throw "Oh SNAP!"
    } catch {
        $_ | out-gridview
    }




















# Pipelines

    # unlike unix pipeline the output of the operation is not text but an object

    ls | where { $_.Extension -eq ".ps1" } | Sort-Object Length -Descending
    
    $output = (ls | where { $_.Extension -eq ".ps1" } | Sort-Object Length -Descending)
    $output.GetType()
    $output[0].GetType()




















# Range operator

    1..15

    [char]'A'..[char]'z' | %{ [char]$_ }

    1..15 | foreach{ "I can count to $_" }




















# Interact with the .Net framework

    # new up a .net object given a set of arguments to pass to the constructor
    #    ctor of - DateTime(int year, int month, int day)
    $JanFirst2009 = New-Object System.DateTime @(2009, 1, 1)
    $JanFirst2009

    # Execute a static property
    [System.DateTime]::Now

    # Execute a static function
    [System.String]::Format("Hello {0}!", $groupName)























################
################
# PowerShell Runtime Environment
################
################









################
# 4 kinds of commands powershell can execute

    # 1 - cmdlets (pronounced command-lets)
        Get-ChildItem


    # 2 - PowerShell scripts (files with the .ps1 extension)
        ./HelloFromAScript.ps1


    # 3 - Powershell functions
        function HelloFromAFunction()
        {
            echo "Hello World!"
        }
        HelloFromAFunction # Execute the above defined function


        # function that supports the pipeline.
        function Add-Them-Up {
            BEGIN {
                # one time (at the beginning) setup code
                $total = 0
            }
            PROCESS {
                # grab the current item
                $currentItem = $_

                # do something with the item
                $total += $currentItem
            }
            END {
                # one time (at the end) teardown code
                $total
            }
        }

        @(1,2,3) | Add-Them-Up
        1..100 | Add-Them-Up


    # 4 - plain ol executables
        ipconfig.exe




















################
# Aliases
    #   Many of the commands you may know from dos or linux scripting work in PowerShell - accomplished by aliases
    #   (map commands to shortcuts)

        alias # prints all alises
        
        alias dir # shows what the underlying command is for 'dir'
        alias ls # shows what the underlying command is for 'ls'


        # Create your own aliases
        set-alias foo Get-ChildItem # alias foo to the Get-ChildItem cmdlet




















################
#




















################
# Tools

# Powershell Console
# Powershell ISE
# PowerGUI




















################
# Usefull tips/tricks
#
# II (Invoke-Item)
#
# something... | clip
#
# Get-History
#
# Start a powershell process as administrator 
# Start-Process PowerShell -Verb RunAs
#
# Out-GridView
#
# ([xml] (new-object net.webclient).downloadstring('http://softwaredevelopersgroup.com/wp-feed.php')) | %{ $_.rss.channel.Item } | select title, creator




















################
# PowerShell and some boring stuff

# iex (New-Object Net.WebClient).DownloadString("http://bit.ly/e0Mw9w")

# http://elegantcode.com/2011/08/30/powershell-text-to-speech-and-fun-with-a-4yr-old/
