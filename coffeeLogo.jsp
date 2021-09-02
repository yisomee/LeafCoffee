<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Coffee for you</title>
<script type="text/javascript">
	function resize() {
		if (window.innerWidth <= 800) {
			console.log('set to 4');
			document.getElementById('blurFilter').setAttribute('stdDeviation',
					4);
		} else {
			console.log('set to 10');
			document.getElementById('blurFilter').setAttribute('stdDeviation',
					8);
		}
	}

	window.addEventListener("resize", resize);
	document.addEventListener("DOMContentLoaded", resize);
</script>
<style type="text/css">
body {
  background: #4e342e;
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 0;
  overflow: hidden;
}

#plate{
  width: 50vmin;
  height: 50vmin;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #ffffff;
  position: relative;
  box-shadow:
    -2vmin 2vmin 5vmin 2vmin  rgba( #000, 0.2 ),
    inset 0 0 0 0.2vmin #cccccc,
    inset 0 0 0 0.5vmin #fafafa,
    inset 0 0 10vmin 0.1vmin  rgba( #000, 0.2 );
}

#handle{
  width: 10%;
  height: 30%;
  background-color: #fff;
  position: absolute;
  left: 71%;
  transform: rotate(-43deg);
  top: 65%;
  border-radius: 1vmin;
  box-shadow:
    -2vmin -1vmin 2vmin 0vmin rgba(37, 37, 37, 0.1),0vmin 0vmin 0vmin 0.1vmin rgba(102, 102, 102, 0.1), inset -1vmin 0 2vmin 0.1vmin #ffffff, inset 0 0 0.5vmin 0.5vmin #bbbbbb, inset 0 0 10vmin 0.1vmin rgba(195, 195, 195, 0.2);
}

#cup{
  width: 65%;
  height: 65%;
  border-radius: 50%;
  background-color: #ffffff;
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  box-shadow:
    -2vmin 2vmin 5vmin -2vmin  rgba( #000, 0.5 ),
    inset 0 0 0.5vmin 0.2vmin #cccccc,
    inset 0 0 0 1vmin #fafafa;
  z-index: 1;

}

#coffeBg{
  width: 80%;
  height: 80%;
  border-radius: 50%;
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  background: linear-gradient(45deg, #35210d 0%,#231105 100%);
  overflow: hidden;
}
#cupInner{
  width: 80%;
  height: 80%;
  border-radius: 50%;
  position: absolute;
  box-shadow:0 0 0.3vmin 0 #000, 0 0 0.5vmin 2.5vmin #dedede, inset 0 0 0.4vmin 0.1vmin rgba(0, 0, 0, 0.5);
  background-color: transparent;
  z-index: 1;
}

#foamWrapper{
  filter:url("#goo") drop-shadow(0px 0px 3px #b37a3c);
  width: 100%;
  height: 100%;
  position: absolute;
  backface-visibility: hidden;
}
.foam{
  background-color: #f8c99d;
  width: 10%;
  height: 40%;
  border-radius: 50%;
  position: absolute;
  left: -3%;
  transform: rotate(21deg);
  top: 22%;
  filter:url("#scatter");
  box-shadow: inset 0 0 0.1vmin 0.2vmin rgba(53, 33, 13, 0.2);
}

