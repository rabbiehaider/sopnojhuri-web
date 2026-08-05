<?php $wab = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->row(); ?>
<style>
    /* Matches CKEditor's content markup (figure.table, text-align-* classes)
       so anything styled in the admin editor renders the same way here. */
    #content .ck-content,
    #content .cke-output {
        line-height: 1.6;
    }

    #content .ck-content .table,
    #content .cke-output .table {
        margin: 16px 0;
        overflow-x: auto;
    }

    #content .ck-content table,
    #content .cke-output table {
        border-collapse: collapse;
        width: 100%;
    }

    #content .ck-content table td,
    #content .ck-content table th,
    #content .cke-output table td,
    #content .cke-output table th {
        border: 1px solid #d0d5dd;
        padding: 8px 12px;
    }

    #content .ck-content table th,
    #content .cke-output table th {
        background: #f4f6f9;
        font-weight: 600;
    }

    #content .ck-content .text-align-left,
    #content .cke-output .text-align-left {
        text-align: left;
    }

    #content .ck-content .text-align-center,
    #content .cke-output .text-align-center {
        text-align: center;
    }

    #content .ck-content .text-align-right,
    #content .cke-output .text-align-right {
        text-align: right;
    }

    #content .ck-content .text-align-justify,
    #content .cke-output .text-align-justify {
        text-align: justify;
    }

    #content .ck-content figure.image,
    #content .cke-output figure.image {
        margin: 16px 0;
    }

    #content .ck-content figure.image img,
    #content .cke-output figure.image img {
        max-width: 100%;
        height: auto;
    }
</style>

<div id="content">
    <section class="contact-section">
        <div class="container">

            <div class="row">
                <div class="col-sm-12 cke-output">
                    <span><?= $wab->About_Us ?></span>
                </div>
            </div>
        </div>
    </section>
</div>