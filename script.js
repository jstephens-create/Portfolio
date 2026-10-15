const toggle = document.querySelector('.menu-toggle');
const sidebar = document.querySelector('.sidebar');

if (toggle && sidebar) {
  sidebar.classList.add('is-enhanced');
  toggle.addEventListener('click', () => {
    const open = sidebar.classList.toggle('is-open');
    toggle.setAttribute('aria-expanded', String(open));
  });

  sidebar.querySelectorAll('a').forEach((link) => {
    link.addEventListener('click', () => {
      sidebar.classList.remove('is-open');
      toggle.setAttribute('aria-expanded', 'false');
    });
  });
  sidebar.addEventListener('keydown', (event) => {
    if (event.key === 'Escape' && sidebar.classList.contains('is-open')) {
      sidebar.classList.remove('is-open');
      toggle.setAttribute('aria-expanded', 'false');
      toggle.focus();
    }
  });
}

// Controls remain available; reduced-motion visitors choose when playback starts.
const reducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
function updateMotion() {
  document.querySelectorAll('video[data-autoplay]').forEach((video) => {
    if (reducedMotion.matches) video.pause();
    else video.play().catch(() => {});
  });
}
reducedMotion.addEventListener('change', updateMotion);
updateMotion();
