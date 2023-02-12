import {echo} from "@server/server";

let runNumber = 0;
setInterval(() =>
{
    echo("Run number: " + runNumber ++);
}, 2000);