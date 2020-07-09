package com.example.sweater.domain.dto;

import com.example.sweater.domain.Message;
import com.example.sweater.domain.User;
import com.example.sweater.domain.util.MessageHelper;

public class MessageDto {
    private Long id;
    private String  text;
    private String tag;
    private User author;
    private String filename;
    private Long links;
    private Boolean meLiked;

    public MessageDto(Message message, Long links, Boolean meLiked) {
        this.id = message.getId();
        this.text = message.getText();
        this.tag = message.getTag();
        this.author = message.getAuthor();
        this.filename = message.getFileName();
        this.links = links;
        this.meLiked = meLiked;
    }

    public Long getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public String getTag() {
        return tag;
    }

    public User getAuthor() {
        return author;
    }

    public String getFilename() {
        return filename;
    }

    public Long getLinks() {
        return links;
    }

    public Boolean getMeLiked() {
        return meLiked;
    }

    public String getAuthorName() {
        return MessageHelper.getAuthorName(author);
    }

    @Override
    public String toString() {
        return "MessageDto{" +
                "id=" + id +
                ", author=" + author +
                ", links=" + links +
                ", meLiked=" + meLiked +
                '}';
    }
}
