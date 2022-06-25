// import { parseLibraries } from "./v1/parser";
// import { sanitizeLibrary } from "./v1/sanitizer";
// import { writeLibrary } from "./v1/writer";

// writeLibrary(sanitizeLibrary(parseLibraries()));

import { readProgram } from "./reader";
import { sanitizeProgram } from "./sanitizer";
import { writeProgram } from "./writer";
import { config } from "./config";

const program = readProgram(config);
writeProgram(sanitizeProgram(program, config), config);
