//onBoarding model
class SliderObject{
  String title;
  String body;
  String image;

  SliderObject(this.title, this.body, this.image);
}

class SliderViewObject{
  SliderObject sliderObject;
  int numOfSlider;
  int currentIndex;

  SliderViewObject(this.sliderObject,this.currentIndex,this.numOfSlider);
}

// Login Model

class Contact{
  String phone;
  String email;
  String link;
    Contact(this.email,this.link,this.phone);
}
class Customer{
  String id;
  String name;
  int numOfNotification;
  Customer(this.id,this.name,this.numOfNotification);
}
class Authentication{
  Contact? contact;
  Customer? customer;
  Authentication(this.contact,this.customer);
}