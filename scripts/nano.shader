// shaders for Nano

// -------------------- Particle dust
// from Uncreation by Who-[Soup]
textures/nano/dust_shader
{
        cull none
        entityMergable
	qer_editorimage textures/nano/dust
        {
                map textures/nano/dust.tga
                blendFunc blend
                rgbGen          vertex
                alphaGen        vertex
        }
}

// -------------------- Sky box
// environment map "Top of the Heap" by Mighty Pete
textures/nano/top-of-the-heap
{
      qer_editorimage env/nano/top-of-the-heap/top-of-the-heap-small.jpg
      surfaceparm noimpact
      surfaceparm nolightmap
      surfaceparm sky
      //q3map_sun   .5 .37 .22 300 265 15
      q3map_surfacelight 50

     skyparms env/nano/top-of-the-heap/top-of-the-heap512 - -
}


//square orange light 
textures/nano/sq_light_orange_s_10k
{
	qer_editorimage textures/nano/sq_light_orange.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map textures/nano/sq_light_orange.tga
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/nano/sq_light_orange.tga
		blendfunc add
	}
}

textures/nano/sq_light_orange_s_5k
{
	qer_editorimage textures/nano/sq_light_orange.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map textures/nano/sq_light_orange.tga
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/nano/sq_light_orange.tga
		blendfunc add
	}
}
// source:
// evil lair's Quake 3:Arena texture set 8  
//
textures/nano/e8btrimlight
{
	qer_editorimage textures/nano/e8btrimlight.tga
	q3map_lightimage textures/nano/e8btrimlight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 250
	{
		map textures/nano/e8btrimlight.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8btrimlight.blend.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 1 .25
	}
}

textures/nano/e8clangfloor
{
	//qer_editorimage textures/nano/e8clangfloor.tga
	surfaceparm metalsteps
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/nano/e8clangfloor.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/nano/e8xgirder
{
	surfaceparm alphashadow
	surfaceparm metalsteps
	surfaceparm nomarks
	surfaceparm trans
	cull disable
	nopicmip
	{
		map textures/nano/e8xgirder.tga
		rgbGen identity
		depthWrite
		alphaFunc GE128
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
		tcGen lightmap 
		depthFunc equal
	}
}

textures/nano/e8tmtllight2
{
	qer_editorimage textures/nano/e8tmtllight2.tga
	q3map_lightimage textures/nano/e8tmtllight2.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 2500
	{
		map textures/nano/e8tmtllight2.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8tmtllight2.blend.tga
		blendfunc add
	}
}

textures/nano/evil8_rlight
{
	qer_editorimage textures/nano/e8_rlight.tga
	q3map_lightimage textures/nano/e8_rlight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map textures/nano/e8_rlight.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8_rlight.blend.tga
		blendfunc add
	}
}

// blue light trim 
textures/nano/e8lighttrim_blue
{
	qer_editorimage textures/nano/e8lighttrim.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend.tga
		blendfunc add
	}

}

// blue light trim -- running light
textures/nano/e8lighttrim_blue_75
{
	qer_editorimage textures/nano/e8lighttrim.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.0 0.25
	}

}

textures/nano/e8lighttrim_blue_50
{
	qer_editorimage textures/nano/e8lighttrim.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.20 0.25
	}

}

textures/nano/e8lighttrim_blue_25
{
	qer_editorimage textures/nano/e8lighttrim.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.4 0.25
	}

}

textures/nano/e8lighttrim_blue_00
{
	qer_editorimage textures/nano/e8lighttrim.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.6 0.25
	}

}

// red light trim 
textures/nano/e8lighttrim_red
{
	qer_editorimage textures/nano/e8lighttrim_r.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend.tga
		blendfunc add
	}

}

// red light trim -- running light
textures/nano/e8lighttrim_red_75
{
	qer_editorimage textures/nano/e8lighttrim_r.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.0 0.25
	}

}

textures/nano/e8lighttrim_red_50
{
	qer_editorimage textures/nano/e8lighttrim_r.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.20 0.25
	}

}

textures/nano/e8lighttrim_red_25
{
	qer_editorimage textures/nano/e8lighttrim_r.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.4 0.25
	}

}

textures/nano/e8lighttrim_red_00
{
	qer_editorimage textures/nano/e8lighttrim_r.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend.tga
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.6 0.25
	}

}

// jumppad
textures/nano/e8_jumppad02
{
	q3map_lightimage textures/nano/e8_jumppad02_fx.tga
	surfaceparm metalsteps
	q3map_surfacelight 100
	{
		map textures/nano/e8_jumppad02_fx.tga
		blendfunc add
		tcMod rotate 360
		tcMod stretch sin 1 0.8 1 0.4 
	}
	{
		map textures/nano/e8_jumppad02.tga
		blendfunc add
		rgbGen identity
	}
	{
		map textures/nano/e8_jumppad02.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc gl_dst_color gl_one_minus_dst_alpha
		rgbGen identity
		tcGen lightmap 
	}
}

//shiny e8base_blue
textures/nano/shiny_blue
{
	qer_editorimage textures/nano/e8base_blue.tga
	//q3map_surfacelight 50
	surfaceparm nomarks
	{
		map textures/nano/e8base_blue.tga
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap 
	}
	{
                map textures/nano/envmap.tga
                tcGen environment
                blendfunc gl_dst_color gl_src_alpha
        }
}

//shiny e8base_red
textures/nano/shiny_red
{
	qer_editorimage textures/nano/e8base_red.tga
//	q3map_surfacelight 50
	surfaceparm nomarks
	{
		map textures/nano/e8base_red.tga
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap 
	}
	{
                map textures/nano/envmap.tga
                tcGen environment
                blendfunc gl_dst_color gl_src_alpha
        }
}

//shiny e8_base1
textures/nano/shiny_gray
{
	qer_editorimage textures/nano/e8_base1.tga
//	q3map_surfacelight 50
	surfaceparm nomarks
	{
		map textures/nano/e8_base1.tga
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap 
	}
	{
                map textures/nano/envmap.tga
                tcGen environment
                blendfunc gl_dst_color gl_src_alpha
        }
}

// special decal floor
textures/nano/e8cretefloor01b_decal
{
	qer_editorimage textures/nano/e8cretefloor01b.tga
	polygonOffset
	{
		map textures/nano/e8cretefloor01b.tga
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap 
	}
}

// special decial ceiling
textures/nano/e8support05_decal
{

	qer_editorimage textures/nano/e8support05_r.tga
	polygonOffset
	{
		map textures/nano/e8support05_r.tga
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap 
	}
}

// evillairs white striplight
textures/nano/e6basicstrip_white_500
{
        qer_editorimage textures/nano/e6basicstrip_white.tga
        q3map_surfacelight 500
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/nano/e6basicstrip_white.tga

        }
}

