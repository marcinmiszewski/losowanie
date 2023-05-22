# losowanie

A new Flutter project.

## Getting Started


Full Code Explanation:

1. The code starts by creating a new Flutter application called MaterialApp.
2. This application will contain two widgets, which are FirstPage and SecondPage widgets.
3. The FirstPage widget body is container and it has children: a Text child, a CircleAvatar and an ElevatedButton.
4. The Text child contains the String text, CircleAvatar child contains some dice logo, while the ElevatedButton has the onPressed() function which provides to the SecondPage widget.
5. The SecondPage widget body is container and it has children a CircleAvatar and an ElevatedButton.
6. The CircleAvatar child contains random dice image, while the ElevatedButton has the onPressed() function which provides to the FirstPage widget.
7. The First Page's build() function returns the Scaffold with body: cointainer.
8. The Second Page's build() function returns the Scaffold with body: cointainer.
9. The CircleAvatar widget is placed in the  center, and the radius set is 120.
10. The nextInt() function first randomly selects an integer from 0 to 6 and sets result to that number plus 1.
11. It then calls Random() and creates a random number generator.The implementation of the random stream can change between releases of the library.(), which updates all of the game state variables based on that random number.
12. The code creates a MaterialApp which contains a FirstPage and a SecondPage widget as well as an AppBar.
13. The AppBar has the title “Losowanie | Wynik” and the background color is set to red.
14. The build method for the FirstPAge widget will return Scaffold within the MaterialApp.
15. It will add CircleAvatar, as well as a ElevatedButton on bottom which will be used to trigger the random method.
16. Then, an image asset called “images/dice$dice_no.jpg” will be added to the backGround Image of CircleAvatar in the SecondPage and return one of the six dice pictures.
17. Lastly when the ElevatedButton from SecondPage is pressed, it will return us to the FirstPage.
18. The background of the FirstPageWidget is linearGradient from black to middle grey.
19. The background of the SecondPageWidget is an image.

Enjoy the Game!!