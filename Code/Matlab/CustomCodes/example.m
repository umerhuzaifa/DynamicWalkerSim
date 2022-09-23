clear all
close all
clc

import org.opensim.modeling.*


model = Model();
body = Body('body', 1.0, Vec3(0), Inertia(0));
body.attachGeometry(Sphere(0.1))

joint  = SliderJoint('joint', model.geGround(), body);
coord = joint.updCoordinate();
coord.setName('translation');

model.addJoint(joint);