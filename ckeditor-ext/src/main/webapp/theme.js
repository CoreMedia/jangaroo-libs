/*
Copyright (c) 2003-2009, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.themes.add('cm', (function () {
    return {
        build: function (editor, themePath) {
            var name = editor.name,
                element = editor.element,
                elementMode = editor.elementMode;
            if (!element || elementMode == CKEDITOR.ELEMENT_MODE_NONE) return;
            if (elementMode == CKEDITOR.ELEMENT_MODE_REPLACE) element.hide();
            // Get the HTML for the predefined spaces.
            var contentsHtml = editor.fire('themeSpace', {
                space: 'contents',
                html: ''
            }).html;
            var height = contentsHtml && editor.config.height;
            var tabIndex = editor.config.tabIndex || editor.element.getAttribute('tabindex') || 0;
            // The editor height is considered only if the contents space got filled.
            if (!contentsHtml) height = 'auto';
            else if (!isNaN(height)) height += 'px';
            var style = '';
            var width = editor.config.width;
            if (width) {
                if (!isNaN(width)) width += 'px';
                style += "width: " + width + ";";
            }
            var container = CKEDITOR.dom.element.createFromHtml([
                '<div', contentsHtml ? '' : ' style="display:none"', '><div id="cke_contents_', name, '" class="cm-rte-container" style="height:', height, '">', contentsHtml, '</div></div>' +
                //Hide the container when loading skins, later restored by skin css.
                '<style>.', editor.skinClass, '{visibility:hidden;}</style>'
                ].join(''));
            if (elementMode == CKEDITOR.ELEMENT_MODE_REPLACE) container.insertAfter(element);
            else element.append(container);
            /**
             * The DOM element that holds the main editor interface.
             * @name CKEDITOR.editor.prototype.container
             * @type CKEDITOR.dom.element
             * @example
             * var editor = CKEDITOR.instances.editor1;
             * alert( <b>editor.container</b>.getName() );  "span"
             */
            editor.container = container;
            // Disable browser context menu for editor's chrome.
            container.disableContextMenu();
            editor.fireOnce('themeLoaded');
            editor.fireOnce('uiReady');
        },
        buildDialog: function (editor) {
            var baseIdNumber = CKEDITOR.tools.getNextNumber();
            var element = CKEDITOR.dom.element.createFromHtml(['<div id="cke_' + editor.name.replace('.', '\\.') + '_dialog" class="cke_skin_', editor.skinName, '" dir="', editor.lang.dir, '"' + ' lang="', editor.langCode, '"' + '>' + '<div class="cke_dialog', ' ' + CKEDITOR.env.cssClass, ' cke_', editor.lang.dir, '" style="position:absolute">' + '<div class="%body">' + '<div id="%title#" class="%title"></div>' + '<div id="%close_button#" class="%close_button">' + '<span>X</span>' + '</div>' + '<div id="%tabs#" class="%tabs"></div>' + '<div id="%contents#" class="%contents"></div>' + '<div id="%footer#" class="%footer"></div>' + '</div>' + '<div id="%tl#" class="%tl"></div>' + '<div id="%tc#" class="%tc"></div>' + '<div id="%tr#" class="%tr"></div>' + '<div id="%ml#" class="%ml"></div>' + '<div id="%mr#" class="%mr"></div>' + '<div id="%bl#" class="%bl"></div>' + '<div id="%bc#" class="%bc"></div>' + '<div id="%br#" class="%br"></div>' + '</div>',
            //Hide the container when loading skins, later restored by skin css.
            (CKEDITOR.env.ie ? '' : '<style>.cke_dialog{visibility:hidden;}</style>'), '</div>'].join('').replace(/#/g, '_' + baseIdNumber).replace(/%/g, 'cke_dialog_'));
            var body = element.getChild([0, 0]);
            // Make the Title and Close Button unselectable.
            body.getChild(0).unselectable();
            body.getChild(1).unselectable();
            return {
                element: element,
                parts: {
                    dialog: element.getChild(0),
                    title: body.getChild(0),
                    close: body.getChild(1),
                    tabs: body.getChild(2),
                    contents: body.getChild(3),
                    footer: body.getChild(4)
                }
            };
        },
        destroy: function (editor) {
            var container = editor.container,
                panels = editor.panels;
            /*
			 * IE BUG: Removing the editor DOM elements while the selection is inside
			 * the editing area would break IE7/8's selection system. So we need to put
			 * the selection back to the parent document without scrolling the window.
			 * (#3812)
			 */
            if (CKEDITOR.env.ie) {
                container.setStyle('display', 'none');
                var $range = document.body.createTextRange();
                $range.moveToElementText(container.$);
                try {
                    // Putting the selection to a display:none element - this will certainly
                    // fail. But! We've just put the selection document back to the parent
                    // document without scrolling the window!
                    $range.select();
                }
                catch(e) {}
            }
            if (container) container.remove();
            for (var i = 0; panels && i < panels.length; i++)
            panels[i].remove();
            if (editor.elementMode == CKEDITOR.ELEMENT_MODE_REPLACE) {
                editor.element.show();
                delete editor.element;
            }
        }
    };
})());

CKEDITOR.editor.prototype.getThemeSpace = function (spaceName) {
    var spacePrefix = 'cke_' + spaceName;
    var space = this._[spacePrefix] || (this._[spacePrefix] = CKEDITOR.document.getById(spacePrefix + '_' + this.name));
    return space;
};