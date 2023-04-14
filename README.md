# :pushpin: 세미프로젝트 - NVoT 캠핑 용품 판매 사이트 

## Contents <img width="30" src="https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1567008133/noticon/mw0xnjgco64rfeviwqvy.png">

1. [수행기간 및 참여인원](#1️⃣-수행기간-및-참여인원)
2. [프로젝트 개요](#2️⃣-프로젝트-개요)
3. [개발 배경 및 목표](#3️⃣-개발-배경-및-목표)
4. [개발 환경](#4️⃣-개발-환경)
5. [주요 기능](#5️⃣-주요-기능)
6. [Document](#6️⃣-Document)

<br>

## 1️⃣ 수행기간 및 참여인원

- **2022년 11월 25일 ~ 2023년 01월 03일**
- **개인 프로젝트**

<br>

## 2️⃣ 프로젝트 개요

- **여러 캠핑 전문 브랜드의 제품들을 한눈에 볼 수 있는 셀렉샵으로 최신의 캠핑용품을 소개해주고 원하는 상품을 구매할 수 있는 캠핑용품 판매 사이트**

<br>

## 3️⃣ 개발 배경 및 목표

### 개발 배경
- **일반적인 캠핑 관련 브랜드에 웹사이트들은 자사 제품만 판매 하는 사이트가 비교적 많음.**
- **여러 브랜드의 제품을 판매하는 사이트라고 하더라도 블로그로 운영되거나 오프라인 매장 위치만 알려주는 웹 사이트임.**
- **캠핑을 처음 접하는 소비자 관점에서 볼 때 상품을 하나의 웹사이트에서 구매가 이루어진다면 더욱 편리할 것으로 생각 됨.**
- **따라서, 선호도가 높은 브랜드의 상품들을 한곳에 모아 사용자들이 다양하게 제품을 구매할 수 있도록 도와주는 웹사이트를 제작하고자 함.**

### 개발 목표
- **세미프로젝트에서 주요 목표는 화면 UI 구현, 페이지 이동, DB 에서 데이터 가져오기 등의 초첨을 맞춰서 웹 페이지를 구현하는 것을 목표로 함.**

<br>

## 4️⃣ 개발 환경
### OS
- OS : Windows 11

### Front-End
- Language : HTML5, CSS3, Javascript, JSP 2.3
- API : jQuery 3.6.1, jstl 1.2
 
### Back-End
- Language : Java(JDK 11.0.2), Servlet 4.0
- API : ojdbc6

### DBMS
- Oracle XE 11.2

### Tool
- 형상관리 : github
- IDE : eclipse ee, sqldeveloper
- ERD : ERD Cloud

### WAS
- Apache Tomcat 9.0
<br>

## 5️⃣ 주요 기능

![주요기능](https://user-images.githubusercontent.com/111377620/231515047-b9600c1b-d00e-4422-96c8-38ff299613c6.png)

<details>

<summary><h3>✅ 메인 페이지 </h3></summary>

<div markdown="1"> 

<div align="center">

<img alt="image" src="https://media.discordapp.net/attachments/692994434526085184/1002954522253074472/a0c55ca0bfe82413.png"> 
페이지 이동, 상품  조회
<img width="250" alt="image" src="https://media.discordapp.net/attachments/692994434526085184/1002954522253074472/a0c55ca0bfe82413.png">

</div>

<br>

<div align="center">

![메인페이지](https://user-images.githubusercontent.com/111377620/231519431-15f71012-571d-4070-9145-2c4bd287688a.png)

</div>

---

<div align="center">

<img width="100" alt="image" src="https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1577544307/noticon/a7cmr2ibsfyuwcydpvny.png">

</div>

![1  메인페이지](https://user-images.githubusercontent.com/111377620/231769376-30055f02-7d6f-434e-9205-9aefb8455f6f.png)

### 화면 설명
- 메인페이지에서 좌측 상단 'SNS 아이콘' 클릭시 SNS 페이지로 이동 함
- 메인페이지에서 우측 상단 '로그인' 클릭시 로그인 페이지로 이동 함
- 메인페이지에서 우측 상단 '회원가입' 클릭시 회원가입 페이지로 이동 함
- 메인페이지에서 우측 상단 '커뮤니티' 클릭시 커뮤니티 페이지로 이동 함
- 메인페이지에서 중앙 '로고' 클릭 시 메인페이지로 이동 함
- 카테고리 버튼에 hover시 색상이 변경되고 드롭다운 메뉴가 보여짐


![5  상품조회](https://user-images.githubusercontent.com/111377620/231744558-b1134ada-4614-4da9-adf7-f049ebb2dda3.png)

### 화면 설명
- 사용자가 메인페이지에 접근하면 페이지 가운데 부분에 DB에 저장된 상품 리스트를 보여주는 상품 목록이 출력 됨

</details>

---
  
<details>

<summary><h3>✅ 로그인 페이지 </h3></summary>

<div markdown="1"> 

<div align="center">

<img alt="image" src="https://media.discordapp.net/attachments/692994434526085184/1002954522253074472/a0c55ca0bfe82413.png"> 
사용자 로그인, 로그아웃
<img width="250" alt="image" src="https://media.discordapp.net/attachments/692994434526085184/1002954522253074472/a0c55ca0bfe82413.png">

</div>

<br>

<div align="center">

![2  로그인 및 로그아웃_시연영상_ver 3](https://user-images.githubusercontent.com/111377620/232057439-00998cd2-5072-4034-871d-69091b84d2bf.gif)

</div>

---

<div align="center">

<img width="100" alt="image" src="https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1577544307/noticon/a7cmr2ibsfyuwcydpvny.png">

</div>

![2  로그인 및 로그아웃](https://user-images.githubusercontent.com/111377620/231744225-5c05a1df-c558-4827-b9fa-8a3f5b4f04a3.png)

### 화면설명
- 아이디, 비밀번호를 입력하고 로그인을 누르면 메인페이지로 이동함, 메인페이지에서는 로그인상태를 표시하기 위해 로그아웃 문구를 보여줌
- 로그아웃을 클릭하면 세션을 무효화 시켜서 로그아웃 처리를 해주고 메인페이지를 보여줌

</details>

---

<details>

<summary><h3>✅ 회원가입 페이지 </h3></summary>

<div markdown="1"> 

<div align="center">

<img alt="image" src="https://media.discordapp.net/attachments/692994434526085184/1002954522253074472/a0c55ca0bfe82413.png"> 
사용자 회원가입
<img width="250" alt="image" src="https://media.discordapp.net/attachments/692994434526085184/1002954522253074472/a0c55ca0bfe82413.png">

</div>

<br>

<div align="center">

![회원가입페이지](https://user-images.githubusercontent.com/111377620/231520045-393af2e0-0698-48c3-abea-8c9aa50372b9.png)

</div>

---
  
<div align="center">

<img width="100" alt="image" src="https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1577544307/noticon/a7cmr2ibsfyuwcydpvny.png">

</div>

![3  회원가입](https://user-images.githubusercontent.com/111377620/231744502-eab160a9-d375-4605-9abd-071261b8854a.png)

### 화면 설명
- 메인페이지 상단에 회원가입버튼을 클릭하면 회원가입 페이지가 보여짐 회원가입에 아이디/비밀번호/비밀번호확인/이름/이메일/휴대폰번호/전화번호/주소 등을 입력하고 회원가입 버튼을 클릭하면 로그인 페이지로 이동함
- 만약 실패하거나 취소 버튼을 클릭하면 메인페이지로 이동함

</details> 

---
  
<details>

<summary><h3>✅ 커뮤니티 페이지 </h3></summary>

<div markdown="1"> 

<div align="center">

<img alt="image" src="https://media.discordapp.net/attachments/692994434526085184/1002954522253074472/a0c55ca0bfe82413.png"> 
게시글 목록 조회
<img width="250" alt="image" src="https://media.discordapp.net/attachments/692994434526085184/1002954522253074472/a0c55ca0bfe82413.png">

</div>

<br>

<div align="center">

![커뮤니티페이지-메인](https://user-images.githubusercontent.com/111377620/231776437-9d8464cf-a465-4579-b4e6-d0004d5b5345.png)
![커뮤니티페이지-문의글작성](https://user-images.githubusercontent.com/111377620/231776507-e9ad5bc4-182c-476b-ab1d-e631e0068b41.png)

</div>

<br>
  
<div align="center">

<img width="100" alt="image" src="https://noticon-static.tammolo.com/dgggcrkxq/image/upload/v1577544307/noticon/a7cmr2ibsfyuwcydpvny.png">

</div>

![5  커뮤니티 게시판 조회](https://user-images.githubusercontent.com/111377620/231778876-7d776c87-e22f-4332-a909-757c838224e2.png)

### 화면 설명
- 커뮤니티 페이지로 접근하면 1:1 문의 게시글 목록 조회가 됨
- 1:1 문의하기 버튼을 클릭하면 게시글을 작성할 수 있는 페이지가 보여짐

</details>

---
<br>

## 6️⃣ Document

<br>
  
###  6-1. 프로젝트 일정

![프로젝트 일정](https://user-images.githubusercontent.com/111377620/228602879-3a1b9d44-2468-4d31-8699-d746c50173cf.png)

[프로젝트 일정 전체보기](https://docs.google.com/spreadsheets/d/1qgaBi2Stp9QdD2ft-rDFxLhydE2dNDhQjI8ZB4A_YFI/edit#gid=1421974715)

<br>

### 6-2. 요구사항 정의서

[요구사항 정의서 전체보기](https://docs.google.com/spreadsheets/d/1xb1wR4L5h0_hMfXTB2fIgQLs-fSqsQLZH-l-m3iel1U/edit#gid=0)

<br>

### 6-3. 화면설계서

[화면설계서 전체보기](https://docs.google.com/presentation/d/1TIw5DeAD8_SS0Zau39jlCUkfEKpOipF6Du-BnKMYTMI/edit#slide=id.g218469d6fbc_0_0)

<br>

### 6-4. UseCase Diagram
  
[UseCase Diagram 전체보기](https://docs.google.com/document/d/1Mp6auVlJ266f7adbvwXY6IVdnGTQSJv3jfRNvJjr35M/edit)

<br>

### 6-5. ERD 설계

![semi_project_nvot](https://user-images.githubusercontent.com/111377620/228584679-7fe40bf1-2b07-4d63-b6f6-dc7c9982c032.png)

<br>
  
### 6-6. History

[History 전체보기](https://docs.google.com/spreadsheets/d/1AQlCSLg-VBfFOFFGFI2pcUUGj-VvoQVv/edit#gid=1701566558)

<br>
  
### 6-7. 테스트케이스

[테스트케이스 전체보기](https://docs.google.com/spreadsheets/d/1KmTdoRV8rgC9udDMvjIf_iF-oL1Q7xlhmlt1iGT8YFI/edit#gid=391885132)

<br>

### 6-8. 발표자료

[발표자료 전체보기(pdf)](https://drive.google.com/drive/folders/1GpIAd_-SNo8cJnrNXnLFlssg-dYQXW_u)

<br>

### 이상입니다 감사합니다.
