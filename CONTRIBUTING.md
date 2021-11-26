Contributing to learn2code.nu
=============================

All the data is managed through a series of [Yaml][yaml] files so it may be
useful to read up on the Yaml syntax.

To add a new site, go to the [data files](_data/) and get familiar with how it
is setup. There is a section and coresponding file for each Category. Site icons
are stored in folders corresponding to each of those categories in their own
[folder](img/).

## Guidelines

1. **Don't break the build**: We have a simple continuous integration system
   setup with [Github Actions](https://github.com/StefanWallin/learn2code/actions). 
   If your pull request doesn't pass, it won't be merged. Github Actions will only 
   check your changes after you submit a pull request. If you want to test locally,
   on your own machine, instructions are listed below. Keep reading!
2. **Use a Nice Icon**: The icon must be have a resolution of 32x32. PNG is the
   preffered format. If possible, please also run the image through an optimizing
   utility such as OptiPNG before committing it to the repo.
3. **Be Awesome**: You need to be awesome. That is all.

## Running Locally

It's easy to run everything locally to test it out. Either you can have plain
[Jekyll][jekyll] installed or you can use [Bundler][bundler] to manage
everything for you.

### Using Bundler

1. To install Bundler, just run `gem install bundler`.
2. Install dependencies in the [Gemfile][gemfile], `bundle install`.
3. Run Jekyll: `bundle exec jekyll serve --watch`. The `--watch` is optional and
   makes Jekyll watch for file changes.

#### Testing with Bundler
   To verify that your additions are fine, you can run the entire set of tests
   locally which will check all links and images with:

   ```bash
   $ bundle exec rake
   ```

   However, this can take a while as there are roughly 800 links that it checks.
   If you just wish to test your YAML changes, you can run:

   ```bash
   $ bundle exec rake verify
   ```

### Using Vanilla Jekyll

1. Install Jekyll if you don't already have it: `gem install jekyll`.
2. Run Jekyll: `jekyll serve --watch`. The `--watch` is again optional.

## Site Criteria

The following is a rough criteria and explanations for what sites should be on
learn2code.nu. If one of the following Criteria is met, it belongs on learn2code.nu:

1. **Game controlled by code**: Any site, app or other software that is controlled
   by inputing method calls and other code related controls belongs here. Gamified
   learning is good for beginners!
2. **Algorithms/Logic/Puzzles**: Any site, app or software that teaches logic or
   algorithmic thinking belongs here.
3. **Robots/Electronics**: Any kit that focuses on programmatic control of robots
   or premade circuit boards or breadboards are welcome here.


**A note on tutorials**: Tutorials are more like resources instead of a complete "kit".
   We focus on experience where we can just throw a link to a kid and they can
   learn them selves with some mentoring. Tutorials that are just a google away
   we will have strict quality demands on, and they can be added as a resource
   to some sites or concepts. All added resources must be free as in beer.

If you have any questions regarding whether or not a site matches one of the
Criteria, just open an Issue and we'll take a look.

## New Sections

To add a new section, modify the `sections` value in [main.yml](_data/main.yml)
and follow the template below:

```yml
sections:
  - id: category-id
    title: Category Name
    icon: icon-class
```

Then create a new file in the `_data` directory named the same as your section's
id with the `.yml` extension.

## New Sites

First and foremost, make sure the new site meets our [definition
requirements](#a-note-on-definitions) for learn2code resources.

The values should be pretty straight forward for adding a new website. The
`resources` array should already be defined, just add a new website to it like
this example:

```yml
resources:
  - name: Site Name
    url: https://www.site.com/
    agespan: 4-8y
    difficulty: Easy-Advanced
    languages: sv, en
    cost: Free/$19.99
    platforms: iOS, Android, Windows, Mac
    mode: Drag 'n Drop, Puzzle, Game, Tutorial, Project...
    programming_lang: Visual, Java, Python, Javscript...
    resources:
      - url: https://www.site1.com/
      name: Easy tutorial on X
      difficulty: Easy
      - url: https://www.site2.com/
      name: Great introduction for X with Y
      difficulty: Intermediate
```
Fields `name:`, `url:`, `agespan:`, `languages:`, `cost:`, `platforms` and `mode` are required for all entries. Other fields should be included if relevant.

If you are adding multiple sites or resources, please add each site/resource to its own new branch and
submit a separate pull request for each branch.

## A Note on Definitions

A lot of people have different ideas of what constitutes a good learning resource
what doesn't, so it stands to reason that we should clarify a bit. For the
purposes of this site, a good quality code learning resource is defined as any
service provided as a which give more value than a book in either ease of use,
gamification or robustness.

[bundler]: http://bundler.io/
[gemfile]: /Gemfile
[jekyll]: http://jekyllrb.com/
[travis]: https://travis-ci.org/jdavis/twofactorauth
[yaml]: http://www.yaml.org/
