.class public final Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/feedback/IDragFeedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp$Companion;

.field private static final TAG:Ljava/lang/String; = "DisallowDragFeedbackManager"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

.field private mIsDragging:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mTouchXy:[F

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->Companion:Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 4

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mWorkspace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_1c

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mTouchXy:[F

    return-void

    nop

    :array_1c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final addFeedbackView()Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->isDisallowDragFeedbackEnable(Lcom/android/launcher3/OplusWorkspace;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mIsDragging:Z

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->isDuplicateAdd()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string p0, "DisallowDragFeedbackManager"

    const-string v0, "addFeedbackView(), already add view, return."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    iget-object v2, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-eqz v2, :cond_20

    return v1

    :cond_20
    iget-object v2, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v3, :cond_2d

    check-cast v2, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    if-nez v2, :cond_31

    return v1

    :cond_31
    new-instance v3, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    iget-object v4, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5}, Lcom/android/launcher3/OplusWorkspace;->isRtl()Z

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;-><init>(Lcom/android/launcher3/Launcher;ZIZ)V

    iget-object v1, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    const-string v4, "mLauncher.dragLayer"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->calculateLocation(Lcom/android/launcher3/OplusDragLayer;Lcom/android/launcher3/OplusWorkspace;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->getDrawHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    return v0
.end method

.method private final invalidateFeedbackView()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mTouchXy:[F

    iget-object v1, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->isRtl()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->getDragViewVisualCenter()[F

    move-result-object v1

    aget v1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_34

    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->getDragViewVisualCenter()[F

    move-result-object v1

    aget v1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_34
    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mTouchXy:[F

    iget-object v1, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-nez v0, :cond_49

    :cond_47
    move v3, v2

    goto :goto_5e

    :cond_49
    iget-object v1, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    const-string v4, "mLauncher.dragLayer"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v5, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mTouchXy:[F

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->isTouchIn(Lcom/android/launcher3/OplusDragLayer;Lcom/android/launcher3/OplusWorkspace;[F)Z

    move-result v0

    if-ne v0, v3, :cond_47

    :goto_5e
    if-eqz v3, :cond_69

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-nez p0, :cond_65

    goto :goto_71

    :cond_65
    invoke-virtual {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->show()V

    goto :goto_71

    :cond_69
    iget-object p0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-nez p0, :cond_6e

    goto :goto_71

    :cond_6e
    invoke-virtual {p0, v2}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->hide(Z)V

    :goto_71
    return-void
.end method

.method private final isDisallowDragFeedbackEnable(Lcom/android/launcher3/OplusWorkspace;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    if-nez p1, :cond_14

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->isDraggingInFolder()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private final isDraggingInFolder()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    :goto_8
    instance-of v0, v0, Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private final isDuplicateAdd()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

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

.method private final isEnable()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isAssistScreenEnable()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dragFeedbackEnable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->isDisallowDragFeedbackEnable(Lcom/android/launcher3/OplusWorkspace;)Z

    move-result p0

    return p0
.end method

.method public onDragEnd()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mIsDragging:Z

    if-nez v0, :cond_e

    goto :goto_1a

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mIsDragging:Z

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-nez p0, :cond_16

    goto :goto_1a

    :cond_16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->hide(Z)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onDragOver()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mIsDragging:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->isDraggingInFolder()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->invalidateFeedbackView()V

    :cond_22
    :goto_22
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    const-string v0, "dragObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->addFeedbackView()Z

    return-void
.end method

.method public onFolderClosed()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->addFeedbackView()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->invalidateFeedbackView()V

    :cond_9
    return-void
.end method

.method public onPageEndTransition()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mFeedbackView:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    if-nez v0, :cond_d

    goto :goto_11

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->hide(Z)V

    :cond_11
    :goto_11
    iget-boolean v0, p0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->mIsDragging:Z

    if-eqz v0, :cond_16

    return-void

    :cond_16
    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->addFeedbackView()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;->invalidateFeedbackView()V

    :cond_1f
    return-void
.end method

.method public onSyncDragEnter()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/feedback/IDragFeedback$DefaultImpls;->onSyncDragEnter(Lcom/android/launcher3/card/feedback/IDragFeedback;)V

    return-void
.end method

.method public onSyncDragExit()V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/feedback/IDragFeedback$DefaultImpls;->onSyncDragExit(Lcom/android/launcher3/card/feedback/IDragFeedback;)V

    return-void
.end method
