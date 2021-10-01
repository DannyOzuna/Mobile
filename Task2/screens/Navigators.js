import React from "react";
import { createStackNavigator } from "@react-navigation/stack";
import Actividad1 from "./Actividad1";

const Stack = createStackNavigator();

export default function Navigators() {
  return (
    <Stack.Navigator>
      <Stack.Screen name="Actvidad1" component={Actividad1} />
    </Stack.Navigator>
  );
}
