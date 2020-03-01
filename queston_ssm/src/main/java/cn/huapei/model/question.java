package cn.huapei.model;

import java.util.List;

public class question {
    private Integer q_id;
    private String question;
    private String a;
    private String b;
    private String c;
    private String d;
    private Integer type;
    private List<question> questions ;

    @Override
    public String toString() {
        return "question{" +
                "q_id=" + q_id +
                ", question='" + question + '\'' +
                ", a='" + a + '\'' +
                ", b='" + b + '\'' +
                ", c='" + c + '\'' +
                ", d='" + d + '\'' +
                ", type=" + type +
                '}';
    }

    public int getQ_id() {
        return q_id;
    }

    public void setQ_id(int q_id) {
        this.q_id = q_id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }

    public String getD() {
        return d;
    }

    public void setD(String d) {
        this.d = d;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public List<cn.huapei.model.question> getQuestions() {
        return questions;
    }

    public void setQuestions(List<cn.huapei.model.question> questions) {
        this.questions = questions;
    }
}
