.class Lcom/android/launcher3/workprofile/OplusWorkFileUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->doWorkFeedbackAnim(Lcom/android/launcher3/folder/OplusFolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$oplusFolderIcon:Lcom/android/launcher3/folder/OplusFolderIcon;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils$1;->val$oplusFolderIcon:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Lcom/android/launcher3/workprofile/OplusWorkFileUtils$1;->val$oplusFolderIcon:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {p0}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->doWorkFeedbackAnim(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    :cond_14
    return-void
.end method
