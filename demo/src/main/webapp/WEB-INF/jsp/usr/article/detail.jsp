<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE DETAIL"></c:set>
<%@ include file="../common/head.jspf"%>

<hr />

<div class="container">
    <h2>${pageTitle}</h2>
    <table class="simple-table">
        <tbody>
            <tr>
                <th>번호</th>
                <td>${article.id}</td>
            </tr>
            <tr>
                <th>작성날짜</th>
                <td>${article.regDate}</td>
            </tr>
            <tr>
                <th>수정날짜</th>
                <td>${article.updateDate}</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>${article.memberId}</td>
            </tr>
            <tr>
                <th>제목</th>
                <td>${article.title}</td>
            </tr>
            <tr>
                <th>내용</th>
                <td>${article.body}</td>
            </tr>
        </tbody>
    </table>
    <div class="btns">
        <button type="button" onclick="history.back();">뒤로가기</button>
    </div>
</div>

<%@ include file="../common/foot.jspf"%>

<style>
    .container {
        width: 80%;
        margin: 20px auto;
        font-family: Arial, sans-serif;
    }
    h2 {
        text-align: center;
    }
    .simple-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    .simple-table th, .simple-table td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
        text-align: left;
    }
    .simple-table th {
        background-color: #f5f5f5;
        width: 150px;
    }
    .btns {
        text-align: center;
        margin-top: 20px;
    }
    button {
        padding: 8px 16px;
        background-color: #0073e6;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button:hover {
        background-color: #005bb5;
    }
</style>