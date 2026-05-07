.class public final Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/feedback/IDragFeedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp$Companion;

.field private static final TAG:Ljava/lang/String; = "AllowDragFeedbackManager"


# instance fields
.field private mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->Companion:Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 4

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mWorkspace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    return-void
.end method

.method private final ifNeedFeedbackView(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-nez p0, :cond_d

    goto :goto_19

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->show()V

    goto :goto_19

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-nez p0, :cond_16

    goto :goto_19

    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->hide(Z)V

    :goto_19
    return-void
.end method

.method private final initFeedbackView()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-direct {p0, v1}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->ifNeedFeedbackView(Z)V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->dragFeedbackEnable()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->isDuplicateAdd()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "AllowDragFeedbackManager"

    const-string v0, "addFeedbackView(), already add view, return."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v2, :cond_2b

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    if-nez v0, :cond_2f

    return-void

    :cond_2f
    new-instance v2, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    iget-object v3, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v4}, Lcom/android/launcher3/OplusWorkspace;->isRtl()Z

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;-><init>(Lcom/android/launcher3/Launcher;ZIZ)V

    iget-object v3, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    const-string v4, "mLauncher.dragLayer"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->calculateLocation(Lcom/android/launcher3/OplusDragLayer;Lcom/android/launcher3/OplusWorkspace;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->getDrawHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iput-object v2, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->ifNeedFeedbackView(Z)V

    return-void
.end method

.method private final isDragFeedbackEnable(Lcom/android/launcher3/OplusWorkspace;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private final isDuplicateAdd()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    return p0
.end method


# virtual methods
.method public dragFeedbackEnable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->isDragFeedbackEnable(Lcom/android/launcher3/OplusWorkspace;)Z

    move-result p0

    return p0
.end method

.method public onDragEnd()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-nez p0, :cond_5

    goto :goto_9

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->hide(Z)V

    :goto_9
    return-void
.end method

.method public onDragOver()V
    .registers 1

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    const-string v0, "dragObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->initFeedbackView()V

    return-void
.end method

.method public onFolderClosed()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/feedback/IDragFeedback$DefaultImpls;->onFolderClosed(Lcom/android/launcher3/card/feedback/IDragFeedback;)V

    return-void
.end method

.method public onPageEndTransition()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->initFeedbackView()V

    return-void
.end method

.method public onSyncDragEnter()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->initFeedbackView()V

    return-void
.end method

.method public onSyncDragExit()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    :cond_12
    return-void
.end method
