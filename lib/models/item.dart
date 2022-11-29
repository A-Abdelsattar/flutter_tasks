class Item{
String image;
String name;
String country;
double price;
bool favorite=false;
int counter=0;

Item({required this.image,required this.name,required this.country,required this.price});

}

List<Item>marketItems=[
  Item(image: 'https://img.freepik.com/free-photo/red-apple-with-green-leaf-white-background_1232-3290.jpg', name: 'Apple', country: 'italy', price: 20.0),
  Item(image: 'https://img.freepik.com/free-photo/freshness-food-life-fruit-yellow_1203-5467.jpg', name: 'Mango', country: 'Egypt', price: 25.0),
  Item(image: 'https://img.freepik.com/free-photo/orange-white-white_144627-16571.jpg', name: 'Orange', country: 'Egypt', price: 10.0),
  Item(image: 'https://img.freepik.com/free-photo/red-apple-with-green-leaf-white-background_1232-3290.jpg', name: 'Apple', country: 'italy', price: 20.0),
  Item(image: 'https://img.freepik.com/free-photo/freshness-food-life-fruit-yellow_1203-5467.jpg', name: 'Mango', country: 'Egypt', price: 25.0),
  Item(image: 'https://img.freepik.com/free-photo/orange-white-white_144627-16571.jpg', name: 'Orange', country: 'Egypt', price: 10.0),
  Item(image: 'https://img.freepik.com/free-photo/red-apple-with-green-leaf-white-background_1232-3290.jpg', name: 'Apple', country: 'italy', price: 20.0),
  Item(image: 'https://img.freepik.com/free-photo/freshness-food-life-fruit-yellow_1203-5467.jpg', name: 'Mango', country: 'Egypt', price: 25.0),
  Item(image: 'https://img.freepik.com/free-photo/orange-white-white_144627-16571.jpg', name: 'Orange', country: 'Egypt', price: 10.0),
];