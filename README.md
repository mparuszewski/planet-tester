TimVideos Planet Website Acceptance Tests
=====================

This project contains acceptance tests for Planet Website. You can use them to test if page is working now and after any changes.

# Installation

Clone this repository

```bash
$ git clone git@github.com:pinoss/planet-tester.git
```

or download and extract it to your computer. 

Go to the tester directory

```bash
$ cd planet-tester
```

and run Bundler to install project`s dependencies

```bash
$ bundle install
```

# Usage

To run test type

```bash
$ bundle exec rake
```

And all test will start.

You can also add this command to your crontab and add mail notification after failure (with `cronic` or MAILTO environment) and you will get notifications about status of planet website. 
