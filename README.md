# README

This is a simple htmx on rails application to search words from words_dictionary.json file

## dependencies
- ruby
- bootstrap
- htmx
- sassc-rails
- clipboard

# How to run on local
* clone the repo
* run  `bundle install`
* run `bin/rails server`

# HTMX
It works like a swiss army knife.

check [htmx](https://htmx.org/) for more details

## Why htmx?
It works and I am using it.

## How to add htmx in your project
### Via a CDN
add this to your head tag
```html
<script src="https://unpkg.com/htmx.org@1.9.10" integrity="sha384-D1Kt99CQMDuVetoL1lrYwg5t+9QdHe7NLX/SoJYkXDFfX37iInKRy5xLSi8nO7UC" crossorigin="anonymous"></script>
```
### Dowload a copy
Download htmx.min.js [from unpkg.com](https://unpkg.com/htmx.org@1.9.10/dist/htmx.min.js)
add it to the appropriate directory
```html
<script src="/path/to/htmx.min.js"></script>
```
### Using a JS Bundler (e.g jsbundling-rails or webpacker)

Add the htmx.org package using Yarn:

```bash
yarn add htmx.org
```

and then import it on your `app/javascript/application.js`:

```javascript
import "htmx.org"
```

### Using Import Maps (e.g importmap-rails)

Pin the dependency into the importmap:

```bash
bin/importmap pin htmx.org
```

and then import it on your `app/javascript/application.js`:

```javascript
import "htmx.org"
```
# htmx attributes

please check [htmx.org](https://htmx.org/) first.
I am not going to write everything here, this is just a subset of their documentation

htmx gives superpowers to html tags by these attributes,
so every tags can make ajax requests by using `hx-get="/route", hx-post="/route",hx-put="/route" , hx-patch="/route" and hx-delete="/route"`, these attributes are for crud operation, is self explanatory
### hx-target
the responses can be rendered to the tag with id="id" hx-target="#id"
if you have not used hx-target then it will be on the same tag
### hx-swap
specify how to replace the target

- innerHTML - Replace the inner html of the target element (default)
- outerHTML - Replace the entire target element with the response
- beforebegin - Insert the response before the target element
- afterbegin - Insert the response before the first child of the target element
- beforeend - Insert the response after the last child of the target element
- afterend - Insert the response after the target element
- delete - Deletes the target element regardless of the response

### hx-trigger
this can do a lot of things, it specifies what event is going to trigger the requests
as default click triggers the request
you can change it into load using `hx-trigger="load"`
set delay by `hx-trigger="load, delay:1s"`
polling `hx-trigger="every 1s"`
find more [hx-triggers](https://htmx.org/attributes/hx-trigger/)

### hx-on
`hx-on:click="alert('Clicked!')"` shows alert box

### hx-confirm
`hx-confirm="Are you sure?"` confirm an action before request

### hx-prompt
`hx-prompt="Enter something"` shows a prompt before request

### hx-vals
`hx-vals='{"myVal": "My Value"}'` allows you to add to the parameters that will be submitted with an AJAX request

### hx-boost
`hx-boost:"true"` it enhances anchor and form tags to send ajax requests

