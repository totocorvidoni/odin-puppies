# Simple Puppies API

Made in response of one of [The Odin Project](https://www.theodinproject.com) [assignments](https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis).

Assignment description:

> This is a fast and straightforward project where
> you’ll set up a Rails app to be a data-producing API…
> which is just a fancy way of saying that all your
> controller methods will render data instead of HTML.
> Consider this a drill in quickly building a pure
> vanilla RESTful resource.
> We won’t be working with an external API until the second project.

## Getting started

To get started with the app, clone the repository and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```