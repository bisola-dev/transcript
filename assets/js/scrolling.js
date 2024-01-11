const scrollingMessage = document.getElementById("scrollingMessage");

function scrollMessage() {
  scrollingMessage.style.left = "100%";
  const messageWidth = scrollingMessage.offsetWidth;
  const containerWidth = scrollingMessage.parentElement.offsetWidth;

  let currentPosition = 100;
  const animationDuration = 10; // in seconds
  const speed = (messageWidth + containerWidth) / animationDuration;

  function animate() {
    currentPosition -= speed;
    scrollingMessage.style.left = currentPosition + "%";
    if (currentPosition <= -messageWidth) {
      currentPosition = 100;
    }
    requestAnimationFrame(animate);
  }

  animate();
}

scrollMessage();
