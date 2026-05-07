.class public final synthetic Lcom/android/launcher3/anim/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/f;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/f;->d:Ljava/lang/Object;

    iput p4, p0, Lcom/android/launcher3/anim/f;->e:F

    iput p5, p0, Lcom/android/launcher3/anim/f;->f:F

    iput-object p6, p0, Lcom/android/launcher3/anim/f;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FF)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/anim/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/f;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/f;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/anim/f;->g:Ljava/lang/Object;

    iput p5, p0, Lcom/android/launcher3/anim/f;->e:F

    iput p6, p0, Lcom/android/launcher3/anim/f;->f:F

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 16

    iget v0, p0, Lcom/android/launcher3/anim/f;->a:I

    packed-switch v0, :pswitch_data_44

    goto :goto_23

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/anim/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/anim/FlingSpringAnim;

    iget-object v2, p0, Lcom/android/launcher3/anim/f;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/anim/f;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v4, p0, Lcom/android/launcher3/anim/f;->e:F

    iget v5, p0, Lcom/android/launcher3/anim/f;->f:F

    iget-object p0, p0, Lcom/android/launcher3/anim/f;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    move-object v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-static/range {v1 .. v10}, Lcom/android/launcher3/anim/FlingSpringAnim;->a(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :goto_23
    iget-object v0, p0, Lcom/android/launcher3/anim/f;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v0, p0, Lcom/android/launcher3/anim/f;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v0, p0, Lcom/android/launcher3/anim/f;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/android/launcher3/anim/f;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    iget v5, p0, Lcom/android/launcher3/anim/f;->e:F

    iget v6, p0, Lcom/android/launcher3/anim/f;->f:F

    move-object v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->k(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FFLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
