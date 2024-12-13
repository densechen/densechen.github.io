<h2 id="publications" style="margin: 2px 0px -15px;">Preprints & Publications</h2>

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
