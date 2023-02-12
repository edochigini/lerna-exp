"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const server_1 = require("@server/server");
let runNumber = 0;
setInterval(() => {
    (0, server_1.echo)("Run number: " + runNumber++);
}, 2000);
//# sourceMappingURL=index.js.map