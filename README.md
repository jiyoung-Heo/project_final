# project_final(JHTA 파이널프로젝트)
--------------
#### 인원: 6명
#### 진행 기간: 2021.07.28~2021.08.31(기획 5일, 개발 30일)   
#### 주제: 숙박시설 예약 페이지   
#### 역할: 숙소 등록, 숙소 검색(메인 검색, 필터 검색), 관리자(대시보드, 예약률), 채팅(친구 요청), 게시판(목록, 세부, 댓글), QnA(목록, 세부), db 덤프 제작   
----------------
#### skill: Java, Javascript(JQuery, Ajax), JSP, HTML, CSS, Bootstrap, OracleDB, MVC, mybatis, Spring framework   
#### 프로젝트 시연 영상: [J6Combined](https://www.youtube.com/watch?v=ggbl4C8TEtU)
------------------
>역할 상세 설명   
- **숙소등록**: 호텔 측에서 J6Combined에 숙소를 등록하기 위해 필요한 모든 정보를 기입하는 곳이다. 숙소정보, 객실세부정보, 시즌정보를 입력할 수 있다. 숙소정보에는 호텔전체와 관련된 정보를 기입하고 객실 세부정보에는 숙박업소안의 방과 관련된 정보를 기입한다. 방의 종류는 여러 개이기 때문에 객실 세부정보 추가/삭제 버튼을 통해 원하는 개수의 객실을 등록할 수 있다. 시즌 정보는 성수기/준성수기/비수기에 해당하는 기간을 설정하는 곳으로 여러가지의 시즌이 존재할 수 있기 때문에 시즌정보 추가/삭제를 통해 원하는 개수의 시즌정보를 등록할 수 있다. 하단부에 등록요청 버튼을 누르게 되면 gmail api를 통해 관리자의 메일로 작성한 정보들이 전송되고 메일에서 등록/거부 버튼으로 요청을 처리할 수 있다. 여러 개의 이미지는 multipartResolver Bean을 등록한 후 multipartHttpServletRequest를 통해 controller로 넘겨서 db에 저장했다.
- **숙소 검색- 메인검색**: 도시/호텔명, 날짜, 객실 수, 인원수를 통해 1차 검색이 가능하다. 
- **숙소검색- 필터검색**: 왼쪽 바에는 지도로 보기 기능과 세부검색필터로 구성되어있다. 지도로 검색 기능은 리스트로 출력되는 결과를 지도로 출력해 주는 기능이다. 마이페이지에서 등록한 선호호텔체인, 숙소등급, 고객평점, 가격 슬라이더, 무료제공, 숙소 명, 특정위치 인근반경, 편의시설이 왼쪽 바의 검색 항목이다. 이 항목들은 중복하여 검색이 가능하다. 검색 버튼을 제외한 모든 기능은 RESTful API를 통해 구현했다. 지도는 네이버지도 API를 사용했다.
- **관리자- 대시보드**: 관리자페이지는 bootstrap 템플릿을 활용하여 RESTful API를 통해 제작했다. 메인(대시보드)에는 달 매출, 연 매출, 달 회원유입수, 전체 회원수가 표시되며 매출그래프를 통해 달 별 상세 매출확인이 가능하다. 결제수단은 원형 그래프를 통해 카카오페이와 신용카드의 결제 비율을 확인할 수 있도록 하였다. 하단에는 월 최고 예약률 top 5 호텔을 표시하고 그 호텔의 예약률을 그래프로 표시했다. 취소/환불 신청내역을 메인에 배치하여 취소/환불 요청 내역들을 빠르게 확인할 수 있게 하였다.
- **관리자- 예약률**: 호텔별/객실별 예약률 현황을 확인할 수 있다. 1달, 3달, 6달, 1년간 기준으로 조회할 수 있으며 excel, pdf 등의 파일로 내려받기가 가능하다. dataTables 라이브러리를 통해 표를 구성하였다. 
- **관리자- 카드환불**: 관리자-취소/환불관리 페이지에서 취소승인버튼을 누르면 예약취소와 동시에 카드취소기능을 구현하였다.(아임포트 API사용)
- **게시판- 세부, 댓글**: 상단에 제목, 아이디, 작성일, 내용이 표시되며 댓글을 달 수 있다. 댓글 수와 댓글 리스트는 RESTful API를 통해 구현했다. 본인의 글은 답글/수정/삭제가 가능하고 본인 글이 아닌 경우 답글만 작성 가능하다.
- **채팅- 친구 요청**: 게시판 상세 페이지에서 본인의 아이디와 삭제된 아이디를 제외한 상대방의 아이디를 클릭하면 친구신청을 보낼 수 있는 버튼이 생성되며 클릭 시 친구요청을 보낼 수 있다. 채팅페이지에 접속하여 확인할 수 있으며 거절버튼을 누르면 친구요청에서 삭제되고 수락 버튼을 누르면 친구목록에 추가된다. 
- **QnA**: 상단에서는 카테고리를 선택하여 원하는 종류의 QnA를 확인할 수 있다. 중앙 부분에 테이블이 위치하고 비밀글의 경우 자물쇠 이미지가 제목에 표시된다. 답변상태는 테이블의 가장 왼쪽에 표시된다. 하단부에는 페이징 처리가 되어있으며 제목/내용/작성자를 통한 검색이 가능하다. 글쓰기 버튼을 통해 카테고리별 문의가 가능하다.
- **db덤프**: 공공데이터 포털과 서울시 열린데이터광장에 게시되어 있는 강남구 숙박업소 현황 정보를 사용했다.