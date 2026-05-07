.class public final synthetic Lcom/android/launcher3/anim/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/m;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/m;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/anim/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/m;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/m;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/anim/m;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/anim/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/m;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/launcher3/anim/m;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->a(Lcom/android/launcher3/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/android/launcher3/anim/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/launcher3/anim/m;->c:Ljava/lang/Object;

    check-cast v1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p0, p0, Lcom/android/launcher3/anim/m;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/views/RecentsView;->p(Lcom/android/quickstep/views/RecentsView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
