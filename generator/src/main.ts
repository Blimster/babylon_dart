import { parseLibraries } from "./parser";
import { sanitizeLibrary } from "./sanitizer";
import { writeLibrary } from "./writer";

writeLibrary(sanitizeLibrary(parseLibraries()));
