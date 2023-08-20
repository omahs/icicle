
// Copyright 2023 Ingonyama
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Code generated by Ingonyama DO NOT EDIT

#include <cuda.h>
#include <stdbool.h>
// projective.h

#ifdef __cplusplus
extern "C" {
#endif

typedef struct BLS12_377_projective_t BLS12_377_projective_t;
typedef struct BLS12_377_g2_projective_t BLS12_377_g2_projective_t;
typedef struct BLS12_377_affine_t BLS12_377_affine_t;
typedef struct BLS12_377_scalar_t BLS12_377_scalar_t;

bool projective_is_on_curve_bls12_377(BLS12_377_projective_t* point1);

BLS12_377_scalar_t* random_scalar_bls12_377();
BLS12_377_projective_t* random_projective_bls12_377();
BLS12_377_projective_t* projective_zero_bls12_377();
BLS12_377_affine_t* projective_to_affine_bls12_377(BLS12_377_projective_t* point1);
BLS12_377_projective_t* projective_from_affine_bls12_377(BLS12_377_affine_t* point1);

BLS12_377_g2_projective_t* random_g2_projective_bls12_377();
BLS12_377_affine_t* g2_projective_to_affine_bls12_377(BLS12_377_g2_projective_t* point1);
BLS12_377_g2_projective_t* g2_projective_from_affine_bls12_377(BLS12_377_affine_t* point1);
bool g2_projective_is_on_curve_bls12_377(BLS12_377_g2_projective_t* point1);

bool eq_bls12_377(BLS12_377_projective_t* point1, BLS12_377_projective_t* point2);
bool eq_g2_bls12_377(BLS12_377_g2_projective_t* point1, BLS12_377_g2_projective_t* point2);

#ifdef __cplusplus
}
#endif
