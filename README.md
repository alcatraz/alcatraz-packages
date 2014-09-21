alcatraz-packages
=================
[![Build Status](https://travis-ci.org/supermarin/alcatraz-packages.svg?branch=master)](https://travis-ci.org/supermarin/alcatraz-packages)
Package list repository for [Alcatraz](https://github.com/mneorr/Alcatraz), the Xcode Package Manager.

To contribute your own package, fork this project and edit packages.json to include your submission in the correct section (plugins, color schemes, or templates), and submit a pull request.

Every package requires a `name`, `url`, and `description`, in a format determined by the package type (detailed below). The `screenshot` field is optional, but recommended for any package with a user interface component and should be a direct URL to a single image. 

After making your changes please run `rspec` from the console to check if everything is ok.

### Plugin Format
The `url` should be a repository containing the Xcode project, and the `name` should be the same as the `.xcodeproj` file.

``` json
{
  "name": "LifeChangingPlugin",
  "url": "https://github.com/me/xcode-life-changing-plugin",
  "description": "Makes Xcode stop, collaborate and listen.",
  "screenshot": "http://raw.github.com/me/awesome-screenshot.png"
}
```

### Color Scheme Format
Use link to raw color scheme file for `url`

``` json
{
  "name": "Most Amazing Theme Ever",
  "url": "https://raw.github.com/me/xcode-amazing-theme/master/ThemeFile.dvtcolortheme",
  "description": "Easy on the eyes, makes code sing",
  "screenshot": "http://raw.github.com/me/awesome-screenshot.png"
}
```

### File or Project Template Format
The `url` should be a repository containing one or more templates

``` json
{
  "name": "Magical",
  "url": "https://raw.github.com/me/xcode-magic-templates",
  "description": "File templates for rainbow adventure coding"
}
```
