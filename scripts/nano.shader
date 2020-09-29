// shaders for Nano

// -------------------- Sky box
// environment map "Top of the Heap" by Mighty Pete
textures/nano/top-of-the-heap
{
      qer_editorimage env/nano/top-of-the-heap/top-of-the-heap-small
      surfaceparm noimpact
      surfaceparm nolightmap
      surfaceparm sky
      //q3map_sun   .5 .37 .22 300 265 15
      q3map_surfacelight 50

     skyparms env/nano/top-of-the-heap/top-of-the-heap512 - -
}

// -------------------- Particle dust
// from Uncreation by Who-[Soup]
// edited as blue and red version
textures/nano/dust_shader_blue
{
        cull none
        entityMergable
	qer_editorimage textures/nano/dust_blue
        {
                map textures/nano/dust_blue
                blendFunc blend
                rgbGen          vertex
                alphaGen        vertex
        }
}

textures/nano/dust_shader_red
{
        cull none
        entityMergable
	qer_editorimage textures/nano/dust_red
        {
                map textures/nano/dust_red
                blendFunc blend
                rgbGen          vertex
                alphaGen        vertex
        }
}

// flare by Ingar
textures/nano/flare_orange
{
	cull none
        entityMergable
	qer_editorimage textures/nano/flare02
        {
                map textures/nano/flare02
                blendFunc blend
                rgbGen          vertex
                alphaGen        vertex
	}
}

// electric spark, from the map Tremor
textures/nano/spark1_s
{
	cull none
        entityMergable
	qer_editorimage textures/nano/spark1
        {
                map textures/nano/spark1
                blendFunc blend
                rgbGen          vertex
                alphaGen        vertex
	}
}

// orange light
textures/nano/sq_light_orange_s_10k
{
	qer_editorimage textures/nano/sq_light_orange
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map textures/nano/sq_light_orange
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/nano/sq_light_orange
		blendfunc add
	}
}
// black, no lightmap
textures/nano/black
{
        qer_editorimage textures/nano/black
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map $whiteimage
                rgbGen const ( 0 0 0 )
        }
}
// source:
// evil lair's Quake 3:Arena texture set 8  
//
textures/nano/e8btrimlight
{
	qer_editorimage textures/nano/e8btrimlight
	q3map_lightimage textures/nano/e8btrimlight.blend
	surfaceparm nomarks
	q3map_surfacelight 250
	{
		map textures/nano/e8btrimlight
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8btrimlight.blend
		blendfunc add
		rgbGen wave sin 0.5 0.5 1 .25
	}
}

textures/nano/e8clangfloor
{
	//qer_editorimage textures/nano/e8clangfloor
	surfaceparm metalsteps
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/nano/e8clangfloor
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
		map textures/nano/e8xgirder
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
	qer_editorimage textures/nano/e8tmtllight2
	q3map_lightimage textures/nano/e8tmtllight2.blend
	surfaceparm nomarks
	q3map_surfacelight 2500
	{
		map textures/nano/e8tmtllight2
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8tmtllight2.blend
		blendfunc add
		rgbGen wave sawtooth .6 .1 0 9
	}
}

textures/nano/e8tmtllight2_broken
{
	qer_editorimage textures/nano/e8tmtllight2
	q3map_lightimage textures/nano/e8tmtllight2.blend
	surfaceparm nomarks
	q3map_surfacelight 2500
	{
		map textures/nano/e8tmtllight2
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8tmtllight2.blend
		blendfunc add
		rgbGen wave sawtooth 0.0 1.0 0 0.5
	}
}
		
textures/nano/evil8_rlight
{
	qer_editorimage textures/nano/e8_rlight
	q3map_lightimage textures/nano/e8_rlight.blend
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map textures/nano/e8_rlight
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8_rlight.blend
		blendfunc add
	}
}

// blue light trim 
textures/nano/e8lighttrim_blue
{
	qer_editorimage textures/nano/e8lighttrim
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend
		blendfunc add
		//rgbGen wave sawtooth .6 .1 0 7
		rgbGen wave sawtooth .6 .2 0 8
	}

}

// blue light trim -- running light
textures/nano/e8lighttrim_blue_75
{
	qer_editorimage textures/nano/e8lighttrim
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.0 0.25
	}

}

textures/nano/e8lighttrim_blue_50
{
	qer_editorimage textures/nano/e8lighttrim
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.20 0.25
	}

}

textures/nano/e8lighttrim_blue_25
{
	qer_editorimage textures/nano/e8lighttrim
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.4 0.25
	}

}

textures/nano/e8lighttrim_blue_00
{
	qer_editorimage textures/nano/e8lighttrim
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim.blend
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.6 0.25
	}

}

// red light trim 
textures/nano/e8lighttrim_red
{
	qer_editorimage textures/nano/e8lighttrim_r
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend
		blendfunc add
		//rgbGen wave sawtooth .6 .1 0 7
		rgbGen wave sawtooth .6 .2 0 8
	}

}

// red light trim -- running light
textures/nano/e8lighttrim_red_75
{
	qer_editorimage textures/nano/e8lighttrim_r
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.0 0.25
	}

}

textures/nano/e8lighttrim_red_50
{
	qer_editorimage textures/nano/e8lighttrim_r
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.20 0.25
	}

}

textures/nano/e8lighttrim_red_25
{
	qer_editorimage textures/nano/e8lighttrim_r
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.4 0.25
	}

}

textures/nano/e8lighttrim_red_00
{
	qer_editorimage textures/nano/e8lighttrim_r
	surfaceparm nomarks
	q3map_surfacelight 400
	{
		map textures/nano/e8lighttrim_r
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/nano/e8lighttrim_r.blend
		blendfunc add
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sin 0.0 1.0 0.6 0.25
	}

}

