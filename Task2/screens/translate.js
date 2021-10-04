import React from "react";
import { View, Text, SafeAreaView, TextInput, StyleSheet } from "react-native";

function Unidades(num) {
  switch (num) {
    case 1:
      return "ONE";
    case 2:
      return "TWO";
    case 3:
      return "THREE";
    case 4:
      return "FOUR";
    case 5:
      return "FIVE";
    case 6:
      return "SIX";
    case 7:
      return "SEVEN";
    case 8:
      return "EIGHT";
    case 9:
      return "NINE";
  }

  return "";
}

function Decenas(num) {
  let decena = Math.floor(num / 10);
  let unidad = num - decena * 10;

  switch (decena) {
    case 1:
      switch (unidad) {
        case 0:
          return "TEN";
        case 1:
          return "ELEVEN";
        case 2:
          return "TWELVE";
        case 3:
          return "THIRTEEN";
        case 5:
          return "FIFTEEN";
        default:
          return Unidades(unidad) + "TEEN";
      }
    case 2:
      switch (unidad) {
        case 0:
          return "TWENTY";
        default:
          return "TWENTY-" + Unidades(unidad);
      }
    case 3:
      return DecenasY("THIRTY", unidad);
    case 4:
      return DecenasY("FORTY", unidad);
    case 5:
      return DecenasY("FIFTY", unidad);
    case 6:
      return DecenasY("SIXTY", unidad);
    case 7:
      return DecenasY("SEVENTY", unidad);
    case 8:
      return DecenasY("EIGHTY", unidad);
    case 9:
      return DecenasY("NINETY", unidad);
    case 0:
      return Unidades(unidad);
  }
}

function DecenasY(strSin, numUnidades) {
  if (numUnidades > 0) return strSin + "-" + Unidades(numUnidades);

  return strSin;
}

function Centenas(num) {
  let centenas = Math.floor(num / 100);
  let decenas = num - centenas * 100;

  switch (centenas) {
    case 1:
      if (decenas > 0) return "ONE HUNDRED " + Decenas(decenas);
      return "ONE HUNDRED ";
    case 2:
      return "TWO HUNDRED " + Decenas(decenas);
    case 3:
      return "THREE HUNDRED " + Decenas(decenas);
    case 4:
      return "FOR HUNDRED " + Decenas(decenas);
    case 5:
      return "FIVE HUNDRED " + Decenas(decenas);
    case 6:
      return "SIX HUNDRED " + Decenas(decenas);
    case 7:
      return "SEVEN HUNDRED " + Decenas(decenas);
    case 8:
      return "EIGHT HUNDRED " + Decenas(decenas);
    case 9:
      return "NINE HUNDRED " + Decenas(decenas);
  }

  return Decenas(decenas);
}

const Translate = () => {
  const [result, setResult] = React.useState();

  const onTranlate = (value) => {
    let number = parseInt(value);
    //0 - 9
    if (number > 0 && number < 10) setResult(Unidades(number));
    //10 - 99
    else if (number > 9 && number < 100) setResult(Decenas(number));
    //100 - 999
    else if (number > 99 && number < 1000) setResult(Centenas(number));
    //1000
    else if (number == 1000) setResult("ONE THOUSAND");
    //0
    else if (number == 0) setResult("ZERO");
    else setResult("Solo es hasta el 1,000");
  };

  return (
    <SafeAreaView style={styles.container}>
      <Text
        style={{
          fontSize: 15,
          fontWeight: "bold",
        }}
      >
        Digite el número:
      </Text>
      <TextInput
        style={styles.input}
        placeholder="Digite el número aquí..."
        keyboardType="numeric"
        onChangeText={(val) => onTranlate(val)}
      ></TextInput>
      <Text>{result}</Text>
    </SafeAreaView>
  );
};

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

export { Translate };
