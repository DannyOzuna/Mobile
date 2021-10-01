package com.example.tarea2;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btnCalcular = (Button) findViewById(R.id.btn_calcular);
        TextView txtNum1 = (TextView) findViewById(R.id.txt_num1);
        TextView txtNum2 = (TextView) findViewById(R.id.txt_num2);
        TextView resultado = (TextView) findViewById(R.id.lbResultado);


        btnCalcular.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                float num1 = Float.parseFloat(txtNum1.getText().toString());
                float num2 = Float.parseFloat(txtNum2.getText().toString());
                resultado.setText("Resultado: " + String.valueOf(Calcular(num1, num2)));
            }
        });


    }

    private double Calcular(float num1, float num2)
    {
        return  num1 + num2;
    }
}