import {Script} from "liqvid";

export const markers = [
  ["intro/", "5:13.2"],
  ["vote/", "0:32.0"],
] as [string, string][];

export const script = new Script(markers);
export const playback = script.playback;