// jumppad
textures/nano/e8_jumppad02
{
	q3map_lightimage textures/nano/e8_jumppad02_fx
	surfaceparm metalsteps
	q3map_surfacelight 100
	{
		map textures/nano/e8_jumppad02_fx
		blendfunc add
		tcMod rotate 360
		tcMod stretch sin 1 0.8 1 0.4 
	}
	{
		map textures/nano/e8_jumppad02
		blendfunc add
		rgbGen identity
	}
	{
		map textures/nano/e8_jumppad02
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
	qer_editorimage textures/nano/e8base_blue
	//q3map_surfacelight 50
	surfaceparm nomarks
	{
		map textures/nano/e8base_blue
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap 
	}
	{
                map textures/nano/envmap
                tcGen environment
                blendfunc gl_dst_color gl_src_alpha
        }
}

//shiny e8base_red
textures/nano/shiny_red
{
	qer_editorimage textures/nano/e8base_red
//	q3map_surfacelight 50
	surfaceparm nomarks
	{
		map textures/nano/e8base_red
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap 
	}
	{
                map textures/nano/envmap
                tcGen environment
                blendfunc gl_dst_color gl_src_alpha
        }
}

//shiny e8_base1
textures/nano/shiny_gray
{
	qer_editorimage textures/nano/e8_base1
//	q3map_surfacelight 50
	surfaceparm nomarks
	{
		map textures/nano/e8_base1
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap 
	}
	{
                map textures/nano/envmap
                tcGen environment
                blendfunc gl_dst_color gl_src_alpha
        }
}

// evillairs e6 grate
textures/nano/e6xgratebasic_b
{
	qer_editorimage textures/nano/e6xgratebasic_b
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm metalsteps
	{
		map textures/nano/e6xgratebasic_b
		alphafunc GE128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

// special decal floor
textures/nano/e8cretefloor01b_decal
{
	qer_editorimage textures/nano/e8cretefloor01b
	polygonOffset
	{
		map textures/nano/e8cretefloor01b
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap 
	}
}

textures/nano/wsupport12
{
	q3map_surfacelight 250
	{
		map textures/nano/wsupport12
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/nano/wsupport12
		blendfunc add
	}
}

textures/nano/clipslick
{
	qer_editorimage textures/common/slick
        qer_trans 0.50
        surfaceparm nodraw
        surfaceparm nolightmap
        surfaceparm nomarks
        surfaceparm trans
	surfaceparm nonsolid
	surfaceparm playerclip
        surfaceparm slick
}

// trembru from Karith
// blend by Ingar
textures/nano/trembru_light
{
	qer_editorimage textures/nano/trembru
	surfaceparm nolightmap
	q3map_surfacelight 500
	{
		map textures/nano/trembru
	}
	{
		map textures/nano/trembru.blend
		blendfunc add
	}

}

textures/nano/trembru_tremble
{
	qer_editorimage textures/nano/trembru
	surfaceparm nolightmap
	q3map_surfacelight 500
	{
		map textures/nano/trembru
	}
	{
		map textures/nano/trembru.blend
		rgbGen wave sawtooth 0.6 0.4 0 12
		blendfunc add
	}

}

// KhalsaCola by Supertanker
// texture by supertanker, edited by Ingar, granger image by Akele
// blend by Ingar
textures/nano/khalsacola_light
{
	qer_editorimage textures/nano/khalsacola
	surfaceparm nolightmap
	q3map_surfacelight 500
	{
		map textures/nano/khalsacola
	}
	{
		map textures/nano/khalsacola.blend
		// rgbGen wave <func> <base> <amp><phase> <freq>
		rgbGen wave sawtooth 0.6 0.4 0 12
		blendfunc add
	}

}


// shiny shaders
// inspired by shaders from ATCS3 by Lava_Croft
textures/nano/e8_mtlwall1_shiny
{
        qer_editorimage textures/nano/e8_mtlwall1

        {
                map textures/nano/trem2ref
                tcGen environment
        }
        {
                map textures/nano/e8_mtlwall1_mask
                blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        }
        {
                map $lightmap
                blendFunc GL_DST_COLOR GL_ZERO
        }
}

textures/nano/e8_mtlwall2_shiny
{
        qer_editorimage textures/nano/e8_mtlwall2

        {
                map textures/nano/trem2ref
                tcGen environment
        }
        {
                map textures/nano/e8_mtlwall2_mask
                blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        }
        {
                map $lightmap
                blendFunc GL_DST_COLOR GL_ZERO
        }
}

// special decial ceiling
textures/nano/e8support05_decal
{
	qer_editorimage textures/nano/e8support05_r
	polygonOffset
        {
                map textures/nano/trem2ref
                tcGen environment
        }
        {
                map textures/nano/e8support05_r_mask
                blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        }
        {
                map $lightmap
                blendFunc GL_DST_COLOR GL_ZERO
	}
}

textures/nano/e8support05_shiny
{
        qer_editorimage textures/nano/e8support05
        {
                map textures/nano/trem2ref
                tcGen environment
        }
        {
                map textures/nano/e8support05_mask
                blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        }
        {
                map $lightmap
                blendFunc GL_DST_COLOR GL_ZERO
        }
}

// vertex lighted trembru tin cans
// (too dark)
//models/mapobjects/nano/can/can
//{
//	qer_editorimage models/mapobjects/nano/can/can
//	{
//		map models/mapobjects/nano/can/can
//		rgbGen vertex
//	}
//}
