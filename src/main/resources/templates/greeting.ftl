<#import "parts/common.ftl" as c>

<@c.page>
    <body>

<style>
body {
  font-family: "Oswald", sans-serif;
  font-size: 20px;
  line-height: 1.5;
  max-width: 1920px;
  margin: 0 auto;
  background: url(https://web2033.com/cdn/jpg/w/bg-water-bubbles/448-1920w.jpg)
    center / cover;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}

.circle {
  width: 300px;
  height: 300px;
  border-radius: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  text-transform: uppercase;
}

main {
  display: flex;
  position: relative;
}

.fd {
  animation: pulse 1.5s infinite alternate-reverse ease-out;
  position: absolute;
  top: 0;
  left: 150px;
  background-color: rgba(255, 255, 255, 0.7);
  z-index: 2;
  color: black;
}

.circle:first-child {
  animation: aside1 1.5s infinite alternate ease-in;
  background: linear-gradient(
    90deg,
    hsl(350, 28%, 33%),
    hsla(8, 38%, 63%, 0.4)
  );
}

.circle:last-child {
  animation: aside2 1.5s infinite alternate ease-in;
  background: linear-gradient(270deg, #05376b, rgba(26, 95, 156, 0.4));
}

@keyframes pulse {
  from {
    transform: scale(1.05);
  }
  to {
    transform: scale(0);
  }
}

@keyframes aside1 {
  to {
    transform: translateX(-50px);
  }
}

@keyframes aside2 {
  to {
    transform: translateX(50px);
  }
}

</style>
    <main>
  <div class="circle">HELLO</div>
  <div class="circle fd">SONOON</div>
  <div class="circle">WELCOMES</div>
</main>


</body>
</@c.page>