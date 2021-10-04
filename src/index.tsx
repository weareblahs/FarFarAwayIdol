import {Player, Script, Video} from "liqvid";
import * as ReactDOM from "react-dom";

const markers = [
  ["intro/", "5:13.2"],
  ["vote/", "0:32.0"],
];

const script = new Script(markers);

function FFAI() {
  return (
    <Player script={script}>
      <Intro/>
      <VoteScreen/>
      <Video start={0}>
        <source src="/assets/intro.mp4" type="video/mp4"/>
      </Video>
    </Player>
  );
}

function Intro() {
  return (
    <section data-during="intro/">
      <h1></h1>
    </section>
  );
}

function VoteScreen() {
  return (
    <section data-during="vote/">
            <div id="shrekandfiona"><a href="./assets/3.html"><img src="./assets/shrekandfiona.png"></img></a></div>
            <div id="pussinboots"><a href="./assets/2.html"><img src="./assets/pussinboots.png"></img></a></div>
            <div id="hook"><a href="./assets/4.html"><img src="./assets/hook.png"></img></a></div>
            <div id="gingy"><a href="./assets/5.html"><img src="./assets/gingy.png"></img></a></div>
            <div id="mice"><a href="./assets/6.html"><img src="./assets/mice.png"></img></a></div>
            <div id="charming"><a href="./assets/7.html"><img src="./assets/charming.png"></img></a></div>
            <div id="bbwtlp"><a href="./assets/8.html"><img src="./assets/bbwtlp.png"></img></a></div>
            <div id="doris"><a href="./assets/9.html"><img src="./assets/doris.png"></img></a></div>
            <div id="pinocchio"><a href="./assets/10.html"><img src="./assets/pinocchio.png"></img></a></div>
            <div id="donkey"><a href="./assets/1.html"><img src="./assets/donkey.png"></img></a></div>
    </section>
  );
}

ReactDOM.render(<FFAI/>, document.querySelector("main"));