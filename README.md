# quickstart-nodejs
A simple Node.js app ( using Express.js: Fast, unopinionated, minimalist web framework http://expressjs.com/ ) which can easily be deployed to Arukas.

## Running locally

```
$ git clone https://github.com/peco8/quickstart-nodejs.git
$ cd quickstart-nodejs
$ docker build --no-cache --tag quickstart-nodejs .
$ docker run -rm -d -p 3000:3000 quickstart-nodejs
```

Your app should now be running:

```
$ curl 192.168.59.103:3000
Hello World!
```

## Deploying to Arukas

[Install the Arukas CLI](https://github.com/arukasio/cli),

or If you have docker installed already,
```
docker run --rm -e ARUKAS_JSON_API_TOKEN=<APIT_OKEN> -e ARUKAS_JSON_API_SECRET=<SECRET_KEY> arukasio/arukas run --instances=3 --mem=512 -ports=80:tcp peco8/quickstart-nodejs
```
## Author

* Toshiki Inami (<t-inami@arukas.io>)

## License

This project is licensed under the terms of the MIT license.

**Continue with this tutorial [here](/).**
