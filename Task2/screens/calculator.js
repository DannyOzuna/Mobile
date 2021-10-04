import React from "react";
import { useState } from "react";
import { SafeAreaView, Text, StyleSheet, TextInput, Button, Alert, View } from "react-native";


const Calculator = () => {
    const [result, setResult] = React.useState();

    const [number1, setNumber1] = React.useState();

    const [number2, setNumber2] = React.useState();

    const onPressButton = () => {
        if(number1 && number2)
        {
            let num1 = parseInt(number1);
            let num2 = parseInt(number2)
            setResult("Resultado: " + (num1 + num2));
        }
        else
        {
            Alert.alert("Error", "Campos Vacíos");
        }
    }

    return (
        <SafeAreaView>
            <Text style={{
                marginLeft: 12,
                fontSize: 15,
                fontWeight: 'bold'
            }}>Numero 1: </Text>
            <TextInput
                style={styles.input}
                placeholder="Digite el número aquí..."
                keyboardType="numeric"
                value= {number1}
                onChangeText={(number1) => setNumber1(number1)}
            />

            <Text style={{
                marginLeft: 12,
                fontSize: 15,
                fontWeight: 'bold'
            }}>Numero 2: </Text>
            <TextInput
                style={styles.input}
                placeholder="Digite el número aquí..."
                keyboardType="numeric"
                value= {number2}
                onChangeText={(number2) => setNumber2(number2)}
            />

            <View style={{
                flex: 1,
                justifyContent: "center",
                alignItems: "center",
                margin:20
            }}>
                <Text style={{
                    fontSize: 20,
                    fontWeight: 'bold'
                }}>{result}</Text>
            </View>
            


            <Button
              title="Calcular"
              onPress={ onPressButton }
            />
        </SafeAreaView>
    );
}

const styles = StyleSheet.create({
    input: {
        height: 40,
        margin: 12,
        borderWidth: 1,
        padding: 10
    }
});


export { Calculator }