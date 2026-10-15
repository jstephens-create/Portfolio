const toggle = document.querySelector('.menu-toggle');
const sidebar = document.querySelector('.sidebar');

if (toggle && sidebar) {
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
}