#foam2{
  top: -7%;
  left: 14%;
  transform: rotate(53deg);
  width: 6%;
}
#foam3{
  top: -21%;
  left: 43%;
  transform: rotate(75deg);
}
#foam4{
  top: -20%;
  left: 46%;
  transform: rotate(105deg);
}
#foam5{
  top: -9%;
  left: 70%;
  transform: rotate(122deg);
  height: 30%;
}
#foam6{
  top: 8%;
  left: 98%;
  transform: rotate(152deg);
  height: 60%;
  width: 5%;
}
#foam7{
  top: 20%;
  left: 97%;
  transform: rotate(181deg);
  height: 60%;
  width: 5%;
}
#foam8{
  top: 51%;
  left: 96%;
  transform: rotate(211deg);
  height: 40%;
  width: 5%;
}
#foam9{
  top: 62%;
  left: 70%;
  transform: rotate(224deg);
  height: 80%;
  width: 5%;
}
#foam10{
  top: 72%;
  left: 62%;
  transform: rotate(74deg);
  height: 50%;
  width: 5%;
}
#foam11{
  top: 59%;
  left: 51%;
  transform: rotate(104deg);
  height: 80%;
  width: 4%;
}
#foam12{
  top: 44%;
  left: 9%;
  transform: rotate(124deg);
  height: 80%;
  width: 4%;
}
#foam13{
  top: 7%;
  left: -6%;
  transform: rotate(-26deg);
  height: 80%;
  width: 4%;
}

@keyframes foamMiddleAnimation {
  0% {
    transform: translate(0%,0%);
  }
  10%{
    transform: translate(0%,0%);
  }

  50%{
    transform: translate(45%,20%);
  }
  90%{
    transform: translate(45%,20%);
  }
  100%{
    transform: translate(45%,20%);
  }
}

#foamMiddleWrapper{
  animation-name: foamMiddleAnimation;
  animation-duration: 10s;
  animation-direction: normal;
  animation-iteration-count: infinite;
  animation-timing-function: ease-in-out;
  will-change: transform, opacity;
  position: absolute;
  top: 10%;
  left: 5%;
  width: 100%;
  height: 100%;

  /* deactivate animations for safari because it's the new IE */
  @media not all and (min-resolution:.001dpcm)
  { @supports (-webkit-appearance:none) {
      animation-name: none;
      animation-duration: inherit;
      animation-timing-function: inherit;
      will-change: inherit;
  }}
}

@keyframes foamMiddleContainerAnimation {
  0% {
    transform: rotate(0);
  }

  55%{
    transform: rotate(30deg);
  }
  90%{
    transform: rotate(30deg);
  }
  100%{
    opacity: 0;
  }
}
#foamMiddleContainer{
  animation-name: foamMiddleContainerAnimation;
  animation-duration: 10s;
  animation-direction: normal;
  animation-iteration-count: infinite;
  animation-timing-function: ease-in-out;
  will-change: transform, opacity;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  /* deactivate animations for safari because it's the new IE */
  @media not all and (min-resolution:.001dpcm)
  { @supports (-webkit-appearance:none) {
    animation-name: none;
    animation-duration: inherit;
    animation-timing-function: inherit;
    will-change: inherit;
  }}
}
.foamMiddle{
  background-color: #f8c99d;
  width: 13%;
  height: 18%;
  border-radius: 50%;
  position: absolute;
  left: 40%;
  transform: rotate(21deg);
  top: 40%;
  filter: url(#scatter);
  box-shadow: inset 0 0 0.1vmin 0.2vmin rgba(53, 33, 13, 0.2);
}

#foamMiddle2{
  transform: rotate(-49deg);
  width: 10%;
  left: 47%;
}

@keyframes bubbleMiddle1Animation {
  0% {
    transform: scale(1) translate(0%, 0%);
  }
  35% {
    transform: scale(1) translate(60%, 40%);
  }
  45%{
    transform: scale(0) translate(60%, 40%);
  }
  100%{
    transform: scale(0) translate(60%, 40%);
  }
}

#bubbleMiddle1{
  left: 50%;
  top: 48%;
  width: 7%;
  height: 7%;
  animation-name: bubbleMiddle1Animation;
  animation-duration: 10s;
  animation-direction: normal;
  animation-iteration-count: infinite;
  animation-timing-function: ease-in-out;
  will-change: transform;
  /* deactivate animations for safari because it's the new IE */
  @media not all and (min-resolution:.001dpcm)
  { @supports (-webkit-appearance:none) {
    animation-name: none;
    animation-duration: inherit;
    animation-timing-function: inherit;
    will-change: inherit;
  }}
}

