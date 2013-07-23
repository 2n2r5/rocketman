firstShape = 3; //side count first shape
fsSide=30; //Radius of first shape

secondShape = 6; //side count second shape
ssSide = 30; //Radius of second shape

wallWidth = 2; //thickness of walls
distanceApart = 40; // distance between shapes 
shapeHeight = 1; // How thick to make each shape before it starts to morph

{
rocketMan();
}

module rocketMan(){
	
	difference(){

		hull(){
		linear_extrude(height=shapeHeight,convexity=10) circle(r=fsSide, $fn=firstShape, center=true);
		#translate([0,0,-(distanceApart+shapeHeight)]) linear_extrude(height=shapeHeight,convexity=10) circle(r=ssSide, $fn=secondShape,center=true);

		}
		hull(){
		linear_extrude(height=shapeHeight,convexity=10) circle(r=fsSide-wallWidth, $fn=firstShape, center=true);
		translate([0,0,-(distanceApart+shapeHeight)]) linear_extrude(height=shapeHeight,convexity=10) circle(r=ssSide-wallWidth, $fn=secondShape,center=true);

		}
		


	}
}