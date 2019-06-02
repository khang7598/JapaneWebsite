/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
    config.filebrowserBrowseUrl = '/Plugin/ckfinder/ckfinder.html';

    config.filebrowserAudioUrl = '/Plugin/ckfinder/ckfinder.html?type=Audio';

    config.filebrowserImageBrowseUrl = '/Plugin/ckfinder/ckfinder.html?type=Images';

    config.filebrowserFlashBrowseUrl = '/Plugin/ckfinder/ckfinder.html?type=Flash';

    config.filebrowserUploadUrl = '/Plugin/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files';

    config.filebrowserAudioUrl = '/Plugin/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Audio';

    config.filebrowserImageUploadUrl = '/Plugin/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Images';

    config.filebrowserFlashUploadUrl = '/Plugin/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash';
};
