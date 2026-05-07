.class public final Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToPosition(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $addingCard$inlined:Landroid/view/View;

.field public final synthetic $animPara$inlined:Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

.field public final synthetic $dragCardToAdd$inlined:Z


# direct methods
.method public constructor <init>(ZLandroid/view/View;Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;->$dragCardToAdd$inlined:Z

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;->$addingCard$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;->$animPara$inlined:Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_10

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_10
    iget-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;->$dragCardToAdd$inlined:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;->$addingCard$inlined:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    sget-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_3e

    :cond_23
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :goto_3e
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;->$animPara$inlined:Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->endAndRemoveDragView(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;->$animPara$inlined:Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->recycle()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
