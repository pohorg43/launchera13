.class public final Lcom/android/launcher3/card/EngineCardView$MyDragListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/EngineCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyDragListener"
.end annotation


# instance fields
.field private code:I

.field public final synthetic this$0:Lcom/android/launcher3/card/EngineCardView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/EngineCardView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->this$0:Lcom/android/launcher3/card/EngineCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->code:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/EngineCardView;Lcom/android/launcher3/card/EngineCardView$MyDragListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->onDragEnd$lambda-0(Lcom/android/launcher3/card/EngineCardView;Lcom/android/launcher3/card/EngineCardView$MyDragListener;)V

    return-void
.end method

.method private static final onDragEnd$lambda-0(Lcom/android/launcher3/card/EngineCardView;Lcom/android/launcher3/card/EngineCardView$MyDragListener;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->getCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/card/EngineCardView;->handleGetViewCallback(Landroid/view/View;I)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->setView(Landroid/view/View;)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->setCode(I)V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->code:I

    return p0
.end method

.method public final getView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->view:Landroid/view/View;

    return-object p0
.end method

.method public onDragEnd()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iget-object v1, v0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->code:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1e

    new-instance v1, Lcom/android/launcher/guide/c;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher3/card/EngineCardView;Lcom/android/launcher3/card/EngineCardView$MyDragListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->this$0:Lcom/android/launcher3/card/EngineCardView;

    iget-object v0, v0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_1e
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    const-string p0, "LauncherCardView-Engine"

    const-string/jumbo p1, "onDragStart"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCode(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->code:I

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->view:Landroid/view/View;

    return-void
.end method
