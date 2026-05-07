.class Lcom/android/launcher/views/CommonAlertView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/views/CommonAlertView;->animateShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/views/CommonAlertView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/CommonAlertView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/CommonAlertView$2;->this$0:Lcom/android/launcher/views/CommonAlertView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/views/CommonAlertView$2;->this$0:Lcom/android/launcher/views/CommonAlertView;

    invoke-virtual {p0}, Lcom/android/launcher/views/CommonAlertView;->animEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
