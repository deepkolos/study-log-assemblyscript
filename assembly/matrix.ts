const tmpF32x4 = new Float32Array(4);
const tmpF32x4Ptr = tmpF32x4.dataStart;
let tmpF32: f32 = 0;
// prettier-ignore
export class Matrix4 {
  elements: Float32Array;

  constructor() {
    this.elements = new Float32Array(16);
    this.identity();
  }

  //#region setter
  set(
    n11: f32, n12: f32, n13: f32, n14: f32, 
    n21: f32, n22: f32, n23: f32, n24: f32, 
    n31: f32, n32: f32, n33: f32, n34: f32, 
    n41: f32, n42: f32, n43: f32, n44: f32,
  ): Matrix4 {
    const te = this.elements;

    te[0] = n11; te[4] = n12; te[8] = n13;  te[12] = n14;
    te[1] = n21; te[5] = n22; te[9] = n23;  te[13] = n24;
    te[2] = n31; te[6] = n32; te[10] = n33; te[14] = n34;
    te[3] = n41; te[7] = n42; te[11] = n43; te[15] = n44;

    return this;
  }

  identity(): Matrix4 {
		this.set(
			1, 0, 0, 0,
			0, 1, 0, 0,
			0, 0, 1, 0,
			0, 0, 0, 1
		);

    return this;
	}

  clone() {
		return new Matrix4().copy(this);
	}

  fromArray(array: Float32Array, offset: i32 = 0): Matrix4 {
    const te = this.elements;
		const me = array;

		te[0]  = me[0 + offset];   te[1] = me[1 + offset];   te[2] = me[2 + offset];   te[3] = me[3 + offset];
		te[4]  = me[4 + offset];   te[5] = me[5 + offset];   te[6] = me[6 + offset];   te[7] = me[7 + offset];
		te[8]  = me[8 + offset];   te[9] = me[9 + offset];  te[10] = me[10 + offset]; te[11] = me[11 + offset];
		te[12] = me[12 + offset]; te[13] = me[13 + offset]; te[14] = me[14 + offset]; te[15] = me[15 + offset];

		return this;
	}

  // 感觉和fromArray有点重复
  copy(m: Matrix4): Matrix4 {
		return this.fromArray(m.elements);
	}

  copyPosition( m: Matrix4 ): Matrix4 {
		const te = this.elements, me = m.elements;

		te[12] = me[12];
		te[13] = me[13];
		te[14] = me[14];

		return this;
	}

	setFromMatrix3(m: Matrix4): Matrix4 {
		const me = m.elements;

		this.set(
			me[ 0 ], me[ 3 ], me[ 6 ], 0,
			me[ 1 ], me[ 4 ], me[ 7 ], 0,
			me[ 2 ], me[ 5 ], me[ 8 ], 0,
			0, 0, 0, 1
		);

		return this;
	}
  //#endregion

  //#region operation
  multiply(m: Matrix4 ): Matrix4 {
		return this.multiplyMatrices(this, m);
	}

	premultiply(m: Matrix4 ): Matrix4 {
		return this.multiplyMatrices(m, this);
	}

