# themes-ojs3-oslomet

## Custom OJS3 themes for journals hosted by OsloMet – Oslo Metropolitan University

## Useful information when developing OJS3 themes
- [PKP Theming Guide](https://pkp.gitbooks.io/pkp-theming-guide/content/en/ "Gitbook that details development of OJS3 and OMP3 themes")
- [Example child theme: default-child](https://github.com/NateWr/default-child "default-child source on github")

## Theme hierarchy for journals hosted by OsloMet – Oslo Metropolitan University

The general idea is that we will make changes to **OsloMetParent** to affect the themes of all the journals.
Each journal will have a theme that is a child-theme of **OsloMetParent**.

Individual journal's theme changes will go in their own theme.

default - Standard OJS3 default theme. We won't be making any changes here. This theme will be the 'grandmother' of the themes we will be using.
  |
  +--  OsloMetParent 
         |      Mother Theme. Don't activate in the plugin gallery. It is not intended to be used directly.
         |      Changes here affect all other themes except "default" theme.
         |      Other themes will inherit from this one, and changes made here will affect all child themes.
         |
         +--  __ThemeName__  Stub theme. Do not activate in plugin galley. Used as a template to create new themes fast.
         |                   Run the shellscript **maketheme** inside the __ThemeName__ folder to create new theme. 
         |                   Will replace text in created theme with parameters given.
         |                     
         +--  OsloMetJournalsIndex - OsloMet Journals Site Index
         |
         +--  Fleks - Scandinavian Journal of Intercultural Theory and Practice
         |
         +--  FormAkademisk - FormAkademisk - forskningstidsskrift for design og designdidaktikk
         |
         +--  Human - Human Rights Education Review
         |
         +--  Information - InFormation - Nordic Journal of Art and Research
         |
         +--  NJCIE - Nordic Journal of Comparative and International Education (NJCIE)
         |
         +--  NJSR - Nordic Journal of Social Research
         |
         +--  NBF - Tidsskrift for Nordisk barnehageforskning
         |
         +--  PP - Professions and Professionalism
         |
         +--  RadOpen - Radiography Open
         |
         +--  RERM - Reconceptualizing Educational Research Methodology
         |
         +--  SJVD - Skandinavisk tidsskrift for yrker og profesjoner i utvikling
         |
         +--  Seminar - Seminar.net
         |
         +--  Techne - Techne serien - Forskning i slöjdpedagogik och slöjdvetenskap
         |
         +--  Arkiv - Tidsskriftet Arkiv
         |
         +--  Ungdomsforskning - Tidsskrift for ungdomsforskning

## Theme versioning conventions
version.xml has a &lt;release>3.1.0.0&lt;/release> entry. 
The versioning convention we will use is that the three first digits: 3.1.0 here will correspond to the version of OJS this theme was designed for.
The fourth digit will correspond to times this theme has been modified.

## Creating new themes

### Get instructions
```
user@host /var/www/ojs/plugins/themes $ cd __ThemeName__
user@host /var/www/ojs/plugins/themes/__ThemeName__ $ ./maketheme
```

### Create a new theme:
- Theme name: "WonderfulTheme" <-- (note that you should not use spaces here)
- Journal name: "Wonderful Journal" <-- (spaces are allowed here)

```
user@host /var/www/ojs/plugins/themes/__ThemeName__ $ ./maketheme
```

This will output the following usage message

```
Create a new theme in the parent folder using this stub theme as a base, while setting up correct naming.
Usage:
t='theme_name' j='journal_name' ./maketheme
```
Creating your new theme:

```
user@host /var/www/ojs/plugins/themes/__ThemeName__ $ t='WonderfulTheme' j='Wonderful Journal' ./maketheme
```

This will output:

```
Created new Theme:
Theme Name: WonderfulTheme
Journal Name: Wonderful Journal
Date: 2018-03-16
```

Don't worry about overwriting old themes:

```
user@host /var/www/ojs/plugins/themes/__ThemeName__ $ t='WonderfulTheme' j='Wonderful Journal' ./maketheme
The theme «WonderfulTheme» already exists! Aborting...
```