@keyframes bubbleMiddle2Animation {
  0% {
    transform: scale(1) translate(0%, 0%);
  }
  39% {
    transform: scale(1) translate(10%, 10%);
  }
  49%{
    transform: scale(0) translate(10%, 10%);
  }
  100%{
    transform: scale(0) translate(10%, 10%);
  }
}
#bubbleMiddle2{
  left: 44%;
  top: 40%;
  width: 6%;
  height: 7%;
  transform: rotate(50deg);
  animation-name: bubbleMiddle2Animation;
  animation-duration: 10s;
  animation-direction: normal;
  animation-iteration-count: infinite;
  animation-timing-function: ease-in-out;
  will-change: transform;
  /* deactivate animations for safari because it's the new IE */
  @media not all and (min-resolution:.001dpcm)
  { @supports (-webkit-appearance:none) {
    animation-name: none;
    animation-duration: inherit;
    animation-timing-function: inherit;
    will-change: inherit;
  }}
}

@keyframes bubbleMiddle3Animation {
  0% {
    transform: scale(1) translate(0%, 0%);
  }
  45% {
    transform: scale(1) translate(0%, 0%);
  }
  55%{
    transform: scale(0) translate(0%, 0%);
  }
  100%{
    transform: scale(0) translate(50%, -40%);
  }
}
#bubbleMiddle3{
  left: 41%;
  top: 49%;
  width: 7%;
  height: 8%;
  transform: rotate(36deg);
  animation-name: bubbleMiddle3Animation;
  animation-duration: 10s;
  animation-direction: normal;
  animation-iteration-count: infinite;
  animation-timing-function: ease-in-out;
  will-change: transform;
  /* deactivate animations for safari because it's the new IE */
  @media not all and (min-resolution:.001dpcm)
  { @supports (-webkit-appearance:none) {
    animation-name: none;
    animation-duration: inherit;
    animation-timing-function: inherit;
  }}
}
#bubbleMiddle4{
  left: 51%;
  top: 45%;
  width: 2%;
  height: 2%;
  transform: rotate(36deg);
}

.bubble{
  width: 5%;
  height: 7%;
  border-radius: 50%;
  background-color: #35210d;
  position: absolute;
  top: 40%;
  left: 2%;
  box-shadow:
    0vmin 0vmin 0.1vmin -0vmin #35210d,
    inset 0 0 0.5vmin 0.2vmin #662e22;
  //transition: 5s all ease-in-out;

  &:after{
    display: block;
    content: '';
    width: 25%;
    height: 25%;
    border-radius: 50%;
    background-color: #fff;
    position: absolute;
    right: 23%;
    top: 12%;
    transform: rotate(-20deg);
    box-shadow: 0vmin 0vmin 0.3vmin 0vmin #ffffff;
  }
}

#bubble2{
  left: 5%;
  top: 30%;
  transform: rotate(25deg);
}

#bubble3{
  left: 8%;
  top: 23%;
  transform: rotate(39deg);
  width: 3%;
  height: 5%;
}

#bubble4{
  left: 94%;
  top: 43%;
  transform: rotate(-10deg);
  width: 5%;
  height: 7%;
}

#bubble5{
  left: 95%;
  top: 37%;
  transform: rotate(-17deg);
  width: 3%;
  height: 4%;
}

#bubble6{
  left: 39%;
  top: 0%;
  transform: rotate(76deg);
  width: 6%;
  height: 9%;
}

#bubble7{
  left: 60%;
  top: 1%;
  transform: rotate(106deg);
  width: 4%;
  height: 7%;
}

#bubble8{
  left: 35%;
  top: 91%;
  transform: rotate(106deg);
  width: 4%;
  height: 7%;
}

#bubble9{
  left: 4%;
  top: 63%;
  transform: rotate(-23deg);
  width: 5%;
  height: 7%;
}

#bubble10{
  left: 2%;
  top: 58%;
  transform: rotate(-18deg);
  width: 3%;
  height: 4%;
}

