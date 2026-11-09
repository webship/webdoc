# Web Doc

A quick and basic setup for Web Documentation, using the Book module, to add documentation pages to the documentation section. A page shows its body and the book navigation (the pages below it, previous and next); the theme lays the page out — Webtheme draws a documentation page with the book's outline as the side navigation, "On this page" and a search. Every published page is also served as JSON at `/docs/index.json?_format=json` (title, url, excerpt), which that search reads.

* Have a **Web Doc** content type.
* Configure **Web Doc** to use the **Book** module.
* The display of a page: the body and the book navigation (no Layout Builder).
* The `Documentation index` view: the pages as JSON at `/docs/index.json?_format=json`.