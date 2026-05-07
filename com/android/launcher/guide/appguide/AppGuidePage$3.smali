.class Lcom/android/launcher/guide/appguide/AppGuidePage$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/appguide/AppGuidePage;->updateViewAttributes()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/appguide/AppGuidePage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage$3;->this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage$3;->this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->access$500(Lcom/android/launcher/guide/appguide/AppGuidePage;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage$3;->this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->access$400(Lcom/android/launcher/guide/appguide/AppGuidePage;Z)V

    return-void
.end method
