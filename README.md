# TapirCMS

A CMS where all data is provided by feeds.

## Architecture

The layout is described by a `Frame`, it contains an ordered list of `Block`s.
The `Block`s contains an ordered list of `Puff`s. Each layout piece has a
references to a template that it uses to display its contents on the page.

A `Page` contains a list of entries, `PageEntry`. Every entry contains a
reference to a `Block` and a `Feed`.

The `Feed` serves `Article`s that is laid out in the `Puff`s.

![Architecture](https://raw.github.com/andersjanmyr/tapircms/master/docs/images/achitecture.png)

### Articles

An `Article` has one responsibility, providing article information for the
`Puff` to display. There are a number of subclasses of `Article`, one for each
source.

###  Feed

A `Feed` is responsible for providing a list of article URIs. The `Article`
subclasses know how to convert a URI into an `Article` that can be displayed by
the puffs.

## Contributing
