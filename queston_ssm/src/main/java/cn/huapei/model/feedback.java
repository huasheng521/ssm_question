package cn.huapei.model;

import java.util.List;

public class feedback {
    private int fb_id;
    private int qu_id;
    private String  question;
    private  String daan;
    private  int q_type;
    private int num_daan;


    private List<feedback> feedbacks;

    @Override
    public String toString() {
        return "feedback{" +
                "fb_id=" + fb_id +
                ", qu_id=" + qu_id +
                ", question='" + question + '\'' +
                ", daan='" + daan + '\'' +
                ", q_type=" + q_type +
                ", num_daan=" + num_daan +
                ", feedbacks=" + feedbacks +
                '}';
    }

    public int getNum_daan() {
        return num_daan;
    }

    public void setNum_daan(int num_daan) {
        this.num_daan = num_daan;
    }

    public int getQ_type() {
        return q_type;
    }

    public void setQ_type(int q_type) {
        this.q_type = q_type;
    }

    public int getFb_id() {
        return fb_id;
    }

    public void setFb_id(int fb_id) {
        this.fb_id = fb_id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getDaan() {
        return daan;
    }

    public void setDaan(String daan) {
        this.daan = daan;
    }
    public List<feedback> getFeedbacks() {
        return feedbacks;
    }

    public void setFeedbacks(List<feedback> feedbacks) {
        this.feedbacks = feedbacks;
    }
    public int getQu_id() {
        return qu_id;
    }

    public void setQu_id(int qu_id) {
        this.qu_id = qu_id;
    }
}
