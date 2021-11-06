Dim FSO
Set FSO = CreateObject("Scripting.FileSystemObject")

Set Config = FSO.OpenTextFile("nuget.config" , 2, True)
Config.WriteLine("<?xml version=""1.0"" encoding=""utf-8""?>")
WScript.Echo "<?xml version=""1.0"" encoding=""utf-8""?>"
Config.WriteLine("<configuration>")
WScript.Echo "<configuration>"
Config.WriteLine("  <packageSources>")
WScript.Echo "  <packageSources>"
Config.WriteLine("    <!--To inherit the global NuGet package sources remove the <clear/> line below -->")
WScript.Echo "    <!--To inherit the global NuGet package sources remove the <clear/> line below -->"
Config.WriteLine("    <clear />")
WScript.Echo "    <clear />"
Config.WriteLine("    <add key=""nuget"" value=""https://api.nuget.org/v3/index.json"" protocolVersion=""3"" />")
WScript.Echo "    <add key=""nuget"" value=""https://api.nuget.org/v3/index.json"" protocolVersion=""3"" />"
Config.WriteLine("    <add key=""dotnet-core"" value=""https://dotnetfeed.blob.core.windows.net/dotnet-core/index.json"" />")
WScript.Echo "    <add key=""dotnet-core"" value=""https://dotnetfeed.blob.core.windows.net/dotnet-core/index.json"" />"
Config.WriteLine("  </packageSources>")
WScript.Echo "  </packageSources>"
Config.WriteLine("</configuration>")
WScript.Echo "</configuration>"
Set FSO = Nothing