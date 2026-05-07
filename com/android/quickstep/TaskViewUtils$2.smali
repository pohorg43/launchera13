.class Lcom/android/quickstep/TaskViewUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$thumbnails:[Lcom/android/quickstep/views/TaskThumbnailView;


# direct methods
.method public constructor <init>([Lcom/android/quickstep/views/TaskThumbnailView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$thumbnails:[Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$thumbnails:[Lcom/android/quickstep/views/TaskThumbnailView;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p1, :cond_f

    aget-object v1, p0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method
