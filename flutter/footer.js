(function() {
  var span = document.querySelector('footer>span');
  if (span) {
    span.innerText = 'Flutter 2.8.1 • 2021-12-16 19:32 • 77d935af4d • stable';
  }
  var sourceLink = document.querySelector('a.source-link');
  if (sourceLink) {
    sourceLink.href = sourceLink.href.replace('/master/', '/77d935af4d/');
  }
})();
