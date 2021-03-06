## vit 1.2.8
__Release date__: 29 July 2020
- Fix bug introduced by R 4.0 (must now use `unitType(x)` instead of `attr(x, 'unit')`)

## vit 1.2.7
__Release date__: 22 June 2017

- Fix a bug in the NAMESPACE not exporting functions correctly


## vit 1.2.6
__Release date__: 03 Feburary 2017

- Use the `newdevice` function from `iNZightTools`, which attempts to select a better device
  (particularly on Linux).


## vit 1.2.5
__Release date__: 19 October 2015

- Removed the "ODBC" dependency, which should only affect
  import of Excel files on Windows. However, this dependency was
  causing issues on Macs.


## vit 1.2.4
__Release date__: 27 July 2015

- Allow users to modify the `ps` and `dpi` values
  for Acinonyx plots. This is mostly useful for Macbook Pro (retina)
  users.


## vit 1.2.3
__Release date__: 16 June 2015

- the "File Browser" should now start in the iNZightVIT
  directory on Macs (rather than the "Home" directory, `~`).

- on mac machines, we provide the ability to create a
  `.vitprofile` file in the main iNZightVIT folder which will
  control the resolution of the graphics in the VIT module.


## vit 1.2.2
__Release date__: 10 June 2015

- New banner with the new iNZight logo in the main start up screen


## vit 1.2.1
__Release date__: 18 September 2014

### Minor Changes

- Can now read in data files which have comments in them -
  denoted by #'s


# vit 1.2.0
__Release date__: 18 January 2014

### Major Changes

- Because `iNZight` has been rewritten using `gWidgets2`, we
  needed to rewrite several functions in the `vit` package to ensure
  users could still switch between iNZight and VIT (and back again)
  without restarting their session. The current version involves
  detaching and attaching the correct gWidgets version when iNZight
  is loaded or closed.

### Minor Changes

- As with other packages in the iNZightVIT bundle, the version
  numbering has been updated. The previous version was updated from
  beta to version 1.x, and the new release as version 1.2 (this is
  because there is no functional difference between the versions,
  however they are no longer compatible).


### Bug Fixes

- Users can now close the graphics device in the VIT module,
  and are able to return to the home screen (previously, they
  experienced a fatal error when trying to return to the home screen
  if they closed the graphics device).


## vit 1.1.0-20130227
__Release date__: 27 February 2013

### Bug Fixes

- When doing randomisation testing with a 2 level categorical
  variable as the first variable, changing the level of interest
  could cause all data to be plotted as if it belonged to the level
  of interest.


## vit 1.1.0-20130122
__Release date__: 22 January 2013

### Minor Changes

- Reverting 'stackPoints' to old behaviour for 'Data' and
  'Sample' panels. Modified slightly so that the "bins" are now half a
  point's width.

- Updating mechanism in iNZightVIT improved.


## vit 1.1.0-20121008
__Release date__: 8 October 2012

### New Features

- Added updating mechanism to keep VIT up to date without
  grabbing the entire distribution. This can be called by running
  `updateVit()`. The iNZightVIT distribution does include a
  script `UPDATE_iNZightVIT.bat`
  (`UPDATE_iNZightVIT.command` for OSX) to automate this task.

- Added a new function `vitBugReport()`, which provides
  instructions for creating a bug report.

- Version strings are tagged with a date. This is exposed in
  the home screen.

### Changes

- Reworked the dependency structure of VIT. This should make
  it slightly faster to load and prints less to the console.

- Increasing speed of plotting regression by making slopes
  opaque. This is reverting back to the original implementation.

### Bug Fixes

- Fix for Mac clients which were selecting the wrong graphics
  device.


## vit 1.1.0-20120822
__Release date__: 22 August 2012

### New Features

- Better handling of large datasets. The data-view is now
  disabled in favour of variable-view only from 200,000 cells.

- Added support for showing the theoretical distributions for:

  - Differences between two proportions.
  - Regression.

### Bug Fixes

- Fix for 2 Sample Proportions in the Bootstrapping module
  (when resampling within groups).


## vit 1.1.0-20120725
__Release date__: 25 July 2012

- Minor improvements.


# vit 1.1.0-20120417
__Release date__: 17 April 2012

- Major enhancements.
- Various fixes.
