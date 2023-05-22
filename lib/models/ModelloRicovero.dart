package com.example.prgettobasijava.Modelli;

import java.time.LocalDate;

 class ModelloRicovero {

     int id;

      int idOspedale;

      String codicesanitariopaziente;

      LocalDate dataricovero;

      LocalDate datarilascio;

     ModelloRicovero(int Id, int IdOspedale, String Codicesanitariopaziente, LocalDate Dataricovero, LocalDate Datarilascio){
        id = Id;
        idOspedale = IdOspedale;
        codicesanitariopaziente = Codicesanitariopaziente;
        dataricovero = Dataricovero;
        datarilascio = Datarilascio;
    }

     ModelloRicovero(){

    }

    @Override
     String toString() {
        return "ModelloRicoveri{" +
                "id=" + id +
                ", idOspedale=" + idOspedale +
                ", codicesanitariopaziente='" + codicesanitariopaziente + '\'' +
                ", dataricovero=" + dataricovero +
                ", datarilascio=" + datarilascio +
                '}';
    }

     int getId() {
        return id;
    }

     void setId(int id) {
        this.id = id;
    }

      int getIdOspedale() {
        return idOspedale;
    }

     void setIdOspedale(int idOspedale) {
        this.idOspedale = idOspedale;
    }

      String getCodicesanitariopaziente() {
        return codicesanitariopaziente;
    }

     void setCodicesanitariopaziente(String codicesanitariopaziente) {
        this.codicesanitariopaziente = codicesanitariopaziente;
    }

      LocalDate getDataricovero() {
        return dataricovero;
    }

     void setDataricovero(LocalDate dataricovero) {
        this.dataricovero = dataricovero;
    }

      LocalDate getDatarilascio() {
        return datarilascio;
    }

     void setDatarilascio(LocalDate datarilascio) {
        this.datarilascio = datarilascio;
    }
}
