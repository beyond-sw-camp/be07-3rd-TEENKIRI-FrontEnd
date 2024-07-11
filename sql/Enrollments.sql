CREATE TABLE Enrollments (
    enrollment_id bigint AUTO_INCREMENT PRIMARY KEY,
    user_id bigint NOT NULL,
    course_id bigint NOT NULL,
    progress bigint DEFAULT 0,
    is_completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


-- enrollment_id: 고유한 등록 식별자.
-- user_id: 등록한 사용자의 ID.
-- course_id: 등록한 강좌의 ID.
-- progress: 강좌 진행률.
-- is_completed: 강좌 완료 여부.
-- created_at: 등록 시각.