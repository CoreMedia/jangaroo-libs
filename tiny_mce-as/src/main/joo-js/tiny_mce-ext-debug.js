/** ************************************************************
	Ext.ux.TinyMCE v0.6
	ExtJS form field containing TinyMCE v3.
	
	Author: Andrew Mayorov (http://blogs.byte-force.com/xor)
	Copyright (c)2008 BYTE-force
	www.byte-force.com
	
	License: LGPLv2.1 or later
*/

(function() {

	Ext.namespace( "Ext.ux" );
	
	var tmceInitialized = false;
	
	/** ----------------------------------------------------------
		Ext.ux.TinyMCE
	*/        
	Ext.ux.TinyMCE = Ext.extend( 

		// Constructor
		function( cfg ){
		
			var config = {
				tinymceSettings: {
					accessibility_focus : false
				}
			};
			
			Ext.apply( config, cfg );

			// Add events
			this.addEvents({
				"editorcreated": true
			});
			
			Ext.ux.TinyMCE.superclass.constructor.call( this, config );
		},
		
		// Base class
		Ext.form.Field,
		
		// Members
		{
			
			// TinyMCE Settings specified for this instance of the editor.
			tinymceSettings: null,
			
			// HTML markup for this field
			defaultAutoCreate: { tag: "div", style: { overflow: "hidden" }, children: [{ tag: "textarea" }] },
			
			// Default width
			width: 200,
			
			// Default height
			height: 200,
			
			/** ----------------------------------------------------------
			*/        
			initComponent: function(){
				this.tinymceSettings = this.tinymceSettings || {};
				Ext.ux.TinyMCE.initTinyMCE({ language: this.tinymceSettings.language });
			},
			
			/** ----------------------------------------------------------
			*/        
			onRender : function( ct, position ){ 
				Ext.ux.TinyMCE.superclass.onRender.call( this, ct, position );
				
				var self = this;
				
				// Fix size if it was specified in config
				var el = this.getEl();
				if( Ext.type( this.width ) == "number" ) {
					el.setWidth( this.width );
					this.tinymceSettings.width = this.width;
				}
				if( Ext.type( this.height ) == "number" ) {
					el.setHeight( this.height );
					this.tinymceSettings.height = this.height;
				}

				// Fetch reference to <textarea> element
				var textarea = el.child( "textarea" );
				this.textareaEl = textarea;
				if( this.name ) textarea.set({ name: this.name });
				var id = textarea.id;
				
				// Create TinyMCE editor.
				this.ed = new tinymce.Editor( id, this.tinymceSettings );
				
				this.ed.onBeforeRenderUI.add( function( ed, controlManager ){
					// Replace control manager
					ed.controlManager = new ControlManager( this, ed );
				}.createDelegate( this ));

				this.ed.onPostRender.add( function( ed, controlManager ){
					// Change window manager
					ed.windowManager = new WindowManager( this.ed );
				}.createDelegate( this ));
				
				// Set event handler on editor init.
				this.ed.onInit.add( function(){
					// Modify markup.
					var tbar = Ext.get( Ext.DomQuery.selectNode( "#" + this.ed.id + "_tbl td.mceToolbar" ));
					var tbars = tbar.select( "> table.mceToolbar" );
					Ext.DomHelper.append( 
						tbar, 
						{ tag: "div", style: { overflow: "hidden" }}, true 
					)
					.appendChild( tbars );
				}.createDelegate( this ));
				
				// Bind to editor focus
				//this.ed.onActivate.add( this.focus.createDelegate( this, [ false, false ], false ));
				
				// Render the editor
				this.ed.render();
				tinyMCE.add( this.ed );
				
				
				// Indicate that editor is created
				this.fireEvent( "editorcreated" );
			},
			
			/** ----------------------------------------------------------
			     * Returns the name attribute of the field if available
			     * @return {String} name The field name
			*/
			getName: function(){
				return this.rendered && this.textareaEl.dom.name ? this.textareaEl.dom.name : (this.name || '');
			},
		 			
			/** ----------------------------------------------------------
			*/        
			initValue : function(){
			
				if( this.value !== undefined )
				{
					this.setValue( this.value );
				}
				else 
				{
					var textarea = this.getEl().child( "textarea", true );
					if( textarea.value.length > 0 )
						this.setValue( textarea.value );
				}
			},

			/** ----------------------------------------------------------
			*/        
			onDestroy: function(){
				if( this.ed ) tinyMCE.remove( this.ed );
				Ext.ux.TinyMCE.superclass.onDestroy.call( this );
			},
			
			/** ----------------------------------------------------------
			*/        
			getValue : function(){
			
				if( !this.rendered || !this.ed.initialized ) 
					return this.value;

				var v = this.ed.getContent();
				if( v === this.emptyText || v === undefined ){
					v = '';
				}
				return v;
			},

			/** ----------------------------------------------------------
			*/        
			setValue : function( v ){
				this.value = v;
				if( this.rendered )
					this.withEd( function(){
						this.ed.undoManager.clear();
						this.ed.setContent( v === null || v === undefined ? '' : v );
						this.ed.startContent = this.ed.getContent({ format : 'raw' });						
						this.validate();
					});
			},
			
			/** ----------------------------------------------------------
			*/        
			isDirty : function() {
			    if( this.disabled || !this.rendered ) {
			        return false;
			    }
			    return this.ed.isDirty();
			},

			/** ----------------------------------------------------------
			*/        
			syncValue : function(){
				if( this.rendered && this.ed.initialized )
					this.ed.save();
			},
			
			/** ----------------------------------------------------------
			*/        
			getEd: function() {
				return this.ed;
			},
			
			/** ----------------------------------------------------------
			*/        
			onResize : function( aw, ah ){
				if( this.rendered ){
					this.withEd( function() {
					
						if( Ext.type( aw ) != "number" ) aw = this.el.getWidth();
						if( Ext.type( ah ) != "number" ) ah = this.el.getHeight();
						
						this.ed.theme.resizeTo( aw, ah );
					});
				}
			},
			
			/** ----------------------------------------------------------
			*/        
			focus: function( selectText, delay ){
				Ext.ux.TinyMCE.superclass.focus.call( this, selectText, delay );
			},
			
			/** ----------------------------------------------------------
			*/        
			onFocus : function(){
				if(!this.hasFocus){
					this.hasFocus = true;
					this.startValue = this.getValue();
					this.withEd( function() {
						this.ed.focus();
						this.fireEvent("focus", this);
					});
				}
			}, 

			/** ----------------------------------------------------------
				If ed (local editor instance) is already initilized, calls
				specified function directly. Otherwise - adds it to ed.onInit event.
			*/        
			withEd: function( func ){
			
				// If editor is not created yet, reschedule this call.
				if( !this.ed ) this.on( 
					"editorcreated", 
					function() { this.withEd( func ) }, 
					this );

				// Else if editor is created and initialized
				else if( this.ed.initialized ) func.call( this );
				
				// Else if editor is created but not initialized yet.
				else this.ed.onInit.add( function(){ func.defer( 10, this ); }.createDelegate( this ));
			}

		}
	);

	// Add static members
	Ext.apply( Ext.ux.TinyMCE, {
	
		/**
			Static field with all the plugins that should be loaded by TinyMCE.
			Should be set before first component would be created.
			@static
		*/
		tinymcePlugins: "safari,pagebreak,style,layer,table,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,noneditable,visualchars,nonbreaking,xhtmlxtras,template",
		
		initTinyMCE: function( settings ) {
			if( !tmceInitialized ){
			
				var s = {
					mode : "none",
					plugins : Ext.ux.TinyMCE.tinymcePlugins,
					theme: "advanced"
				};
				Ext.apply( s, settings );
			
				tinyMCE.init( s );
				tmceInitialized = true;
			}
		}
	});

	Ext.ComponentMgr.registerType( "tinymce", Ext.ux.TinyMCE );
	
	
	/** ----------------------------------------------------------
		WindowManager
	*/        
	var WindowManager = Ext.extend( 
	
		function( editor ) {
			WindowManager.superclass.constructor.call( this, editor );
		},
		
		tinymce.WindowManager,
		
		{
			// Override WindowManager methods
			alert : function( txt, cb, s ) {
				Ext.MessageBox.alert( "", txt, function() { cb.call( this ); }, s );
			},
			
			confirm : function( txt, cb, s ) {
				Ext.MessageBox.confirm( "", txt, function( btn ) { cb.call( this, btn == "yes" ); }, s );
			},
			
			open : function( s, p ) {
				
				s = s || {};
				p = p || {};
				
				if ( !s.type )
					this.bookmark = this.editor.selection.getBookmark( 'simple' );
				
				s.width = parseInt(s.width || 320);
				s.height = parseInt(s.height || 240) + (tinymce.isIE ? 8 : 0);
				s.min_width = parseInt(s.min_width || 150);
				s.min_height = parseInt(s.min_height || 100);
				s.max_width = parseInt(s.max_width || 2000);
				s.max_height = parseInt(s.max_height || 2000);
				s.movable = s.resizable = true;
				p.mce_width = s.width;
				p.mce_height = s.height;
				p.mce_inline = true;

				this.features = s;
				this.params = p;
						
				var win = new Ext.Window(
				{
					title: s.name,
					width: s.width,
					height: s.height,
					minWidth: s.min_width,
					minHeight: s.min_height,
					resizable: true,
					maximizable: s.maximizable == true,
					minimizable: s.minimizable == true,
					modal: true,
					layout: "fit",
					items: [
					{
						xtype: "iframepanel",
						defaultSrc: s.url || s.file
					}
					]
				});
				
				p.mce_window_id = win.getId();
				
				win.show( null,
					function() {
						if( s.left && s.top ) 
							win.setPagePosition( s.left, s.top );
						var pos = win.getPosition();
						s.left = pos[0];
						s.top = pos[1];
						this.onOpen.dispatch( this, s, p );
					},
					this
				);
				
				return win;
			},
			
			close : function( win ) {
			
				// Probably not inline
				if( !win.tinyMCEPopup || !win.tinyMCEPopup.id ) {
					WindowManager.superclass.close.call( this, win );
					return;
				}
					
				var w = Ext.getCmp( win.tinyMCEPopup.id );
				if( w ) {
					this.onClose.dispatch( this );
					w.close();
				}					
			},
			
			setTitle : function( win, ti ) {
			
				// Probably not inline
				if( !win.tinyMCEPopup || !win.tinyMCEPopup.id ) {
					WindowManager.superclass.setTitle.call( this, win, ti );
					return;
				}
				
				var w = Ext.getCmp( win.tinyMCEPopup.id );
				if( w ) w.setTitle( ti );
			},

			resizeBy : function( dw, dh, id ) {
			
				var w = Ext.getCmp( id );
				if( w ) {
					var size = w.getSize();
					w.setSize( size.width + dw, size.height + dh );
				}
			},
			
			focus : function(id) {
				var w = Ext.getCmp( id );
				if( w ) w.setActive( true );
			}
			
		}
	);

	/** ----------------------------------------------------------
		ControlManager
	*/        
	var ControlManager = Ext.extend( 
	
		// Constructor
		function( control, ed, s ) {
			this.control = control;
			ControlManager.superclass.constructor.call( this, ed, s );
		},
		
		// Base class
		tinymce.ControlManager,
	
		// Members
		{
			// Reference to ExtJS control Ext.ux.TinyMCE.
			control: null,
			
			createDropMenu: function( id, s ){
				// Call base method
				var res = ControlManager.superclass.createDropMenu.call( this, id, s );
				
				// Modify returned result
				//var self = this;
				var orig = res.showMenu;
				res.showMenu = function( x, y, px ) {
					orig.call( this, x, y, px );
					//var zi = self.control.getEl().getStyle( "z-index" );
					Ext.fly( 'menu_' + this.id ).setStyle( "z-index", 200001 );
				}
				
				return res;
			},
			
			createColorSplitButton: function( id, s ){
				// Call base method
				var res = ControlManager.superclass.createColorSplitButton.call( this, id, s );
				
				// Modify returned result
				var orig = res.showMenu;
				res.showMenu = function( x, y, px ) {
					orig.call( this, x, y, px );
					Ext.fly( this.id + '_menu' ).setStyle( "z-index", 200001 );
				}
				
				return res;
			}
		}
	);
	
}());
