// First, grab the title of the recipe
var h1Tag = document.getElementsByTagName('h1')[0];
var recipeTitle = h1Tag.innerText;

// Then retrieve the ingredients
var liIngredients = document.getElementsByClassName('ingredient');

// Get the actual ingredient text and put it in an array
// Declare the ingredients array variable
var ingredients = [];
// Then interate over the ingredients list and push the text into the array
for ( var i = 0; i < liIngredients.length; i++ ) {
  var ingredient = liIngredients[i].innerText;
  ingredients.push( ingredient );
}

// Next retrieve the preparation steps
var liPrepSteps = document.getElementsByClassName('preparation-step');
// As with ingredients, iterate over prep steps and put them into an array
var prepSteps = [];
for ( var i = 0; i < liPrepSteps.length; i++ ) {
  var prepStep = liPrepSteps[i].innerText;
  prepSteps.push( prepStep );
}

// Now you've got a basic recipe!

// You can also retrieve other useful info
// Recipe yield


// Recipe source
var sourceTag = document.getElementsByClassName('source')[0];
var source = sourceTag.innerText;
// Recipe publication date
var pubDateTag = document.getElementsByClassName('pub-date')[0];
var pubDate = pubDateTag.innerText;
