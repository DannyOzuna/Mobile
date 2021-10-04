import * as React from 'react';
import { View, Text, Button } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import {
  createDrawerNavigator,
  DrawerContentScrollView,
  DrawerItemList,
} from '@react-navigation/drawer';

import {Profile} from '../screens/profile'
import {Calculator} from '../screens/calculator'
import {Translate} from '../screens/translate'

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
          <Drawer.Screen name="Calculator" component={Calculator} />
          <Drawer.Screen name="Translate" component={Translate} />
        </Drawer.Navigator>
    </NavigationContainer>
  );
}

export default MyDrawer