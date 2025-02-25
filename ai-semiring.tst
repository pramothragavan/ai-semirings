#############################################################################
##
#W  ai-semiring.tst
#Y  Copyright (C) 2025 James D. Mitchell
##
##  Licensing information can be found in the README file of this package.
##
#############################################################################
##

#
gap> START_TEST("AllAiSemiring tests");
gap> Read("ai-semiring.g");

#
gap> Length(AllAiSemirings(2));
#I  Smallsemi: loading data for semigroup properties. Please be patient.
At 20.%, found 0 so far
At 40.%, found 2 so far
At 60.%, found 2 so far
At 80.%, found 4 so far
At 100.%, found 5 so far

Found 6 candidates!
Filtering up to isomorphism or equivalence!
At 1 of 6At 2 of 6At 3 of 6At 4 of 6At 5 of 6
6
gap> Length(AllAiSemirings(3)); #
At 2.083%, found 0 so far
At 4.167%, found 3 so far
At 6.25%, found 3 so far
At 8.333%, found 3 so far
At 10.42%, found 5 so far
At 12.5%, found 7 so far
At 14.58%, found 9 so far
At 16.67%, found 11 so far
At 18.75%, found 13 so far
At 20.83%, found 15 so far
At 22.92%, found 17 so far
At 25.%, found 19 so far
At 27.08%, found 19 so far
At 29.17%, found 21 so far
At 31.25%, found 22 so far
At 33.33%, found 24 so far
At 35.42%, found 26 so far
At 37.5%, found 28 so far
At 39.58%, found 28 so far
At 41.67%, found 28 so far
At 43.75%, found 28 so far
At 45.83%, found 28 so far
At 47.92%, found 29 so far
At 50.%, found 30 so far
At 52.08%, found 30 so far
At 54.17%, found 33 so far
At 56.25%, found 33 so far
At 58.33%, found 33 so far
At 60.42%, found 35 so far
At 62.5%, found 39 so far
At 64.58%, found 41 so far
At 66.67%, found 43 so far
At 68.75%, found 47 so far
At 70.83%, found 51 so far
At 72.92%, found 53 so far
At 75.%, found 57 so far
At 77.08%, found 57 so far
At 79.17%, found 57 so far
At 81.25%, found 58 so far
At 83.33%, found 60 so far
At 85.42%, found 62 so far
At 87.5%, found 66 so far
At 89.58%, found 68 so far
At 91.67%, found 70 so far
At 93.75%, found 71 so far
At 95.83%, found 72 so far
At 97.92%, found 73 so far
At 100.%, found 74 so far

