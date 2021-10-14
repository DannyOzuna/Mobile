import React from "react";

//Navigation Components

import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import IonicIcon from "react-native-vector-icons/Ionicons";

import { Text, Dimensions } from "react-native";

//Imports Screens
import Home from "../screens/Home";
import Prifle from "../screens/Profile";

const fullScreenWidth = Dimensions.get("window").width;

const Stack = createStackNavigator();

function HomeStackScreen() {
  return (
    <Stack.Navigator>
      <Stack.Screen name="Home" component={Home} />
    </Stack.Navigator>
  );
}
