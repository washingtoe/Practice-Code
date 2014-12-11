class Hole {
  float sz;
  PVector loc;
  Hole(float tx, float ty, float tsz) {
    sz= tsz;
    loc= new PVector(tx, ty);
  }
  void display() {
    fill(0, 0, 0, 100);
    ellipse(loc.x, loc.y, sz, sz);
  }
  boolean eat(Ball other) {
    if (loc.dist(other.loc)<sz/2+other.sz/2) {
      sz++;
      return true;
    } else {
      return false;
    }
  }
}
