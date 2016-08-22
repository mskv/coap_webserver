# CoapWebserver

### To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `iex -S mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


### Purpose

To be used in conjunction with [CoapDirectory](https://github.com/mskv/coap_directory) and [CoapNode](https://github.com/mskv/coap_node). It's described in the blogposts below.

Demo:
  1. Start a CoapDirectory and add a resource via CoapNode as described in those repositories
  2. Visit your Phoenix app in the browser
  3. Open the browser console
  4. Start an observation of a resource by typing its path in the input box, e.g. "switches/2"
  5. If the CoapDirectory is running and such resource has been registered, clicking the "Observe!" button will start an observation. From now on you will see the updates to this resource logged in the console.
  6. Try changing the resource's state by making a PUT request toggling the resource: `iex(4)> CoapWebserver.ResourceClient.put("switches/2", "toggle")` (see the blogposts for details).
  7. Check the console - you should be asynchronously informed of the update to the resource.


### Related Blogposts
  - [part 1](http://monterail.com/blog/2016/iot-with-elixir-and-coap-part-1-example-on-how-to-easily-prototype-and-build-an-iot-platform/)
  - [part 2](http://monterail.com/blog/2016/iot-with-elixir-and-coap-part-2-example-on-how-to-easily-prototype-and-build-an-iot-platform/)
