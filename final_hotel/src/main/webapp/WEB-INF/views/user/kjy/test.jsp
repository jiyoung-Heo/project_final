<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
html {
  text-align: center;
  font-family: Georgia, "Times New Roman", serif;
}
.btn-switch {
  font-size: 6em;
	position: relative;
	display: inline-block;		
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
.btn-switch__radio {
	display: none;
}
.btn-switch__label {
	display: inline-block;	
	padding: .75em .5em .75em .75em;
	vertical-align: top;
	font-size: 1em;
	font-weight: 700;
	line-height: 1.5;
	color: #666;
  cursor: pointer;
	transition: color .2s ease-in-out;
}
.btn-switch__label + .btn-switch__label {
  padding-right: .75em;
	padding-left: 0;
}
.btn-switch__txt {
	position: relative;
	z-index: 2;
  display: inline-block;
   min-width: 1.5em;
	opacity: 1;
	pointer-events: none;
	transition: opacity .2s ease-in-out;
}
.btn-switch__radio_no:checked ~ .btn-switch__label_yes .btn-switch__txt,
.btn-switch__radio_yes:checked ~ .btn-switch__label_no .btn-switch__txt {
	opacity: 0;
}
.btn-switch__label:before {
	content: "";
	position: absolute;
	z-index: -1;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background: #f0f0f0;
	border-radius: 1.5em;
	box-shadow: inset 0 .0715em .3572em rgba(43,43,43,.05);
	transition: background .2s ease-in-out;
}
.btn-switch__radio_yes:checked ~ .btn-switch__label:before {
	background: #6ad500;
}
.btn-switch__label_no:after {
	content: "";
	position: absolute;
	z-index: 2;
	top: .5em;
	bottom: .5em;
	left: .5em;
	width: 2em;
	background: #fff;
	border-radius: 1em;	
	pointer-events: none;
	box-shadow: 0 .1429em .2143em rgba(43,43,43,.2), 0 .3572em .3572em rgba(43,43,43,.1);
	transition: left .2s ease-in-out, background .2s ease-in-out;
}
.btn-switch__radio_yes:checked ~ .btn-switch__label_no:after {
	left: calc(100% - 2.5em);
	background: #fff;
}
.btn-switch__radio_no:checked ~ .btn-switch__label_yes:before,
.btn-switch__radio_yes:checked ~ .btn-switch__label_no:before {
	z-index: 1;
}
.btn-switch__radio_yes:checked ~ .btn-switch__label_yes {
	color: #fff;
}
</style>

<p class="btn-switch">					
  <input type="radio" id="yes" name="switch" class="btn-switch__radio btn-switch__radio_yes" />
  <input type="radio" checked id="no" name="switch" class="btn-switch__radio btn-switch__radio_no" />		
  <label for="yes" class="btn-switch__label btn-switch__label_yes"><span class="btn-switch__txt">Oui</span></label>								  <label for="no" class="btn-switch__label btn-switch__label_no"><span class="btn-switch__txt">Non</span></label>							
</p>