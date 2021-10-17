import * as React from 'react';
import { View, Text, Button } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import {
  createDrawerNavigator,
  DrawerContentScrollView,
  DrawerItemList,
} from '@react-navigation/drawer';

import {Profile} from '../screens/profile'
import {NumeroMayor} from '../screens/NumeroMayor'
import {TablaMultiplicar} from '../screens/TablaMultiplicar'

function CustomDrawerContent(props) {
  return (
    <DrawerContentScrollView {...props}>
      <DrawerItemList {...props} />
    </DrawerContentScrollView>
  );
}

const Drawer = createDrawerNavigator();

function MyDrawer() {
  return (
    <NavigationContainer>
        <Drawer.Navigator
          drawerContent={(props) => <CustomDrawerContent {...props} />}
        >
          <Drawer.Screen name="Home" component={Profile} />
          <Drawer.Screen name="Tabla Multiplicar" component={TablaMultiplicar} />
          <Drawer.Screen name="Numero Mayor" component={NumeroMayor} />
        </Drawer.Navigator>
    </NavigationContainer>
  );
}

export default MyDrawer