Found 74 candidates!
Filtering up to isomorphism or equivalence!
At 1 of 74At 2 of 74At 3 of 74At 4 of 74At 5 of 74At 6 of 74At 7 of 74At 8 of 74At 9 of 74At 10 of 74At 11 of 74At 12 of 74At 13 of 74At 14 of 74At 15 of 74At 16 of 74At 17 of 74At 18 of 74At 19 of 74At 20 of 74At 21 of 74At 22 of 74At 23 of 74At 24 of 74At 25 of 74At 26 of 74At 27 of 74At 28 of 74At 29 of 74At 30 of 74At 31 of 74At 32 of 74At 33 of 74At 34 of 74At 35 of 74At 36 of 74At 37 of 74At 38 of 74At 39 of 74At 40 of 74At 41 of 74At 42 of 74At 43 of 74At 44 of 74At 45 of 74At 46 of 74At 47 of 74At 48 of 74At 49 of 74At 50 of 74At 51 of 74At 52 of 74At 53 of 74At 54 of 74At 55 of 74At 56 of 74At 57 of 74At 58 of 74At 59 of 74At 60 of 74At 61 of 74At 62 of 74At 63 of 74At 64 of 74At 65 of 74At 66 of 74At 67 of 74At 68 of 74At 69 of 74At 70 of 74At 71 of 74At 72 of 74At 73 of 74
61
gap> Length(AllAiSemirings(4));
At 0.1031%, found 0 so far
At 0.2062%, found 4 so far
At 0.3093%, found 10 so far
At 0.4124%, found 10 so far
At 0.5155%, found 13 so far
At 0.6186%, found 13 so far
At 0.7216%, found 13 so far
At 0.8247%, found 13 so far
At 0.9278%, found 13 so far
At 1.031%, found 19 so far
At 1.134%, found 19 so far
At 1.237%, found 19 so far
At 1.34%, found 19 so far
At 1.443%, found 25 so far
At 1.546%, found 25 so far
At 1.649%, found 25 so far
At 1.753%, found 28 so far
At 1.856%, found 34 so far
At 1.959%, found 40 so far
At 2.062%, found 40 so far
At 2.165%, found 40 so far
At 2.268%, found 43 so far
At 2.371%, found 46 so far
At 2.474%, found 49 so far
At 2.577%, found 52 so far
At 2.68%, found 58 so far
At 2.784%, found 64 so far
At 2.887%, found 64 so far
At 2.99%, found 70 so far
At 3.093%, found 76 so far
At 3.196%, found 76 so far
At 3.299%, found 76 so far
At 3.402%, found 76 so far
At 3.505%, found 79 so far
At 3.608%, found 82 so far
At 3.711%, found 82 so far
At 3.814%, found 82 so far
At 3.918%, found 82 so far
At 4.021%, found 82 so far
At 4.124%, found 82 so far
At 4.227%, found 82 so far
At 4.33%, found 82 so far
At 4.433%, found 82 so far
At 4.536%, found 82 so far
At 4.639%, found 82 so far
At 4.742%, found 85 so far
At 4.845%, found 85 so far
At 4.948%, found 85 so far
At 5.052%, found 85 so far
At 5.155%, found 85 so far
At 5.258%, found 91 so far
At 5.361%, found 97 so far
At 5.464%, found 103 so far
At 5.567%, found 109 so far
At 5.67%, found 115 so far
At 5.773%, found 115 so far
At 5.876%, found 121 so far
At 5.979%, found 121 so far
At 6.082%, found 121 so far
At 6.186%, found 121 so far
At 6.289%, found 121 so far
At 6.392%, found 121 so far
At 6.495%, found 121 so far
At 6.598%, found 121 so far
At 6.701%, found 121 so far
At 6.804%, found 121 so far
At 6.907%, found 121 so far
At 7.01%, found 121 so far
At 7.113%, found 121 so far
At 7.216%, found 121 so far
At 7.32%, found 124 so far
At 7.423%, found 130 so far
At 7.526%, found 136 so far
At 7.629%, found 142 so far
At 7.732%, found 148 so far
At 7.835%, found 148 so far
At 7.938%, found 148 so far
At 8.041%, found 148 so far
At 8.144%, found 148 so far
At 8.247%, found 148 so far
At 8.351%, found 148 so far
At 8.454%, found 148 so far
At 8.557%, found 154 so far
At 8.66%, found 160 so far
At 8.763%, found 160 so far
At 8.866%, found 160 so far
At 8.969%, found 160 so far
At 9.072%, found 160 so far
At 9.175%, found 160 so far
At 9.278%, found 160 so far
At 9.381%, found 160 so far
At 9.485%, found 160 so far
At 9.588%, found 160 so far
At 9.691%, found 160 so far
At 9.794%, found 163 so far
At 9.897%, found 166 so far
At 10.%, found 172 so far
At 10.1%, found 172 so far
At 10.21%, found 178 so far
At 10.31%, found 178 so far
At 10.41%, found 178 so far
At 10.52%, found 178 so far
At 10.62%, found 178 so far
At 10.72%, found 178 so far
At 10.82%, found 184 so far
At 10.93%, found 190 so far
At 11.03%, found 190 so far
At 11.13%, found 190 so far
At 11.24%, found 196 so far
At 11.34%, found 202 so far
At 11.44%, found 202 so far
At 11.55%, found 202 so far
At 11.65%, found 202 so far
At 11.75%, found 202 so far
At 11.86%, found 202 so far
At 11.96%, found 202 so far
At 12.06%, found 202 so far
At 12.16%, found 202 so far
At 12.27%, found 202 so far
At 12.37%, found 208 so far
At 12.47%, found 214 so far
At 12.58%, found 220 so far
At 12.68%, found 220 so far
At 12.78%, found 220 so far
At 12.89%, found 226 so far
At 12.99%, found 226 so far
At 13.09%, found 226 so far
At 13.2%, found 226 so far
At 13.3%, found 226 so far
At 13.4%, found 226 so far
At 13.51%, found 226 so far
At 13.61%, found 226 so far
At 13.71%, found 226 so far
At 13.81%, found 226 so far
At 13.92%, found 226 so far
At 14.02%, found 226 so far
At 14.12%, found 232 so far
At 14.23%, found 238 so far
At 14.33%, found 244 so far
At 14.43%, found 250 so far
At 14.54%, found 250 so far
At 14.64%, found 250 so far
At 14.74%, found 250 so far
At 14.85%, found 250 so far
At 14.95%, found 250 so far
At 15.05%, found 251 so far
At 15.15%, found 254 so far
At 15.26%, found 257 so far
At 15.36%, found 257 so far
At 15.46%, found 257 so far
At 15.57%, found 257 so far
At 15.67%, found 257 so far
At 15.77%, found 257 so far
At 15.88%, found 257 so far
At 15.98%, found 257 so far
At 16.08%, found 260 so far
At 16.19%, found 263 so far
At 16.29%, found 263 so far
At 16.39%, found 263 so far
At 16.49%, found 263 so far
At 16.6%, found 263 so far
At 16.7%, found 263 so far
At 16.8%, found 263 so far
At 16.91%, found 263 so far
At 17.01%, found 263 so far
At 17.11%, found 263 so far
At 17.22%, found 263 so far
At 17.32%, found 263 so far
At 17.42%, found 263 so far
At 17.53%, found 263 so far
At 17.63%, found 266 so far
At 17.73%, found 266 so far
At 17.84%, found 266 so far
At 17.94%, found 266 so far
At 18.04%, found 266 so far
At 18.14%, found 266 so far
At 18.25%, found 266 so far
At 18.35%, found 266 so far
At 18.45%, found 266 so far
At 18.56%, found 266 so far
At 18.66%, found 266 so far
At 18.76%, found 266 so far
At 18.87%, found 266 so far
At 18.97%, found 266 so far
At 19.07%, found 266 so far
At 19.18%, found 266 so far
At 19.28%, found 266 so far
At 19.38%, found 266 so far
At 19.48%, found 267 so far
At 19.59%, found 268 so far
At 19.69%, found 268 so far
At 19.79%, found 268 so far
At 19.9%, found 271 so far
At 20.%, found 271 so far
At 20.1%, found 271 so far
At 20.21%, found 275 so far
At 20.31%, found 277 so far
At 20.41%, found 277 so far
At 20.52%, found 278 so far
At 20.62%, found 278 so far
At 20.72%, found 278 so far
At 20.82%, found 278 so far
At 20.93%, found 278 so far
At 21.03%, found 283 so far
At 21.13%, found 284 so far
At 21.24%, found 285 so far
At 21.34%, found 286 so far
At 21.44%, found 287 so far
At 21.55%, found 287 so far
At 21.65%, found 287 so far
At 21.75%, found 290 so far
At 21.86%, found 293 so far
At 21.96%, found 296 so far
At 22.06%, found 298 so far
At 22.16%, found 300 so far
At 22.27%, found 302 so far
At 22.37%, found 304 so far
At 22.47%, found 307 so far
At 22.58%, found 310 so far
At 22.68%, found 313 so far
At 22.78%, found 315 so far
At 22.89%, found 315 so far
At 22.99%, found 318 so far
At 23.09%, found 321 so far
At 23.2%, found 323 so far
At 23.3%, found 325 so far
At 23.4%, found 327 so far
At 23.51%, found 329 so far
At 23.61%, found 332 so far
At 23.71%, found 332 so far
At 23.81%, found 332 so far
At 23.92%, found 332 so far
At 24.02%, found 332 so far
At 24.12%, found 334 so far
At 24.23%, found 334 so far
At 24.33%, found 334 so far
At 24.43%, found 334 so far
At 24.54%, found 334 so far
At 24.64%, found 336 so far
At 24.74%, found 337 so far
At 24.85%, found 337 so far
At 24.95%, found 337 so far
At 25.05%, found 339 so far
At 25.15%, found 339 so far
At 25.26%, found 341 so far
At 25.36%, found 342 so far
At 25.46%, found 343 so far
At 25.57%, found 344 so far
At 25.67%, found 345 so far
At 25.77%, found 349 so far
At 25.88%, found 351 so far
At 25.98%, found 354 so far
At 26.08%, found 357 so far
At 26.19%, found 357 so far
At 26.29%, found 357 so far
At 26.39%, found 359 so far
At 26.49%, found 361 so far
At 26.6%, found 364 so far
At 26.7%, found 364 so far
At 26.8%, found 364 so far
At 26.91%, found 364 so far
At 27.01%, found 364 so far
At 27.11%, found 364 so far
At 27.22%, found 364 so far
At 27.32%, found 365 so far
At 27.42%, found 366 so far
At 27.53%, found 367 so far
At 27.63%, found 369 so far
At 27.73%, found 371 so far
At 27.84%, found 375 so far
At 27.94%, found 376 so far
At 28.04%, found 377 so far
At 28.14%, found 379 so far
At 28.25%, found 381 so far
At 28.35%, found 382 so far
At 28.45%, found 383 so far
At 28.56%, found 384 so far
At 28.66%, found 385 so far
At 28.76%, found 388 so far
At 28.87%, found 391 so far
At 28.97%, found 392 so far
At 29.07%, found 393 so far
At 29.18%, found 394 so far
At 29.28%, found 395 so far
At 29.38%, found 395 so far
At 29.48%, found 395 so far
At 29.59%, found 398 so far
At 29.69%, found 401 so far
At 29.79%, found 405 so far
At 29.9%, found 409 so far
At 30.%, found 410 so far
At 30.1%, found 412 so far
At 30.21%, found 412 so far
At 30.31%, found 412 so far
At 30.41%, found 412 so far
At 30.52%, found 412 so far
At 30.62%, found 413 so far
At 30.72%, found 414 so far
At 30.82%, found 416 so far
At 30.93%, found 418 so far
At 31.03%, found 418 so far
At 31.13%, found 418 so far
At 31.24%, found 419 so far
At 31.34%, found 420 so far
At 31.44%, found 420 so far
At 31.55%, found 420 so far
At 31.65%, found 422 so far
At 31.75%, found 424 so far
At 31.86%, found 425 so far
At 31.96%, found 426 so far
At 32.06%, found 429 so far
At 32.16%, found 430 so far
At 32.27%, found 431 so far
At 32.37%, found 434 so far
At 32.47%, found 435 so far
At 32.58%, found 436 so far
At 32.68%, found 437 so far
At 32.78%, found 438 so far
At 32.89%, found 439 so far
At 32.99%, found 442 so far
At 33.09%, found 445 so far
At 33.2%, found 448 so far
At 33.3%, found 451 so far
At 33.4%, found 451 so far
At 33.51%, found 451 so far
At 33.61%, found 451 so far
At 33.71%, found 451 so far
At 33.81%, found 451 so far
At 33.92%, found 451 so far
At 34.02%, found 453 so far
At 34.12%, found 453 so far
At 34.23%, found 453 so far
At 34.33%, found 453 so far
At 34.43%, found 453 so far
At 34.54%, found 453 so far
At 34.64%, found 453 so far
At 34.74%, found 453 so far
At 34.85%, found 453 so far
At 34.95%, found 453 so far
At 35.05%, found 453 so far
At 35.15%, found 453 so far
At 35.26%, found 453 so far
At 35.36%, found 456 so far
At 35.46%, found 457 so far
At 35.57%, found 458 so far
At 35.67%, found 459 so far
At 35.77%, found 460 so far
At 35.88%, found 461 so far
At 35.98%, found 462 so far
At 36.08%, found 464 so far
At 36.19%, found 466 so far
At 36.29%, found 466 so far
At 36.39%, found 469 so far
At 36.49%, found 472 so far
At 36.6%, found 472 so far
At 36.7%, found 472 so far
At 36.8%, found 473 so far
At 36.91%, found 474 so far
At 37.01%, found 474 so far
At 37.11%, found 474 so far
At 37.22%, found 475 so far
At 37.32%, found 476 so far
At 37.42%, found 477 so far
At 37.53%, found 478 so far
At 37.63%, found 479 so far
At 37.73%, found 480 so far
At 37.84%, found 481 so far
At 37.94%, found 484 so far
At 38.04%, found 485 so far
At 38.14%, found 486 so far
At 38.25%, found 486 so far
At 38.35%, found 486 so far
At 38.45%, found 486 so far
At 38.56%, found 486 so far
At 38.66%, found 486 so far
At 38.76%, found 486 so far
At 38.87%, found 486 so far
At 38.97%, found 486 so far
At 39.07%, found 486 so far
At 39.18%, found 486 so far
At 39.28%, found 486 so far
At 39.38%, found 486 so far
At 39.48%, found 487 so far
At 39.59%, found 488 so far
At 39.69%, found 488 so far
At 39.79%, found 488 so far
At 39.9%, found 488 so far
At 40.%, found 488 so far
At 40.1%, found 488 so far
At 40.21%, found 492 so far
At 40.31%, found 492 so far
At 40.41%, found 492 so far
At 40.52%, found 492 so far
At 40.62%, found 492 so far
At 40.72%, found 492 so far
At 40.82%, found 492 so far
At 40.93%, found 492 so far
At 41.03%, found 494 so far
At 41.13%, found 496 so far
At 41.24%, found 498 so far
At 41.34%, found 500 so far
At 41.44%, found 500 so far
At 41.55%, found 500 so far
At 41.65%, found 500 so far
At 41.75%, found 503 so far
At 41.86%, found 505 so far
At 41.96%, found 507 so far
At 42.06%, found 507 so far
At 42.16%, found 507 so far
At 42.27%, found 508 so far
At 42.37%, found 509 so far
At 42.47%, found 512 so far
At 42.58%, found 515 so far
At 42.68%, found 517 so far
At 42.78%, found 519 so far
At 42.89%, found 519 so far
At 42.99%, found 521 so far
At 43.09%, found 523 so far
At 43.2%, found 523 so far
At 43.3%, found 523 so far
At 43.4%, found 523 so far
At 43.51%, found 524 so far
At 43.61%, found 527 so far
At 43.71%, found 527 so far
At 43.81%, found 527 so far
At 43.92%, found 527 so far
At 44.02%, found 527 so far
At 44.12%, found 527 so far
At 44.23%, found 527 so far
At 44.33%, found 527 so far
At 44.43%, found 527 so far
At 44.54%, found 527 so far
At 44.64%, found 527 so far
At 44.74%, found 527 so far
At 44.85%, found 527 so far
At 44.95%, found 527 so far
At 45.05%, found 531 so far
At 45.15%, found 531 so far
At 45.26%, found 531 so far
At 45.36%, found 531 so far
At 45.46%, found 531 so far
At 45.57%, found 531 so far
At 45.67%, found 533 so far
At 45.77%, found 545 so far
At 45.88%, found 545 so far
At 45.98%, found 547 so far
At 46.08%, found 549 so far
At 46.19%, found 549 so far
At 46.29%, found 549 so far
At 46.39%, found 555 so far
At 46.49%, found 561 so far
At 46.6%, found 563 so far
At 46.7%, found 563 so far
At 46.8%, found 563 so far
At 46.91%, found 563 so far
At 47.01%, found 563 so far
At 47.11%, found 563 so far
At 47.22%, found 563 so far
At 47.32%, found 563 so far
At 47.42%, found 563 so far
At 47.53%, found 563 so far
At 47.63%, found 563 so far
At 47.73%, found 563 so far
At 47.84%, found 567 so far
At 47.94%, found 569 so far
At 48.04%, found 571 so far
At 48.14%, found 573 so far
At 48.25%, found 575 so far
At 48.35%, found 577 so far
At 48.45%, found 579 so far
At 48.56%, found 579 so far
At 48.66%, found 579 so far
At 48.76%, found 579 so far
At 48.87%, found 579 so far
At 48.97%, found 579 so far
At 49.07%, found 579 so far
At 49.18%, found 583 so far
At 49.28%, found 587 so far
At 49.38%, found 589 so far
At 49.48%, found 591 so far
At 49.59%, found 593 so far
At 49.69%, found 595 so far
At 49.79%, found 597 so far
At 49.9%, found 599 so far
At 50.%, found 599 so far
At 50.1%, found 601 so far
At 50.21%, found 601 so far
At 50.31%, found 601 so far
At 50.41%, found 601 so far
At 50.52%, found 601 so far
At 50.62%, found 601 so far
At 50.72%, found 601 so far
At 50.82%, found 601 so far
At 50.93%, found 601 so far
At 51.03%, found 601 so far
At 51.13%, found 601 so far
At 51.24%, found 601 so far
At 51.34%, found 601 so far
At 51.44%, found 601 so far
At 51.55%, found 601 so far
At 51.65%, found 603 so far
At 51.75%, found 605 so far
At 51.86%, found 605 so far
At 51.96%, found 605 so far
At 52.06%, found 607 so far
At 52.16%, found 607 so far
At 52.27%, found 607 so far
At 52.37%, found 609 so far
At 52.47%, found 611 so far
At 52.58%, found 613 so far
At 52.68%, found 615 so far
At 52.78%, found 617 so far
At 52.89%, found 619 so far
At 52.99%, found 621 so far
At 53.09%, found 623 so far
At 53.2%, found 625 so far
At 53.3%, found 627 so far
At 53.4%, found 627 so far
At 53.51%, found 627 so far
At 53.61%, found 627 so far
At 53.71%, found 627 so far
At 53.81%, found 627 so far
At 53.92%, found 627 so far
At 54.02%, found 627 so far
At 54.12%, found 627 so far
At 54.23%, found 627 so far
At 54.33%, found 627 so far
At 54.43%, found 629 so far
At 54.54%, found 629 so far
At 54.64%, found 629 so far
At 54.74%, found 629 so far
At 54.85%, found 629 so far
At 54.95%, found 629 so far
At 55.05%, found 629 so far
At 55.15%, found 629 so far
At 55.26%, found 629 so far
At 55.36%, found 629 so far
At 55.46%, found 629 so far
At 55.57%, found 629 so far
At 55.67%, found 629 so far
At 55.77%, found 629 so far
At 55.88%, found 629 so far
At 55.98%, found 629 so far
At 56.08%, found 629 so far
At 56.19%, found 629 so far
At 56.29%, found 633 so far
At 56.39%, found 633 so far
At 56.49%, found 633 so far
At 56.6%, found 635 so far
At 56.7%, found 637 so far
At 56.8%, found 637 so far
At 56.91%, found 637 so far
At 57.01%, found 641 so far
At 57.11%, found 645 so far
At 57.22%, found 645 so far
At 57.32%, found 645 so far
At 57.42%, found 645 so far
At 57.53%, found 645 so far
At 57.63%, found 646 so far
At 57.73%, found 648 so far
At 57.84%, found 650 so far
At 57.94%, found 652 so far
At 58.04%, found 652 so far
At 58.14%, found 652 so far
At 58.25%, found 652 so far
At 58.35%, found 652 so far
At 58.45%, found 653 so far
At 58.56%, found 654 so far
At 58.66%, found 654 so far
At 58.76%, found 654 so far
At 58.87%, found 654 so far
At 58.97%, found 654 so far
At 59.07%, found 654 so far
At 59.18%, found 654 so far
At 59.28%, found 654 so far
At 59.38%, found 654 so far
At 59.48%, found 655 so far
At 59.59%, found 656 so far
At 59.69%, found 658 so far
At 59.79%, found 658 so far
At 59.9%, found 658 so far
At 60.%, found 658 so far
At 60.1%, found 658 so far
At 60.21%, found 662 so far
At 60.31%, found 664 so far
At 60.41%, found 664 so far
At 60.52%, found 665 so far
At 60.62%, found 665 so far
At 60.72%, found 665 so far
At 60.82%, found 665 so far
At 60.93%, found 665 so far
At 61.03%, found 673 so far
At 61.13%, found 673 so far
At 61.24%, found 673 so far
At 61.34%, found 673 so far
At 61.44%, found 673 so far
At 61.55%, found 673 so far
At 61.65%, found 673 so far
At 61.75%, found 680 so far
At 61.86%, found 682 so far
At 61.96%, found 684 so far
At 62.06%, found 688 so far
At 62.16%, found 692 so far
At 62.27%, found 694 so far
At 62.37%, found 696 so far
At 62.47%, found 703 so far
At 62.58%, found 710 so far
At 62.68%, found 712 so far
At 62.78%, found 712 so far
At 62.89%, found 712 so far
At 62.99%, found 712 so far
At 63.09%, found 712 so far
At 63.2%, found 716 so far
At 63.3%, found 718 so far
At 63.4%, found 720 so far
At 63.51%, found 722 so far
At 63.61%, found 729 so far
At 63.71%, found 729 so far
At 63.81%, found 729 so far
At 63.92%, found 729 so far
At 64.02%, found 729 so far
At 64.12%, found 729 so far
At 64.23%, found 729 so far
At 64.33%, found 729 so far
At 64.43%, found 729 so far
At 64.54%, found 729 so far
At 64.64%, found 729 so far
At 64.74%, found 730 so far
At 64.85%, found 730 so far
At 64.95%, found 730 so far
At 65.05%, found 730 so far
At 65.15%, found 730 so far
At 65.26%, found 734 so far
At 65.36%, found 736 so far
At 65.46%, found 738 so far
At 65.57%, found 738 so far
At 65.67%, found 740 so far
At 65.77%, found 740 so far
At 65.88%, found 742 so far
At 65.98%, found 742 so far
At 66.08%, found 742 so far
At 66.19%, found 742 so far
At 66.29%, found 742 so far
At 66.39%, found 742 so far
At 66.49%, found 742 so far
At 66.6%, found 742 so far
At 66.7%, found 742 so far
At 66.8%, found 742 so far
At 66.91%, found 742 so far
At 67.01%, found 742 so far
At 67.11%, found 742 so far
At 67.22%, found 742 so far
At 67.32%, found 746 so far
At 67.42%, found 748 so far
At 67.53%, found 750 so far
At 67.63%, found 756 so far
At 67.73%, found 762 so far
At 67.84%, found 762 so far
At 67.94%, found 762 so far
At 68.04%, found 762 so far
At 68.14%, found 762 so far
At 68.25%, found 762 so far
At 68.35%, found 762 so far
At 68.45%, found 762 so far
At 68.56%, found 764 so far
At 68.66%, found 766 so far
At 68.76%, found 766 so far
At 68.87%, found 766 so far
At 68.97%, found 766 so far
At 69.07%, found 766 so far
At 69.18%, found 766 so far
At 69.28%, found 766 so far
At 69.38%, found 766 so far
At 69.48%, found 766 so far
At 69.59%, found 766 so far
At 69.69%, found 766 so far
At 69.79%, found 769 so far
At 69.9%, found 772 so far
At 70.%, found 774 so far
At 70.1%, found 774 so far
At 70.21%, found 774 so far
At 70.31%, found 774 so far
At 70.41%, found 776 so far
At 70.52%, found 776 so far
At 70.62%, found 776 so far
At 70.72%, found 776 so far
At 70.82%, found 780 so far
At 70.93%, found 784 so far
At 71.03%, found 784 so far
At 71.13%, found 784 so far
At 71.24%, found 786 so far
At 71.34%, found 788 so far
At 71.44%, found 788 so far
At 71.55%, found 788 so far
At 71.65%, found 788 so far
At 71.75%, found 788 so far
At 71.86%, found 788 so far
At 71.96%, found 788 so far
At 72.06%, found 788 so far
At 72.16%, found 788 so far
At 72.27%, found 788 so far
At 72.37%, found 794 so far
At 72.47%, found 796 so far
At 72.58%, found 798 so far
At 72.68%, found 802 so far
At 72.78%, found 806 so far
At 72.89%, found 808 so far
At 72.99%, found 808 so far
At 73.09%, found 808 so far
At 73.2%, found 808 so far
At 73.3%, found 812 so far
At 73.4%, found 814 so far
At 73.51%, found 816 so far
At 73.61%, found 816 so far
At 73.71%, found 816 so far
At 73.81%, found 816 so far
At 73.92%, found 816 so far
At 74.02%, found 816 so far
At 74.12%, found 818 so far
At 74.23%, found 820 so far
At 74.33%, found 822 so far
At 74.43%, found 824 so far
At 74.54%, found 824 so far
At 74.64%, found 824 so far
At 74.74%, found 824 so far
At 74.85%, found 824 so far
At 74.95%, found 824 so far
At 75.05%, found 825 so far
At 75.15%, found 828 so far
At 75.26%, found 831 so far
At 75.36%, found 831 so far
At 75.46%, found 831 so far
At 75.57%, found 831 so far
At 75.67%, found 831 so far
At 75.77%, found 831 so far
At 75.88%, found 831 so far
At 75.98%, found 831 so far
At 76.08%, found 834 so far
At 76.19%, found 837 so far
At 76.29%, found 837 so far
At 76.39%, found 837 so far
At 76.49%, found 837 so far
At 76.6%, found 837 so far
At 76.7%, found 837 so far
At 76.8%, found 837 so far
At 76.91%, found 837 so far
At 77.01%, found 837 so far
At 77.11%, found 837 so far
At 77.22%, found 837 so far
At 77.32%, found 837 so far
At 77.42%, found 837 so far
At 77.53%, found 837 so far
At 77.63%, found 840 so far
At 77.73%, found 844 so far
At 77.84%, found 848 so far
At 77.94%, found 852 so far
At 78.04%, found 852 so far
At 78.14%, found 852 so far
At 78.25%, found 852 so far
At 78.35%, found 852 so far
At 78.45%, found 853 so far
At 78.56%, found 854 so far
At 78.66%, found 856 so far
At 78.76%, found 858 so far
At 78.87%, found 858 so far
At 78.97%, found 858 so far
At 79.07%, found 858 so far
At 79.18%, found 858 so far
At 79.28%, found 858 so far
At 79.38%, found 858 so far
At 79.48%, found 859 so far
At 79.59%, found 860 so far
At 79.69%, found 860 so far
At 79.79%, found 860 so far
At 79.9%, found 860 so far
At 80.%, found 860 so far
At 80.1%, found 860 so far
At 80.21%, found 864 so far
At 80.31%, found 864 so far
At 80.41%, found 864 so far
At 80.52%, found 864 so far
At 80.62%, found 864 so far
At 80.72%, found 864 so far
At 80.82%, found 864 so far
At 80.93%, found 864 so far
At 81.03%, found 870 so far
At 81.13%, found 872 so far
At 81.24%, found 874 so far
At 81.34%, found 876 so far
At 81.44%, found 878 so far
At 81.55%, found 878 so far
At 81.65%, found 878 so far
At 81.75%, found 884 so far
At 81.86%, found 888 so far
At 81.96%, found 892 so far
At 82.06%, found 896 so far
At 82.16%, found 900 so far
At 82.27%, found 902 so far
At 82.37%, found 904 so far
At 82.47%, found 910 so far
At 82.58%, found 916 so far
At 82.68%, found 920 so far
At 82.78%, found 920 so far
At 82.89%, found 920 so far
At 82.99%, found 922 so far
At 83.09%, found 924 so far
At 83.2%, found 928 so far
At 83.3%, found 932 so far
At 83.4%, found 936 so far
At 83.51%, found 938 so far
At 83.61%, found 944 so far
At 83.71%, found 944 so far
At 83.81%, found 944 so far
At 83.92%, found 944 so far
At 84.02%, found 944 so far
At 84.12%, found 944 so far
At 84.23%, found 944 so far
At 84.33%, found 944 so far
At 84.43%, found 944 so far
At 84.54%, found 944 so far
At 84.64%, found 944 so far
At 84.74%, found 944 so far
At 84.85%, found 944 so far
At 84.95%, found 944 so far
At 85.05%, found 946 so far
At 85.15%, found 946 so far
At 85.26%, found 948 so far
At 85.36%, found 950 so far
At 85.46%, found 952 so far
At 85.57%, found 954 so far
At 85.67%, found 958 so far
At 85.77%, found 966 so far
At 85.88%, found 966 so far
At 85.98%, found 970 so far
At 86.08%, found 974 so far
At 86.19%, found 974 so far
At 86.29%, found 974 so far
At 86.39%, found 978 so far
At 86.49%, found 982 so far
At 86.6%, found 986 so far
At 86.7%, found 986 so far
At 86.8%, found 986 so far
At 86.91%, found 986 so far
At 87.01%, found 986 so far
At 87.11%, found 986 so far
At 87.22%, found 986 so far
At 87.32%, found 988 so far
At 87.42%, found 990 so far
At 87.53%, found 992 so far
At 87.63%, found 996 so far
At 87.73%, found 1000 so far
At 87.84%, found 1008 so far
At 87.94%, found 1012 so far
At 88.04%, found 1016 so far
At 88.14%, found 1018 so far
At 88.25%, found 1020 so far
At 88.35%, found 1024 so far
At 88.45%, found 1028 so far
At 88.56%, found 1030 so far
At 88.66%, found 1032 so far
At 88.76%, found 1036 so far
At 88.87%, found 1040 so far
At 88.97%, found 1042 so far
At 89.07%, found 1044 so far
At 89.18%, found 1046 so far
At 89.28%, found 1048 so far
At 89.38%, found 1050 so far
At 89.48%, found 1052 so far
At 89.59%, found 1056 so far
At 89.69%, found 1060 so far
At 89.79%, found 1066 so far
At 89.9%, found 1072 so far
At 90.%, found 1074 so far
At 90.1%, found 1076 so far
At 90.21%, found 1076 so far
At 90.31%, found 1076 so far
At 90.41%, found 1076 so far
At 90.52%, found 1076 so far
At 90.62%, found 1078 so far
At 90.72%, found 1080 so far
At 90.82%, found 1082 so far
At 90.93%, found 1084 so far
At 91.03%, found 1084 so far
At 91.13%, found 1084 so far
At 91.24%, found 1086 so far
At 91.34%, found 1088 so far
At 91.44%, found 1088 so far
At 91.55%, found 1088 so far
At 91.65%, found 1090 so far
At 91.75%, found 1092 so far
At 91.86%, found 1094 so far
At 91.96%, found 1096 so far
At 92.06%, found 1100 so far
At 92.16%, found 1102 so far
At 92.27%, found 1104 so far
At 92.37%, found 1112 so far
At 92.47%, found 1116 so far
At 92.58%, found 1120 so far
At 92.68%, found 1128 so far
At 92.78%, found 1136 so far
At 92.89%, found 1140 so far
At 92.99%, found 1144 so far
At 93.09%, found 1148 so far
At 93.2%, found 1152 so far
At 93.3%, found 1160 so far
At 93.4%, found 1162 so far
At 93.51%, found 1164 so far
At 93.61%, found 1164 so far
At 93.71%, found 1164 so far
At 93.81%, found 1164 so far
At 93.92%, found 1164 so far
At 94.02%, found 1164 so far
At 94.12%, found 1164 so far
At 94.23%, found 1164 so far
At 94.33%, found 1164 so far
At 94.43%, found 1164 so far
At 94.54%, found 1164 so far
At 94.64%, found 1164 so far
At 94.74%, found 1164 so far
At 94.85%, found 1164 so far
At 94.95%, found 1164 so far
At 95.05%, found 1164 so far
At 95.15%, found 1164 so far
At 95.26%, found 1164 so far
At 95.36%, found 1168 so far
At 95.46%, found 1170 so far
At 95.57%, found 1172 so far
At 95.67%, found 1174 so far
At 95.77%, found 1176 so far
At 95.88%, found 1177 so far
At 95.98%, found 1178 so far
At 96.08%, found 1180 so far
At 96.19%, found 1182 so far
At 96.29%, found 1182 so far
At 96.39%, found 1186 so far
At 96.49%, found 1190 so far
At 96.6%, found 1190 so far
At 96.7%, found 1190 so far
At 96.8%, found 1192 so far
At 96.91%, found 1194 so far
At 97.01%, found 1194 so far
At 97.11%, found 1194 so far
At 97.22%, found 1196 so far
At 97.32%, found 1198 so far
At 97.42%, found 1200 so far
At 97.53%, found 1202 so far
At 97.63%, found 1204 so far
At 97.73%, found 1208 so far
At 97.84%, found 1212 so far
At 97.94%, found 1220 so far
At 98.04%, found 1224 so far
At 98.14%, found 1228 so far
At 98.25%, found 1230 so far
At 98.35%, found 1232 so far
At 98.45%, found 1234 so far
At 98.56%, found 1236 so far
At 98.66%, found 1238 so far
At 98.76%, found 1240 so far
At 98.87%, found 1241 so far
At 98.97%, found 1242 so far
At 99.07%, found 1243 so far
At 99.18%, found 1244 so far
At 99.28%, found 1244 so far
At 99.38%, found 1244 so far
At 99.48%, found 1245 so far
At 99.59%, found 1246 so far
At 99.69%, found 1246 so far
At 99.79%, found 1246 so far
At 99.9%, found 1246 so far
At 100.%, found 1246 so far

