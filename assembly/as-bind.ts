namespace console {
  export declare function log(str: string): void;
}

declare function consoleLog(str: string): void;

export function log(str: string): void {
  console.log(str);
  consoleLog(str);
}
