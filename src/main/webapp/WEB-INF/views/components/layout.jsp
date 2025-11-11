<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" data-theme="light">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <title></title>
  <style>
      :root{
          font-family: 'Arimo','Noto Sans KR',system-ui,-apple-system,Segoe UI,Roboto,Arial,sans-serif;
          --border:#e5e7eb;
          --bg:#f9fafb;      /* 회색 배경 */
          --panel:#fff;      /* 카드/패널(헤더, 사이드바 등) 배경 */
          --text:#4a5565;
          --text-strong:#101828;
          --muted:#6a7282;
          --card:#ffffff;
          --brand:#f54900;
          --header-h:72px;   /* 헤더 높이 */
          --sb-w:260px;      /* 사이드바 폭(접힘/펼침 시 변경 가능) */
          --footer-h:80px;   /* 푸터 높이 */
      }

      /* 기본 리셋 */
      *{ box-sizing:border-box;
          font-family: 'Arimo','Noto Sans KR',system-ui,-apple-system,Segoe UI,Roboto,Arial,sans-serif;
      }
      html, body { height:100%; margin:0; }
      html { background:var(--bg); }      /* 최상위 배경도 회색 */
      body{
          min-height:100vh;
          display:flex;
          flex-direction:column;
          font-family:'Arimo','Noto Sans KR',sans-serif;
          color:var(--text);
          background:var(--bg);             /* 바디 배경 회색 고정 */
      }

    /* 헤더 */
    header{
      background:var(--panel);
      border-bottom:1px solid var(--border);
      position:sticky; top:0; z-index:100;
      min-height:var(--header-h);
      flex-shrink:0;
    }

    /* 메인 레이아웃 */
    .main_wrap{
      flex:1;
      display:grid;
      grid-template-columns:auto minmax(0,1fr); /* 사이드바 + 메인 */
      grid-template-rows:1fr; /* 컨텐츠 영역만 */
      min-height:0;
    }

    aside{
      background:var(--panel);
      border-right:1px solid var(--border);
      position:sticky; top:var(--header-h);
      height:calc(100vh - var(--header-h));
      overflow:auto;
    }

    section{
      background:var(--bg);
      overflow:auto;
    }
    .content{
        padding:24px;
    }

    /* 푸터 */
    footer{
      background:var(--panel);
      border-top:1px solid var(--border);


      padding:16px;
      display:flex;
      align-items:center;
      justify-content:center;
      width:100%;
    }

  </style>
</head>

<body>
  <header>
    <jsp:include page="/WEB-INF/views/components/header.jsp"/>
  </header>

  <div class="main_wrap">
    <aside>
      <jsp:include page="/WEB-INF/views/components/sidebar.jsp"/>
    </aside>

    <section>
      <div class="content">
        <jsp:include page="/WEB-INF/views/dashboard.jsp"/>
      </div>
      <footer>
        <jsp:include page="/WEB-INF/views/components/footer.jsp"/>
      </footer>
    </section>
  </div>



</body>
</html>
