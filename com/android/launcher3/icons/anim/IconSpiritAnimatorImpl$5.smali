.class Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$5;
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

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$5;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl$5;->this$0:Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;->access$900(Lcom/android/launcher3/icons/anim/IconSpiritAnimatorImpl;ZF)V

    return-void
.end method