#bubble11{
  left: 63%;
  top: 91%;
  transform: rotate(72deg);
  width: 4%;
  height: 6%;
}

#bubble12{
  left: 31%;
  top: 3%;
  transform: rotate(68deg);
  width: 4%;
  height: 6%;
}

#bubble13{
  left: 21%;
  top: 85%;
  transform: rotate(118deg);
  width: 4%;
  height: 6%;
}

#bubble14{
  left: 95%;
  top: 53%;
  transform: rotate(373deg);
  width: 4%;
  height: 6%;
}

#bubble15{
  left: 50%;
  top: 0%;
  transform: rotate(96deg);
  width: 3%;
  height: 5%;
}

.bubbleSmall{
  width: 1%;
  height: 2%;
  border-radius: 50%;
  background-color: #35210d;
  position: absolute;
  top: 48%;
  left: 1%;
  box-shadow: 0vmin 0vmin 0.1vmin 0vmin #35210d, inset 0 0 0.5vmin 0.2vmin #662e22;

  &:after{
    display: block;
    content: '';
    width: 25%;
    height: 25%;
    border-radius: 50%;
    background-color: #fff;
    position: absolute;
    right: 23%;
    top: 12%;
    transform: rotate(-20deg);
    box-shadow: 0vmin 0vmin 0.3vmin 0vmin #ffffff;
    opacity: 0.8;
  }
}

#bubbleSmall2{
  left: 3%;
  top: 37%;
  height: 1%;
}
#bubbleSmall3{
  left: 6%;
  top: 28%;
  height: 1%;
}
#bubbleSmall4{
  left: 96%;
  top: 35%;
  height: 1%;
}
#bubbleSmall5{
  left: 60%;
  top: 96%;
  height: 1%;
}
#bubbleSmall6{
  left: 8%;
  top: 72%;
  height: 1%;
}

#innerShadow{
  width: 100%;
  height: 100%;
  border-radius: 50%;
  position: absolute;
  background: linear-gradient(45deg, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.22) 100%);
}

#glow{
  width: 80%;
  height: 80%;
  border-radius: 50%;
  background: linear-gradient(45deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0) 20%, rgba(255, 255, 255, 0.26) 90%, rgba(255, 255, 255, 0.9) 100%);
  position: absolute;
  z-index: 10
;
}