Found 1246 candidates!
Filtering up to isomorphism or equivalence!
At 1 of 1246At 2 of 1246At 3 of 1246At 4 of 1246At 5 of 1246At 6 of 1246At 7 of 1246At 8 of 1246At 9 of 1246At 10 of 1246At 11 of 1246At 12 of 1246At 13 of 1246At 14 of 1246At 15 of 1246At 16 of 1246At 17 of 1246At 18 of 1246At 19 of 1246At 20 of 1246At 21 of 1246At 22 of 1246At 23 of 1246At 24 of 1246At 25 of 1246At 26 of 1246At 27 of 1246At 28 of 1246At 29 of 1246At 30 of 1246At 31 of 1246At 32 of 1246At 33 of 1246At 34 of 1246At 35 of 1246At 36 of 1246At 37 of 1246At 38 of 1246At 39 of 1246At 40 of 1246At 41 of 1246At 42 of 1246At 43 of 1246At 44 of 1246At 45 of 1246At 46 of 1246At 47 of 1246At 48 of 1246At 49 of 1246At 50 of 1246At 51 of 1246At 52 of 1246At 53 of 1246At 54 of 1246At 55 of 1246At 56 of 1246At 57 of 1246At 58 of 1246At 59 of 1246At 60 of 1246At 61 of 1246At 62 of 1246At 63 of 1246At 64 of 1246At 65 of 1246At 66 of 1246At 67 of 1246At 68 of 1246At 69 of 1246At 70 of 1246At 71 of 1246At 72 of 1246At 73 of 1246At 74 of 1246At 75 of 1246At 76 of 1246At 77 of 1246At 78 of 1246At 79 of 1246At 80 of 1246At 81 of 1246At 82 of 1246At 83 of 1246At 84 of 1246At 85 of 1246At 86 of 1246At 87 of 1246At 88 of 1246At 89 of 1246At 90 of 1246At 91 of 1246At 92 of 1246At 93 of 1246At 94 of 1246At 95 of 1246At 96 of 1246At 97 of 1246At 98 of 1246At 99 of 1246At 100 of 1246At 101 of 1246At 102 of 1246At 103 of 1246At 104 of 1246At 105 of 1246At 106 of 1246At 107 of 1246At 108 of 1246At 109 of 1246At 110 of 1246At 111 of 1246At 112 of 1246At 113 of 1246At 114 of 1246At 115 of 1246At 116 of 1246At 117 of 1246At 118 of 1246At 119 of 1246At 120 of 1246At 121 of 1246At 122 of 1246At 123 of 1246At 124 of 1246At 125 of 1246At 126 of 1246At 127 of 1246At 128 of 1246At 129 of 1246At 130 of 1246At 131 of 1246At 132 of 1246At 133 of 1246At 134 of 1246At 135 of 1246At 136 of 1246At 137 of 1246At 138 of 1246At 139 of 1246At 140 of 1246At 141 of 1246At 142 of 1246At 143 of 1246At 144 of 1246At 145 of 1246At 146 of 1246At 147 of 1246At 148 of 1246At 149 of 1246At 150 of 1246At 151 of 1246At 152 of 1246At 153 of 1246At 154 of 1246At 155 of 1246At 156 of 1246At 157 of 1246At 158 of 1246At 159 of 1246At 160 of 1246At 161 of 1246At 162 of 1246At 163 of 1246At 164 of 1246At 165 of 1246At 166 of 1246At 167 of 1246At 168 of 1246At 169 of 1246At 170 of 1246At 171 of 1246At 172 of 1246At 173 of 1246At 174 of 1246At 175 of 1246At 176 of 1246At 177 of 1246At 178 of 1246At 179 of 1246At 180 of 1246At 181 of 1246At 182 of 1246At 183 of 1246At 184 of 1246At 185 of 1246At 186 of 1246At 187 of 1246At 188 of 1246At 189 of 1246At 190 of 1246At 191 of 1246At 192 of 1246At 193 of 1246At 194 of 1246At 195 of 1246At 196 of 1246At 197 of 1246At 198 of 1246At 199 of 1246At 200 of 1246At 201 of 1246At 202 of 1246At 203 of 1246At 204 of 1246At 205 of 1246At 206 of 1246At 207 of 1246At 208 of 1246At 209 of 1246At 210 of 1246At 211 of 1246At 212 of 1246At 213 of 1246At 214 of 1246At 215 of 1246At 216 of 1246At 217 of 1246At 218 of 1246At 219 of 1246At 220 of 1246At 221 of 1246At 222 of 1246At 223 of 1246At 224 of 1246At 225 of 1246At 226 of 1246At 227 of 1246At 228 of 1246At 229 of 1246At 230 of 1246At 231 of 1246At 232 of 1246At 233 of 1246At 234 of 1246At 235 of 1246At 236 of 1246At 237 of 1246At 238 of 1246At 239 of 1246At 240 of 1246At 241 of 1246At 242 of 1246At 243 of 1246At 244 of 1246At 245 of 1246At 246 of 1246At 247 of 1246At 248 of 1246At 249 of 1246At 250 of 1246At 251 of 1246At 252 of 1246At 253 of 1246At 254 of 1246At 255 of 1246At 256 of 1246At 257 of 1246At 258 of 1246At 259 of 1246At 260 of 1246At 261 of 1246At 262 of 1246At 263 of 1246At 264 of 1246At 265 of 1246At 266 of 1246At 267 of 1246At 268 of 1246At 269 of 1246At 270 of 1246At 271 of 1246At 272 of 1246At 273 of 1246At 274 of 1246At 275 of 1246At 276 of 1246At 277 of 1246At 278 of 1246At 279 of 1246At 280 of 1246At 281 of 1246At 282 of 1246At 283 of 1246At 284 of 1246At 285 of 1246At 286 of 1246At 287 of 1246At 288 of 1246At 289 of 1246At 290 of 1246At 291 of 1246At 292 of 1246At 293 of 1246At 294 of 1246At 295 of 1246At 296 of 1246At 297 of 1246At 298 of 1246At 299 of 1246At 300 of 1246At 301 of 1246At 302 of 1246At 303 of 1246At 304 of 1246At 305 of 1246At 306 of 1246At 307 of 1246At 308 of 1246At 309 of 1246At 310 of 1246At 311 of 1246At 312 of 1246At 313 of 1246At 314 of 1246At 315 of 1246At 316 of 1246At 317 of 1246At 318 of 1246At 319 of 1246At 320 of 1246At 321 of 1246At 322 of 1246At 323 of 1246At 324 of 1246At 325 of 1246At 326 of 1246At 327 of 1246At 328 of 1246At 329 of 1246At 330 of 1246At 331 of 1246At 332 of 1246At 333 of 1246At 334 of 1246At 335 of 1246At 336 of 1246At 337 of 1246At 338 of 1246At 339 of 1246At 340 of 1246At 341 of 1246At 342 of 1246At 343 of 1246At 344 of 1246At 345 of 1246At 346 of 1246At 347 of 1246At 348 of 1246At 349 of 1246At 350 of 1246At 351 of 1246At 352 of 1246At 353 of 1246At 354 of 1246At 355 of 1246At 356 of 1246At 357 of 1246At 358 of 1246At 359 of 1246At 360 of 1246At 361 of 1246At 362 of 1246At 363 of 1246At 364 of 1246At 365 of 1246At 366 of 1246At 367 of 1246At 368 of 1246At 369 of 1246At 370 of 1246At 371 of 1246At 372 of 1246At 373 of 1246At 374 of 1246At 375 of 1246At 376 of 1246At 377 of 1246At 378 of 1246At 379 of 1246At 380 of 1246At 381 of 1246At 382 of 1246At 383 of 1246At 384 of 1246At 385 of 1246At 386 of 1246At 387 of 1246At 388 of 1246At 389 of 1246At 390 of 1246At 391 of 1246At 392 of 1246At 393 of 1246At 394 of 1246At 395 of 1246At 396 of 1246At 397 of 1246At 398 of 1246At 399 of 1246At 400 of 1246At 401 of 1246At 402 of 1246At 403 of 1246At 404 of 1246At 405 of 1246At 406 of 1246At 407 of 1246At 408 of 1246At 409 of 1246At 410 of 1246At 411 of 1246At 412 of 1246At 413 of 1246At 414 of 1246At 415 of 1246At 416 of 1246At 417 of 1246At 418 of 1246At 419 of 1246At 420 of 1246At 421 of 1246At 422 of 1246At 423 of 1246At 424 of 1246At 425 of 1246At 426 of 1246At 427 of 1246At 428 of 1246At 429 of 1246At 430 of 1246At 431 of 1246At 432 of 1246At 433 of 1246At 434 of 1246At 435 of 1246At 436 of 1246At 437 of 1246At 438 of 1246At 439 of 1246At 440 of 1246At 441 of 1246At 442 of 1246At 443 of 1246At 444 of 1246At 445 of 1246At 446 of 1246At 447 of 1246At 448 of 1246At 449 of 1246At 450 of 1246At 451 of 1246At 452 of 1246At 453 of 1246At 454 of 1246At 455 of 1246At 456 of 1246At 457 of 1246At 458 of 1246At 459 of 1246At 460 of 1246At 461 of 1246At 462 of 1246At 463 of 1246At 464 of 1246At 465 of 1246At 466 of 1246At 467 of 1246At 468 of 1246At 469 of 1246At 470 of 1246At 471 of 1246At 472 of 1246At 473 of 1246At 474 of 1246At 475 of 1246At 476 of 1246At 477 of 1246At 478 of 1246At 479 of 1246At 480 of 1246At 481 of 1246At 482 of 1246At 483 of 1246At 484 of 1246At 485 of 1246At 486 of 1246At 487 of 1246At 488 of 1246At 489 of 1246At 490 of 1246At 491 of 1246At 492 of 1246At 493 of 1246At 494 of 1246At 495 of 1246At 496 of 1246At 497 of 1246At 498 of 1246At 499 of 1246At 500 of 1246At 501 of 1246At 502 of 1246At 503 of 1246At 504 of 1246At 505 of 1246At 506 of 1246At 507 of 1246At 508 of 1246At 509 of 1246At 510 of 1246At 511 of 1246At 512 of 1246At 513 of 1246At 514 of 1246At 515 of 1246At 516 of 1246At 517 of 1246At 518 of 1246At 519 of 1246At 520 of 1246At 521 of 1246At 522 of 1246At 523 of 1246At 524 of 1246At 525 of 1246At 526 of 1246At 527 of 1246At 528 of 1246At 529 of 1246At 530 of 1246At 531 of 1246At 532 of 1246At 533 of 1246At 534 of 1246At 535 of 1246At 536 of 1246At 537 of 1246At 538 of 1246At 539 of 1246At 540 of 1246At 541 of 1246At 542 of 1246At 543 of 1246At 544 of 1246At 545 of 1246At 546 of 1246At 547 of 1246At 548 of 1246At 549 of 1246At 550 of 1246At 551 of 1246At 552 of 1246At 553 of 1246At 554 of 1246At 555 of 1246At 556 of 1246At 557 of 1246At 558 of 1246At 559 of 1246At 560 of 1246At 561 of 1246At 562 of 1246At 563 of 1246At 564 of 1246At 565 of 1246At 566 of 1246At 567 of 1246At 568 of 1246At 569 of 1246At 570 of 1246At 571 of 1246At 572 of 1246At 573 of 1246At 574 of 1246At 575 of 1246At 576 of 1246At 577 of 1246At 578 of 1246At 579 of 1246At 580 of 1246At 581 of 1246At 582 of 1246At 583 of 1246At 584 of 1246At 585 of 1246At 586 of 1246At 587 of 1246At 588 of 1246At 589 of 1246At 590 of 1246At 591 of 1246At 592 of 1246At 593 of 1246At 594 of 1246At 595 of 1246At 596 of 1246At 597 of 1246At 598 of 1246At 599 of 1246At 600 of 1246At 601 of 1246At 602 of 1246At 603 of 1246At 604 of 1246At 605 of 1246At 606 of 1246At 607 of 1246At 608 of 1246At 609 of 1246At 610 of 1246At 611 of 1246At 612 of 1246At 613 of 1246At 614 of 1246At 615 of 1246At 616 of 1246At 617 of 1246At 618 of 1246At 619 of 1246At 620 of 1246At 621 of 1246At 622 of 1246At 623 of 1246At 624 of 1246At 625 of 1246At 626 of 1246At 627 of 1246At 628 of 1246At 629 of 1246At 630 of 1246At 631 of 1246At 632 of 1246At 633 of 1246At 634 of 1246At 635 of 1246At 636 of 1246At 637 of 1246At 638 of 1246At 639 of 1246At 640 of 1246At 641 of 1246At 642 of 1246At 643 of 1246At 644 of 1246At 645 of 1246At 646 of 1246At 647 of 1246At 648 of 1246At 649 of 1246At 650 of 1246At 651 of 1246At 652 of 1246At 653 of 1246At 654 of 1246At 655 of 1246At 656 of 1246At 657 of 1246At 658 of 1246At 659 of 1246At 660 of 1246At 661 of 1246At 662 of 1246At 663 of 1246At 664 of 1246At 665 of 1246At 666 of 1246At 667 of 1246At 668 of 1246At 669 of 1246At 670 of 1246At 671 of 1246At 672 of 1246At 673 of 1246At 674 of 1246At 675 of 1246At 676 of 1246At 677 of 1246At 678 of 1246At 679 of 1246At 680 of 1246At 681 of 1246At 682 of 1246At 683 of 1246At 684 of 1246At 685 of 1246At 686 of 1246At 687 of 1246At 688 of 1246At 689 of 1246At 690 of 1246At 691 of 1246At 692 of 1246At 693 of 1246At 694 of 1246At 695 of 1246At 696 of 1246At 697 of 1246At 698 of 1246At 699 of 1246At 700 of 1246At 701 of 1246At 702 of 1246At 703 of 1246At 704 of 1246At 705 of 1246At 706 of 1246At 707 of 1246At 708 of 1246At 709 of 1246At 710 of 1246At 711 of 1246At 712 of 1246At 713 of 1246At 714 of 1246At 715 of 1246At 716 of 1246At 717 of 1246At 718 of 1246At 719 of 1246At 720 of 1246At 721 of 1246At 722 of 1246At 723 of 1246At 724 of 1246At 725 of 1246At 726 of 1246At 727 of 1246At 728 of 1246At 729 of 1246At 730 of 1246At 731 of 1246At 732 of 1246At 733 of 1246At 734 of 1246At 735 of 1246At 736 of 1246At 737 of 1246At 738 of 1246At 739 of 1246At 740 of 1246At 741 of 1246At 742 of 1246At 743 of 1246At 744 of 1246At 745 of 1246At 746 of 1246At 747 of 1246At 748 of 1246At 749 of 1246At 750 of 1246At 751 of 1246At 752 of 1246At 753 of 1246At 754 of 1246At 755 of 1246At 756 of 1246At 757 of 1246At 758 of 1246At 759 of 1246At 760 of 1246At 761 of 1246At 762 of 1246At 763 of 1246At 764 of 1246At 765 of 1246At 766 of 1246At 767 of 1246At 768 of 1246At 769 of 1246At 770 of 1246At 771 of 1246At 772 of 1246At 773 of 1246At 774 of 1246At 775 of 1246At 776 of 1246At 777 of 1246At 778 of 1246At 779 of 1246At 780 of 1246At 781 of 1246At 782 of 1246At 783 of 1246At 784 of 1246At 785 of 1246At 786 of 1246At 787 of 1246At 788 of 1246At 789 of 1246At 790 of 1246At 791 of 1246At 792 of 1246At 793 of 1246At 794 of 1246At 795 of 1246At 796 of 1246At 797 of 1246At 798 of 1246At 799 of 1246At 800 of 1246At 801 of 1246At 802 of 1246At 803 of 1246At 804 of 1246At 805 of 1246At 806 of 1246At 807 of 1246At 808 of 1246At 809 of 1246At 810 of 1246At 811 of 1246At 812 of 1246At 813 of 1246At 814 of 1246At 815 of 1246At 816 of 1246At 817 of 1246At 818 of 1246At 819 of 1246At 820 of 1246At 821 of 1246At 822 of 1246At 823 of 1246At 824 of 1246At 825 of 1246At 826 of 1246At 827 of 1246At 828 of 1246At 829 of 1246At 830 of 1246At 831 of 1246At 832 of 1246At 833 of 1246At 834 of 1246At 835 of 1246At 836 of 1246At 837 of 1246At 838 of 1246At 839 of 1246At 840 of 1246At 841 of 1246At 842 of 1246At 843 of 1246At 844 of 1246At 845 of 1246At 846 of 1246At 847 of 1246At 848 of 1246At 849 of 1246At 850 of 1246At 851 of 1246At 852 of 1246At 853 of 1246At 854 of 1246At 855 of 1246At 856 of 1246At 857 of 1246At 858 of 1246At 859 of 1246At 860 of 1246At 861 of 1246At 862 of 1246At 863 of 1246At 864 of 1246At 865 of 1246At 866 of 1246At 867 of 1246At 868 of 1246At 869 of 1246At 870 of 1246At 871 of 1246At 872 of 1246At 873 of 1246At 874 of 1246At 875 of 1246At 876 of 1246At 877 of 1246At 878 of 1246At 879 of 1246At 880 of 1246At 881 of 1246At 882 of 1246At 883 of 1246At 884 of 1246At 885 of 1246At 886 of 1246At 887 of 1246At 888 of 1246At 889 of 1246At 890 of 1246At 891 of 1246At 892 of 1246At 893 of 1246At 894 of 1246At 895 of 1246At 896 of 1246At 897 of 1246At 898 of 1246At 899 of 1246At 900 of 1246At 901 of 1246At 902 of 1246At 903 of 1246At 904 of 1246At 905 of 1246At 906 of 1246At 907 of 1246At 908 of 1246At 909 of 1246At 910 of 1246At 911 of 1246At 912 of 1246At 913 of 1246At 914 of 1246At 915 of 1246At 916 of 1246At 917 of 1246At 918 of 1246At 919 of 1246At 920 of 1246At 921 of 1246At 922 of 1246At 923 of 1246At 924 of 1246At 925 of 1246At 926 of 1246At 927 of 1246At 928 of 1246At 929 of 1246At 930 of 1246At 931 of 1246At 932 of 1246At 933 of 1246At 934 of 1246At 935 of 1246At 936 of 1246At 937 of 1246At 938 of 1246At 939 of 1246At 940 of 1246At 941 of 1246At 942 of 1246At 943 of 1246At 944 of 1246At 945 of 1246At 946 of 1246At 947 of 1246At 948 of 1246At 949 of 1246At 950 of 1246At 951 of 1246At 952 of 1246At 953 of 1246At 954 of 1246At 955 of 1246At 956 of 1246At 957 of 1246At 958 of 1246At 959 of 1246At 960 of 1246At 961 of 1246At 962 of 1246At 963 of 1246At 964 of 1246At 965 of 1246At 966 of 1246At 967 of 1246At 968 of 1246At 969 of 1246At 970 of 1246At 971 of 1246At 972 of 1246At 973 of 1246At 974 of 1246At 975 of 1246At 976 of 1246At 977 of 1246At 978 of 1246At 979 of 1246At 980 of 1246At 981 of 1246At 982 of 1246At 983 of 1246At 984 of 1246At 985 of 1246At 986 of 1246At 987 of 1246At 988 of 1246At 989 of 1246At 990 of 1246At 991 of 1246At 992 of 1246At 993 of 1246At 994 of 1246At 995 of 1246At 996 of 1246At 997 of 1246At 998 of 1246At 999 of 1246At 1000 of 1246At 1001 of 1246At 1002 of 1246At 1003 of 1246At 1004 of 1246At 1005 of 1246At 1006 of 1246At 1007 of 1246At 1008 of 1246At 1009 of 1246At 1010 of 1246At 1011 of 1246At 1012 of 1246At 1013 of 1246At 1014 of 1246At 1015 of 1246At 1016 of 1246At 1017 of 1246At 1018 of 1246At 1019 of 1246At 1020 of 1246At 1021 of 1246At 1022 of 1246At 1023 of 1246At 1024 of 1246At 1025 of 1246At 1026 of 1246At 1027 of 1246At 1028 of 1246At 1029 of 1246At 1030 of 1246At 1031 of 1246At 1032 of 1246At 1033 of 1246At 1034 of 1246At 1035 of 1246At 1036 of 1246At 1037 of 1246At 1038 of 1246At 1039 of 1246At 1040 of 1246At 1041 of 1246At 1042 of 1246At 1043 of 1246At 1044 of 1246At 1045 of 1246At 1046 of 1246At 1047 of 1246At 1048 of 1246At 1049 of 1246At 1050 of 1246At 1051 of 1246At 1052 of 1246At 1053 of 1246At 1054 of 1246At 1055 of 1246At 1056 of 1246At 1057 of 1246At 1058 of 1246At 1059 of 1246At 1060 of 1246At 1061 of 1246At 1062 of 1246At 1063 of 1246At 1064 of 1246At 1065 of 1246At 1066 of 1246At 1067 of 1246At 1068 of 1246At 1069 of 1246At 1070 of 1246At 1071 of 1246At 1072 of 1246At 1073 of 1246At 1074 of 1246At 1075 of 1246At 1076 of 1246At 1077 of 1246At 1078 of 1246At 1079 of 1246At 1080 of 1246At 1081 of 1246At 1082 of 1246At 1083 of 1246At 1084 of 1246At 1085 of 1246At 1086 of 1246At 1087 of 1246At 1088 of 1246At 1089 of 1246At 1090 of 1246At 1091 of 1246At 1092 of 1246At 1093 of 1246At 1094 of 1246At 1095 of 1246At 1096 of 1246At 1097 of 1246At 1098 of 1246At 1099 of 1246At 1100 of 1246At 1101 of 1246At 1102 of 1246At 1103 of 1246At 1104 of 1246At 1105 of 1246At 1106 of 1246At 1107 of 1246At 1108 of 1246At 1109 of 1246At 1110 of 1246At 1111 of 1246At 1112 of 1246At 1113 of 1246At 1114 of 1246At 1115 of 1246At 1116 of 1246At 1117 of 1246At 1118 of 1246At 1119 of 1246At 1120 of 1246At 1121 of 1246At 1122 of 1246At 1123 of 1246At 1124 of 1246At 1125 of 1246At 1126 of 1246At 1127 of 1246At 1128 of 1246At 1129 of 1246At 1130 of 1246At 1131 of 1246At 1132 of 1246At 1133 of 1246At 1134 of 1246At 1135 of 1246At 1136 of 1246At 1137 of 1246At 1138 of 1246At 1139 of 1246At 1140 of 1246At 1141 of 1246At 1142 of 1246At 1143 of 1246At 1144 of 1246At 1145 of 1246At 1146 of 1246At 1147 of 1246At 1148 of 1246At 1149 of 1246At 1150 of 1246At 1151 of 1246At 1152 of 1246At 1153 of 1246At 1154 of 1246At 1155 of 1246At 1156 of 1246At 1157 of 1246At 1158 of 1246At 1159 of 1246At 1160 of 1246At 1161 of 1246At 1162 of 1246At 1163 of 1246At 1164 of 1246At 1165 of 1246At 1166 of 1246At 1167 of 1246At 1168 of 1246At 1169 of 1246At 1170 of 1246At 1171 of 1246At 1172 of 1246At 1173 of 1246At 1174 of 1246At 1175 of 1246At 1176 of 1246At 1177 of 1246At 1178 of 1246At 1179 of 1246At 1180 of 1246At 1181 of 1246At 1182 of 1246At 1183 of 1246At 1184 of 1246At 1185 of 1246At 1186 of 1246At 1187 of 1246At 1188 of 1246At 1189 of 1246At 1190 of 1246At 1191 of 1246At 1192 of 1246At 1193 of 1246At 1194 of 1246At 1195 of 1246At 1196 of 1246At 1197 of 1246At 1198 of 1246At 1199 of 1246At 1200 of 1246At 1201 of 1246At 1202 of 1246At 1203 of 1246At 1204 of 1246At 1205 of 1246At 1206 of 1246At 1207 of 1246At 1208 of 1246At 1209 of 1246At 1210 of 1246At 1211 of 1246At 1212 of 1246At 1213 of 1246At 1214 of 1246At 1215 of 1246At 1216 of 1246At 1217 of 1246At 1218 of 1246At 1219 of 1246At 1220 of 1246At 1221 of 1246At 1222 of 1246At 1223 of 1246At 1224 of 1246At 1225 of 1246At 1226 of 1246At 1227 of 1246At 1228 of 1246At 1229 of 1246At 1230 of 1246At 1231 of 1246At 1232 of 1246At 1233 of 1246At 1234 of 1246At 1235 of 1246At 1236 of 1246At 1237 of 1246At 1238 of 1246At 1239 of 1246At 1240 of 1246At 1241 of 1246At 1242 of 1246At 1243 of 1246At 1244 of 1246At 1245 of 1246
866
gap> Length(AllRings(4));
At 0.2577%, found 0 so far
At 0.5155%, found 1 so far
At 0.7732%, found 1 so far
At 1.031%, found 1 so far
At 1.289%, found 1 so far
At 1.546%, found 1 so far
At 1.804%, found 1 so far
At 2.062%, found 1 so far
At 2.32%, found 1 so far
At 2.577%, found 1 so far
At 2.835%, found 1 so far
At 3.093%, found 1 so far
At 3.351%, found 1 so far
At 3.608%, found 1 so far
At 3.866%, found 1 so far
At 4.124%, found 1 so far
At 4.381%, found 1 so far
At 4.639%, found 1 so far
At 4.897%, found 1 so far
At 5.155%, found 1 so far
At 5.412%, found 1 so far
At 5.67%, found 1 so far
At 5.928%, found 1 so far
At 6.186%, found 1 so far
At 6.443%, found 1 so far
At 6.701%, found 1 so far
At 6.959%, found 1 so far
At 7.216%, found 1 so far
At 7.474%, found 1 so far
At 7.732%, found 1 so far
At 7.99%, found 1 so far
At 8.247%, found 1 so far
At 8.505%, found 1 so far
At 8.763%, found 1 so far
At 9.021%, found 1 so far
At 9.278%, found 1 so far
At 9.536%, found 1 so far
At 9.794%, found 1 so far
At 10.05%, found 1 so far
At 10.31%, found 1 so far
At 10.57%, found 1 so far
At 10.82%, found 1 so far
At 11.08%, found 1 so far
At 11.34%, found 1 so far
At 11.6%, found 1 so far
At 11.86%, found 1 so far
At 12.11%, found 1 so far
At 12.37%, found 1 so far
At 12.63%, found 4 so far
At 12.89%, found 4 so far
At 13.14%, found 4 so far
At 13.4%, found 4 so far
At 13.66%, found 4 so far
At 13.92%, found 4 so far
At 14.18%, found 4 so far
At 14.43%, found 10 so far
At 14.69%, found 10 so far
At 14.95%, found 10 so far
At 15.21%, found 10 so far
At 15.46%, found 10 so far
At 15.72%, found 10 so far
At 15.98%, found 10 so far
At 16.24%, found 10 so far
At 16.49%, found 10 so far
At 16.75%, found 16 so far
At 17.01%, found 16 so far
At 17.27%, found 16 so far
At 17.53%, found 16 so far
At 17.78%, found 16 so far
At 18.04%, found 16 so far
At 18.3%, found 16 so far
At 18.56%, found 16 so far
At 18.81%, found 16 so far
At 19.07%, found 16 so far
At 19.33%, found 16 so far
At 19.59%, found 16 so far
At 19.85%, found 16 so far
At 20.1%, found 16 so far
At 20.36%, found 16 so far
At 20.62%, found 16 so far
At 20.88%, found 16 so far
At 21.13%, found 16 so far
At 21.39%, found 16 so far
At 21.65%, found 16 so far
At 21.91%, found 16 so far
At 22.16%, found 16 so far
At 22.42%, found 16 so far
At 22.68%, found 16 so far
At 22.94%, found 19 so far
At 23.2%, found 22 so far
At 23.45%, found 22 so far
At 23.71%, found 22 so far
At 23.97%, found 22 so far
At 24.23%, found 22 so far
At 24.48%, found 22 so far
At 24.74%, found 22 so far
At 25.%, found 22 so far
At 25.26%, found 22 so far
At 25.52%, found 22 so far
At 25.77%, found 22 so far
At 26.03%, found 22 so far
At 26.29%, found 22 so far
At 26.55%, found 22 so far
At 26.8%, found 22 so far
At 27.06%, found 22 so far
At 27.32%, found 22 so far
At 27.58%, found 22 so far
At 27.84%, found 22 so far
At 28.09%, found 22 so far
At 28.35%, found 22 so far
At 28.61%, found 22 so far
At 28.87%, found 22 so far
At 29.12%, found 22 so far
At 29.38%, found 22 so far
At 29.64%, found 22 so far
At 29.9%, found 22 so far
At 30.15%, found 22 so far
At 30.41%, found 22 so far
At 30.67%, found 22 so far
At 30.93%, found 22 so far
At 31.19%, found 22 so far
At 31.44%, found 22 so far
At 31.7%, found 22 so far
At 31.96%, found 22 so far
At 32.22%, found 22 so far
At 32.47%, found 22 so far
At 32.73%, found 22 so far
At 32.99%, found 22 so far
At 33.25%, found 22 so far
At 33.51%, found 22 so far
At 33.76%, found 22 so far
At 34.02%, found 22 so far
At 34.28%, found 22 so far
At 34.54%, found 22 so far
At 34.79%, found 22 so far
At 35.05%, found 22 so far
At 35.31%, found 22 so far
At 35.57%, found 22 so far
At 35.82%, found 22 so far
At 36.08%, found 22 so far
At 36.34%, found 22 so far
At 36.6%, found 22 so far
At 36.86%, found 22 so far
At 37.11%, found 22 so far
At 37.37%, found 22 so far
At 37.63%, found 22 so far
At 37.89%, found 22 so far
At 38.14%, found 22 so far
At 38.4%, found 22 so far
At 38.66%, found 22 so far
At 38.92%, found 22 so far
At 39.18%, found 22 so far
At 39.43%, found 22 so far
At 39.69%, found 22 so far
At 39.95%, found 22 so far
At 40.21%, found 22 so far
At 40.46%, found 22 so far
At 40.72%, found 25 so far
At 40.98%, found 25 so far
At 41.24%, found 25 so far
At 41.49%, found 25 so far
At 41.75%, found 25 so far
At 42.01%, found 25 so far
At 42.27%, found 25 so far
At 42.53%, found 25 so far
At 42.78%, found 25 so far
At 43.04%, found 25 so far
At 43.3%, found 25 so far
At 43.56%, found 25 so far
At 43.81%, found 25 so far
At 44.07%, found 25 so far
At 44.33%, found 25 so far
At 44.59%, found 25 so far
At 44.85%, found 25 so far
At 45.1%, found 25 so far
At 45.36%, found 25 so far
At 45.62%, found 25 so far
At 45.88%, found 25 so far
At 46.13%, found 25 so far
At 46.39%, found 25 so far
At 46.65%, found 25 so far
At 46.91%, found 25 so far
At 47.16%, found 25 so far
At 47.42%, found 25 so far
At 47.68%, found 25 so far
At 47.94%, found 25 so far
At 48.2%, found 25 so far
At 48.45%, found 25 so far
At 48.71%, found 25 so far
At 48.97%, found 25 so far
At 49.23%, found 25 so far
At 49.48%, found 25 so far
At 49.74%, found 28 so far
At 50.%, found 28 so far
At 50.26%, found 28 so far
At 50.52%, found 29 so far
At 50.77%, found 29 so far
At 51.03%, found 29 so far
At 51.29%, found 29 so far
At 51.55%, found 29 so far
At 51.8%, found 29 so far
At 52.06%, found 29 so far
At 52.32%, found 29 so far
At 52.58%, found 29 so far
At 52.84%, found 29 so far
At 53.09%, found 29 so far
At 53.35%, found 29 so far
At 53.61%, found 29 so far
At 53.87%, found 29 so far
At 54.12%, found 29 so far
At 54.38%, found 29 so far
At 54.64%, found 29 so far
At 54.9%, found 29 so far
At 55.15%, found 29 so far
At 55.41%, found 29 so far
At 55.67%, found 29 so far
At 55.93%, found 29 so far
At 56.19%, found 29 so far
At 56.44%, found 29 so far
At 56.7%, found 29 so far
At 56.96%, found 29 so far
At 57.22%, found 29 so far
At 57.47%, found 29 so far
At 57.73%, found 29 so far
At 57.99%, found 29 so far
At 58.25%, found 29 so far
At 58.51%, found 29 so far
At 58.76%, found 29 so far
At 59.02%, found 29 so far
At 59.28%, found 29 so far
At 59.54%, found 29 so far
At 59.79%, found 29 so far
At 60.05%, found 29 so far
At 60.31%, found 29 so far
At 60.57%, found 29 so far
At 60.82%, found 29 so far
At 61.08%, found 29 so far
At 61.34%, found 29 so far
At 61.6%, found 29 so far
At 61.86%, found 29 so far
At 62.11%, found 29 so far
At 62.37%, found 29 so far
At 62.63%, found 30 so far
At 62.89%, found 30 so far
At 63.14%, found 30 so far
At 63.4%, found 30 so far
At 63.66%, found 30 so far
At 63.92%, found 30 so far
At 64.18%, found 30 so far
At 64.43%, found 30 so far
At 64.69%, found 30 so far
At 64.95%, found 30 so far
At 65.21%, found 30 so far
At 65.46%, found 30 so far
At 65.72%, found 30 so far
At 65.98%, found 30 so far
At 66.24%, found 30 so far
At 66.49%, found 30 so far
At 66.75%, found 32 so far
At 67.01%, found 32 so far
At 67.27%, found 32 so far
At 67.53%, found 32 so far
At 67.78%, found 32 so far
At 68.04%, found 32 so far
At 68.3%, found 32 so far
At 68.56%, found 32 so far
At 68.81%, found 32 so far
At 69.07%, found 32 so far
At 69.33%, found 32 so far
At 69.59%, found 32 so far
At 69.85%, found 32 so far
At 70.1%, found 32 so far
At 70.36%, found 32 so far
At 70.62%, found 32 so far
At 70.88%, found 32 so far
At 71.13%, found 32 so far
At 71.39%, found 32 so far
At 71.65%, found 32 so far
At 71.91%, found 32 so far
At 72.16%, found 32 so far
At 72.42%, found 32 so far
At 72.68%, found 32 so far
At 72.94%, found 32 so far
At 73.2%, found 32 so far
At 73.45%, found 32 so far
At 73.71%, found 32 so far
At 73.97%, found 32 so far
At 74.23%, found 32 so far
At 74.48%, found 32 so far
At 74.74%, found 32 so far
At 75.%, found 32 so far
At 75.26%, found 32 so far
At 75.52%, found 32 so far
At 75.77%, found 32 so far
At 76.03%, found 32 so far
At 76.29%, found 32 so far
At 76.55%, found 32 so far
At 76.8%, found 32 so far
At 77.06%, found 32 so far
At 77.32%, found 32 so far
At 77.58%, found 32 so far
At 77.84%, found 32 so far
At 78.09%, found 32 so far
At 78.35%, found 32 so far
At 78.61%, found 32 so far
At 78.87%, found 32 so far
At 79.12%, found 32 so far
At 79.38%, found 32 so far
At 79.64%, found 32 so far
At 79.9%, found 32 so far
At 80.15%, found 32 so far
At 80.41%, found 32 so far
At 80.67%, found 32 so far
At 80.93%, found 32 so far
At 81.19%, found 32 so far
At 81.44%, found 32 so far
At 81.7%, found 32 so far
At 81.96%, found 32 so far
At 82.22%, found 32 so far
At 82.47%, found 32 so far
At 82.73%, found 32 so far
At 82.99%, found 32 so far
At 83.25%, found 32 so far
At 83.51%, found 32 so far
At 83.76%, found 32 so far
At 84.02%, found 32 so far
At 84.28%, found 32 so far
At 84.54%, found 32 so far
At 84.79%, found 32 so far
At 85.05%, found 32 so far
At 85.31%, found 32 so far
At 85.57%, found 32 so far
At 85.82%, found 32 so far
At 86.08%, found 32 so far
At 86.34%, found 32 so far
At 86.6%, found 32 so far
At 86.86%, found 32 so far
At 87.11%, found 32 so far
At 87.37%, found 32 so far
At 87.63%, found 32 so far
At 87.89%, found 32 so far
At 88.14%, found 32 so far
At 88.4%, found 32 so far
At 88.66%, found 32 so far
At 88.92%, found 32 so far
At 89.18%, found 32 so far
At 89.43%, found 32 so far
At 89.69%, found 32 so far
At 89.95%, found 32 so far
At 90.21%, found 32 so far
At 90.46%, found 32 so far
At 90.72%, found 32 so far
At 90.98%, found 32 so far
At 91.24%, found 32 so far
At 91.49%, found 32 so far
At 91.75%, found 32 so far
At 92.01%, found 32 so far
At 92.27%, found 32 so far
At 92.53%, found 32 so far
At 92.78%, found 32 so far
At 93.04%, found 32 so far
At 93.3%, found 32 so far
At 93.56%, found 32 so far
At 93.81%, found 32 so far
At 94.07%, found 32 so far
At 94.33%, found 32 so far
At 94.59%, found 32 so far
At 94.85%, found 32 so far
At 95.1%, found 32 so far
At 95.36%, found 32 so far
At 95.62%, found 32 so far
At 95.88%, found 32 so far
At 96.13%, found 32 so far
At 96.39%, found 32 so far
At 96.65%, found 32 so far
At 96.91%, found 32 so far
At 97.16%, found 32 so far
At 97.42%, found 32 so far
At 97.68%, found 32 so far
At 97.94%, found 32 so far
At 98.2%, found 32 so far
At 98.45%, found 32 so far
At 98.71%, found 32 so far
At 98.97%, found 32 so far
At 99.23%, found 32 so far
At 99.48%, found 32 so far
At 99.74%, found 32 so far
At 100.%, found 32 so far

