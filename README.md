# RecipeRanger

RecipeRanger

RecipeRanger is a simple iOS app that allows users to browse recipes and view their details. The app fetches recipe data from a JSON file named "recipesSample.json" and displays it in a list format. Users can tap on a recipe to view its details, including the recipe's name, description, ingredients, cooking time, and an image.

![DetailVIew](https://user-images.githubusercontent.com/5268412/222051833-ec12b28c-cf83-42a6-808e-bdeba1d291ed.png | width=100)
![ListVIew](https://user-images.githubusercontent.com/5268412/222051842-6d9f6dcb-f800-4afe-a192-70292cbfd0db.png | width=100)


Requirements

* Xcode 12.5 or later
* iOS 15.0 or later

Installation

1. Clone or download the RecipeRanger repository from GitHub.
2. Open the RecipeRanger.xcodeproj file in Xcode.
3. Build and run the app on a simulator or a physical device.

Usage

* Browse the list of recipes by scrolling through the main screen.
* Tap on a recipe to view its details.
* Swipe down to refresh the list of recipes.

Architecture

RecipeRanger follows the MVVM (Model-View-ViewModel) architecture pattern. The app is divided into three main components:
* Model: The data layer of the app, which includes the Recipe, RecipeDetails and Ingredient structs.
* View: The UI layer of the app, which includes the RecipesView, RecipeRowView and RecipeDetailView views
* ViewModel: The logic layer of the app, which includes the RecipesViewModel, RecipeRowViewModel and RecipeDetailViewModel classes.

License

RecipeRanger is available under the MIT license. See the LICENSE file for more information.
