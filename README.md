# NMSI App Base

We provide a nice HTTParty-based abstraction for NMSI materials index. Fun! Now we're going to build something on top of it.

The only thing this is missing is cats with lasers shooting out of their eyes!

## Development

Clone this repo: `git clone git@github.com:kenkeiter/nmsi-app.git`

Install the bundle: `bundle install`

Also, there's a cool rake task to load the lib and start an IRB console. Start it like this: `bundle exec rake console`

## Simple Example

Using `bundle exec rake console`:

  1.9.3-p194 :001 > all_materials = NMSI::Materials.all
  1.9.3-p194 :002 > all_materials['data'].each{ |material| puts material['Material']['name'] }
  Acrylic fabric
  Aluminum
  Aramid fabric
  Carbon fiber
  Corrugated box
  Cotton fabric
  Down
  Epoxy resin
  ...

## Rules

Fork and play, submit pull requests to me.