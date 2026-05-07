.class public final synthetic Lcom/android/launcher3/anim/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/animation/Interpolator;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/Interpolator;FFI)V
    .registers 6

    iput p4, p0, Lcom/android/launcher3/anim/g;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/g;->b:Landroid/view/animation/Interpolator;

    iput p2, p0, Lcom/android/launcher3/anim/g;->c:F

    iput p3, p0, Lcom/android/launcher3/anim/g;->d:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 4

    iget v0, p0, Lcom/android/launcher3/anim/g;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/anim/g;->b:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/android/launcher3/anim/g;->c:F

    iget p0, p0, Lcom/android/launcher3/anim/g;->d:F

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/anim/Interpolators;->e(Landroid/view/animation/Interpolator;FFF)F

    move-result p0

    return p0

    :goto_11
    iget-object v0, p0, Lcom/android/launcher3/anim/g;->b:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/android/launcher3/anim/g;->c:F

    iget p0, p0, Lcom/android/launcher3/anim/g;->d:F

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/anim/Interpolators;->d(Landroid/view/animation/Interpolator;FFF)F

    move-result p0

    return p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
