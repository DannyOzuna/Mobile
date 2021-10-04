import * as React from 'react';
import { View, Text, Image } from 'react-native';
import photo from '../assets/photo.jpeg'

function Profile() {
  return (
    <View style={{ flex: 1, justifyContent: 'flex-start', alignItems: 'center' }}>
      <Image source={photo} style={{
          width: 300,
          height: 300,
          borderRadius: 15,
          marginTop: 25
      }}></Image>
      <Text style={{
          fontSize: 20,
          fontWeight: 'bold',
          color: 'black',
          marginTop: 20
      }}>
          Danny Ozuna Vasquez
      </Text>
      <Text style={{
          fontSize: 15,
          color: 'black',
          marginTop: 10
      }}>20197992@itla.edu.do</Text>
    </View>
  );
}


export {Profile};