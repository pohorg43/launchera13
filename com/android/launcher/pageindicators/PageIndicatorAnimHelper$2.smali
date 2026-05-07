.class Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startIndicatorAlphaAnim(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$2;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$2;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->access$202(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$2;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->access$202(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)Z

    return-void
.end method
