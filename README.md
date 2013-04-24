alcatraz-packages
=================

Package list repository for [Alcatraz](https://github.com/mneorr/Alcatraz), the Xcode Package Manager.

To contribute your own package, fork this project and edit packages.json to include your submission in the correct section (plugins, color schemes, or templates), and submit a pull request.

### Plugin Format
The `url` should be a repository containing the Xcode project
```
{
  "name": "My Life-Changing Xcode Plugin",
  "url": "https://github.com/me/xcode-life-changing-plugin",
  "description": "Makes Xcode stop, collaborate and listen."
}
```

### Color Scheme Format
Use link to raw color scheme file for `url`
```
{
  "name": "Most Amazing Theme Ever",
  "url": "https://raw.github.com/me/xcode-amazing-theme/master/ThemeFile.dvcolortheme",
  "description": "Easy on the eyes, makes code sing"
}
```

### File or Project Template Format
The `url` should be a repository containing one or more templates
```
{
  "name": "Magical",
  "url": "https://raw.github.com/me/xcode-magic-templates",
  "description": "File templates for rainbow adventure coding"
}
```
