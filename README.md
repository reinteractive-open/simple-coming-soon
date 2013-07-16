# Simple Coming Soon Page

So many people need a simple way to say their SaaS app is coming soon and to
register interest of their users by capturing an email address.

This app does all that for you, using MailChimp as the capture mechanism, it
presents a simple MailChimp form and then lets the user sign up.

It presents Thank You and Confirmed screens after.

Kept super simple so your designer can go crazy!

You're welcome :)

## Running

First off, edit the email address and title of your page in `signup.rb` to match your settings.

Secondly, replace the contents of `views/form.erb` with your form of choice, the example
is for MailChimp.

Then to boot up just do:

    $ bundle install
    $ rackup config.ru

And you'll get something like:

    ~/Code/simple-coming-soon $ rackup config.ru
    [2013-07-11 16:24:22] INFO  WEBrick 1.3.1
    [2013-07-11 16:24:22] INFO  ruby 1.9.3 (2012-11-10) [x86_64-darwin12.2.0]
    [2013-07-11 16:24:22] INFO  WEBrick::HTTPServer#start: pid=78561 port=9292

Which means your coming soon page is available at http://localhost:9292/

## Use

Once online, people hitting your web page will get a sign up form, as some email
newsletter services require callback URLs for confirmation and thank you, we provide
these at `/confirmation` and `/thankyou`.

You can put whatever CSS and images you want in the `public` directory and include
them in your layout file, we've added some design goodness to give you a kickstart...
seriously... go wild... don't hold back.

If you want to use SCSS, any files in `assets/stylesheets` with a `.scss` extension
will be automatically compiled.

We've given you two basic layouts to start with:

1. A full width layout, where we've included an example mockup graphic. You can
find this one at [Pixeden](http://www.pixeden.com/psd-mock-up-templates/imac-macbook-psd-flat-mockup)
or get creative and use your own!

2. A minimal contained layout, great for expansive background images.

Each layout has its own .scss file, which is imported into the main stylesheet.
Here, we've also included a very simple responsive grid, inspired by Bootstrap
- add to or expand on this as you please!

## Hosting

You can host this anywhere that supports Rack apps.  Just pushing it to Heroku
should have you up and running in no time.


## Contributing

Send a pull request and we'll dive into it :)

## Tell us!

If you are hosting a good status page, leave us a photo in the Wiki and link back to
us if you would like :)
