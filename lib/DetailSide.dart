import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class DetailSide extends StatelessWidget {
  const DetailSide({
    Key key,
    @required Animation<double> animation,
  }) : _animation = animation, super(key: key);

  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-_animation.value, 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.63,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _animation.value < 0.0
                  ? 'Create Account'
                  : 'Sign In to your Account',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Container(
                width: 170.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Icon(
                        FontAwesome.facebook,
                        size: 18.0,
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Icon(
                        FontAwesome.google_plus,
                        size: 18.0,
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Icon(
                        FontAwesome.linkedin,
                        size: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              _animation.value < 0.0
                  ? 'or use your email for registration:'
                  : 'or use your email account:',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
              ),
            ),
            _animation.value < 0.0
                ? SizedBox(
                    height: 20.0,
                  )
                : SizedBox(),
            _animation.value < 0.0
                ? Container(
                    height: 53.0,
                    width: 350.0,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF4F8F7),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Icon(
                            Feather.user,
                            size: 20.0,
                          ),
                        ),
                        hintText: 'Name',
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  )
                : Container(),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 53.0,
              width: 350.0,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF4F8F7),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Icon(
                      Feather.mail,
                      size: 20.0,
                    ),
                  ),
                  hintText: 'E-mail',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 53.0,
              width: 350.0,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF4F8F7),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Icon(
                      Feather.lock,
                      size: 20.0,
                    ),
                  ),
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            _animation.value < 0.0
                ? SizedBox()
                : SizedBox(
                    height: 20.0,
                  ),
            _animation.value < 0.0
                ? Container()
                : Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
            SizedBox(
              height: 40.0,
            ),
            FlatButton(
              splashColor: Colors.white70,
              color: Colors.black,
              padding: EdgeInsets.all(0.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Container(
                height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Center(
                  child: Text(
                    _animation.value < 0.0 ? 'SIGN UP' : 'SIGN IN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

