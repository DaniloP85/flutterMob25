# Aula 1 - Layout

## Description

[Flutter Layout Cheat Sheet](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)

Fully didactic purposes for the [Fiap MBI course](https://www.fiap.com.br/)

## Preview

| Iphone 13 Mini | Pixel 3 | Chrome |
| ---- | ---- |  ---- |
| ![.](readme/iphone.13.mini.png) | ![.](readme/pixel.3.png) | ![.](readme/chrome.png)

## Getting Started
1. Clone project ```git@github.com:DaniloP85/find-Gifs.git``` or  ```https://github.com/DaniloP85/find-Gifs```
2. Open the project in Android Studio or VSCode
3. To build for the internet, read the [documentation](https://docs.flutter.dev/get-started/web), if you have a problem with CORS, because of the giphy log, perform the following steps:
    
    3.1 Locating the files, inside the Flutter directory

    
    ```
    Flutter directory
      └───bin
      │    └───cache
      │          └───flutter_tools.stamp (remove this file)
      └───packages
           └───flutter_tools
                 └───lib
                      └───src
                           └───web
                                └─── chrome.dart
    ```

    3.2 the file ```flutter_tools.stamp``` must be removed

    3.3 In `chrome.dart` look for ```'--disable-extensions',``` add a line after this, on this new line add ```'--disable-web-security',```


## Authors

[Danilo Santos](https://www.linkedin.com/in/danilopsnts/)

## Contributing

Please read [CONTRIBUTING](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.
## License

This project is licensed under the MT License - see the [LICENSE](LICENSE.md) file for details