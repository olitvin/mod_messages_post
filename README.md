# mod_messages_post
Required ejabberd v16.03.

Installing:
==========

* Make sure you have erlang installed on the machine you are building from
  * You probably want this to be the same machine you intend to install/run ejabberd on. I'm not sure about the interoperability of ejabberd/erlang versions.
* Run the build.sh script to build *.beam files
* Copy the *.beam files from the ebin directory to the location where the other modules are for your server
* Add the configuration shown below to your ejabberd.cfg file, providing the correct values for auth\_token, and post\_url

Example Configuration:
=====================
    # configuration for ejabberd >= 13.10
		mod_messages_post:
			auth_token: "messages_post_auth_token"
			post_url: "http://localhost:4567/messages"

Results:
========

The application running at the post_url will receive a post http request with the following form parameters.

		mod_messages_post
		"to"=>"test@localhost"
		"from"=>"test"
		"body"=>"Does it still work?"
		"access_token"=>"messages_post_auth_token"
