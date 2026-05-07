.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createRotateAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;ZI)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $thumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/TaskThumbnailView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$1$1;->$thumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$1$1;->$thumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateBackgroundAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createRotateAnimation$1$1;->$thumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateBackgroundAlpha(F)V

    return-void
.end method
