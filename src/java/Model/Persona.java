/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author daniel
 */
public class Persona {

    private int idPersona;
    private String nombre;
    private String apellido;
    private int documento;
    private String genero;
    private String fechaNac;
    //sin Normalizar

    private String ciudad;
    private String equipo;
    private String categoria;

    public Persona() {
        this.idPersona = 0;
        this.nombre = "";
        this.apellido = "";
        this.documento = 0;
        this.genero = "";
        this.fechaNac = "";
        this.ciudad = "";
        this.equipo = "";
    }

    public Persona(int idPersona, String nombre, String apellido, int documento, String genero, String fechaNac, String ciudad, String equipo) {
        this.idPersona = idPersona;
        this.nombre = nombre;
        this.apellido = apellido;
        this.documento = documento;
        this.genero = genero;
        this.fechaNac = fechaNac;
        this.ciudad = ciudad;
        this.equipo = equipo;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getDocumento() {
        return documento;
    }

    public void setDocumento(int documento) {
        this.documento = documento;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(String fechaNac) {
        this.fechaNac = fechaNac;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getEquipo() {
        return equipo;
    }

    public void setEquipo(String equipo) {
        this.equipo = equipo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

}