	multiplyMatrices(a: Matrix4, b: Matrix4) {
		const ae = a.elements;
    const be = b.elements;
    const te = this.elements;

    //#region simd start 最初版
    tmpF32x4[0] = be[0];
    tmpF32x4[1] = be[4];
    tmpF32x4[2] = be[8];
    tmpF32x4[3] = be[12];
    const r0 = v128.load(tmpF32x4Ptr);
    tmpF32x4[0] = be[1];
    tmpF32x4[1] = be[5];
    tmpF32x4[2] = be[9];
    tmpF32x4[3] = be[13];
    const r1 = v128.load(tmpF32x4Ptr);
    tmpF32x4[0] = be[2];
    tmpF32x4[1] = be[6];
    tmpF32x4[2] = be[10];
    tmpF32x4[3] = be[14];
    const r2 = v128.load(tmpF32x4Ptr);
    tmpF32x4[0] = be[3];
    tmpF32x4[1] = be[7];
    tmpF32x4[2] = be[11];
    tmpF32x4[3] = be[15];
    const r3 = v128.load(tmpF32x4Ptr);

    let l = f32x4.splat(ae[0]);
    let o = f32x4.mul(l, r0);
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[4]), r1));
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[8]), r2));
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[12]), r3));
    v128.store(tmpF32x4Ptr, o);
    te[0] = tmpF32x4[0];
    te[4] = tmpF32x4[1];
    te[8] = tmpF32x4[2];
    te[12] = tmpF32x4[3];
    //#endregion

    //#region
    o = f32x4.mul(f32x4.splat(ae[1]), r0);
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[5]), r1));
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[9]), r2));
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[13]), r3));
    v128.store(tmpF32x4Ptr, o);
    te[1] = tmpF32x4[0];
    te[5] = tmpF32x4[1];
    te[9] = tmpF32x4[2];
    te[13] = tmpF32x4[3];
    //#endregion

    //#region
    o = f32x4.mul(f32x4.splat(ae[2]), r0);
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[6]), r1));
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[10]), r2));
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[14]), r3));
    v128.store(tmpF32x4Ptr, o);
    te[2] = tmpF32x4[0];
    te[6] = tmpF32x4[1];
    te[10] = tmpF32x4[2];
    te[14] = tmpF32x4[3];
    //#endregion

    //#region
    o = f32x4.mul(f32x4.splat(ae[3]), r0);
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[7]), r1));
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[11]), r2));
    o = f32x4.add(o, f32x4.mul(f32x4.splat(ae[15]), r3));
    v128.store(tmpF32x4Ptr, o);
    te[3] = tmpF32x4[0];
    te[7] = tmpF32x4[1];
    te[11] = tmpF32x4[2];
    te[15] = tmpF32x4[3];
    //#endregion

		return this;
	}

	multiplyScalar( s: f32 ): Matrix4 {
		const ptr = this.elements.dataStart;

		// te[ 0 ] *= s; te[ 4 ] *= s; te[ 8 ] *= s; te[ 12 ] *= s;
		// te[ 1 ] *= s; te[ 5 ] *= s; te[ 9 ] *= s; te[ 13 ] *= s;
		// te[ 2 ] *= s; te[ 6 ] *= s; te[ 10 ] *= s; te[ 14 ] *= s;
		// te[ 3 ] *= s; te[ 7 ] *= s; te[ 11 ] *= s; te[ 15 ] *= s;

    const l = f32x4.splat(s);
    v128.store(ptr, f32x4.mul(l, v128.load(ptr, 0)), 0);
    v128.store(ptr, f32x4.mul(l, v128.load(ptr, 16)), 16);
    v128.store(ptr, f32x4.mul(l, v128.load(ptr, 32)), 32);
    v128.store(ptr, f32x4.mul(l, v128.load(ptr, 48)), 48);

		return this;
	}

  determinant_no_simd() {
		const te = this.elements;

		const n11 = te[ 0 ], n12 = te[ 4 ], n13 = te[ 8 ], n14 = te[ 12 ];
		const n21 = te[ 1 ], n22 = te[ 5 ], n23 = te[ 9 ], n24 = te[ 13 ];
		const n31 = te[ 2 ], n32 = te[ 6 ], n33 = te[ 10 ], n34 = te[ 14 ];
		const n41 = te[ 3 ], n42 = te[ 7 ], n43 = te[ 11 ], n44 = te[ 15 ];

		//TODO: make this more efficient
		//( based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm )

		return (
			n41 * (
				+ n14 * n23 * n32  //
				 - n13 * n24 * n32 //
				 - n14 * n22 * n33 //
				 + n12 * n24 * n33 //
				 + n13 * n22 * n34 // 
				 - n12 * n23 * n34 //
			) +
			n42 * (
				+ n11 * n23 * n34  //
				 - n11 * n24 * n33 //
				 + n14 * n21 * n33 //
				 - n13 * n21 * n34 // 
				 + n13 * n24 * n31
				 - n14 * n23 * n31
			) +
			n43 * (
				+ n11 * n24 * n32
				 - n11 * n22 * n34 //
				 - n14 * n21 * n32
				 + n12 * n21 * n34 //
				 + n14 * n22 * n31
				 - n12 * n24 * n31
			) +
			n44 * (
				- n13 * n22 * n31
				 - n11 * n23 * n32
				 + n11 * n22 * n33
				 + n13 * n21 * n32
				 - n12 * n21 * n33
				 + n12 * n23 * n31
			)
		);
	}

  determinant() {
		const te = this.elements;

		// const n11 = te[ 0 ], n12 = te[ 4 ], n13 = te[ 8 ], n14 = te[ 12 ];
		// const n21 = te[ 1 ], n22 = te[ 5 ], n23 = te[ 9 ], n24 = te[ 13 ];
		// const n31 = te[ 2 ], n32 = te[ 6 ], n33 = te[ 10 ], n34 = te[ 14 ];
		// const n41 = te[ 3 ], n42 = te[ 7 ], n43 = te[ 11 ], n44 = te[ 15 ];

		// //TODO: make this more efficient
		// //( based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm )

    // // 复用部分乘法结果
    // // m0
    // const n14n23 = n14 * n23;
    // const n12n24 = n12 * n24;
    // const n13n22 = n13 * n22;
    // const n11n23 = n11 * n23;
    // // m1
    // const n13n24 = n13 * n24;
    // const n14n22 = n14 * n22;
    // const n12n23 = n12 * n23;
    // const n13n21 = n13 * n21;
    // // m2
    // const n14n21 = n14 * n21;
    // const n12n21 = n12 * n21;
    // // m3
    // const n11n24 = n11 * n24;
    // const n11n22 = n11 * n22;
    // // s0
    // const n14n23n13n24 = n14n23 - n13n24;
    // const n12n24n14n22 = n12n24 - n14n22;
    // const n13n22n12n23 = n13n22 - n12n23;
    // const n11n23n13n21 = n11n23 - n13n21;
    // // s1
    // const n14n21n11n24 = n14n21 - n11n24;
    // const n12n21n11n22 = n12n21 - n11n22;
    // // m4
    // const n14n23n13n24n32 = n14n23n13n24 * n32;
    // const n12n24n14n22n33 = n12n24n14n22 * n33;
    // const n13n22n12n23n34 = n13n22n12n23 * n34;
    // const n11n23n13n21n34 = n11n23n13n21 * n34;
    // // m5
    // const n14n23n13n24n31 = n14n23n13n24 * n31;
    // const n12n24n14n22n31 = n12n24n14n22 * n31;
    // const n13n22n12n23n31 = n13n22n12n23 * n31;
    // const n11n23n13n21n32 = n11n23n13n21 * n32;
    // // m6
    // const n14n21n11n24n33 = n14n21n11n24 * n33;
    // const n12n21n11n22n34 = n12n21n11n22 * n34;
    // // m7
    // const n14n21n11n24n32 = n14n21n11n24 * n32;
    // const n12n21n11n22n33 = n12n21n11n22 * n33;

    let l: v128, r: v128, m0: v128, m1: v128, m2: v128, m3: v128, m4: v128, m5: v128, m6: v128, m7: v128, s0: v128, s1: v128;
    //#region 
    //#region 
    tmpF32x4[0] = te[12];
    tmpF32x4[1] = te[4];
    tmpF32x4[2] = te[8];
    tmpF32x4[3] = te[0];
    l = v128.load(tmpF32x4Ptr);
    tmpF32x4[0] = te[9];
    tmpF32x4[1] = te[13];
    tmpF32x4[2] = te[5];
    tmpF32x4[3] = te[9];
    r = v128.load(tmpF32x4Ptr);
    m0 = f32x4.mul(l, r);
    //#endregion

    //#region 
    tmpF32x4[0] = te[8];
    tmpF32x4[1] = te[12];
    tmpF32x4[2] = te[4];
    tmpF32x4[3] = te[8];
    l = v128.load(tmpF32x4Ptr);
    tmpF32x4[0] = te[13];
    tmpF32x4[1] = te[5];
    tmpF32x4[2] = te[9];
    tmpF32x4[3] = te[1];
    r = v128.load(tmpF32x4Ptr);
    m1 = f32x4.mul(l, r);
    //#endregion

    //#region 
    tmpF32x4[0] = te[12];
    tmpF32x4[1] = te[4];
    l = v128.load(tmpF32x4Ptr);
    r = f32x4.splat(te[1]);
    m2 = f32x4.mul(l, r);
    //#endregion

    //#region
    l = f32x4.splat(te[0]);
    tmpF32x4[0] = te[13];
    tmpF32x4[1] = te[5];
    r = v128.load(tmpF32x4Ptr);
    m3 = f32x4.mul(l, r);
    //#endregion

    s0 = f32x4.sub(m0, m1);
    s1 = f32x4.sub(m2, m3);
    //#region m4 m5 m6 m7
    r = f32x4.splat(te[14]);
    f32x4.replace_lane(r, 0, te[6]);
    f32x4.replace_lane(r, 1, te[10]);
    m4 = f32x4.mul(s0, r);

    r = f32x4.splat(te[14]);
    f32x4.replace_lane(r, 3, te[6]);
    m5 = f32x4.mul(s0, r);

    r = f32x4.splat(te[10]);
    f32x4.replace_lane(r, 1, te[14]);
    m6 = f32x4.mul(s1, r);
    
    r = f32x4.splat(te[6]);
    f32x4.replace_lane(r, 1, te[10]);
    m7 = f32x4.mul(s1, r);
    //#endregion
    
    tmpF32x4[0] = te[3];
    tmpF32x4[1] = te[7];
    tmpF32x4[2] = te[11];
    tmpF32x4[3] = te[15];
    l = v128.load(tmpF32x4Ptr);
    //#endregion

    v128.store(tmpF32x4Ptr, m4);
    tmpF32 = tmpF32x4[3];
    f32x4.replace_lane(r, 0, tmpF32x4[0] + tmpF32x4[1] + tmpF32x4[2]);
    v128.store(tmpF32x4Ptr, m5);
    f32x4.replace_lane(r, 1, tmpF32 + f32x4.extract_lane(m6, 0) - tmpF32x4[0]);
    f32x4.replace_lane(r, 2, -f32x4.extract_lane(m7, 0) + f32x4.extract_lane(m6, 1) - tmpF32x4[1]);
    f32x4.replace_lane(r, 3, -tmpF32x4[2] - tmpF32x4[3] - f32x4.extract_lane(m7, 1));
    v128.store(tmpF32x4Ptr, f32x4.mul(l, r));

    return tmpF32x4[0] + tmpF32x4[1] + tmpF32x4[2] + tmpF32x4[3];

    // return (
		// 	n41 * (n14n23n13n24n32 + n12n24n14n22n33 + n13n22n12n23n34) +
		// 	n42 * (n11n23n13n21n34 + n14n21n11n24n33	- n14n23n13n24n31) +
		// 	n43 * (-n14n21n11n24n32 + n12n21n11n22n34 - n12n24n14n22n31) +
		// 	n44 * (-n13n22n12n23n31 - n11n23n13n21n32 - n12n21n11n22n33)
		// );

		// return (
		// 	n41 * (
		// 		+ n14 * n23 * n32  //
		// 		 - n13 * n24 * n32 //
		// 		 - n14 * n22 * n33 //
		// 		 + n12 * n24 * n33 //
		// 		 + n13 * n22 * n34 // 
		// 		 - n12 * n23 * n34 //
		// 	) +
		// 	n42 * (
		// 		+ n11 * n23 * n34  //
		// 		 - n11 * n24 * n33 //
		// 		 + n14 * n21 * n33 //
		// 		 - n13 * n21 * n34 // 
		// 		 + n13 * n24 * n31
		// 		 - n14 * n23 * n31
		// 	) +
		// 	n43 * (
		// 		+ n11 * n24 * n32
		// 		 - n11 * n22 * n34 //
		// 		 - n14 * n21 * n32
		// 		 + n12 * n21 * n34 //
		// 		 + n14 * n22 * n31
		// 		 - n12 * n24 * n31
		// 	) +
		// 	n44 * (
		// 		- n13 * n22 * n31
		// 		 - n11 * n23 * n32
		// 		 + n11 * n22 * n33
		// 		 + n13 * n21 * n32
		// 		 - n12 * n21 * n33
		// 		 + n12 * n23 * n31
		// 	)
		// );
	}

  transpose(): Matrix4 {
		const te = this.elements;

		tmpF32 = te[1]; te[1] = te[4]; te[4] = tmpF32;
		tmpF32 = te[2]; te[2] = te[8]; te[8] = tmpF32;
		tmpF32 = te[6]; te[6] = te[9]; te[9] = tmpF32;

		tmpF32 = te[3];  te[3]  = te[12]; te[12] = tmpF32;
		tmpF32 = te[7];  te[7]  = te[13]; te[13] = tmpF32;
		tmpF32 = te[11]; te[11] = te[14]; te[14] = tmpF32;

		return this;
	}

  invert_no_simd(): Matrix4 {
		// based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm
		const te = this.elements,

			n11 = te[ 0 ], n21 = te[ 1 ], n31 = te[ 2 ], n41 = te[ 3 ],
			n12 = te[ 4 ], n22 = te[ 5 ], n32 = te[ 6 ], n42 = te[ 7 ],
			n13 = te[ 8 ], n23 = te[ 9 ], n33 = te[ 10 ], n43 = te[ 11 ],
			n14 = te[ 12 ], n24 = te[ 13 ], n34 = te[ 14 ], n44 = te[ 15 ],

			t11 = n23 * n34 * n42 - n24 * n33 * n42 + n24 * n32 * n43 - n22 * n34 * n43 - n23 * n32 * n44 + n22 * n33 * n44,
			t12 = n14 * n33 * n42 - n13 * n34 * n42 - n14 * n32 * n43 + n12 * n34 * n43 + n13 * n32 * n44 - n12 * n33 * n44,
			t13 = n13 * n24 * n42 - n14 * n23 * n42 + n14 * n22 * n43 - n12 * n24 * n43 - n13 * n22 * n44 + n12 * n23 * n44,
			t14 = n14 * n23 * n32 - n13 * n24 * n32 - n14 * n22 * n33 + n12 * n24 * n33 + n13 * n22 * n34 - n12 * n23 * n34;

		const det = n11 * t11 + n21 * t12 + n31 * t13 + n41 * t14;

		if ( det === 0 ) return this.set( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 );

		const detInv = 1 / det;

		te[ 0 ] = t11 * detInv;
		te[ 1 ] = ( n24 * n33 * n41 - n23 * n34 * n41 - n24 * n31 * n43 + n21 * n34 * n43 + n23 * n31 * n44 - n21 * n33 * n44 ) * detInv;
		te[ 2 ] = ( n22 * n34 * n41 - n24 * n32 * n41 + n24 * n31 * n42 - n21 * n34 * n42 - n22 * n31 * n44 + n21 * n32 * n44 ) * detInv;
		te[ 3 ] = ( n23 * n32 * n41 - n22 * n33 * n41 - n23 * n31 * n42 + n21 * n33 * n42 + n22 * n31 * n43 - n21 * n32 * n43 ) * detInv;

		te[ 4 ] = t12 * detInv;
		te[ 5 ] = ( n13 * n34 * n41 - n14 * n33 * n41 + n14 * n31 * n43 - n11 * n34 * n43 - n13 * n31 * n44 + n11 * n33 * n44 ) * detInv;
		te[ 6 ] = ( n14 * n32 * n41 - n12 * n34 * n41 - n14 * n31 * n42 + n11 * n34 * n42 + n12 * n31 * n44 - n11 * n32 * n44 ) * detInv;
		te[ 7 ] = ( n12 * n33 * n41 - n13 * n32 * n41 + n13 * n31 * n42 - n11 * n33 * n42 - n12 * n31 * n43 + n11 * n32 * n43 ) * detInv;

		te[ 8 ] = t13 * detInv;
		te[ 9 ] = ( n14 * n23 * n41 - n13 * n24 * n41 - n14 * n21 * n43 + n11 * n24 * n43 + n13 * n21 * n44 - n11 * n23 * n44 ) * detInv;
		te[ 10 ] = ( n12 * n24 * n41 - n14 * n22 * n41 + n14 * n21 * n42 - n11 * n24 * n42 - n12 * n21 * n44 + n11 * n22 * n44 ) * detInv;
		te[ 11 ] = ( n13 * n22 * n41 - n12 * n23 * n41 - n13 * n21 * n42 + n11 * n23 * n42 + n12 * n21 * n43 - n11 * n22 * n43 ) * detInv;

		te[ 12 ] = t14 * detInv;
		te[ 13 ] = ( n13 * n24 * n31 - n14 * n23 * n31 + n14 * n21 * n33 - n11 * n24 * n33 - n13 * n21 * n34 + n11 * n23 * n34 ) * detInv;
		te[ 14 ] = ( n14 * n22 * n31 - n12 * n24 * n31 - n14 * n21 * n32 + n11 * n24 * n32 + n12 * n21 * n34 - n11 * n22 * n34 ) * detInv;
		te[ 15 ] = ( n12 * n23 * n31 - n13 * n22 * n31 + n13 * n21 * n32 - n11 * n23 * n32 - n12 * n21 * n33 + n11 * n22 * n33 ) * detInv;

		return this;
	}

  invert() {
		// based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm
		const te = this.elements,

			n11 = te[ 0 ], n21 = te[ 1 ], n31 = te[ 2 ], n41 = te[ 3 ],
			n12 = te[ 4 ], n22 = te[ 5 ], n32 = te[ 6 ], n42 = te[ 7 ],
			n13 = te[ 8 ], n23 = te[ 9 ], n33 = te[ 10 ], n43 = te[ 11 ],
			n14 = te[ 12 ], n24 = te[ 13 ], n34 = te[ 14 ], n44 = te[ 15 ];
      //                        c0                c0          c1    c2    c3          c2          c1    c4    c3          c4
			// t11 = n23 * n34 * n42 - n24 * n33 * n42 + n24 * n32 * n43 - n22 * n34 * n43 - n23 * n32 * n44 + n22 * n33 * n44,
			// t12 = n14 * n33 * n42 - n13 * n34 * n42 - n14 * n32 * n43 + n12 * n34 * n43 + n13 * n32 * n44 - n12 * n33 * n44,
			// t13 = n13 * n24 * n42 - n14 * n23 * n42 + n14 * n22 * n43 - n12 * n24 * n43 - n13 * n22 * n44 + n12 * n23 * n44,
			// t14 = n14 * n23 * n32 - n13 * n24 * n32 - n14 * n22 * n33 + n12 * n24 * n33 + n13 * n22 * n34 - n12 * n23 * n34;

    // 这次就不做局部小乘法复用了有点蛋疼,并且这次复用程度不高
    let l: v128, r: v128, p: v128, c0: v128, c1: v128, c2: v128, c3: v128, c4: v128;

    //#region 
    c0 = f32x4.splat(n42);
    f32x4.replace_lane(c0, 3, n32);
    c1 = f32x4.splat(n32);
    f32x4.replace_lane(c1, 2, n22);
    f32x4.replace_lane(c1, 3, n22);
    c2 = f32x4.splat(n43);
    f32x4.replace_lane(c2, 3, n33);
    c3 = f32x4.splat(n12);
    f32x4.replace_lane(c0, 0, n22);
    c4 = f32x4.splat(n44);
    f32x4.replace_lane(c0, 3, n34);

    l = f32x4.splat(n14)
    f32x4.replace_lane(l, 0, n23);
    f32x4.replace_lane(l, 2, n13);
    tmpF32x4[0] = n34;
    tmpF32x4[1] = n33;
    tmpF32x4[2] = n24;
    tmpF32x4[3] = n23;
    r = v128.load(tmpF32x4Ptr);
    p = f32x4.mul(f32x4.mul(l, r), c0);

    l = f32x4.splat(n13);
    f32x4.replace_lane(l, 0, n24);
    f32x4.replace_lane(l, 2, n14);
    tmpF32x4[0] = n33;
    tmpF32x4[1] = n34;
    tmpF32x4[2] = n23;
    tmpF32x4[3] = n24;
    r = v128.load(tmpF32x4Ptr);

    p = f32x4.sub(p, f32x4.mul(f32x4.mul(l, r), c0));

    l = f32x4.splat(-n14);
    f32x4.replace_lane(l, 0, n24);
    f32x4.replace_lane(l, 2, n14);
    p = f32x4.add(p, f32x4.mul(f32x4.mul(l, r), c2));

    tmpF32x4[0] = -n34;
    tmpF32x4[1] = n34;
    tmpF32x4[2] = -n24;
    tmpF32x4[3] = n24;
    l = v128.load(tmpF32x4Ptr);
    p = f32x4.add(p, f32x4.mul(f32x4.mul(c2, l), c2));

    l = f32x4.splat(n13);
    f32x4.replace_lane(l, 0, -n23);
    f32x4.replace_lane(l, 2, -n13);
    p = f32x4.add(p, f32x4.mul(f32x4.mul(l, c1), c4));

    tmpF32x4[0] = n33;
    tmpF32x4[1] = -n33;
    tmpF32x4[2] = n23;
    tmpF32x4[3] = -n23;
    l = v128.load(tmpF32x4Ptr);
    r = f32x4.add(p, f32x4.mul(f32x4.mul(c3, l), c4));

    //#endregion

    l = v128.load(te.dataStart);
    p = f32x4.mul(l, r);
    v128.store(tmpF32x4Ptr, p);

		// const det = n11 * t11 + n21 * t12 + n31 * t13 + n41 * t14;
    const det = tmpF32x4[0] + tmpF32x4[1] + tmpF32x4[2] + tmpF32x4[3];

		if ( det === 0 ) return this.set( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 );

		const detInv: f32 = 1 / det;

    c0 = f32x4.splat(detInv);
    p = f32x4.mul(r, c0);
    v128.store(tmpF32x4Ptr, p);
    te[0] = tmpF32x4[0];
		te[4] = tmpF32x4[1];
		te[8] = tmpF32x4[2];
		te[12] = tmpF32x4[3];

		// te[ 0 ] = t11 * detInv;
		// te[ 4 ] = t12 * detInv;
		// te[ 8 ] = t13 * detInv;
		// te[ 12 ] = t14 * detInv;
    //                         c1                c1          c2    c3    c4                      c2    c5    c4          c5
    // te[ 1 ] = ( n24 * n33 * n41 - n23 * n34 * n41 - n24 * n31 * n43 + n21 * n34 * n43 + n23 * n31 * n44 - n21 * n33 * n44 ) * detInv;
		// te[ 2 ] = ( n22 * n34 * n41 - n24 * n32 * n41 + n24 * n31 * n42 - n21 * n34 * n42 - n22 * n31 * n44 + n21 * n32 * n44 ) * detInv;
		// te[ 3 ] = ( n23 * n32 * n41 - n22 * n33 * n41 - n23 * n31 * n42 + n21 * n33 * n42 + n22 * n31 * n43 - n21 * n32 * n43 ) * detInv;

		// te[ 5 ] = ( n13 * n34 * n41 - n14 * n33 * n41 + n14 * n31 * n43 - n11 * n34 * n43 - n13 * n31 * n44 + n11 * n33 * n44 ) * detInv;
    //                         c1                c1
		// te[ 6 ] = ( n14 * n32 * n41 - n12 * n34 * n41 - n14 * n31 * n42 + n11 * n34 * n42 + n12 * n31 * n44 - n11 * n32 * n44 ) * detInv;
		// te[ 7 ] = ( n12 * n33 * n41 - n13 * n32 * n41 + n13 * n31 * n42 - n11 * n33 * n42 - n12 * n31 * n43 + n11 * n32 * n43 ) * detInv;

		// te[ 9 ] = ( n14 * n23 * n41 - n13 * n24 * n41 - n14 * n21 * n43 + n11 * n24 * n43 + n13 * n21 * n44 - n11 * n23 * n44 ) * detInv;
		// te[ 10 ] = ( n12 * n24 * n41 - n14 * n22 * n41 + n14 * n21 * n42 - n11 * n24 * n42 - n12 * n21 * n44 + n11 * n22 * n44 ) * detInv;

		// te[ 11 ] = ( n13 * n22 * n41 - n12 * n23 * n41 - n13 * n21 * n42 + n11 * n23 * n42 + n12 * n21 * n43 - n11 * n22 * n43 ) * detInv;

		// te[ 13 ] = ( n13 * n24 * n31 - n14 * n23 * n31 + n14 * n21 * n33 - n11 * n24 * n33 - n13 * n21 * n34 + n11 * n23 * n34 ) * detInv;
		// te[ 14 ] = ( n14 * n22 * n31 - n12 * n24 * n31 - n14 * n21 * n32 + n11 * n24 * n32 + n12 * n21 * n34 - n11 * n22 * n34 ) * detInv;
		// te[ 15 ] = ( n12 * n23 * n31 - n13 * n22 * n31 + n13 * n21 * n32 - n11 * n23 * n32 - n12 * n21 * n33 + n11 * n22 * n33 ) * detInv;

		return this;
	}
  //#endregion
}

export class Vector4 {}
