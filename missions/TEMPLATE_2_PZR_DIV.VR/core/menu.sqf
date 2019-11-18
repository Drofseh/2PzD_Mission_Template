private ["_info"];

player createDiarySubject ["FW_Menu", "Olsen Framework"];

_info = "
<font size='18'>Welcome to the Olsen Framework!</font>
<br/>The Olsen Framework is a simple framework designed for ArmA 3. It supports modules and is easy to configure.
<br/>
<br/>
<br/>Find out more about the framework on GitHub.
<br/>github.com/dklollol/Olsen-Framework-Arma-3
<br/>
<br/><font size='16'>Current Versions:
<br/>    Oslen Framework v3.3.3
<br/>    2PzD Template   v2.28.0</font>
";

player createDiaryRecord ["FW_Menu", ["Framework Info", _info]];
