/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author daniel
 */
public class Competencia {

    private int id;
    private String nombre;
    private String lugar;
    private String descripcion;
    private String flyer;
    private String fecha;

    public Competencia(int id, String nombre, String lugar, String descripcion, String flyer, String fecha) {
        this.id= id;
        this.nombre = nombre;
        this.lugar = lugar;
        this.descripcion = descripcion;
        this.flyer = flyer;
        this.fecha = fecha;
    }

    public Competencia() {
        this.id = 0;
        this.nombre = "";
        this.lugar = "";
        this.descripcion = "";
        this.flyer = "";
        this.fecha = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFlyer() {
        return flyer;
    }

    public void setFlyer(String flyer) {
        this.flyer = flyer;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
}
