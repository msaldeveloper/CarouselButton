# CoruselButton - Swift Carousel View

CoruselButton is a SwiftUI-based carousel view that allows you to display a list of items (strings), customize the appearance of each item, and handle button actions when a carousel item is selected.
![carouselButton](https://github.com/user-attachments/assets/7ec3b408-1812-4868-ae86-8f52452511d1)

This package allows you to configure:
- The list of items (titles)
- The color of the carousel items
- The spacing between the items
- The corner radius of each item
- The size of each item
- A completion handler that returns the selected item, which can be used to create a Text() view
- A button action to perform actions when an item is pressed

## Installation

You can add the CoruselButton to your project via Swift Package Manager. 

1. Open your project in Xcode.
2. Navigate to `File > Swift Packages > Add Package Dependency...`
3. Paste the following URL into the package repository URL field: https://github.com/msaldeveloper/CoruselButton

4. Follow the prompts to add the package to your project.

## Usage

You can use the `CaruselView` to display a carousel with a list of strings. The basic usage is as follows:

```swift
CaruselView(
 items: ["Item 1", "Item 2", "Item 3"],
 color: Color.green,
 spacing: 5,
 cornerRadius: 20,
 frame: (300, 100)
) { item in
 Text(item)
     .foregroundStyle(Color.black)
     .font(.headline)
     .fontWeight(.bold)
} buttonAction: { item in
 print("button pressed \(item)")
}.padding()
```

## Parameters:

- items: An array of strings to display in the carousel.
- color: The color of each carousel item (default is Color.green).
- spacing: The spacing between carousel items (default is 5).
- cornerRadius: The corner radius of each item (default is 20).
- frame: The size of each item in the carousel as a tuple (width, height) (default is (300, 100)).
- completion: A closure that returns the selected item. This can be used to modify the appearance of the text.
- buttonAction: A closure that performs an action when a carousel item is selected (e.g., printing the selected item to the console).

Contributing
If you'd like to contribute to this project, feel free to open a pull request. Contributions are welcome in the develop branch.

License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.


### Key Sections:
- **Installation Instructions**: How to add the Swift Package to a project using Swift Package Manager.
- **Usage**: A detailed explanation and code snippet showing how to use the carousel, with examples of the parameters you can adjust.
- **Contributing**: How other developers can contribute to the project by submitting pull requests.
- **License**: The project is under the MIT license.

This README.md will help users understand how to use your package, install it, and contribute to the project.
