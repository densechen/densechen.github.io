## Preprints & Publications

<h4 style="margin:0 10px 5px;">First author's preprints & publications: <span id="first-author-count">0</span></h4>

<ul style="margin:0 0 5px;">
<li><autocolor><p id="first-author-conference-list">
  
</p>
</autocolor>
</li>
</ul>

<h4 style="margin:15px 10px 5px;">All preprints & publications: <span id="all-count">0</span></h4>
<ul style="margin:0 0 5px;">
<li><autocolor><p id="conference-list">
  
</p>
</autocolor>
</li>
</ul>

<script>
  // 统计功能：统计第一作者为 "Dengsheng Chen" 的论文数量，并按会议分类
  const papers = {{ site.data.publications.main | jsonify }};
  const firstAuthorPapers = papers.filter(paper => paper.authors && paper.authors.startsWith("<strong>Dengsheng Chen</strong>"));
  
  const firstAuthorConferenceCount = {};
  firstAuthorPapers.forEach(paper => {
    if (paper.conference_short) {
      firstAuthorConferenceCount[paper.conference_short] = (firstAuthorConferenceCount[paper.conference_short] || 0) + 1;
    }
  });

  const conferenceCount = {};
  papers.forEach(paper => {
    if (paper.conference_short) {
      conferenceCount[paper.conference_short] = (conferenceCount[paper.conference_short] || 0) + 1;
    }
  });

  // 更新统计信息
  document.getElementById('first-author-count').innerText = firstAuthorPapers.length;
  document.getElementById('all-count').innerText = papers.length;
  
  // 将论文信息放入一行并用逗号分隔
  const firstAuthorConferenceList = document.getElementById('first-author-conference-list');
  const firstAuthorConferenceItems = Object.entries(firstAuthorConferenceCount).map(([conference, count]) => `${conference}: ${count}`);
  firstAuthorConferenceList.textContent = firstAuthorConferenceItems.join(', ');  // 用逗号分隔并加入到页面

  const allConferenceList = document.getElementById('conference-list');
  const allConferenceItems = Object.entries(conferenceCount).map(([conference, count]) => `${conference}: ${count}`);
  allConferenceList.textContent = allConferenceItems.join(', ');  // 用逗号分隔并加入到页面
</script>

<hr style="border-top: 2px solid #ccc; border-radius: 5px;">

<div class="publications">
  <ol class="bibliography">
  {% for link in site.data.publications.main %}
  <li>
    <div class="pub-row">
      <div class="col-sm-3 abbr" style="position: relative;padding-right: 15px;padding-left: 15px;">
        {% if link.image %} 
          <img src="{{ link.image }}" class="teaser img-fluid z-depth-1" style="width=100;height=40%">
          {% if link.conference_short %} 
            <abbr class="badge">{{ link.conference_short }}</abbr>
          {% endif %}
        {% endif %}
      </div>
      <div class="col-sm-9" style="position: relative;padding-right: 15px;padding-left: 20px;">
        <div class="title"><a href="{{ link.pdf }}">{{ link.title }}</a></div>
        <div class="author">{{ link.authors }}</div>
        <div class="periodical"><em>{{ link.conference }}</em></div>
        <div class="links">
          {% if link.pdf %} 
            <a href="{{ link.pdf }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">PDF</a>
          {% endif %}
          {% if link.code %} 
            <a href="{{ link.code }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Code</a>
          {% endif %}
          {% if link.page %} 
            <a href="{{ link.page }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">Project Page</a>
          {% endif %}
          {% if link.bibtex %} 
            <a href="{{ link.bibtex }}" class="btn btn-sm z-depth-0" role="button" target="_blank" style="font-size:12px;">BibTex</a>
          {% endif %}
          {% if link.notes %} 
            <strong><i style="color:#e74d3c">{{ link.notes }}</i></strong>
          {% endif %}
        </div>
      </div>
    </div>
    
    <style>
      @media print {
        .others-block {
          display: none;
        }
      }
      
      /* Day & Night Mode Support */
      .others-block {
        margin-top: 20px;
        padding: 15px;
        background-color: #f8f9fa;
        border-left: 5px solid #007bff;
        font-size: 13px;
        line-height: 1.6;
      }

      .others-block .abstract-text {
        color: #555;
        font-style: italic;
      }

      /* Light Theme */
      @media (prefers-color-scheme: light) {
        .others-block {
          background-color: #f8f9fa;
          color: #333;
        }
        .others-block .abstract-text {
          color: #555;
        }
      }

      /* Dark Theme */
      @media (prefers-color-scheme: dark) {
        .others-block {
          background-color: #333;
          color: #ccc;
        }
        .others-block .abstract-text {
          color: #bbb;
        }
      }
    </style>

    {% if link.others %}
    <div class="others-block">
      <strong style="font-size: 14px; color: #007bff;">Abstract:</strong>
      <div class="abstract-text">{{ link.others }}</div>
    </div>
    {% endif %}
  </li>
  <br>
  {% endfor %}
  </ol>
</div>
