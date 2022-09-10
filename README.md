# template-sandbox

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

This is a template for a Flutter project. 

It includes a few things:
- Internationalization 
- Themes and the ability to switch between them
- Basic reponsiveness



## Table of Contents

- [Background](#background)
- [Maintainers](#maintainers)
- [License](#license)
- [Contributing](#contributing)
- [Internationalization](#Internationalization)
- [Responsiveness](#Responsiveness)
- [Theme & app options](#Theme-&-app-options)

<!-- - [Security](#security) -->
<!-- - [Install](#install) -->
<!-- - [Usage](#usage) -->
<!-- - [API](#api) -->

<!-- ## Security -->

<!-- ## Background -->

<!-- TODO: Fill out this section. -->


<!-- ## Install

```
``` -->

<!-- ## Usage

```
``` -->


## Maintainers

**Lenz Paul**  
- gh: [@bringbackthedog](https://github.com/bringbackthedog/)    
- email: [lenz@gohash.tech](mailto:bringbackthedog@gmail.com)  
- linkedin: [linkedin.com/in/lenztpaul](https://www.linkedin.com/in/lenztpaul/)  



<!-- TODO: License -->
<!-- ## License -->


## Contributing
Small note: If editing the README, please conform to the [standard-readme](https://github.com/RichardLitt/standard-readme) specification.


## Internationalization

This app is internationalized using the arb format. See [Internationalizing Flutter apps
](https://docs.flutter.dev/development/accessibility-and-localization/internationalization#adding-your-own-localized-messages) for more information.

To add a language, create a file in the `lib/l10n` directory and name it `intl_<language>.arb`. The file should contain a single arb file, with the following format:

```
{
    "appTitle": "GoHash",
    "@appTitle": {
        "description": "The title of the GoHash app"
    }

    "anotherStringKey": "String value to be displayed for the language",
    "@anotherStringKey": {
        "description": "Description of the string value"
    }

    ...
}
```
Use `AppLocalizations.of(context).nameOfTheKey` in the app to get the translation for the current locale. 

Fenerated files are created when app is ran, and can be found under: `.dart_tool/flutter_gen/gen_l10n`

## Responsiveness

The app is designed to be responsive. 

Breakpoints are defined by the [adaptive_breakpoints](https://pub.dev/packages/adaptive_breakpoints) package.


The responsiveness logic is defined in `lib/layout/adaptive.dart`.
<!-- The responsiveness is defined by the [responsive_builder](https://pub.dev/packages/responsive_builder) package. -->


## Theme & app options

Themes are defined in `lib/core/app_themes_data.dart`.   
App options are defined in `lib/core/app_options.dart`.
