.class Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;

.field public final synthetic val$callBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$1;->this$0:Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;

    iput-object p2, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$1;->val$callBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "onAnimationEnd -- mAlpha: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$1;->this$0:Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;

    invoke-static {v0}, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->access$000(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnInstallApp"

    const-string v1, "BubbleTextFadeAnimatorImpl"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$1;->val$callBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    if-eqz p0, :cond_21

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;->onAnimationEnd()V

    :cond_21
    return-void
.end method
