/*
 * Copyright 2007 (c) Andre Stubbe, http://www.andrestubbe.com
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */

package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import org.papervision3d.cameras.Camera3D;
	import org.papervision3d.objects.Plane;
	import org.papervision3d.materials.ColorMaterial;
	import org.papervision3d.scenes.MovieScene3D;

	[SWF(width='400',height='400',backgroundColor='0x000000',frameRate='30')]
	
	public class ExampleTransformationRotate extends Sprite
	{
		private var container: Sprite;
		private var scene: MovieScene3D;
		private var camera: Camera3D;
		private var plane:Plane;

		public function ExampleTransformationRotate()
		{
			container = new Sprite;
			container.x = 200;
			container.y = 200;
			addChild( container );
									
			scene = new MovieScene3D( container );
			
			camera = new Camera3D();
			camera.z = -500;
			camera.zoom = 5;
			
			// create red material
			var material:ColorMaterial = new ColorMaterial();
			material.doubleSided = true;
			material.fillColor = 0xFF0000;
			material.fillAlpha = 1.0;
			
			// create a plane
			plane = new Plane( material, 128, 128, 1, 1 );

			// register plane
			scene.addChild( plane );

			stage.addEventListener( Event.ENTER_FRAME, onEnterFrame );

		}

		private function onEnterFrame( event: Event ): void
		{

			// rotate the plane
			plane.rotationX += 4.35;
			plane.rotationY += 6.55;
			plane.rotationZ += 0.55;
			
			// render the scene
			scene.renderCamera( camera );
	
		}


	}
	
}

