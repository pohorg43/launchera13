.class Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->createIconPointerAnimation(Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$3;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$3;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$700(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;ZF)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$3;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$800(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;ZF)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$3;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-static {p0, v1, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$900(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;ZF)V

    return-void
.end method
