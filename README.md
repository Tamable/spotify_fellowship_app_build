## Calendar App (Backend)

This is the Rails API for a simple calendar event managing app. No user login; it assumes the current user to be the one hard-coded user.

**Technologies:**

* Ruby on Rails 5.1.6

**API:**

* [POST] /api/events
  * Create a new event with the below params:
    * Title (string)
    * Description (string)
    * Start (datetime)
    * End (datetime)


* [GET] /api/events
  * Return all events the user has on the calendar.


* [DELETE] /api/events/:id
  * Deletes an event


* [PATCH/PUT] /api/events/:id
  * Update an existing event
