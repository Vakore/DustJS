attribute vec4 a_position;
attribute vec4 a_color;
attribute vec4 a_boneIDs;
attribute vec4 a_boneWeights;
  
uniform mat4 u_boneTransforms[100];
uniform mat4 u_view;
uniform mat4 u_modelPos;

varying vec4 v_color;

void main() {
  mat4 boneTransform = mat4(1.0, 0.0, 0.0, 0.0,
                            0.0, 1.0, 0.0, 0.0,
                            0.0, 0.0, 1.0, 0.0,
                            0.0, 0.0, 0.0, 1.0);
 
  if(a_boneWeights[0] > 0.0) {
      boneTransform = u_boneTransforms[int(a_boneIDs[0])] * a_boneWeights[0];
      boneTransform += u_boneTransforms[int(a_boneIDs[1])] * a_boneWeights[1];
      boneTransform += u_boneTransforms[int(a_boneIDs[2])] * a_boneWeights[2];
      boneTransform += u_boneTransforms[int(a_boneIDs[3])] * a_boneWeights[3];
  }
  // Multiply the position by the matrix.
  //gl_Position = u_view * u_modelPos * (a_position+(a_boneWeights[1]*a_boneIDs));
  gl_Position = u_view * u_modelPos * (boneTransform * a_position);

  // Pass the color to the fragment shader.
  v_color = a_color;
  //v_color = vec4(a_boneWeights[0], a_boneWeights[1], a_boneWeights[2], 1.0);

}