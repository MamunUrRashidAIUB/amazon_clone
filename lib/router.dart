import "package:amazon_clone/features/auth/screen/authscreen.dart";
import "package:flutter/material.dart";

Route<dynamic>generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case Authscreen.routename:
    return MaterialPageRoute(builder:(_)=>const Authscreen()

    );
    default:
   
    return MaterialPageRoute(builder:(_)=>const Scaffold(
      body: Center(child: Text("screen does not available"),),
    )

    );
  }
}
