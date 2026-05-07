.class public final Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mDragFeedbackImp:Lcom/android/launcher3/card/feedback/IDragFeedback;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 4

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mWorkspace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    return-void
.end method

.method private final isDragFeedbackEnable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistScreenEnable()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result p0

    if-lez p0, :cond_30

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p0

    if-eqz p0, :cond_30

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p0

    if-eqz p0, :cond_30

    sget-object p0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->isOneHandedModeActivated()Z

    move-result p0

    if-nez p0, :cond_30

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-nez p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method


# virtual methods
.method public final onDragEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mDragFeedbackImp:Lcom/android/launcher3/card/feedback/IDragFeedback;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {v0}, Lcom/android/launcher3/card/feedback/IDragFeedback;->onDragEnd()V

    :goto_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mDragFeedbackImp:Lcom/android/launcher3/card/feedback/IDragFeedback;

    return-void
.end method

.method public final onDragOver()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mDragFeedbackImp:Lcom/android/launcher3/card/feedback/IDragFeedback;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/android/launcher3/card/feedback/IDragFeedback;->onDragOver()V

    :goto_8
    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    const-string v0, "dragObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->isDragFeedbackEnable()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_38

    instance-of v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_25

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.LauncherAppWidgetInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    if-gtz v1, :cond_38

    :cond_25
    instance-of v1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_36

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.widget.PendingAddWidgetInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    if-lez v0, :cond_36

    goto :goto_38

    :cond_36
    const/4 v0, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v0, 0x1

    :goto_39
    if-eqz v0, :cond_45

    new-instance v0, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;

    iget-object v1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/card/feedback/AllowDragFeedbackImp;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    goto :goto_4e

    :cond_45
    new-instance v0, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;

    iget-object v1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/card/feedback/DisallowDragFeedbackImp;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusWorkspace;)V

    :goto_4e
    iput-object v0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mDragFeedbackImp:Lcom/android/launcher3/card/feedback/IDragFeedback;

    invoke-interface {v0, p1}, Lcom/android/launcher3/card/feedback/IDragFeedback;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public final onFolderClosed()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mDragFeedbackImp:Lcom/android/launcher3/card/feedback/IDragFeedback;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/android/launcher3/card/feedback/IDragFeedback;->onFolderClosed()V

    :goto_8
    return-void
.end method

.method public final onPageEndTransition()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mDragFeedbackImp:Lcom/android/launcher3/card/feedback/IDragFeedback;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/android/launcher3/card/feedback/IDragFeedback;->onPageEndTransition()V

    :goto_8
    return-void
.end method

.method public final onSyncDragEnter()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mDragFeedbackImp:Lcom/android/launcher3/card/feedback/IDragFeedback;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/android/launcher3/card/feedback/IDragFeedback;->onSyncDragEnter()V

    :goto_8
    return-void
.end method

.method public final onSyncDragExit()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackWrapper;->mDragFeedbackImp:Lcom/android/launcher3/card/feedback/IDragFeedback;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/android/launcher3/card/feedback/IDragFeedback;->onSyncDragExit()V

    :goto_8
    return-void
.end method
