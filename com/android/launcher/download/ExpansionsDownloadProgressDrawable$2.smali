.class Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->initAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$2;->this$0:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$2;->this$0:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->access$200(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->access$102(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;F)F

    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$2;->this$0:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->access$302(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)I

    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$2;->this$0:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->access$500(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->access$402(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;F)F

    return-void
.end method
