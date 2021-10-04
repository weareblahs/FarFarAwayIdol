import {Player, Script, Video} from "liqvid";
import * as ReactDOM from "react-dom";

const parts = [
  ["intro/", "5:13.0"],
  ["vote/", "1:00.5"],
];

const script = new Script(parts);

function FFAI_MainScreen() {
  return (
    <Player script={script}>
      <introvideo/>
      <votingscreen/>
      <Video start={0}>
        <source src="/assets/intro.mp4" type="video/mp4"/>
      </Video>
    </Player>
  );
}

function introvideo() {
  return (
    <section data-during="intro/">
      <h1></h1>
    </section>
  );
}

function votingscreen() {
  return (
    <section data-during="vote/">
            <div id="shrekandfiona"><img src="assets/shrekandfiona.png"></div>
            <div id="pussinboots"><img src="assets/pussinboots.png"></div>
            <div id="hook"><img src="assets/hook.png"></div>
            <div id="gingy"><img src="assets/gingy.png"></div>
            <div id="mice"><img src="assets/mice.png"></div>
            <div id="charming"><img src="assets/charming.png"></div>
            <div id="bbwtlp"><img src="assets/bbwtlp.png"></div>
            <div id="doris"><img src="assets/doris.png"></div>
            <div id="pinocchio"><img src="assets/pinocchio.png"></div>
            <div id="donkey"><img src="assets/donkey.png"></div>
    </section>
  );
}

ReactDOM.render(<FFAI_MainScreen/>, document.querySelector("main"));