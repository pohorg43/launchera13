.class public final Lcom/android/launcher3/popup/DeferredRemoveForPopup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mDragView:Lcom/android/launcher3/dragndrop/DragView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/dragndrop/DragView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mShowOriginalIconOps:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/dragndrop/DragView<",
            "Lcom/android/launcher3/Launcher;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mDragView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    return-void
.end method


# virtual methods
.method public final addShowOriginalIconOps(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "extraWork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->mShowOriginalIconOps:Ljava/lang/Runnable;

    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    iget-object p0, p0, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->mShowOriginalIconOps:Ljava/lang/Runnable;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method public final runShowOriginalIconOps()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/DeferredRemoveForPopup;->mShowOriginalIconOps:Ljava/lang/Runnable;

    if-eqz p0, :cond_a

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method
