/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Administrator
 */
public class CartItem {

 public int pid;
 public String name;
 public int qua;
 public double price;
 public String image;

 public CartItem(int pid, String name, int qua, double price, String image) {
  this.pid = pid;
  this.name = name;
  this.qua = qua;
  this.price = price;
  this.image = image;
 }

 public int getPid() {
  return pid;
 }

 public void setPid(int pid) {
  this.pid = pid;
 }

 public String getName() {
  return name;
 }

 public void setName(String name) {
  this.name = name;
 }

 public int getQua() {
  return qua;
 }

 public void setQua(int qua) {
  this.qua = qua;
 }

 public double getPrice() {
  return price;
 }

 public void setPrice(double price) {
  this.price = price;
 }

 public String getImage() {
  return image;
 }

 public void setImage(String image) {
  this.image = image;
 }

}
