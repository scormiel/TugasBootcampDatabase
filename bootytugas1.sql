CREATE DATABASE networks


use networks




CREATE TABLE Users(
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(101),
    LastName VARCHAR(101),
    School VARCHAR(101),
    Address VARCHAR(101),
    Email VARCHAR(101),
    PhoneNumber CHAR(101),
    Location VARCHAR(101),
    DOB CHAR(10),
    Gender VARCHAR(101)
)

CREATE TABLE Pages(
    PageID INT PRIMARY KEY,
    PageName VARCHAR(101),
    PageContent
)


CREATE TABLE PageLikes(
    UserID INT,
    PageID INT
    CONSTRAINT PK_PL
        PRIMARY KEY (PageID)
    CONSTRAINT FK_Pages
        FOREIGN KEY (PageID)
        REFERENCES Pages (PageID)
)


CREATE TABLE Posts(
    UserID INT,
    PostDate CHAR(10),
    PostContent,
    PostID INT
    CONSTRAINT PK_Posts
        PRIMARY KEY (PostID)
    CONSTRAINT FK_Posts
        FOREIGN KEY (UserID)
        REFERENCES Users(UserID)
)
CREATE TABLE Shares(
    PostID INT,
    UserID INT
    CONSTRAINT PK_Shares
        PRIMARY KEY(PostID)
    CONSTRAINT FK_Shares
        FOREIGN KEY(PostID)
        REFERENCES Posts(PostID)
)

CREATE TABLE Friends(
    FriendID INT,
    UserID INT
    CONSTRAINT PK_Friends
        PRIMARY KEY (FriendID)
    CONSTRAINT FK_User
        FOREIGN    KEY (UserID)
        REFERENCES Users (UserID)
)
CREATE TABLE Comments(
    PostID INT,
    CommentID INT,
    CommentDate CHAR(10),
    UserID INT,
    CommentContent VARCHAR(255)
    CONSTRAINT PK_Comments
        PRIMARY KEY (CommentID)
    CONSTRAINT FK_Comments
        FOREIGN KEY (PostID)
        REFERENCES Posts (PostID)
)


CREATE TABLE CommentLikes(
    CommentID INT,
    UserID INT
    CONSTRAINT PK_CommentLikes
        PRIMARY KEY (CommentID)
    CONSTRAINT FK_CommentLikes
        FOREIGN KEY (CommentID)
        REFERENCES Comments (CommentID)
)
CREATE TABLE PostLikes(
    PostID INT,
    UserID INT
    CONSTRAINT PK_PostLikes
        PRIMARY KEY (PostID)
    CONSTRAINT FK_PostLikes
        FOREIGN KEY (PostID)
        REFERENCES Posts (PostID)
)
CREATE TABLE Photos(
    PostID INT,
    PhotoID INT,
    ImageContent
    CONSTRAINT PK_Photos
        PRIMARY KEY (PhotoID)
    CONSTRAINT FK_Photos
        Foreign KEY (PostID)
        REFERENCES Posts (PostID)
)