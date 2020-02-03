# README
- I started off by conceptualizing the basic structure for the app, starting with models and data relationships.

- I established that I'd need Auditoriums, films, showings, and eventually orders.

- I initially thought that orders could pull all the film and theater info through the showing_id but then later realized that although this worked, the orders themselves should represnt a timeless record that couldn't be altered if any of it's associated objects attributes changes (i.e. auditorium changed its film), so I had to alter the order model.

- Although I initially built out simple versions of many of the show and edit pages, I eventually created a "Manage" page to allow the owner to effectively and easily see the state of the theater and make any edits, deletions or additions.

- I made efforts to increase the ease and accuracy of adding or editing by passing id parameters through, so that adding a new showing, for example, would default to the auditorium you were clicking through from.
