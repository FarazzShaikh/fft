/**

  for x, N -> N - 1:
    for y, M -> M - 1:
      let a = (x * u) / N
      let b = (y * u) / M
      inp[x][y] * exp(-2 * PI * i * (a + b))


*/

#define PI = 3.14

//                👇  float f = gln_rand(pos);
float fft(float f, vec2 pos, vec2 resolution) {

  float N = resolution.x;
  float M = resolution.y;
  float i = 1; // WTF is this? Is it a constant?

  float result;

  for (float x = 0.0; x < N; x++) {
    for (float y = 0.0; y < M; y++) {

      float a = (x * pos.u) / N;
      float b = (y * pos.v) / M;

      float basis = exp(-2.0 * PI * i * (a + b));

      result = f * basis;
    }
  }

  return result;
}

float ifft(float f, vec2 pos, vec2 resolution) {

  float N = resolution.x;
  float M = resolution.y;
  float i = 1;

  float result;

  for (float x = 0.0; x < N; x++) {
    for (float y = 0.0; y < M; y++) {

      float a = (x * pos.u) / N;
      float b = (y * pos.v) / M;

      float basis = exp(2.0 * PI * i * (a + b));

      result = f * basis;
    }
  }

  return result;
}