Found 32 candidates!
Filtering up to isomorphism or equivalence!
At 1 of 32At 2 of 32At 3 of 32At 4 of 32At 5 of 32At 6 of 32At 7 of 32At 8 of 32At 9 of 32At 10 of 32At 11 of 32At 12 of 32At 13 of 32At 14 of 32At 15 of 32At 16 of 32At 17 of 32At 18 of 32At 19 of 32At 20 of 32At 21 of 32At 22 of 32At 23 of 32At 24 of 32At 25 of 32At 26 of 32At 27 of 32At 28 of 32At 29 of 32At 30 of 32At 31 of 32
11
gap> Length(AllRingsWithOne(4));
At 1.429%, found 0 so far
At 2.857%, found 0 so far
At 4.286%, found 0 so far
At 5.714%, found 0 so far
At 7.143%, found 0 so far
At 8.571%, found 0 so far
At 10.%, found 0 so far
At 11.43%, found 6 so far
At 12.86%, found 6 so far
At 14.29%, found 6 so far
At 15.71%, found 6 so far
At 17.14%, found 6 so far
At 18.57%, found 6 so far
At 20.%, found 6 so far
At 21.43%, found 6 so far
At 22.86%, found 6 so far
At 24.29%, found 6 so far
At 25.71%, found 6 so far
At 27.14%, found 6 so far
At 28.57%, found 6 so far
At 30.%, found 6 so far
At 31.43%, found 6 so far
At 32.86%, found 6 so far
At 34.29%, found 6 so far
At 35.71%, found 9 so far
At 37.14%, found 9 so far
At 38.57%, found 9 so far
At 40.%, found 9 so far
At 41.43%, found 9 so far
At 42.86%, found 9 so far
At 44.29%, found 9 so far
At 45.71%, found 9 so far
At 47.14%, found 9 so far
At 48.57%, found 9 so far
At 50.%, found 12 so far
At 51.43%, found 12 so far
At 52.86%, found 12 so far
At 54.29%, found 12 so far
At 55.71%, found 12 so far
At 57.14%, found 12 so far
At 58.57%, found 12 so far
At 60.%, found 12 so far
At 61.43%, found 14 so far
At 62.86%, found 14 so far
At 64.29%, found 14 so far
At 65.71%, found 14 so far
At 67.14%, found 14 so far
At 68.57%, found 14 so far
At 70.%, found 14 so far
At 71.43%, found 14 so far
At 72.86%, found 14 so far
At 74.29%, found 14 so far
At 75.71%, found 14 so far
At 77.14%, found 14 so far
At 78.57%, found 14 so far
At 80.%, found 14 so far
At 81.43%, found 14 so far
At 82.86%, found 14 so far
At 84.29%, found 14 so far
At 85.71%, found 14 so far
At 87.14%, found 14 so far
At 88.57%, found 14 so far
At 90.%, found 14 so far
At 91.43%, found 14 so far
At 92.86%, found 14 so far
At 94.29%, found 14 so far
At 95.71%, found 14 so far
At 97.14%, found 14 so far
At 98.57%, found 14 so far
At 100.%, found 14 so far

Found 14 candidates!
Filtering up to isomorphism or equivalence!
At 1 of 14At 2 of 14At 3 of 14At 4 of 14At 5 of 14At 6 of 14At 7 of 14At 8 of 14At 9 of 14At 10 of 14At 11 of 14At 12 of 14At 13 of 14
4

#
gap> STOP_TEST("ai-semirings.tst");
