#include "ofApp.h"
#include "MyGuiView.h"

MyGuiView *myGuiViewController;

//--------------------------------------------------------------
void ofApp::setup(){	
    ofxAccelerometer.setup();
}

//--------------------------------------------------------------
void ofApp::update(){
    if (ofGetFrameNum()==0) {
        myGuiViewController = [[MyGuiView alloc] initWithNibName:@"MyGuiView" bundle:nil];
        [ofxiPhoneGetUIWindow() addSubview:myGuiViewController.view];
    }
    
}

//--------------------------------------------------------------
void ofApp::draw(){
    ofBackground(0, 0, 0);
    ofColor(255,0,0);
    ofCircle(320.0/2, 568.0/2, -ofxAccelerometer.getForce().z*100);
    
    // printf("%f\n", -ofxAccelerometer.getForce().z*100);
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp:: touchInput(float intensity){
    // printf("HIT!!: x-%d, y-%d, f:%f\n", ofGetMouseX(), ofGetMouseY(), intensity);
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
