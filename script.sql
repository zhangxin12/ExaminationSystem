USE [master]
GO
/****** Object:  Database [ExaminationSystems]    Script Date: 1/5/2017 10:47:39 AM ******/
CREATE DATABASE [ExaminationSystems]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ExaminationSystems', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ExaminationSystems.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ExaminationSystems_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ExaminationSystems_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ExaminationSystems] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExaminationSystems].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ExaminationSystems] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ExaminationSystems] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ExaminationSystems] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ExaminationSystems] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ExaminationSystems] SET ARITHABORT OFF 
GO
ALTER DATABASE [ExaminationSystems] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ExaminationSystems] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ExaminationSystems] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ExaminationSystems] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ExaminationSystems] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ExaminationSystems] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ExaminationSystems] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ExaminationSystems] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ExaminationSystems] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ExaminationSystems] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ExaminationSystems] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ExaminationSystems] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ExaminationSystems] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ExaminationSystems] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ExaminationSystems] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ExaminationSystems] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ExaminationSystems] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ExaminationSystems] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ExaminationSystems] SET RECOVERY FULL 
GO
ALTER DATABASE [ExaminationSystems] SET  MULTI_USER 
GO
ALTER DATABASE [ExaminationSystems] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ExaminationSystems] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ExaminationSystems] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ExaminationSystems] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ExaminationSystems]
GO
/****** Object:  StoredProcedure [dbo].[DeletefromAdministrator]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromAdministrator] (@ID int)
AS
BEGIN
delete from [dbo].[Administrator]  where [adm_ID]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromCourse]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromCourse] (@ID int)
AS
BEGIN
delete from [dbo].[Course]  where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromCourse_Student]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromCourse_Student] (@ID int)
AS
BEGIN
delete from [dbo].[Course_Student] where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromDepartment]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromDepartment] (@ID int)
AS
BEGIN
delete from [dbo].[Department] where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromExam]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromExam] (@ID int)
AS
BEGIN
delete from [dbo].[Exam] where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromExam_Course_Instructor]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromExam_Course_Instructor] (@examID int , @courseID int , @insID int)
AS
BEGIN
delete from [dbo].[Exam_Course_Instructor] where [FK_ExamID]=@examID and [FK_CourseID]=@courseID and [FK_InstructorID]=@insID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromExam_ExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromExam_ExamSession] (@ID int)
AS
BEGIN
delete from [dbo].[Exam_ExamSession] where [ID]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromExamSession] (@ID int)
AS
BEGIN
delete from [dbo].[ExamSession] where [session_ID]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromInstructor]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromInstructor] (@ID int)
AS
BEGIN
delete from [dbo].[Instructor] where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromInstructor_Course_Admin]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromInstructor_Course_Admin] (@ID int)
AS
BEGIN
delete from [dbo].[Instructor_Course_Admin] where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromQuest_ans]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromQuest_ans] (@ID int)
AS
BEGIN
delete from [dbo].[Quest_ans] where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromQuestion]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromQuestion] (@ID int)
AS
BEGIN
delete from [dbo].[Question] where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromQuestion_Exam]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromQuestion_Exam] (@ID int)
AS
BEGIN
delete from [dbo].[Question_Exam] where [ID]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromQuestion_Exam_Instructor]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromQuestion_Exam_Instructor] (@questID int , @examID int , @insID int , @weight int)
AS
BEGIN
delete from [dbo].[Question_Exam_Instructor] where [FK_QuestionID]=@questID and [FK_ExamID]=@examID and [FK_InstructorID]=@insID and [question_Weight]=@weight
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromQuestionType]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromQuestionType] (@ID int)
AS
BEGIN
delete from [dbo].[QuestionType] where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromStudent]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromStudent] (@ID int)
AS
BEGIN
delete from [dbo].[Student]  where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromStudent_Exam]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromStudent_Exam] (@examID int , @studID int)
AS
BEGIN
delete from  [dbo].[Student_Exam] where [FK_ExamID]=@examID and [FK_StudID]=@studID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromStudent_Exam_Question]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DeletefromStudent_Exam_Question] (@ID int)
AS
BEGIN
delete from  [dbo].[Student_Exam_Question] where [ID]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[DeletefromTopic]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletefromTopic] (@ID int)
AS
BEGIN
delete from  [dbo].[Topic] where [id]=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[Exam_Answers]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Exam_Answers]
@Exam_ID int
AS
begin
select question_modelAns,id
from Question
where id in (select FK_QuestionID
from Question_Exam where FK_ExamID=@Exam_ID)
end



GO
/****** Object:  StoredProcedure [dbo].[exam_gen]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[exam_gen](@course int )
as
begin 

declare @questID int;

--select  @questID=question_ID
--from Question 
--where Course_ID=@course

select question_text
from Question 
where Course_ID=@course
--and question_ID=@questID


end




GO
/****** Object:  StoredProcedure [dbo].[Exam_generation]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exam_generation]
@Multiple_choices_num int,@Tru_False_num int,@Essay_Questions_num int,@courseID int
AS
BEGIN
declare @exam int 
set @exam = (select max (FK_ExamID)from Question_Exam)
if (@exam is null)
	begin
	set @exam =1
	end
else
	begin
	set  @exam+=1
	end
insert into Question_Exam
select id,@exam from Question 
where 
id in (select Top(@Multiple_choices_num)id from Question where question_type=1 and course_id=@courseID order by NEWID())
or id in (select Top(@Tru_False_num)id from Question where question_type=2 and course_id=@courseID order by NEWID())
or id in (select Top(@Essay_Questions_num)id from Question where question_type=3 and course_id=@courseID order by NEWID())
select * from Question where id in (select FK_QuestionID from Question_Exam where FK_ExamID=@exam)
select @exam
END



GO
/****** Object:  StoredProcedure [dbo].[insertCourse_ExamSession_Admin]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[insertCourse_ExamSession_Admin]( @courseID int,@examSession int,@adminID int)
as
begin
insert into Course_ExamSession_Admin
 (
            [FK_AdminID]
			,[FK_CourseID]
			,[FK_ExamSessionID])
		    values(@adminID,@courseID,@examSession)
end



GO
/****** Object:  StoredProcedure [dbo].[insertExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insertExamSession](@sessionDate datetime ,@examId int,@adminId int  )
as
begin
insert into ExamSession
(   [session_date], [FK_ExamID],[FK_AdminID]

) values(@sessionDate,@examId,@adminId)
end





GO
/****** Object:  StoredProcedure [dbo].[insertExamSessionStudentAdmin]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[insertExamSessionStudentAdmin]( @session int,@stID int , @adminID int )
as
begin
insert into ExamSession_Student_Admin
 (
            [FK_AdminID],[FK_ExamSessionID],[FK_StudentID])
		    values(@adminID,@session,@stID)
end




GO
/****** Object:  StoredProcedure [dbo].[insertInstructor]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertInstructor]( @userName nvarchar(50),@name nvarchar(50) , @age int , @address nvarchar(50) ,@phone int , @email nvarchar(50),@flag bit ,@adminID int,@dept int,@password varchar(50))
as
begin
insert into Instructor
 (
            [ins_userName]
           ,[ins_Name]
           ,[ins_age]
           ,[ins_address]
           ,[ins_phone]
           ,[ins_email]
           ,[isout]
           ,[FK_AdminID]
           ,[FK_DeptID]
           ,[ins_password])
		    values(@userName,@name,@age,@address,@phone,@email,@flag,@adminID,@dept,@password)
end



GO
/****** Object:  StoredProcedure [dbo].[InsertIntoAdministrator]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertIntoAdministrator]
@userName nvarchar(50),@Name nvarchar(50),@email nvarchar(50),@password nvarchar(50)
AS
BEGIN
Insert into Administrator values(@userName,@Name,@email,@password)
END




GO
/****** Object:  StoredProcedure [dbo].[insertStudent]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertStudent]
( @userName nvarchar(50),@name nvarchar(50) , @age int , @address nvarchar(50) ,@phone int , @email nvarchar(50),@flag bit ,@adminID int,@dep int, @password varchar(50))
as
begin
insert into Student
(          [st_userName]
           ,[st_Name]
           ,[st_age]
           ,[st_address]
           ,[st_phone]
           ,[st_email]
           ,[ins_flag]
           ,[FK_AdminID]
           ,[FK_DeptID]
           ,[st_password])
		    values(@userName,@name,@age,@address,@phone,@email,@flag,@adminID,@dep,@password)
end



GO
/****** Object:  StoredProcedure [dbo].[Updete_AdminID_inExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Updete_AdminID_inExamSession]
@ID int,@Admin_ID int
AS
BEGIN
update ExamSession set FK_AdminID=@Admin_ID where session_ID=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[Updete_all_inExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Updete_all_inExamSession]
@ID int,@Exam_ID int,@Session_date date,@Admin_ID int
AS
BEGIN
update ExamSession set FK_ExamID=@Exam_ID,session_date=@Session_date,FK_AdminID=@Admin_ID where session_ID=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[Updete_ExamID_inExam_ExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Updete_ExamID_inExam_ExamSession]
@ID int,@Exam_ID int
AS
BEGIN
update Exam_ExamSession set FK_ExamID=@Exam_ID where ID=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[Updete_ExamID_inExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Updete_ExamID_inExamSession]
@ID int,@Exam_ID int
AS
BEGIN
update ExamSession set FK_ExamID=@Exam_ID where session_ID=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[Updete_ExamSessionID_inExam_ExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Updete_ExamSessionID_inExam_ExamSession]
@ID int,@Session_ID int
AS
BEGIN
update Exam_ExamSession set FK_ExamSessionID=@Session_ID where ID=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[Updete_ExamSessionIDand_ExamID_inExam_ExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Updete_ExamSessionIDand_ExamID_inExam_ExamSession]
@ID int,@Session_ID int,@Exam_ID int
AS
BEGIN
update Exam_ExamSession set FK_ExamSessionID=@Session_ID , FK_ExamID=@Exam_ID where ID=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[Updete_Flag_And_AdminID_inExam]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Updete_Flag_And_AdminID_inExam]
@ID int,@Flag bit,@Admin_ID int
AS
BEGIN
update Exam set flag=@Flag,FK_AdminID=@Admin_ID where id=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[Updete_Sessiondate_inExamSession]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Updete_Sessiondate_inExamSession]
@ID int,@Session_date date
AS
BEGIN
update ExamSession set session_date=@Session_date where session_ID=@ID
END




GO
/****** Object:  StoredProcedure [dbo].[UpdeteAdminIDinExam]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdeteAdminIDinExam]
@ID int,@Admin_ID int
AS
BEGIN
update Exam set FK_AdminID=@Admin_ID where id=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[UpdeteCourseIDinCourseStudent]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdeteCourseIDinCourseStudent]
@ID int,@CID int
AS
BEGIN
update Course_Student set FK_CourseID=@CID where id=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[UpdeteFlaginExam]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdeteFlaginExam]
@ID int,@Flag bit
AS
BEGIN
update Exam set flag=@Flag where id=@ID
END




GO
/****** Object:  StoredProcedure [dbo].[UpdeteNameInAdministrator]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Update Procedure 
CREATE PROCEDURE [dbo].[UpdeteNameInAdministrator]
@ID int,@Name nvarchar(50)
AS
BEGIN
update Administrator set adm_name=@Name where adm_ID=@ID
END




GO
/****** Object:  StoredProcedure [dbo].[UpdeteNameInCourse]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdeteNameInCourse]
@ID int,@Name nvarchar(50)
AS
BEGIN
update Course set course_Name=@Name where id=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[UpdeteNameinDepartment]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdeteNameinDepartment]
@ID int,@Name nvarchar(50)
AS
BEGIN
update Department set dept_Name=@Name where id=@ID
END



GO
/****** Object:  StoredProcedure [dbo].[UpdeteStudentIDinCourseStudent]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdeteStudentIDinCourseStudent]
@ID int,@SID int
AS
BEGIN
update Course_Student set FK_StudentID=@SID where id=@ID
END



GO
/****** Object:  UserDefinedFunction [dbo].[GetStudentGrades]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Question2
create function [dbo].[GetStudentGrades] (@StId int)
returns @g table(grades int)
as
begin
	insert into @g
		select exam_garde
		from Course c inner join Course_Student cs
		on c.id = cs.FK_CourseID
		inner join Student_Exam se
		on se.FK_StudID = cs.FK_StudentID
		where cs.FK_StudentID = @StId
return
end




GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 1/5/2017 10:47:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[adm_ID] [int] IDENTITY(1,1) NOT NULL,
	[adm_userName] [nvarchar](50) NULL,
	[adm_name] [nvarchar](50) NOT NULL,
	[adm_email] [nvarchar](50) NULL,
	[adm_pass] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Administ__8D520FECEF59EB2B] PRIMARY KEY CLUSTERED 
(
	[adm_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_Name] [nvarchar](50) NOT NULL,
	[FK_department] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course_ExamSession_Admin]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_ExamSession_Admin](
	[FK_CourseID] [int] NOT NULL,
	[FK_ExamSessionID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FK_AdminID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FK_CourseID] ASC,
	[FK_ExamSessionID] ASC,
	[FK_AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course_Student]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Student](
	[FK_CourseID] [int] NULL,
	[FK_StudentID] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dept_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK__Departme__3213E83F7B34A683] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exam]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[flag] [bit] NULL,
	[FK_AdminID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exam_Course_Instructor]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam_Course_Instructor](
	[FK_ExamID] [int] NOT NULL,
	[FK_CourseID] [int] NOT NULL,
	[FK_InstructorID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FK_ExamID] ASC,
	[FK_CourseID] ASC,
	[FK_InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExamSession]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSession](
	[session_ID] [int] IDENTITY(1,1) NOT NULL,
	[session_date] [date] NULL,
	[FK_ExamID] [int] NULL,
	[FK_AdminID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[session_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExamSession_Student_Admin]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSession_Student_Admin](
	[FK_ExamSessionID] [int] NOT NULL,
	[FK_StudentID] [int] NOT NULL,
	[FK_AdminID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FK_ExamSessionID] ASC,
	[FK_StudentID] ASC,
	[FK_AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ins_userName] [nvarchar](50) NULL,
	[ins_Name] [nvarchar](50) NOT NULL,
	[ins_age] [int] NULL,
	[ins_address] [nvarchar](50) NULL,
	[ins_phone] [int] NULL,
	[ins_email] [nvarchar](50) NULL,
	[isout] [bit] NULL,
	[FK_AdminID] [int] NULL,
	[FK_DeptID] [int] NULL,
	[ins_password] [nchar](10) NULL,
 CONSTRAINT [PK__Instruct__3213E83F98869005] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Instructor_Course_Admin]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor_Course_Admin](
	[FK_CourseID] [int] NULL,
	[FK_InstructorID] [int] NULL,
	[FK_AdminID] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quest_ans]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quest_ans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Quest_ID] [int] NULL,
	[text] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_text] [nvarchar](200) NULL,
	[question_modelAns] [int] NULL,
	[question_type] [int] NULL,
	[Course_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question_Exam]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question_Exam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FK_QuestionID] [int] NULL,
	[FK_ExamID] [int] NULL,
 CONSTRAINT [PK__Question__3214EC27E1A6C45F] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question_Exam_Instructor]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question_Exam_Instructor](
	[FK_QuestionID] [int] NOT NULL,
	[FK_ExamID] [int] NOT NULL,
	[FK_InstructorID] [int] NULL,
	[question_Weight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FK_QuestionID] ASC,
	[FK_ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuestionType]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[st_userName] [nvarchar](50) NULL,
	[st_Name] [nvarchar](50) NOT NULL,
	[st_age] [int] NULL,
	[st_address] [nvarchar](50) NULL,
	[st_phone] [varchar](50) NULL,
	[st_email] [nvarchar](50) NULL,
	[ins_flag] [bit] NULL,
	[FK_AdminID] [int] NULL,
	[FK_DeptID] [int] NULL,
	[st_password] [varchar](50) NULL,
 CONSTRAINT [PK__Student__3213E83F06BAF26A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student_Exam]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Exam](
	[FK_ExamID] [int] NOT NULL,
	[FK_StudID] [int] NOT NULL,
	[exam_garde] [int] NULL CONSTRAINT [DF_Student_Exam_exam_garde]  DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[FK_ExamID] ASC,
	[FK_StudID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student_Exam_Question]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Exam_Question](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[stID] [int] NULL,
	[ExamId] [int] NULL,
	[currQuest] [int] NULL,
	[checked] [bit] NOT NULL,
	[answer] [nvarchar](50) NULL,
	[Questionnum] [nchar](10) NULL,
 CONSTRAINT [PK__Student___3214EC27D104A380] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TempExamQ]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempExamQ](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question_text] [nvarchar](200) NULL,
	[question_modelAns] [int] NULL,
	[question_type] [int] NULL,
	[Course_ID] [int] NOT NULL,
 CONSTRAINT [PK_TempExamQ] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Topic]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[FK_CourseID] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[topic_Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[GetExamQuestions]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Question4
create function [dbo].[GetExamQuestions](@ExamId int)
returns table
as
return(select q.*
from  Question_Exam qe 
inner join Question q
on qe.FK_QuestionID = q.id
where qe.FK_ExamID = @ExamId)




GO
/****** Object:  UserDefinedFunction [dbo].[GetInstructorCourses]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Question3
create function [dbo].[GetInstructorCourses](@InstId int)
returns table
as
return(select c.course_Name, count(cs.FK_StudentID) as [Number Of Students]
from  Course c 
inner join Instructor_Course_Admin tca
on c.id = tca.FK_CourseID 
inner join Course_Student cs
on cs.FK_CourseID = tca.FK_CourseID
where tca.FK_InstructorID = @InstId 
group by c.course_Name)





GO
/****** Object:  UserDefinedFunction [dbo].[GetStudentAnswers]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Question5
create function [dbo].[GetStudentAnswers](@ExamId int, @StId int)
returns table
as
return(select q.*, answer
from  Question_Exam qe 
inner join Question q
on qe.FK_QuestionID = q.id
inner join Student_Exam_Question seq 
on seq.Questionnum = q.id
--inner join Question_Student qs
--on qs.FK_QuestionID = q.question_ID
where qe.FK_ExamID = @ExamId and seq.stID = @StId)




GO
/****** Object:  UserDefinedFunction [dbo].[GetStudentInfo]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec [dbo].[DeletefromQuestionType] 3
-----------------------------------------------------------------------------------Queries

--Question1
create function [dbo].[GetStudentInfo](@DeptNo int)
returns table
as
return(select s.*
from Student s
where s.FK_DeptID = @DeptNo)




GO
/****** Object:  UserDefinedFunction [dbo].[GetTopics]    Script Date: 1/5/2017 10:47:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Question6
create function [dbo].[GetTopics](@CourseId int)
returns table
as
return(select t.*
from  Topic t
where t.FK_CourseID = @CourseId)




GO
SET IDENTITY_INSERT [dbo].[Administrator] ON 

INSERT [dbo].[Administrator] ([adm_ID], [adm_userName], [adm_name], [adm_email], [adm_pass]) VALUES (1, N'soma', N'Ahmed', N'jhgfg@kjhjgf.com', N'123')
SET IDENTITY_INSERT [dbo].[Administrator] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([id], [course_Name], [FK_department]) VALUES (1, N'science', 1)
INSERT [dbo].[Course] ([id], [course_Name], [FK_department]) VALUES (2, N'network', 2)
INSERT [dbo].[Course] ([id], [course_Name], [FK_department]) VALUES (3, N'math', 2)
INSERT [dbo].[Course] ([id], [course_Name], [FK_department]) VALUES (4, N'oop', 3)
INSERT [dbo].[Course] ([id], [course_Name], [FK_department]) VALUES (5, N'html', 1)
INSERT [dbo].[Course] ([id], [course_Name], [FK_department]) VALUES (6, N'db2', 1)
INSERT [dbo].[Course] ([id], [course_Name], [FK_department]) VALUES (7, N'Computer Sciemces', 3)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Course_ExamSession_Admin] ON 

INSERT [dbo].[Course_ExamSession_Admin] ([FK_CourseID], [FK_ExamSessionID], [ID], [FK_AdminID]) VALUES (0, 1, 1, 1)
INSERT [dbo].[Course_ExamSession_Admin] ([FK_CourseID], [FK_ExamSessionID], [ID], [FK_AdminID]) VALUES (0, 3, 2, 1)
INSERT [dbo].[Course_ExamSession_Admin] ([FK_CourseID], [FK_ExamSessionID], [ID], [FK_AdminID]) VALUES (0, 4, 3, 1)
INSERT [dbo].[Course_ExamSession_Admin] ([FK_CourseID], [FK_ExamSessionID], [ID], [FK_AdminID]) VALUES (0, 5, 4, 1)
INSERT [dbo].[Course_ExamSession_Admin] ([FK_CourseID], [FK_ExamSessionID], [ID], [FK_AdminID]) VALUES (2, 5, 5, 1)
SET IDENTITY_INSERT [dbo].[Course_ExamSession_Admin] OFF
SET IDENTITY_INSERT [dbo].[Course_Student] ON 

INSERT [dbo].[Course_Student] ([FK_CourseID], [FK_StudentID], [id]) VALUES (1, 1, 1)
INSERT [dbo].[Course_Student] ([FK_CourseID], [FK_StudentID], [id]) VALUES (2, 1, 2)
INSERT [dbo].[Course_Student] ([FK_CourseID], [FK_StudentID], [id]) VALUES (3, 1, 3)
INSERT [dbo].[Course_Student] ([FK_CourseID], [FK_StudentID], [id]) VALUES (4, 4, 4)
INSERT [dbo].[Course_Student] ([FK_CourseID], [FK_StudentID], [id]) VALUES (6, 4, 5)
INSERT [dbo].[Course_Student] ([FK_CourseID], [FK_StudentID], [id]) VALUES (7, 4, 6)
SET IDENTITY_INSERT [dbo].[Course_Student] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([id], [dept_Name]) VALUES (1, N'SharePoint')
INSERT [dbo].[Department] ([id], [dept_Name]) VALUES (2, N'UI')
INSERT [dbo].[Department] ([id], [dept_Name]) VALUES (3, N'GIS')
INSERT [dbo].[Department] ([id], [dept_Name]) VALUES (4, N'Civil')
INSERT [dbo].[Department] ([id], [dept_Name]) VALUES (5, N'Game')
INSERT [dbo].[Department] ([id], [dept_Name]) VALUES (6, N'Testing')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Exam] ON 

INSERT [dbo].[Exam] ([id], [flag], [FK_AdminID]) VALUES (1, 0, 1)
INSERT [dbo].[Exam] ([id], [flag], [FK_AdminID]) VALUES (2, 1, 1)
INSERT [dbo].[Exam] ([id], [flag], [FK_AdminID]) VALUES (3, 1, 1)
INSERT [dbo].[Exam] ([id], [flag], [FK_AdminID]) VALUES (4, 0, 1)
INSERT [dbo].[Exam] ([id], [flag], [FK_AdminID]) VALUES (5, 1, 1)
INSERT [dbo].[Exam] ([id], [flag], [FK_AdminID]) VALUES (6, 1, 1)
INSERT [dbo].[Exam] ([id], [flag], [FK_AdminID]) VALUES (7, 1, 1)
SET IDENTITY_INSERT [dbo].[Exam] OFF
INSERT [dbo].[Exam_Course_Instructor] ([FK_ExamID], [FK_CourseID], [FK_InstructorID]) VALUES (2, 1, 1)
INSERT [dbo].[Exam_Course_Instructor] ([FK_ExamID], [FK_CourseID], [FK_InstructorID]) VALUES (3, 2, 1)
INSERT [dbo].[Exam_Course_Instructor] ([FK_ExamID], [FK_CourseID], [FK_InstructorID]) VALUES (5, 3, 1)
INSERT [dbo].[Exam_Course_Instructor] ([FK_ExamID], [FK_CourseID], [FK_InstructorID]) VALUES (6, 4, 1)
SET IDENTITY_INSERT [dbo].[ExamSession] ON 

INSERT [dbo].[ExamSession] ([session_ID], [session_date], [FK_ExamID], [FK_AdminID]) VALUES (1, CAST(N'2017-06-27' AS Date), 1, 1)
INSERT [dbo].[ExamSession] ([session_ID], [session_date], [FK_ExamID], [FK_AdminID]) VALUES (2, CAST(N'2017-06-27' AS Date), 2, 1)
INSERT [dbo].[ExamSession] ([session_ID], [session_date], [FK_ExamID], [FK_AdminID]) VALUES (3, CAST(N'2017-06-27' AS Date), 3, 1)
INSERT [dbo].[ExamSession] ([session_ID], [session_date], [FK_ExamID], [FK_AdminID]) VALUES (4, CAST(N'2017-06-27' AS Date), 4, 1)
INSERT [dbo].[ExamSession] ([session_ID], [session_date], [FK_ExamID], [FK_AdminID]) VALUES (5, CAST(N'2017-06-27' AS Date), 5, 1)
INSERT [dbo].[ExamSession] ([session_ID], [session_date], [FK_ExamID], [FK_AdminID]) VALUES (6, CAST(N'2017-06-27' AS Date), 6, 1)
SET IDENTITY_INSERT [dbo].[ExamSession] OFF
INSERT [dbo].[ExamSession_Student_Admin] ([FK_ExamSessionID], [FK_StudentID], [FK_AdminID]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([id], [ins_userName], [ins_Name], [ins_age], [ins_address], [ins_phone], [ins_email], [isout], [FK_AdminID], [FK_DeptID], [ins_password]) VALUES (1, N'fatafeto', N'fatma', 23, N'nasr city', 897654, N'bhgvh@hjgf', 0, 1, 2, N'1234      ')
INSERT [dbo].[Instructor] ([id], [ins_userName], [ins_Name], [ins_age], [ins_address], [ins_phone], [ins_email], [isout], [FK_AdminID], [FK_DeptID], [ins_password]) VALUES (2, N'fatafeghhto', N'ftyghyhjjj', 23, N'nasr cityhj', 8976, N'bhgvh@hjguf', 0, 1, 1, N'1234      ')
INSERT [dbo].[Instructor] ([id], [ins_userName], [ins_Name], [ins_age], [ins_address], [ins_phone], [ins_email], [isout], [FK_AdminID], [FK_DeptID], [ins_password]) VALUES (4, N'fatafeghhgfhghto', N'jkhg', 23, N'nasr cjhkjhityhj', 897986, N'bhgvh@hjgufjhg', 0, 1, 4, N'123445    ')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
SET IDENTITY_INSERT [dbo].[Quest_ans] ON 

INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (1, 4, N'kivanc tatlitug')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (2, 1, N'Burak ozcevit')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (3, 4, N'Murat Yildirim')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (4, 1, N'Engin akyurek')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (5, 1, N'kivanc tatlitug')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (6, 2, N'kivanc tatlitug')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (7, 3, N'Tuba Buyukustan')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (8, 2, N'Murat Yildirim')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (9, 2, N'Engin akyurek')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (10, 2, N'Tuba Buyukustan')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (12, 3, N'False')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (13, 3, N'True')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (14, NULL, N'cat isa')
INSERT [dbo].[Quest_ans] ([id], [Quest_ID], [text]) VALUES (15, 4, N'khsadkjhkfh kjdsf hkjdfh kjsh fkjh kf ESSAAYhd kjh kfk h')
SET IDENTITY_INSERT [dbo].[Quest_ans] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([id], [question_text], [question_modelAns], [question_type], [Course_ID]) VALUES (1, N'ezayak', 5, 1, 2)
INSERT [dbo].[Question] ([id], [question_text], [question_modelAns], [question_type], [Course_ID]) VALUES (2, N'3amel a', 10, 1, 2)
INSERT [dbo].[Question] ([id], [question_text], [question_modelAns], [question_type], [Course_ID]) VALUES (3, N'w a5bar iti a', 13, 2, 2)
INSERT [dbo].[Question] ([id], [question_text], [question_modelAns], [question_type], [Course_ID]) VALUES (4, N'm3lesh', 15, 3, 2)
SET IDENTITY_INSERT [dbo].[Question] OFF
SET IDENTITY_INSERT [dbo].[Question_Exam] ON 

INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (1, 2, 1)
INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (2, 3, 1)
INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (3, 4, 1)
INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (4, 1, 2)
INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (5, 2, 2)
INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (6, 3, 2)
INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (7, 4, 2)
INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (8, 1, 3)
INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (9, 3, 3)
INSERT [dbo].[Question_Exam] ([ID], [FK_QuestionID], [FK_ExamID]) VALUES (10, 4, 3)
SET IDENTITY_INSERT [dbo].[Question_Exam] OFF
SET IDENTITY_INSERT [dbo].[QuestionType] ON 

INSERT [dbo].[QuestionType] ([id], [Name]) VALUES (1, N'MCQ')
INSERT [dbo].[QuestionType] ([id], [Name]) VALUES (2, N'TF')
INSERT [dbo].[QuestionType] ([id], [Name]) VALUES (3, N'Essay')
SET IDENTITY_INSERT [dbo].[QuestionType] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([id], [st_userName], [st_Name], [st_age], [st_address], [st_phone], [st_email], [ins_flag], [FK_AdminID], [FK_DeptID], [st_password]) VALUES (1, N'fatafeto', N'fatma', 23, N'nasr city', N'897654', N'bhgvh@hjgf', 1, 1, 2, N'1234')
INSERT [dbo].[Student] ([id], [st_userName], [st_Name], [st_age], [st_address], [st_phone], [st_email], [ins_flag], [FK_AdminID], [FK_DeptID], [st_password]) VALUES (2, N'fatafeghhto', N'ftyghyhjjj', 23, N'nasr cityhj', N'8976', N'bhgvh@hjguf', 1, 1, 1, N'1234')
INSERT [dbo].[Student] ([id], [st_userName], [st_Name], [st_age], [st_address], [st_phone], [st_email], [ins_flag], [FK_AdminID], [FK_DeptID], [st_password]) VALUES (3, N'fatafeghhgfhghto', N'jkhg', 23, N'nasr cjhkjhityhj', N'897986', N'bhgvh@hjgufjhg', 1, 1, 4, N'123445')
INSERT [dbo].[Student] ([id], [st_userName], [st_Name], [st_age], [st_address], [st_phone], [st_email], [ins_flag], [FK_AdminID], [FK_DeptID], [st_password]) VALUES (4, N'f', N'hjhj', 22, N'jhghjgj', N'151551515', N'kjhkj@kjhk', 1, 1, 1, N'1234')
SET IDENTITY_INSERT [dbo].[Student] OFF
INSERT [dbo].[Student_Exam] ([FK_ExamID], [FK_StudID], [exam_garde]) VALUES (2, 3, 50)
INSERT [dbo].[Student_Exam] ([FK_ExamID], [FK_StudID], [exam_garde]) VALUES (2, 4, 25)
INSERT [dbo].[Student_Exam] ([FK_ExamID], [FK_StudID], [exam_garde]) VALUES (5, 2, 20)
INSERT [dbo].[Student_Exam] ([FK_ExamID], [FK_StudID], [exam_garde]) VALUES (5, 4, 16)
INSERT [dbo].[Student_Exam] ([FK_ExamID], [FK_StudID], [exam_garde]) VALUES (6, 2, 1)
INSERT [dbo].[Student_Exam] ([FK_ExamID], [FK_StudID], [exam_garde]) VALUES (6, 4, 50)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Administ__8C734C9ACF8E1951]    Script Date: 1/5/2017 10:47:44 AM ******/
ALTER TABLE [dbo].[Administrator] ADD UNIQUE NONCLUSTERED 
(
	[adm_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Administ__A340C6B482324C33]    Script Date: 1/5/2017 10:47:44 AM ******/
ALTER TABLE [dbo].[Administrator] ADD UNIQUE NONCLUSTERED 
(
	[adm_userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Instruct__514E7796661D698F]    Script Date: 1/5/2017 10:47:44 AM ******/
ALTER TABLE [dbo].[Instructor] ADD UNIQUE NONCLUSTERED 
(
	[ins_userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Instruct__B4A804541F7B2EE7]    Script Date: 1/5/2017 10:47:44 AM ******/
ALTER TABLE [dbo].[Instructor] ADD UNIQUE NONCLUSTERED 
(
	[ins_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Student__219A408EC80DE83C]    Script Date: 1/5/2017 10:47:44 AM ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[st_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Student__82631DBC1654746D]    Script Date: 1/5/2017 10:47:44 AM ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[st_userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([FK_department])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[Course_ExamSession_Admin]  WITH CHECK ADD  CONSTRAINT [FK_Course_ExamSession_Admin_Administrator] FOREIGN KEY([FK_AdminID])
REFERENCES [dbo].[Administrator] ([adm_ID])
GO
ALTER TABLE [dbo].[Course_ExamSession_Admin] CHECK CONSTRAINT [FK_Course_ExamSession_Admin_Administrator]
GO
ALTER TABLE [dbo].[Course_ExamSession_Admin]  WITH CHECK ADD  CONSTRAINT [FK_Course_ExamSession_Admin_Course] FOREIGN KEY([FK_ExamSessionID])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Course_ExamSession_Admin] CHECK CONSTRAINT [FK_Course_ExamSession_Admin_Course]
GO
ALTER TABLE [dbo].[Course_ExamSession_Admin]  WITH CHECK ADD  CONSTRAINT [FK_Course_ExamSession_Admin_ExamSession] FOREIGN KEY([FK_ExamSessionID])
REFERENCES [dbo].[ExamSession] ([session_ID])
GO
ALTER TABLE [dbo].[Course_ExamSession_Admin] CHECK CONSTRAINT [FK_Course_ExamSession_Admin_ExamSession]
GO
ALTER TABLE [dbo].[Course_Student]  WITH CHECK ADD FOREIGN KEY([FK_CourseID])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Course_Student]  WITH CHECK ADD  CONSTRAINT [FK__Course_St__FK_St__534D60F1] FOREIGN KEY([FK_StudentID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Course_Student] CHECK CONSTRAINT [FK__Course_St__FK_St__534D60F1]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK__Exam__FK_AdminID__5441852A] FOREIGN KEY([FK_AdminID])
REFERENCES [dbo].[Administrator] ([adm_ID])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK__Exam__FK_AdminID__5441852A]
GO
ALTER TABLE [dbo].[Exam_Course_Instructor]  WITH CHECK ADD FOREIGN KEY([FK_CourseID])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Exam_Course_Instructor]  WITH CHECK ADD FOREIGN KEY([FK_ExamID])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[Exam_Course_Instructor]  WITH CHECK ADD  CONSTRAINT [FK__Exam_Cour__FK_In__571DF1D5] FOREIGN KEY([FK_InstructorID])
REFERENCES [dbo].[Instructor] ([id])
GO
ALTER TABLE [dbo].[Exam_Course_Instructor] CHECK CONSTRAINT [FK__Exam_Cour__FK_In__571DF1D5]
GO
ALTER TABLE [dbo].[ExamSession]  WITH CHECK ADD  CONSTRAINT [FK__ExamSessi__FK_Ad__59FA5E80] FOREIGN KEY([FK_AdminID])
REFERENCES [dbo].[Administrator] ([adm_ID])
GO
ALTER TABLE [dbo].[ExamSession] CHECK CONSTRAINT [FK__ExamSessi__FK_Ad__59FA5E80]
GO
ALTER TABLE [dbo].[ExamSession]  WITH CHECK ADD FOREIGN KEY([FK_ExamID])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[ExamSession_Student_Admin]  WITH CHECK ADD  CONSTRAINT [FK__ExamSessi__FK_Ad__5BE2A6F2] FOREIGN KEY([FK_AdminID])
REFERENCES [dbo].[Administrator] ([adm_ID])
GO
ALTER TABLE [dbo].[ExamSession_Student_Admin] CHECK CONSTRAINT [FK__ExamSessi__FK_Ad__5BE2A6F2]
GO
ALTER TABLE [dbo].[ExamSession_Student_Admin]  WITH CHECK ADD FOREIGN KEY([FK_ExamSessionID])
REFERENCES [dbo].[ExamSession] ([session_ID])
GO
ALTER TABLE [dbo].[ExamSession_Student_Admin]  WITH CHECK ADD  CONSTRAINT [FK__ExamSessi__FK_St__5DCAEF64] FOREIGN KEY([FK_StudentID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[ExamSession_Student_Admin] CHECK CONSTRAINT [FK__ExamSessi__FK_St__5DCAEF64]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK__Instructo__FK_Ad__5EBF139D] FOREIGN KEY([FK_AdminID])
REFERENCES [dbo].[Administrator] ([adm_ID])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK__Instructo__FK_Ad__5EBF139D]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK__Instructo__FK_De__5FB337D6] FOREIGN KEY([FK_DeptID])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK__Instructo__FK_De__5FB337D6]
GO
ALTER TABLE [dbo].[Instructor_Course_Admin]  WITH CHECK ADD  CONSTRAINT [FK__Instructo__FK_Ad__60A75C0F] FOREIGN KEY([FK_AdminID])
REFERENCES [dbo].[Administrator] ([adm_ID])
GO
ALTER TABLE [dbo].[Instructor_Course_Admin] CHECK CONSTRAINT [FK__Instructo__FK_Ad__60A75C0F]
GO
ALTER TABLE [dbo].[Instructor_Course_Admin]  WITH CHECK ADD FOREIGN KEY([FK_CourseID])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Instructor_Course_Admin]  WITH CHECK ADD  CONSTRAINT [FK__Instructo__FK_In__628FA481] FOREIGN KEY([FK_InstructorID])
REFERENCES [dbo].[Instructor] ([id])
GO
ALTER TABLE [dbo].[Instructor_Course_Admin] CHECK CONSTRAINT [FK__Instructo__FK_In__628FA481]
GO
ALTER TABLE [dbo].[Quest_ans]  WITH CHECK ADD FOREIGN KEY([Quest_ID])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([question_modelAns])
REFERENCES [dbo].[Quest_ans] ([id])
GO
ALTER TABLE [dbo].[Question_Exam]  WITH CHECK ADD  CONSTRAINT [FK__Question___FK_Qu__5441852A] FOREIGN KEY([FK_QuestionID])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[Question_Exam] CHECK CONSTRAINT [FK__Question___FK_Qu__5441852A]
GO
ALTER TABLE [dbo].[Question_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Question_Exam_Exam] FOREIGN KEY([FK_ExamID])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[Question_Exam] CHECK CONSTRAINT [FK_Question_Exam_Exam]
GO
ALTER TABLE [dbo].[Question_Exam_Instructor]  WITH CHECK ADD FOREIGN KEY([FK_ExamID])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[Question_Exam_Instructor]  WITH CHECK ADD  CONSTRAINT [FK__Question___FK_In__6A30C649] FOREIGN KEY([FK_InstructorID])
REFERENCES [dbo].[Instructor] ([id])
GO
ALTER TABLE [dbo].[Question_Exam_Instructor] CHECK CONSTRAINT [FK__Question___FK_In__6A30C649]
GO
ALTER TABLE [dbo].[Question_Exam_Instructor]  WITH CHECK ADD FOREIGN KEY([FK_QuestionID])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK__Student__FK_Admi__6C190EBB] FOREIGN KEY([FK_AdminID])
REFERENCES [dbo].[Administrator] ([adm_ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK__Student__FK_Admi__6C190EBB]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK__Student__FK_Dept__6D0D32F4] FOREIGN KEY([FK_DeptID])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK__Student__FK_Dept__6D0D32F4]
GO
ALTER TABLE [dbo].[Student_Exam]  WITH CHECK ADD FOREIGN KEY([FK_ExamID])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[Student_Exam]  WITH CHECK ADD  CONSTRAINT [FK__Student_E__FK_St__6EF57B66] FOREIGN KEY([FK_StudID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_Exam] CHECK CONSTRAINT [FK__Student_E__FK_St__6EF57B66]
GO
ALTER TABLE [dbo].[Student_Exam_Question]  WITH CHECK ADD  CONSTRAINT [FK__Student_E__currQ__5BE2A6F2] FOREIGN KEY([currQuest])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[Student_Exam_Question] CHECK CONSTRAINT [FK__Student_E__currQ__5BE2A6F2]
GO
ALTER TABLE [dbo].[Student_Exam_Question]  WITH CHECK ADD  CONSTRAINT [FK__Student_E__ExamI__5CD6CB2B] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[Student_Exam_Question] CHECK CONSTRAINT [FK__Student_E__ExamI__5CD6CB2B]
GO
ALTER TABLE [dbo].[Student_Exam_Question]  WITH CHECK ADD  CONSTRAINT [FK__Student_Ex__stID__5DCAEF64] FOREIGN KEY([stID])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_Exam_Question] CHECK CONSTRAINT [FK__Student_Ex__stID__5DCAEF64]
GO
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD FOREIGN KEY([FK_CourseID])
REFERENCES [dbo].[Course] ([id])
GO
USE [master]
GO
ALTER DATABASE [ExaminationSystems] SET  READ_WRITE 
GO
