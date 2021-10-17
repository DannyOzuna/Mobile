import React from "react";
import { SafeAreaView, Text, StyleSheet, TextInput, Button, Alert } from 'react-native';



const NumeroMayor = () => {
    const [result, setResult] = React.useState();
    const [num1, setNum1] = React.useState();
    const [num2, setNum2] = React.useState();

    const onPressButton = () => {
        if(num1 && num2)
        {
            let _num1 = parseFloat(num1);
            let _num2 = parseFloat(num2);

            setResult(`El Mayor es ${(_num1 > _num2) ? _num1 : _num2}`);
        }
        else
        {
            Alert.alert("Error", "Campos Vacíos");
        }
    }

    return(
        <SafeAreaView style={styles.container}>
            <TextInput
            style = {styles.input}
            placeholder = "Digite el primer numero"
            keyboardType = "numeric"
            value = {num1}
            onChangeText = {(num1) => setNum1(num1)} 
            ></TextInput>

            <TextInput
            style = {styles.input}
            placeholder = "Digite el Segundo numero"
            keyboardType = "numeric"
            value = {num2}
            onChangeText = {(num2) => setNum2(num2)}
            ></TextInput>
            <Text style={{
                fontSize: 20,
                fontWeight: 'bold',
                marginBottom: 8
            }}>{result}</Text>

            <Button
            title = "Buscar"
            onPress = {onPressButton}/>
        </SafeAreaView>
    );
}


const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: "#fff",
      alignItems: "center",
      justifyContent: "center",
    },
  
    input: {
      borderWidth: 1,
      borderColor: "#777",
      padding: 8,
      margin: 10,
      width: 200,
    },
  });

export {NumeroMayor}