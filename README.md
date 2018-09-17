# PhpMyMan

[![Latest Version on Packagist][ico-version]][link-packagist]
[![Software License][ico-license]](LICENSE.md)
[![Build Status][ico-travis]][link-travis]
[![Coverage Status][ico-scrutinizer]][link-scrutinizer]
[![Quality Score][ico-code-quality]][link-code-quality]
[![Total Downloads][ico-downloads]][link-downloads]

Create your own personal man pages using this tiny PHP cli app, VIM, and Markdown. It's pretty straight forward, you install the application globally using composer (you can install it locally but it means more typing), you can then run 'mm edit topic' which will open a vim editor from your terminal, allowing you to enter markdown or plain text. From there you exit VIM and your personal man page is saved! It will be saved in the ~/phpmyman folder. You can then commit this folder to version control. To access your new man page, just type 'mm topic' and the markdown will be parsed and displayed right there in your terminal.

A word of warning. I wrote this as a personal project for fun, because I saw someone had written something similar in Python and it seemed like a fun thing to see if I could do. The Markdown to Terminal conversion is not 100%. Mainly because terminals don't reliably support everything Markdown tries to do. So, it's a best effort.

In this end, this is nothing more than a little note taking application that uses VIM. It's not special. But, you might find it useful.

## Installation

Via Composer

### Global

```bash
composer global require sevenecks/phpmyman
```

### Local
```bash
composer require sevenecks/phpmyman
```

### CLI Usage

#### Global Install

Show the help for the app:
```bash
mm
```

Add a new personal man page:
```bash
mm edit mypage
```

View your new personal man page:
```bash
mm mypage
```

List your personal man pages:
```bash
mm list
```

#### Local Install
If you are on a system where the hosts file is located at /etc/hosts then you have no further configuration to do. If you are not, then you should go into the vendor folder, copy the .env-example  file to .env and edit it to point to your hosts file. Then you can proceed.

```bash
./vendor/bin/mm
```

## PhpMyMan Pages
These pages will be located in the /phpmyman directory of your home directory.

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) and [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md) for details.

## Security

If you discover any security related issues, please email bbutts@stormcode.net instead of using the issue tracker.

## Credits

- [Brendan Butts][link-author]
- [All Contributors][link-contributors]

## Change Log
Please see [Change Log](CHANGELOG.md) for more information.

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.

[ico-version]: https://img.shields.io/packagist/v/sevenecks/phpmyman.svg?style=flat-square
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square
[ico-travis]: https://img.shields.io/travis/sevenecks/phpmyman/master.svg?style=flat-square
[ico-scrutinizer]: https://img.shields.io/scrutinizer/coverage/g/sevenecks/phpmyman.svg?style=flat-square
[ico-code-quality]: https://img.shields.io/scrutinizer/g/sevenecks/phpmyman.svg?style=flat-square
[ico-downloads]: https://img.shields.io/packagist/dt/sevenecks/phpmyman.svg?style=flat-square

[link-packagist]: https://packagist.org/packages/sevenecks/phpmyman
[link-travis]: https://travis-ci.org/sevenecks/phpmyman
[link-scrutinizer]: https://scrutinizer-ci.com/g/sevenecks/phpmyman/code-structure
[link-code-quality]: https://scrutinizer-ci.com/g/sevenecks/phpmyman
[link-downloads]: https://packagist.org/packages/sevenecks/phpmyman
[link-author]: https://github.com/sevenecks
[link-contributors]: ../../contributors