@keyframes steamAnimation {
  0%{
    transform: translate(30%, -70%);
    opacity: 0;
  }
  50% {
    opacity: 0.3;
  }
  100%{
    transform: translate(60%, -90%);
    opacity: 0;
  }
}
#steamWrapper{
  width: 50%;
  height: 50%;
  position: absolute;
  transform: translate(-50%, -50%);
  top: 50%;
  left: 50%;
  z-index: 10;
  display: flex;
  justify-content: center;
  align-items: center;
}
#steam{
  width: 100%;
  height: 100%;
  border-radius: 50%;
  box-shadow: -156px 492px 123px -252px #fff;
  filter: url(#fog);
  min-width: 600px;
  min-height: 600px;
  animation-name: steamAnimation;
  animation-duration: 4s;
  animation-direction: normal;
  animation-iteration-count: infinite;
  animation-timing-function: ease-in-out;
  will-change: transform, opacity;
  @media (max-width: 600px) {
    top: -80%;
    box-shadow: -156px 492px 123px -252px #fff;
  }
  @media (max-width: 480px) {
    top: -160%;
    box-shadow: -166px 492px 53px -272px #fff;
  }
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<div id="plate">
		<div id="cup">
			<div id="cupInner"></div>
			<div id="coffeBg">
				<div id="foamWrapper">
					<div id="foam1" class="foam"></div>
					<div id="foam2" class="foam"></div>
					<div id="foam3" class="foam"></div>
					<div id="foam4" class="foam"></div>
					<div id="foam5" class="foam"></div>
					<div id="foam6" class="foam"></div>
					<div id="foam7" class="foam"></div>
					<div id="foam8" class="foam"></div>
					<div id="foam9" class="foam"></div>
					<div id="foam10" class="foam"></div>
					<div id="foam11" class="foam"></div>
					<div id="foam12" class="foam"></div>
					<div id="foam13" class="foam"></div>

					<div id="foamMiddleWrapper">
						<img alt="" src="../img/pngegg.png" style="width:50%">
<!-- 						<div id="foamMiddleContainer"> -->
<!-- 							<div id="foamMiddle1" class="foamMiddle"></div> -->
<!-- 							<div id="foamMiddle2" class="foamMiddle"></div> -->
<!-- 							<div id="bubbleMiddle1" class="bubble"></div> -->
<!-- 							<div id="bubbleMiddle2" class="bubble"></div> -->
<!-- 							<div id="bubbleMiddle3" class="bubble"></div> -->
<!-- 							<div id="bubbleMiddle4" class="bubble"></div> -->
<!-- 						</div> -->
					</div>

<!-- 					<div id="bubble1" class="bubble"></div> -->
<!-- 					<div id="bubble2" class="bubble"></div> -->
<!-- 					<div id="bubble3" class="bubble"></div> -->
<!-- 					<div id="bubble4" class="bubble"></div> -->
<!-- 					<div id="bubble5" class="bubble"></div> -->
<!-- 					<div id="bubble6" class="bubble"></div> -->
<!-- 					<div id="bubble7" class="bubble"></div> -->
<!-- 					<div id="bubble8" class="bubble"></div> -->
<!-- 					<div id="bubble9" class="bubble"></div> -->
<!-- 					<div id="bubble10" class="bubble"></div> -->
<!-- 					<div id="bubble11" class="bubble"></div> -->
<!-- 					<div id="bubble12" class="bubble"></div> -->
<!-- 					<div id="bubble13" class="bubble"></div> -->
<!-- 					<div id="bubble14" class="bubble"></div> -->
<!-- 					<div id="bubble15" class="bubble"></div> -->

<!-- 					<div id="bubbleSmall1" class="bubbleSmall"></div> -->
<!-- 					<div id="bubbleSmall2" class="bubbleSmall"></div> -->
<!-- 					<div id="bubbleSmall3" class="bubbleSmall"></div> -->
<!-- 					<div id="bubbleSmall4" class="bubbleSmall"></div> -->
<!-- 					<div id="bubbleSmall5" class="bubbleSmall"></div> -->
<!-- 					<div id="bubbleSmall6" class="bubbleSmall"></div> -->
<!-- 					<div id="bubbleSmall7" class="bubbleSmall"></div> -->
<!-- 					<div id="bubbleSmall8" class="bubbleSmall"></div> -->

				</div>
				<div id="innerShadow"></div>
				<div id="glow"></div>
			</div>
		</div>
		<div id="handle"></div>
	</div>
	<div id="steamWrapper">
		<div id="steam"></div>
	</div>

	<svg width="0" height="0">
    <defs>
      <filter id="goo">
        <feGaussianBlur in="SourceGraphic" stdDeviation="10"
			result="blur" id="blurFilter" />
        <feColorMatrix in="blur" mode="matrix"
			values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -5" result="goo" />
        <feComposite in="SourceGraphic" in2="goo" operator="atop" />
      </filter>
    </defs>
  </svg>

	<svg width="0" height="0">
    <defs>
      <filter id="scatter">
        <feTurbulence baseFrequency="10.9" type="fractalNoise"
			numOctaves="1" />
        <feDisplacementMap in="SourceGraphic" xChannelSelector="G"
			yChannelSelector="B" scale="20" />
        <feComposite operator="in" in2="finalMask" />
      </filter>
    </defs>
  </svg>

	<svg width="0" height="0">
    <filter id="fog">
      <feTurbulence type="fractalNoise" baseFrequency=".01"
			numOctaves="10" />
      <feDisplacementMap in="SourceGraphic" scale="180" />
    </filter>
  </svg>
</body>

</html>
