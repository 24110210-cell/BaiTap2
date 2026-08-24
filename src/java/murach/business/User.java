package murach.business;

import java.io.Serializable;

public class User implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String dateOfBirth;
    private String hearFrom;
    private String wantsUpdates;
    private String emailAnnouncements;
    private String contactVia;

    public User() {}

    // Getters và Setters cho tất cả thuộc tính
    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getDateOfBirth() { return dateOfBirth; }
    public void setDateOfBirth(String dateOfBirth) { this.dateOfBirth = dateOfBirth; }

    public String getHearFrom() { return hearFrom; }
    public void setHearFrom(String hearFrom) { this.hearFrom = hearFrom; }

    public String getWantsUpdates() { return wantsUpdates; }
    public void setWantsUpdates(String wantsUpdates) { this.wantsUpdates = wantsUpdates; }

    public String getEmailAnnouncements() { return emailAnnouncements; }
    public void setEmailAnnouncements(String emailAnnouncements) { this.emailAnnouncements = emailAnnouncements; }

    public String getContactVia() { return contactVia; }
    public void setContactVia(String contactVia) { this.contactVia = contactVia; }
}