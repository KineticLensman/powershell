#Dir | Rename-Item -NewName { $_.Name -replace " ","_" }

#Dir -filter *.jpg | %{Rename-Item $_ -NewName ("beach_trip_{0}.jpg" -f $nr++)}



#F:\TMP\powershell-test-dummy-files

#Dir | Rename-Item -NewName  { $_.Name  -replace "\(","_" }

#Dir | Rename-Item -NewName  { $_.Name  -replace "\)","" }

#Dir | Rename-Item -NewName  { "2019" + $_.Name  -replace "\)","" }

#$nr = 1
#Dir | Rename-Item -NewName  { $_.Name  + $nr++ }


#Dir | Rename-Item -NewName  { $_.BaseName  -replace "4","92" }

#Dir | $f = $_

<#

This is a multi-line comment.

#>

#$nj = 0
#Dir | Rename-Item -NewName 
#    {
#        $_.BaseName  + $nj.ToString().PadLeft(2,'0') + ".txt"
#    }
 #   $nj = $nj + 1
#

$nr = 1
ForEach ($file in Get-ChildItem)
{
    $file.name
    Rename-Item $file -NewName ($file.BaseName  + $nr.ToString().PadLeft(2,'0') + ".txt")
    $nr = $nr + 1
}
