<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
        body{
            background-color: LightPink;
            width: 100%;
            background-image: url("../resource/images/Main.jpg");
        }
        .container{
            width: 100%
        }
        .text{
            color: white;
            font-size: 30px;
            font-weight: bold;
            line-height: 100%;
            margin: 0;
         }
         .text a{
            text-decoration: none;
            color: black;
            opacity: 0.8;
         }
         .text a:hover{
            text-decoration: none;
            color:white;
         }
        .T{
            position: fixed;
            display: block;
            text-align: center;
            left: 49%;
            padding-top: 20px;
        }
        .B{
            position: fixed;
            display: block;
            bottom: 0;
            text-align: center;
            left: 47%;
            padding-bottom: 20px;
       }
        .R{
            position: fixed;
            display: block;
            text-align: center;
            top:47%;
            right: 0;
            padding-right: 20px;
            -webkit-transform: rotate(90deg);
            -moz-transform: rotate(90deg);
            -o-transform: rotate(90deg);
            -ms-transform: rotate(90deg);
            transform: rotate(90deg);
       }
       .L{
            position: fixed;
            display: block;
            text-align: center;
            top:47%;
            left: 0;
            padding-left: 20px;
            -webkit-transform: rotate(270deg);
            -moz-transform: rotate(270deg);
            -o-transform: rotate(270deg);
            -ms-transform: rotate(270deg);
            transform: rotate(270deg);
        }
        .signin{
            position: fixed;
            display: inline-block;
            text-align: center;
            left: 90%;
            padding-top: 20px;
        }
        .signin a{
            color: #fff;
            font-size: 20px;
        }
        .signin a:hover{
            text-decoration: none;
            cursor: pointer;
        }
        
        .signup{
            position: fixed;
            display: inline-block;
            text-align: center;
            left: 90%;
            padding-top: 20px;
        }
        .signup a{
            color: #fff;
            font-size: 20px;
        }
        .signup a:hover{
            text-decoration: none;
            cursor: pointer;
        }
        #TopUl{
          width: 100%;
          list-style: none;
          right: 0; 
        }
        #TopUl li{
          position: absolute;
          display: inline;
          margin-top: 15px;
          right: 0; 
        }
        #TopR1{
          position:fixed;
          right: 20px;
          color:white;
          font-size: 16px;
          list-style: none;
        }
        #TopR2{
          position:fixed;
          right: 100px;
          color:white;
          font-size: 16px;
          list-style: none;
        }
       
   </style>