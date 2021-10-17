import React from "react";
import {Text, StyleSheet, SafeAreaView, TextInput, Button, View} from "react-native"

const TablaMultiplicar = () => {

    const [num, setNum] = React.useState();
    const [vista, setVista] = React.useState();
    const items = [];

    const onPressButton = () => {

        let number = parseInt(num);
        
        if(number >= 0){
            for(let i = 1; i <= 14; i++)
            {
                items.push(<Text style={styles.text} key={i}>{number} X {i} = {i * number}</Text>);
            }
            setVista(items);
        }

    }



    return (
        <SafeAreaView style={styles.container}>
            <Text style={{
                fontSize: 15,
                fontWeight: 'bold'
            }}>Digite el numero de la tabla: </Text>
            
            <TextInput style={styles.input}
            value={num}
            onChangeText={(num) => {setNum(num)}}
            keyboardType="numeric"
            ></TextInput>

            <Button
              title="Generar Tabla"
              onPress={ onPressButton }
            />

            <View style={{
                marginTop: 10
            }}>
                {vista}
            </View>
        </SafeAreaView>
    );
}

const styles =  StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: "#fff",
        alignItems: "center",
        justifyContent: "center",   
    },
    input:{
        borderWidth: 1,
        borderColor: "#777",
        padding: 8,
        margin: 10,
        width: 200,
    },
    text:{
        fontWeight: 'bold'
    }
});


export {TablaMultiplicar}