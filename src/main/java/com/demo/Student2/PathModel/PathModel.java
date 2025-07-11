package com.demo.Student2.PathModel;

import jakarta.persistence.*;

@Entity
@Table(name = "student")
public class PathModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String name;

    @Column
    private String grade;

    @Column
    private String email;

    @Column
    private String department;

    @Column
    private String phone;

    public PathModel() {}

    public PathModel(int id, String name, String grade, String email, String department, String phone) {
        this.id = id;
        this.name = name;
        this.grade = grade;
        this.email = email;
        this.department = department;
        this.phone = phone;
    }

    // Getters and Setters
    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public String getGrade() { return grade; }

    public void setGrade(String grade) { this.grade = grade; }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

    public String getDepartment() { return department; }

    public void setDepartment(String department) { this.department = department; }

    public String getPhone() { return phone; }

    public void setPhone(String phone) { this.phone = phone; }

    @Override
    public String toString() {
        return "PathModel [id=" + id + ", name=" + name + ", grade=" + grade +
                ", email=" + email + ", department=" + department + ", phone=" + phone + "]";
    }
}
