<html>
    <head>
        <style>
            td{
                width: 200px;
            }
        </style>
    </head>
    <body>
        <div class="journal-content-article"> 
            <div style="font-family:Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; font-size: 13px; vertical-align: top; text-align: left; background-color:#FFFFFF; width: 700px; ">
                <h1>Congratulation!</h1>
                <p>
                    You video {{ $data['title'] }} is now approved. You can view it at <a href="{{ $data['url'] }}">{{ $data['title'] }}</a>. 
                </p>
                <table id="tblMain" width="700" style="" border="0" cellspacing="0"> 
                    <tr>
                        <td style="padding: 20px;" width="479" valign="top">
                            <p>Respectfully,</p>
                            <p> </p>
                            <p>Youth Media</p>
                            <p><a href="https://youthmedia.com/">Youth Media</a></p>
                        </td> 
                    </tr>
                </table> 
            </div> 
        </div>
    </body>
</html>