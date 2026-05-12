.syntax unified
.cpu cortex-m4
//.fpu softvfp
.thumb
.global vtable
.global reset_handler
.type vtable, %object
vtable:
  .word __stack_start
  .word __hard_reset+1
  .size vtable, .-vtable
__hard_reset:
  ldr r0, =__stack_start
  mov sp, r0
  b __hard_reset
