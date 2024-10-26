GDPC                `                                                                      
   T   res://.godot/exported/133200997/export-f34b104f3c1bb3e628418137ab8b8a13-marching.scn�      �      Y,�3�dv3���֒��    ,   res://.godot/global_script_class_cache.cfg  @             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�            ：Qt�E�cO���       res://.godot/uid_cache.bin   #      =       s JH��^CM'�+�       res://CanvasLayer.gd        �      �i��&	��65�S�       res://icon.svg  `      �      k����X3Y���f       res://icon.svg.import   �      �       ~������s�'`:       res://marching.gdshader �      5      yy<� ��!�zUϐ��       res://marching.tscn.remap   �      e       �͜-�&A�|�R��N       res://project.binary`#      #      :����t&�,����P            extends CanvasLayer


# Called when the node enters the scene tree for the first time.
var pos = Vector3(0,0,0)
var ang = Vector2(0,0)
func _ready():
	pos = $ColorRect.material.get("shader_parameter/pt")
	ang = $ColorRect.material.get("shader_parameter/a")
	
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


# Called every frame. 'delta' is the elapsed time since the previous frame.
var spd = 0.1
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		elif Input.mouse_mode == Input.MOUSE_MODE_VISIBLE:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

	if  Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		ang += Input.get_last_mouse_velocity()/100.0

	
	
	if Input.is_action_pressed("up"):
		pos.z -= spd
	if Input.is_action_pressed("down"):
		pos.z += spd
	if Input.is_action_pressed("left"):
		pos.y -= spd
	if Input.is_action_pressed("right"):
		pos.y += spd
	if Input.is_action_pressed("rise"):
		pos.x += spd
	if Input.is_action_pressed("fall"):
		pos.x -= spd
	$ColorRect.material.set("shader_parameter/pt", pos)
	$ColorRect.material.set("shader_parameter/a", ang)
             GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bt3h8ca0lnxi8"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                shader_type canvas_item;

float cube(vec3 p, vec3 c, vec3 po){
    return length(max(abs(p-po)-c,0.));
}
float sphere(vec3 p, vec3 c, float r){
    return length(p-c)-r;
}
vec3 view(float x, float y, float lx, float ly,   float xa, float ya){
    float a1 = ( ( (((x-0.5)*2.0)*(xa/2.0)) + lx ) /360.0)*2.0*PI ;
    float a2 = (3.0*PI/2.0) +  ( ( (((y-0.5)*2.0)*(ya/2.0)) + ly) /360.0 )*2.0*PI;
    return vec3(cos(a1)*sin(a2), sin(a1), cos(a1)*cos(a2));
}

uniform vec3 pt = vec3(8.568, -0.640, 3.816);
uniform vec2 a = vec2(0.);

uniform vec3 ci = vec3( 0., 0., 0. ); 
uniform float si = 1.65;

uniform vec3 cb = vec3( 0., 0., 0. );
uniform vec3 cbsi = vec3(1.); 



const float pi = 3.14159265359;


void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	
	
	vec3 d = pt;
    
    //d.z += sin(u_time)/3.0;
    //d.y += -c(m.x);
    vec3 color = vec3(0.);
    for (int i = 0; i< 50; i++){
        //float f = sdTorus(pt, vec2(0.0));
        //float f = sphere(d, ci, si);
        float f = min(cube(d, cbsi, cb) , sphere(d, ci, si));
        
        float b = 1152./648.;
        d = d + ( f * view(UV.x, UV.y, a.x, a.y, 45.0*b, 45.0));
        
        if (f<0.044){
			//COLOR.r = sphere( vec3(d.x+1.0, d.y, d.z) , ci, si);
            //COLOR.g = sphere( vec3(d.x, d.y+1.0, d.z) , ci, si);
            //COLOR.b = sphere( vec3(d.x, d.y, d.z+1.0) , ci, si);
			
            COLOR.r = cube( vec3(d.x+1.0, d.y, d.z) , cbsi, cb);
            COLOR.g = cube( vec3(d.x, d.y+1.0, d.z) , cbsi, cb);
            COLOR.b = cube( vec3(d.x, d.y, d.z+1.0) , cbsi, cb);
            //color.r = 1.0;
            break;
        }
        
    }
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    shader    shader_parameter/pt    shader_parameter/a    shader_parameter/ci    shader_parameter/si    shader_parameter/cb    shader_parameter/cbsi    script 	   _bundled       Script    res://CanvasLayer.gd ��������   Shader    res://marching.gdshader ��������      local://ShaderMaterial_piuku           local://PackedScene_kmpiu �         ShaderMaterial                      d;_@R���&�@   
       �Q|�         ?R��?�Ǿ   )   �(\����?      �z4?ףp���      )\O?H�Z?33s?	         PackedScene    
      	         names "   	      Node2D    Node    CanvasLayer    script 
   ColorRect 	   material    offset_right    offset_bottom    color    	   variants                                �D     "D                 �?      node_count             nodes        ��������       ����                      ����                           ����                                     conn_count              conns               node_paths              editable_instances              version       	      RSRC               [remap]

path="res://.godot/exported/133200997/export-f34b104f3c1bb3e628418137ab8b8a13-marching.scn"
           list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              �VBc�3o4   res://icon.svgΨ���}u   res://marching.tscn   ECFG      application/config/name         marching   application/run/main_scene         res://marching.tscn    application/config/features$   "         4.2    Forward Plus       application/config/icon         res://icon.svg     input/up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script      
   input/down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script      
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script      
   input/rise�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script      
   input/fall�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility             